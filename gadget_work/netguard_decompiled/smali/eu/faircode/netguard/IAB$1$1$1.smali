.class Leu/faircode/netguard/IAB$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/o;


# instance fields
.field final synthetic this$2:Leu/faircode/netguard/IAB$1$1;

.field final synthetic val$purchases:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Leu/faircode/netguard/IAB$1$1;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/IAB$1$1$1;->this$2:Leu/faircode/netguard/IAB$1$1;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/IAB$1$1$1;->val$purchases:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/IAB$1$1$1;->val$purchases:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Leu/faircode/netguard/IAB$1$1$1;->this$2:Leu/faircode/netguard/IAB$1$1;

    .line 7
    .line 8
    iget-object p2, p2, Leu/faircode/netguard/IAB$1$1;->this$1:Leu/faircode/netguard/IAB$1;

    .line 9
    .line 10
    iget-object p2, p2, Leu/faircode/netguard/IAB$1;->this$0:Leu/faircode/netguard/IAB;

    .line 11
    .line 12
    iget-object v0, p0, Leu/faircode/netguard/IAB$1$1$1;->val$purchases:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p2, p1, v0}, Leu/faircode/netguard/IAB;->onPurchasesUpdated(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
