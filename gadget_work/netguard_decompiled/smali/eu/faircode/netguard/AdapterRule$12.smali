.class Leu/faircode/netguard/AdapterRule$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterRule;

.field final synthetic val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

.field final synthetic val$rule:Leu/faircode/netguard/Rule;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/AdapterRule$ViewHolder;Leu/faircode/netguard/Rule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$12;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$12;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/AdapterRule$12;->val$rule:Leu/faircode/netguard/Rule;

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
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Leu/faircode/netguard/AdapterRule$12$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Leu/faircode/netguard/AdapterRule$12$1;-><init>(Leu/faircode/netguard/AdapterRule$12;)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f100067

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v1, v0}, Leu/faircode/netguard/Util;->areYouSure(Landroid/content/Context;ILeu/faircode/netguard/Util$DoubtListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
