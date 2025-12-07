.class final Landroidx/swiperefreshlayout/widget/c;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field final synthetic e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/swiperefreshlayout/widget/c;->d:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/c;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

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
    .locals 2

    .line 1
    iget p2, p0, Landroidx/swiperefreshlayout/widget/c;->d:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/c;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p2, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Landroidx/swiperefreshlayout/widget/a;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 12
    .line 13
    .line 14
    iget-object p2, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Landroidx/swiperefreshlayout/widget/a;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/high16 p2, -0x80000000

    .line 24
    .line 25
    mul-float p2, p2, p1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    add-float/2addr p2, v1

    .line 29
    iget-object v1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Landroidx/swiperefreshlayout/widget/a;

    .line 30
    .line 31
    invoke-virtual {v1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:Landroidx/swiperefreshlayout/widget/a;

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e(F)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
