.class Leu/faircode/netguard/ActivityLog$7;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityLog;

.field final synthetic val$pcap_file:Ljava/io/File;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityLog;Landroid/content/SharedPreferences;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityLog$7;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityLog$7;->val$prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ActivityLog$7;->val$pcap_file:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$7;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 2
    .line 3
    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p1, v0}, Leu/faircode/netguard/DatabaseHelper;->clearLog(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$7;->val$prefs:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    const-string v0, "pcap"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-string v0, "Delete PCAP failed"

    .line 21
    .line 22
    const-string v2, "NetGuard.Log"

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$7;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 27
    .line 28
    invoke-static {v1, p1}, Leu/faircode/netguard/ServiceSinkhole;->setPcap(ZLandroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$7;->val$pcap_file:Ljava/io/File;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$7;->val$pcap_file:Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 p1, 0x1

    .line 51
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$7;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 52
    .line 53
    invoke-static {p1, v0}, Leu/faircode/netguard/ServiceSinkhole;->setPcap(ZLandroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$7;->val$pcap_file:Ljava/io/File;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$7;->val$pcap_file:Ljava/io/File;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 77
    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$7;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 2
    .line 3
    invoke-static {p1}, Leu/faircode/netguard/ActivityLog;->access$500(Leu/faircode/netguard/ActivityLog;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$7;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 10
    .line 11
    invoke-static {p1}, Leu/faircode/netguard/ActivityLog;->access$000(Leu/faircode/netguard/ActivityLog;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
