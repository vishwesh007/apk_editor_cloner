import 'dart:io';
import 'package:flutter/services.dart';

/// Service for shared UID-based communication with injected apps
/// 
/// The shared UID concept allows two apps signed with the same certificate
/// to share the same Linux user ID, enabling:
/// - Direct file access between apps
/// - Shared preferences access
/// - Local socket communication without network permissions
/// - Process-level interaction
class SharedUidService {
  static const platform = MethodChannel('com.droidanalyst/shared_uid');
  
  // The shared user ID that both DroidAnalyst and target apps will use
  static const String sharedUserId = 'com.droidanalyst.shared';
  
  // Local socket path for IPC
  static const String localSocketName = 'droidanalyst_frida';
  
  /// Check if we can communicate with a shared UID app
  Future<bool> canCommunicate(String packageName) async {
    try {
      final result = await platform.invokeMethod('canCommunicate', {
        'packageName': packageName,
      });
      return result == true;
    } catch (e) {
      return false;
    }
  }
  
  /// Get list of apps that share our UID
  Future<List<Map<String, dynamic>>> getSharedUidApps() async {
    try {
      final result = await platform.invokeMethod('getSharedUidApps');
      if (result is List) {
        return result.map((e) => Map<String, dynamic>.from(e)).toList();
      }
      return [];
    } catch (e) {
      return [];
    }
  }
  
  /// Connect to Frida Gadget in a shared UID app via local socket
  Future<bool> connectToGadget(String packageName) async {
    try {
      final result = await platform.invokeMethod('connectToGadget', {
        'packageName': packageName,
        'socketName': localSocketName,
      });
      return result == true;
    } catch (e) {
      return false;
    }
  }
  
  /// Send a Frida script to the connected gadget
  Future<String?> sendScript(String script) async {
    try {
      final result = await platform.invokeMethod('sendScript', {
        'script': script,
      });
      return result?.toString();
    } catch (e) {
      return 'Error: $e';
    }
  }
  
  /// Disconnect from gadget
  Future<void> disconnect() async {
    try {
      await platform.invokeMethod('disconnect');
    } catch (e) {
      // Ignore
    }
  }
  
  /// Get the shared data directory for a package
  Future<String?> getSharedDataDir(String packageName) async {
    try {
      final result = await platform.invokeMethod('getSharedDataDir', {
        'packageName': packageName,
      });
      return result?.toString();
    } catch (e) {
      return null;
    }
  }
  
  /// Read a file from a shared UID app's data directory
  Future<String?> readSharedFile(String packageName, String relativePath) async {
    try {
      final result = await platform.invokeMethod('readSharedFile', {
        'packageName': packageName,
        'path': relativePath,
      });
      return result?.toString();
    } catch (e) {
      return null;
    }
  }
  
  /// Generate the smali code to add local socket server to target app
  String generateLocalSocketSmali() {
    return '''
# DroidAnalyst Local Socket Server
# Injected for shared UID communication

.class public Lcom/droidanalyst/LocalServer;
.super Ljava/lang/Object;

.field private static serverSocket:Landroid/net/LocalServerSocket;
.field private static running:Z

.method public static start()V
    .locals 4
    
    const-string v0, "$localSocketName"
    
    :try_start
    new-instance v1, Landroid/net/LocalServerSocket;
    invoke-direct {v1, v0}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    sput-object v1, Lcom/droidanalyst/LocalServer;->serverSocket:Landroid/net/LocalServerSocket;
    
    const/4 v2, 0x1
    sput-boolean v2, Lcom/droidanalyst/LocalServer;->running:Z
    
    # Start accept thread
    new-instance v3, Lcom/droidanalyst/LocalServer\$AcceptThread;
    invoke-direct {v3}, Lcom/droidanalyst/LocalServer\$AcceptThread;-><init>()V
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end
    .catch Ljava/io/IOException; {:try_start .. :try_end} :catch
    
    :catch
    return-void
.end method

.method public static stop()V
    .locals 2
    
    const/4 v0, 0x0
    sput-boolean v0, Lcom/droidanalyst/LocalServer;->running:Z
    
    sget-object v1, Lcom/droidanalyst/LocalServer;->serverSocket:Landroid/net/LocalServerSocket;
    if-eqz v1, :end
    
    :try_start
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end
    .catch Ljava/io/IOException; {:try_start .. :try_end} :catch
    
    :catch
    :end
    return-void
.end method
''';
  }
  
  /// Generate gadget config for local socket mode
  Map<String, dynamic> generateLocalSocketGadgetConfig() {
    return {
      'interaction': {
        'type': 'listen',
        'address': 'localabstract:$localSocketName',
        'on_load': 'wait',
      },
    };
  }
}
