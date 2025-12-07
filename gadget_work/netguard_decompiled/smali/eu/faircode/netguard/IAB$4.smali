.class Leu/faircode/netguard/IAB$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/p;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/IAB;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Leu/faircode/netguard/IAB;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/IAB$4;->this$0:Leu/faircode/netguard/IAB;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/IAB$4;->val$sku:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/IAB$4;->val$activity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Leu/faircode/netguard/IAB$4;->this$0:Leu/faircode/netguard/IAB;

    .line 8
    .line 9
    const-string v0, "onSkuDetailsResponse"

    .line 10
    .line 11
    invoke-static {p2, p1, v0}, Leu/faircode/netguard/IAB;->access$000(Leu/faircode/netguard/IAB;Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p1, "NetGuard.IAB"

    .line 16
    .line 17
    const-string v0, "onSkuDetailsResponse/purchase"

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/billingclient/api/j;

    .line 37
    .line 38
    iget-object v1, p0, Leu/faircode/netguard/IAB$4;->val$sku:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/billingclient/api/j;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const-string p2, "launchBillingFlow"

    .line 51
    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/d;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/d;->b(Lcom/android/billingclient/api/j;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/billingclient/api/d;->a()Lcom/android/billingclient/api/g;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p2, p0, Leu/faircode/netguard/IAB$4;->this$0:Leu/faircode/netguard/IAB;

    .line 67
    .line 68
    invoke-static {p2}, Leu/faircode/netguard/IAB;->access$100(Leu/faircode/netguard/IAB;)Lcom/android/billingclient/api/b;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    iget-object v0, p0, Leu/faircode/netguard/IAB$4;->val$activity:Landroid/app/Activity;

    .line 73
    .line 74
    invoke-virtual {p2, v0, p1}, Lcom/android/billingclient/api/b;->d(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/i;

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method
