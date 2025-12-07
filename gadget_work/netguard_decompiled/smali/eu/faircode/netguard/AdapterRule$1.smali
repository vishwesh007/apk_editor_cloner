.class Leu/faircode/netguard/AdapterRule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterRule;

.field final synthetic val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

.field final synthetic val$rule:Leu/faircode/netguard/Rule;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Leu/faircode/netguard/AdapterRule$ViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$1;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$1;->val$rule:Leu/faircode/netguard/Rule;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/AdapterRule$1;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$1;->val$rule:Leu/faircode/netguard/Rule;

    .line 2
    .line 3
    iget-boolean v0, p1, Leu/faircode/netguard/Rule;->expanded:Z

    .line 4
    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p1, Leu/faircode/netguard/Rule;->expanded:Z

    .line 8
    .line 9
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$1;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 10
    .line 11
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$1;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/P;->getAdapterPosition()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/C;->notifyItemChanged(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
