.class Leu/faircode/netguard/AdapterRule$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu/faircode/netguard/Util$DoubtListener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/AdapterRule$16;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule$16;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$16$1;->this$1:Leu/faircode/netguard/AdapterRule$16;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSure()V
    .locals 3

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$16$1;->this$1:Leu/faircode/netguard/AdapterRule$16;

    .line 2
    .line 3
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$16;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$16$1;->this$1:Leu/faircode/netguard/AdapterRule$16;

    .line 10
    .line 11
    iget-object v1, v1, Leu/faircode/netguard/AdapterRule$16;->val$rule:Leu/faircode/netguard/Rule;

    .line 12
    .line 13
    iget v1, v1, Leu/faircode/netguard/Rule;->uid:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Leu/faircode/netguard/DatabaseHelper;->clearAccess(IZ)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$16$1;->this$1:Leu/faircode/netguard/AdapterRule$16;

    .line 20
    .line 21
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$16;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 22
    .line 23
    invoke-static {v0}, Leu/faircode/netguard/AdapterRule;->access$200(Leu/faircode/netguard/AdapterRule;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$16$1;->this$1:Leu/faircode/netguard/AdapterRule$16;

    .line 30
    .line 31
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$16;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$16$1;->this$1:Leu/faircode/netguard/AdapterRule$16;

    .line 37
    .line 38
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$16;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 39
    .line 40
    invoke-static {v0}, Leu/faircode/netguard/AdapterRule;->access$500(Leu/faircode/netguard/AdapterRule;)Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$16$1;->this$1:Leu/faircode/netguard/AdapterRule$16;

    .line 47
    .line 48
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$16;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 49
    .line 50
    invoke-static {v0}, Leu/faircode/netguard/AdapterRule;->access$500(Leu/faircode/netguard/AdapterRule;)Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$16$1;->this$1:Leu/faircode/netguard/AdapterRule$16;

    .line 55
    .line 56
    iget-object v1, v1, Leu/faircode/netguard/AdapterRule$16;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/recyclerview/widget/P;->getAdapterPosition()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->l0(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method
