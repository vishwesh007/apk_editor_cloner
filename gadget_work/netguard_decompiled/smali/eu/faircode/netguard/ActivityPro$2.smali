.class Leu/faircode/netguard/ActivityPro$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu/faircode/netguard/IAB$Delegate;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityPro;

.field final synthetic val$tvError:Landroid/widget/TextView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityPro;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityPro$2;->val$view:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ActivityPro$2;->val$tvError:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2;->val$view:Landroid/view/View;

    .line 2
    .line 3
    new-instance v1, Leu/faircode/netguard/ActivityPro$2$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Leu/faircode/netguard/ActivityPro$2$2;-><init>(Leu/faircode/netguard/ActivityPro$2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onReady(Leu/faircode/netguard/IAB;)V
    .locals 2

    .line 1
    const-string v0, "NetGuard.Pro"

    .line 2
    .line 3
    const-string v1, "IAB ready"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2;->val$view:Landroid/view/View;

    .line 9
    .line 10
    new-instance v1, Leu/faircode/netguard/ActivityPro$2$1;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Leu/faircode/netguard/ActivityPro$2$1;-><init>(Leu/faircode/netguard/ActivityPro$2;Leu/faircode/netguard/IAB;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
