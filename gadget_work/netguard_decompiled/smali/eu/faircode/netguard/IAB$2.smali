.class Leu/faircode/netguard/IAB$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/c;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/IAB;

.field final synthetic val$purchase:LB/n;


# direct methods
.method constructor <init>(Leu/faircode/netguard/IAB;LB/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/IAB$2;->this$0:Leu/faircode/netguard/IAB;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/IAB$2;->val$purchase:LB/n;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/i;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Leu/faircode/netguard/IAB$2;->val$purchase:LB/n;

    .line 11
    .line 12
    invoke-virtual {v1}, LB/n;->c()Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Leu/faircode/netguard/IAB$2;->this$0:Leu/faircode/netguard/IAB;

    .line 33
    .line 34
    invoke-static {v3}, Leu/faircode/netguard/IAB;->access$200(Leu/faircode/netguard/IAB;)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v0, v3}, Leu/faircode/netguard/IAB;->setBought(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Leu/faircode/netguard/IAB$2;->this$0:Leu/faircode/netguard/IAB;

    .line 49
    .line 50
    const-string v1, "onAcknowledgePurchaseResponse"

    .line 51
    .line 52
    invoke-static {v0, p1, v1}, Leu/faircode/netguard/IAB;->access$000(Leu/faircode/netguard/IAB;Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v0, "Acknowledged "

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Leu/faircode/netguard/IAB$2;->val$purchase:LB/n;

    .line 64
    .line 65
    invoke-virtual {v0}, LB/n;->c()Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, ","

    .line 70
    .line 71
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "NetGuard.IAB"

    .line 83
    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Leu/faircode/netguard/IAB$2;->this$0:Leu/faircode/netguard/IAB;

    .line 88
    .line 89
    invoke-static {p1}, Leu/faircode/netguard/IAB;->access$300(Leu/faircode/netguard/IAB;)Leu/faircode/netguard/IAB$Delegate;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v0, p0, Leu/faircode/netguard/IAB$2;->this$0:Leu/faircode/netguard/IAB;

    .line 94
    .line 95
    invoke-interface {p1, v0}, Leu/faircode/netguard/IAB$Delegate;->onReady(Leu/faircode/netguard/IAB;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
