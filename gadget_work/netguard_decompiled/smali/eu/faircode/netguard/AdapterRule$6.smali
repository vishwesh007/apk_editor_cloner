.class Leu/faircode/netguard/AdapterRule$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterRule;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$launch:Landroid/content/Intent;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$6;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$6;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/AdapterRule$6;->val$launch:Landroid/content/Intent;

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
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$6;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$6;->val$launch:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
