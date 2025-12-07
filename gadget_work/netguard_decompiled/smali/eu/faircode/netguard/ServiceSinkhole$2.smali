.class Leu/faircode/netguard/ServiceSinkhole$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ServiceSinkhole;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$2;->this$0:Leu/faircode/netguard/ServiceSinkhole;

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
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Received "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetGuard.Service"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Leu/faircode/netguard/Util;->logExtras(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$2;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 24
    .line 25
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$4100(Leu/faircode/netguard/ServiceSinkhole;)Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Leu/faircode/netguard/ServiceSinkhole$2$1;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole$2$1;-><init>(Leu/faircode/netguard/ServiceSinkhole$2;Landroid/content/Context;Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 35
    .line 36
    .line 37
    return-void
.end method
