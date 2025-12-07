.class Leu/faircode/netguard/ActivityMain$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu/faircode/netguard/DownloadTask$Listener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$33;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityMain$33;->val$prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 3

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$33;->val$prefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "malware"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$33;->val$prefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "filter"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$33;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "malware download"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$33;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
