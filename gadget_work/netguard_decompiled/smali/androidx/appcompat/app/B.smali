.class final Landroidx/appcompat/app/B;
.super Landroidx/core/view/t0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/app/B;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/view/t0;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Landroidx/appcompat/app/B;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    check-cast v1, Landroidx/appcompat/app/U;

    .line 11
    .line 12
    iget-object p1, v1, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v1, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/core/view/r0;->f(Landroidx/core/view/s0;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, v1, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    .line 25
    .line 26
    return-void

    .line 27
    :goto_0
    check-cast v1, Landroidx/appcompat/app/h0;

    .line 28
    .line 29
    iput-object v0, v1, Landroidx/appcompat/app/h0;->t:Landroidx/appcompat/view/n;

    .line 30
    .line 31
    iget-object p1, v1, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/app/B;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/core/view/t0;->onAnimationStart(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Landroidx/appcompat/app/B;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroidx/appcompat/app/U;

    .line 13
    .line 14
    iget-object v0, p1, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v0, v0, Landroid/view/View;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/view/View;

    .line 37
    .line 38
    invoke-static {p1}, Landroidx/core/view/f0;->I(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
