.class Leu/faircode/netguard/ActivityMain$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;

.field final synthetic val$actionView:Landroid/view/View;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$2;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityMain$2;->val$actionView:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [I

    .line 3
    .line 4
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$2;->val$actionView:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$2;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 10
    .line 11
    const v1, 0x7f100089

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    aget v1, p1, v1

    .line 21
    .line 22
    iget-object v3, p0, Leu/faircode/netguard/ActivityMain$2;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 23
    .line 24
    invoke-static {v3}, Leu/faircode/netguard/ActivityMain;->access$100(Leu/faircode/netguard/ActivityMain;)Landroid/widget/ImageView;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/2addr v3, v1

    .line 33
    aget p1, p1, v2

    .line 34
    .line 35
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain$2;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 36
    .line 37
    invoke-static {v1}, Leu/faircode/netguard/ActivityMain;->access$100(Leu/faircode/netguard/ActivityMain;)Landroid/widget/ImageView;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v1, p1

    .line 46
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    sub-int/2addr v1, p1

    .line 55
    int-to-float p1, v1

    .line 56
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/16 v1, 0x33

    .line 61
    .line 62
    invoke-virtual {v0, v1, v3, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    .line 67
    .line 68
    return v2
.end method
