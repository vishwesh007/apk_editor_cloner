// Simple delayed toast script
console.log("[FRIDA] Script starting...");

setTimeout(function() {
    console.log("[FRIDA] Attempting Java.perform...");
    
    if (Java.available) {
        Java.perform(function() {
            console.log("[FRIDA] Inside Java.perform");
            
            try {
                var Log = Java.use('android.util.Log');
                Log.i("FRIDA", "Frida script executing!");
                
                var Toast = Java.use('android.widget.Toast');
                var ActivityThread = Java.use('android.app.ActivityThread');
                var context = ActivityThread.currentApplication().getApplicationContext();
                
                if (context === null) {
                    Log.e("FRIDA", "Context is null!");
                    console.log("[FRIDA] Context is null");
                    return;
                }
                
                Log.i("FRIDA", "Got context: " + context);
                console.log("[FRIDA] Got context");
                
                Java.scheduleOnMainThread(function() {
                    try {
                        var JavaString = Java.use('java.lang.String');
                        var msg = JavaString.$new("FRIDA TOAST!");
                        Toast.makeText(context, msg, 1).show();
                        Log.i("FRIDA", "Toast should be visible now!");
                        console.log("[FRIDA] Toast shown!");
                    } catch(e) {
                        Log.e("FRIDA", "Toast error: " + e);
                        console.log("[FRIDA] Toast error: " + e);
                    }
                });
            } catch(e) {
                console.log("[FRIDA] Error in Java.perform: " + e);
            }
        });
    } else {
        console.log("[FRIDA] Java not available");
    }
}, 3000);
