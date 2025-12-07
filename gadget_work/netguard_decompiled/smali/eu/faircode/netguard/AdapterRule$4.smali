.class Leu/faircode/netguard/AdapterRule$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterRule;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rule:Leu/faircode/netguard/Rule;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Leu/faircode/netguard/Rule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$4;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$4;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/AdapterRule$4;->val$rule:Leu/faircode/netguard/Rule;

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
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$4;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    const-class v1, Leu/faircode/netguard/ActivityMain;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$4;->val$rule:Leu/faircode/netguard/Rule;

    .line 11
    .line 12
    iget v0, v0, Leu/faircode/netguard/Rule;->uid:I

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Search"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string v0, "Related"

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$4;->val$context:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
