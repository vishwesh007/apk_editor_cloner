.class Leu/faircode/netguard/AdapterRule$ViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterRule$ViewHolder;

.field final synthetic val$otherParent:Landroid/view/View;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$ViewHolder$2;->this$0:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$ViewHolder$2;->val$otherParent:Landroid/view/View;

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
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$ViewHolder$2;->this$0:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 7
    .line 8
    iget-object v1, v1, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbOther:Landroid/widget/CheckBox;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    add-int/2addr v1, v2

    .line 25
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$ViewHolder$2;->val$otherParent:Landroid/view/View;

    .line 33
    .line 34
    new-instance v2, Landroid/view/TouchDelegate;

    .line 35
    .line 36
    iget-object v3, p0, Leu/faircode/netguard/AdapterRule$ViewHolder$2;->this$0:Leu/faircode/netguard/AdapterRule$ViewHolder;

    .line 37
    .line 38
    iget-object v3, v3, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbOther:Landroid/widget/CheckBox;

    .line 39
    .line 40
    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
