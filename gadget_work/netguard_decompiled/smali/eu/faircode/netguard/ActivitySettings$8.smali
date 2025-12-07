.class Leu/faircode/netguard/ActivitySettings$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivitySettings;

.field final synthetic val$pref_hosts_download:Landroid/preference/Preference;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$screen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivitySettings;Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Landroid/preference/Preference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivitySettings$8;->val$screen:Landroid/preference/PreferenceScreen;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ActivitySettings$8;->val$prefs:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    iput-object p4, p0, Leu/faircode/netguard/ActivitySettings$8;->val$pref_hosts_download:Landroid/preference/Preference;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .line 1
    new-instance p1, Ljava/io/File;

    .line 2
    .line 3
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "hosts.tmp"

    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "hosts.txt"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$8;->val$screen:Landroid/preference/PreferenceScreen;

    .line 28
    .line 29
    const-string v2, "hosts_url"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "https://www.netguard.me/hosts"

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    const-string v1, ""

    .line 50
    .line 51
    :cond_0
    const/4 v2, 0x1

    .line 52
    :try_start_0
    new-instance v3, Leu/faircode/netguard/DownloadTask;

    .line 53
    .line 54
    iget-object v4, p0, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 55
    .line 56
    new-instance v5, Ljava/net/URL;

    .line 57
    .line 58
    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Leu/faircode/netguard/ActivitySettings$8$1;

    .line 62
    .line 63
    invoke-direct {v1, p0, v0, p1}, Leu/faircode/netguard/ActivitySettings$8$1;-><init>(Leu/faircode/netguard/ActivitySettings$8;Ljava/io/File;Ljava/io/File;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4, v5, p1, v1}, Leu/faircode/netguard/DownloadTask;-><init>(Landroid/app/Activity;Ljava/net/URL;Ljava/io/File;Leu/faircode/netguard/DownloadTask$Listener;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-virtual {v3, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$8;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 90
    .line 91
    .line 92
    :goto_0
    return v2
.end method
