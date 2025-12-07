.class Leu/faircode/netguard/IAB$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/h;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/IAB;


# direct methods
.method constructor <init>(Leu/faircode/netguard/IAB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/IAB$1;->this$0:Leu/faircode/netguard/IAB;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 1
    const-string v0, "NetGuard.IAB"

    .line 2
    .line 3
    const-string v1, "Disconnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Leu/faircode/netguard/IAB$1;->this$0:Leu/faircode/netguard/IAB;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Leu/faircode/netguard/IAB;->access$102(Leu/faircode/netguard/IAB;Lcom/android/billingclient/api/b;)Lcom/android/billingclient/api/b;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/i;)V
    .locals 2

    .line 1
    const-string v0, "Connected"

    .line 2
    .line 3
    const-string v1, "NetGuard.IAB"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Leu/faircode/netguard/IAB$1;->this$0:Leu/faircode/netguard/IAB;

    .line 15
    .line 16
    const-string v1, "onBillingSetupFinished"

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Leu/faircode/netguard/IAB;->access$000(Leu/faircode/netguard/IAB;Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p1, "queryPurchasesAsync/inapp"

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Leu/faircode/netguard/IAB$1;->this$0:Leu/faircode/netguard/IAB;

    .line 28
    .line 29
    invoke-static {p1}, Leu/faircode/netguard/IAB;->access$100(Leu/faircode/netguard/IAB;)Lcom/android/billingclient/api/b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Leu/faircode/netguard/IAB$1$1;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Leu/faircode/netguard/IAB$1$1;-><init>(Leu/faircode/netguard/IAB$1;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "inapp"

    .line 39
    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/b;->f(Ljava/lang/String;LB/o;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
