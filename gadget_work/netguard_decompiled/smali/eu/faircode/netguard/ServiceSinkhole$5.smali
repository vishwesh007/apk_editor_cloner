.class Leu/faircode/netguard/ServiceSinkhole$5;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ServiceSinkhole;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$5;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "networkType"

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/16 v0, 0x11

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Received "

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "NetGuard.Service"

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Leu/faircode/netguard/Util;->logExtras(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$5;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    const-string v0, "connectivity changed"

    .line 40
    .line 41
    invoke-static {v0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
