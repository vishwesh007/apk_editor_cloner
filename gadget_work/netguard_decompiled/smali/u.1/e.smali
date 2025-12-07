.class final Lu/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lu/i;

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lu/i;Landroidx/recyclerview/widget/P;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lu/e;->a:I

    .line 1
    iput-object p1, p0, Lu/e;->d:Lu/i;

    iput-object p2, p0, Lu/e;->e:Ljava/lang/Object;

    iput-object p3, p0, Lu/e;->c:Landroid/view/View;

    iput-object p4, p0, Lu/e;->b:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lu/i;Lu/g;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu/e;->a:I

    .line 2
    iput-object p1, p0, Lu/e;->d:Lu/i;

    iput-object p2, p0, Lu/e;->e:Ljava/lang/Object;

    iput-object p3, p0, Lu/e;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lu/e;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Lu/e;->c:Landroid/view/View;

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget p1, p0, Lu/e;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lu/e;->d:Lu/i;

    .line 4
    .line 5
    iget-object v1, p0, Lu/e;->e:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Lu/e;->b:Landroid/view/ViewPropertyAnimator;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 15
    .line 16
    .line 17
    check-cast v1, Landroidx/recyclerview/widget/P;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, v0, Lu/i;->o:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lu/i;->o()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 32
    .line 33
    .line 34
    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    iget-object v2, p0, Lu/e;->c:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 46
    .line 47
    .line 48
    check-cast v1, Lu/g;

    .line 49
    .line 50
    iget-object p1, v1, Lu/g;->b:Landroidx/recyclerview/widget/P;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, v0, Lu/i;->r:Ljava/util/ArrayList;

    .line 56
    .line 57
    iget-object v1, v1, Lu/g;->b:Landroidx/recyclerview/widget/P;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lu/i;->o()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lu/e;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lu/e;->d:Lu/i;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :goto_0
    iget-object p1, p0, Lu/e;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lu/g;

    .line 16
    .line 17
    iget-object p1, p1, Lu/g;->b:Landroidx/recyclerview/widget/P;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
