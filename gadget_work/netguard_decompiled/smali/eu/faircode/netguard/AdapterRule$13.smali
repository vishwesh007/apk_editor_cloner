.class Leu/faircode/netguard/AdapterRule$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterRule;

.field final synthetic val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/AdapterRule$ViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$13;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$13;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$13;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/AdapterRule;->access$200(Leu/faircode/netguard/AdapterRule;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    xor-int/2addr v1, v2

    .line 9
    invoke-static {v0, v1}, Leu/faircode/netguard/AdapterRule;->access$202(Leu/faircode/netguard/AdapterRule;Z)Z

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/util/TypedValue;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$13;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 26
    .line 27
    invoke-static {v1}, Leu/faircode/netguard/AdapterRule;->access$200(Leu/faircode/netguard/AdapterRule;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const v1, 0x7f0400bd

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const v1, 0x7f0400be

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$13;->val$holder:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 44
    .line 45
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivLive:Landroid/widget/ImageView;

    .line 46
    .line 47
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$13;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 53
    .line 54
    invoke-static {p1}, Leu/faircode/netguard/AdapterRule;->access$200(Leu/faircode/netguard/AdapterRule;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$13;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method
