.class Leu/faircode/netguard/ActivityPro$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivityPro$2;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityPro$2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityPro$2$2;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityPro$2$2;->val$msg:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2$2;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 2
    .line 3
    iget-object v0, v0, Leu/faircode/netguard/ActivityPro$2;->val$tvError:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object v1, p0, Leu/faircode/netguard/ActivityPro$2$2;->val$msg:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2$2;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 11
    .line 12
    iget-object v0, v0, Leu/faircode/netguard/ActivityPro$2;->val$tvError:Landroid/widget/TextView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
