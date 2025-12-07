// Simple test script
console.log("[FRIDA] Script started!");
console.log("[FRIDA] Hello from Frida Gadget!");

Java.perform(function() {
    console.log("[FRIDA] Java.perform called successfully");
    var Log = Java.use('android.util.Log');
    Log.i("FRIDA_TEST", "Frida script is running!");
    
    try {
        var Toast = Java.use('android.widget.Toast');
        var context = Java.use('android.app.ActivityThread').currentApplication().getApplicationContext();
        var String = Java.use('java.lang.String');
        
        console.log("[FRIDA] Got Toast, context, String classes");
        Log.i("FRIDA_TEST", "Got all classes");
        
        Java.scheduleOnMainThread(function() {
            try {
                Toast.makeText(context, String.$new("FRIDA WORKS!"), 1).show();
                Log.i("FRIDA_TEST", "Toast shown successfully!");
            } catch (e) {
                Log.e("FRIDA_TEST", "Toast error: " + e);
            }
        });
    } catch (e) {
        console.log("[FRIDA] Error: " + e);
        Log.e("FRIDA_TEST", "Error: " + e);
    }
});
