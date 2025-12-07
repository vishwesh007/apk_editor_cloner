.class Leu/faircode/netguard/ServiceSinkhole$CommandHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ServiceSinkhole$CommandHandler;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$1;->val$prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "New call state="

    .line 4
    .line 5
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "NetGuard.Service"

    .line 16
    .line 17
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$1;->val$prefs:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    const-string v0, "enabled"

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const-string p2, "call state"

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 36
    .line 37
    iget-object p1, p1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 38
    .line 39
    invoke-static {p2, p1}, Leu/faircode/netguard/ServiceSinkhole;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 44
    .line 45
    iget-object p1, p1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-static {p2, p1, v0}, Leu/faircode/netguard/ServiceSinkhole;->stop(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method
