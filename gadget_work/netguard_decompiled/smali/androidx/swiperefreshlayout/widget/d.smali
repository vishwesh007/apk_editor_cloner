.class final Landroidx/swiperefreshlayout/widget/d;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field final synthetic e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/swiperefreshlayout/widget/d;->d:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/d;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    iget p2, p0, Landroidx/swiperefreshlayout/widget/d;->d:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/d;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    sub-float/2addr v1, p1

    .line 12
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Landroidx/swiperefreshlayout/widget/a;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Landroidx/swiperefreshlayout/widget/a;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget p2, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    .line 27
    .line 28
    iget v2, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sub-int/2addr p2, v2

    .line 35
    iget v2, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->v:I

    .line 36
    .line 37
    sub-int/2addr p2, v2

    .line 38
    int-to-float p2, p2

    .line 39
    mul-float p2, p2, p1

    .line 40
    .line 41
    float-to-int p2, p2

    .line 42
    add-int/2addr v2, p2

    .line 43
    iget-object p2, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Landroidx/swiperefreshlayout/widget/a;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    sub-int/2addr v2, p2

    .line 50
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l(I)V

    .line 51
    .line 52
    .line 53
    iget-object p2, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->y:Ly/d;

    .line 54
    .line 55
    sub-float/2addr v1, p1

    .line 56
    invoke-virtual {p2, v1}, Ly/d;->c(F)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
