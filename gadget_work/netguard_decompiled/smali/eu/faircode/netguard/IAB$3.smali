.class Leu/faircode/netguard/IAB$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/o;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/IAB;


# direct methods
.method constructor <init>(Leu/faircode/netguard/IAB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/IAB$3;->this$0:Leu/faircode/netguard/IAB;

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
    .locals 4

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
    iget-object p2, p0, Leu/faircode/netguard/IAB$3;->this$0:Leu/faircode/netguard/IAB;

    .line 8
    .line 9
    const-string v0, "onQueryPurchasesResponse"

    .line 10
    .line 11
    invoke-static {p2, p1, v0}, Leu/faircode/netguard/IAB;->access$000(Leu/faircode/netguard/IAB;Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, LB/n;

    .line 30
    .line 31
    invoke-virtual {p2}, LB/n;->c()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "android.test.purchased"

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-static {}, LB/a;->c()LB/k;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p2}, LB/n;->b()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, LB/k;->b(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, LB/k;->a()LB/a;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, p0, Leu/faircode/netguard/IAB$3;->this$0:Leu/faircode/netguard/IAB;

    .line 75
    .line 76
    invoke-static {v2}, Leu/faircode/netguard/IAB;->access$100(Leu/faircode/netguard/IAB;)Lcom/android/billingclient/api/b;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Leu/faircode/netguard/IAB$3$1;

    .line 81
    .line 82
    invoke-direct {v3, p0}, Leu/faircode/netguard/IAB$3$1;-><init>(Leu/faircode/netguard/IAB$3;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/b;->b(LB/a;LB/l;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    return-void
.end method
