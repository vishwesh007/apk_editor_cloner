.class Leu/faircode/netguard/AdapterRule$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterRule;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rule:Leu/faircode/netguard/Rule;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$7;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$7;->val$rule:Leu/faircode/netguard/Rule;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/AdapterRule$7;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$7;->val$rule:Leu/faircode/netguard/Rule;

    .line 2
    .line 3
    iput-boolean p2, p1, Leu/faircode/netguard/Rule;->apply:Z

    .line 4
    .line 5
    iget-object p2, p0, Leu/faircode/netguard/AdapterRule$7;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 6
    .line 7
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$7;->val$context:Landroid/content/Context;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p2}, Leu/faircode/netguard/AdapterRule;->access$000(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {p2, v0, p1, v1, v2}, Leu/faircode/netguard/AdapterRule;->access$100(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Leu/faircode/netguard/Rule;ZLjava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
