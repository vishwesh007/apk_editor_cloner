.class final Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/e;->d:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/e;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->e:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :pswitch_0
    check-cast v2, Landroidx/recyclerview/widget/i;

    .line 11
    .line 12
    iget v0, v2, Landroidx/recyclerview/widget/i;->A:I

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    iget-object v4, v2, Landroidx/recyclerview/widget/i;->z:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    if-eq v0, v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x3

    .line 26
    iput v0, v2, Landroidx/recyclerview/widget/i;->A:I

    .line 27
    .line 28
    new-array v0, v3, [F

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Float;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x0

    .line 41
    aput v2, v0, v3

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    aput v2, v0, v1

    .line 45
    .line 46
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x1f4

    .line 50
    .line 51
    int-to-long v0, v0

    .line 52
    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :goto_1
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    iget-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    .line 73
    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    iget-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->s()V

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_2
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
