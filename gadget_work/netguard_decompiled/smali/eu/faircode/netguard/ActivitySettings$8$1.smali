.class Leu/faircode/netguard/ActivitySettings$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu/faircode/netguard/DownloadTask$Listener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivitySettings$8;

.field final synthetic val$hosts:Ljava/io/File;

.field final synthetic val$tmp:Ljava/io/File;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivitySettings$8;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$8$1;->this$1:Leu/faircode/netguard/ActivitySettings$8;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivitySettings$8$1;->val$hosts:Ljava/io/File;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ActivitySettings$8$1;->val$tmp:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->val$tmp:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->val$tmp:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 6

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->val$hosts:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->val$hosts:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->val$tmp:Ljava/io/File;

    .line 15
    .line 16
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$8$1;->val$hosts:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Ljava/util/Date;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$8$1;->this$1:Leu/faircode/netguard/ActivitySettings$8;

    .line 43
    .line 44
    iget-object v1, v1, Leu/faircode/netguard/ActivitySettings$8;->val$prefs:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "hosts_last_download"

    .line 51
    .line 52
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$8$1;->this$1:Leu/faircode/netguard/ActivitySettings$8;

    .line 60
    .line 61
    iget-object v1, v1, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 62
    .line 63
    invoke-static {v1}, Leu/faircode/netguard/ActivitySettings;->access$300(Leu/faircode/netguard/ActivitySettings;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$8$1;->this$1:Leu/faircode/netguard/ActivitySettings$8;

    .line 71
    .line 72
    iget-object v3, v1, Leu/faircode/netguard/ActivitySettings$8;->val$pref_hosts_download:Landroid/preference/Preference;

    .line 73
    .line 74
    iget-object v1, v1, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    new-array v5, v4, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object v0, v5, v2

    .line 80
    .line 81
    const v0, 0x7f10006d

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->this$1:Leu/faircode/netguard/ActivitySettings$8;

    .line 92
    .line 93
    iget-object v0, v0, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 94
    .line 95
    const v1, 0x7f10006e

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    .line 104
    .line 105
    :cond_1
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->this$1:Leu/faircode/netguard/ActivitySettings$8;

    .line 106
    .line 107
    iget-object v0, v0, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 108
    .line 109
    const-string v1, "hosts file download"

    .line 110
    .line 111
    invoke-static {v1, v0, v2}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->val$tmp:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->val$tmp:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->this$1:Leu/faircode/netguard/ActivitySettings$8;

    .line 15
    .line 16
    iget-object v0, v0, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 17
    .line 18
    invoke-static {v0}, Leu/faircode/netguard/ActivitySettings;->access$300(Leu/faircode/netguard/ActivitySettings;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8$1;->this$1:Leu/faircode/netguard/ActivitySettings$8;

    .line 25
    .line 26
    iget-object v0, v0, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
