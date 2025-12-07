.class Leu/faircode/netguard/IAB$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/o;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/IAB$1;


# direct methods
.method constructor <init>(Leu/faircode/netguard/IAB$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/IAB$1$1;->this$1:Leu/faircode/netguard/IAB$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Leu/faircode/netguard/IAB$1$1;->this$1:Leu/faircode/netguard/IAB$1;

    .line 13
    .line 14
    iget-object p2, p2, Leu/faircode/netguard/IAB$1;->this$0:Leu/faircode/netguard/IAB;

    .line 15
    .line 16
    invoke-virtual {p2, p1, v0}, Leu/faircode/netguard/IAB;->onPurchasesUpdated(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p1, "NetGuard.IAB"

    .line 21
    .line 22
    const-string p2, "queryPurchasesAsync/subs"

    .line 23
    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Leu/faircode/netguard/IAB$1$1;->this$1:Leu/faircode/netguard/IAB$1;

    .line 28
    .line 29
    iget-object p1, p1, Leu/faircode/netguard/IAB$1;->this$0:Leu/faircode/netguard/IAB;

    .line 30
    .line 31
    invoke-static {p1}, Leu/faircode/netguard/IAB;->access$100(Leu/faircode/netguard/IAB;)Lcom/android/billingclient/api/b;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance p2, Leu/faircode/netguard/IAB$1$1$1;

    .line 36
    .line 37
    invoke-direct {p2, p0, v0}, Leu/faircode/netguard/IAB$1$1$1;-><init>(Leu/faircode/netguard/IAB$1$1;Ljava/util/ArrayList;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "subs"

    .line 41
    .line 42
    invoke-virtual {p1, v0, p2}, Lcom/android/billingclient/api/b;->f(Ljava/lang/String;LB/o;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
