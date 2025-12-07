.class Leu/faircode/netguard/ActivityForwardApproval$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityForwardApproval;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityForwardApproval;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwardApproval$2;->this$0:Leu/faircode/netguard/ActivityForwardApproval;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwardApproval$2;->this$0:Leu/faircode/netguard/ActivityForwardApproval;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
