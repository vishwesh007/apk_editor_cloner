.class final Lu/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lu/i;

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lu/i;Ljava/lang/Object;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p5, p0, Lu/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu/d;->d:Lu/i;

    .line 4
    .line 5
    iput-object p2, p0, Lu/d;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lu/d;->b:Landroid/view/ViewPropertyAnimator;

    .line 8
    .line 9
    iput-object p4, p0, Lu/d;->c:Landroid/view/View;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget p1, p0, Lu/d;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lu/d;->d:Lu/i;

    .line 4
    .line 5
    iget-object v1, p0, Lu/d;->e:Ljava/lang/Object;

    .line 6
    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    iget-object v3, p0, Lu/d;->c:Landroid/view/View;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    iget-object v5, p0, Lu/d;->b:Landroid/view/ViewPropertyAnimator;

    .line 13
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    check-cast v1, Landroidx/recyclerview/widget/P;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lu/i;->q:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lu/i;->o()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_0
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 49
    .line 50
    .line 51
    check-cast v1, Lu/g;

    .line 52
    .line 53
    iget-object p1, v1, Lu/g;->a:Landroidx/recyclerview/widget/P;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Lu/i;->r:Ljava/util/ArrayList;

    .line 59
    .line 60
    iget-object v1, v1, Lu/g;->a:Landroidx/recyclerview/widget/P;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lu/i;->o()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lu/d;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lu/d;->d:Lu/i;

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
    iget-object p1, p0, Lu/d;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lu/g;

    .line 16
    .line 17
    iget-object p1, p1, Lu/g;->a:Landroidx/recyclerview/widget/P;

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
