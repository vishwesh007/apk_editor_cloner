.class final Lu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lu/i;


# direct methods
.method constructor <init>(Lu/i;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/a;->e:Lu/i;

    .line 2
    .line 3
    iput-object p2, p0, Lu/a;->d:Ljava/util/ArrayList;

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
    .locals 12

    .line 1
    iget-object v0, p0, Lu/a;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v4, p0, Lu/a;->e:Lu/i;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lu/h;

    .line 20
    .line 21
    iget-object v5, v2, Lu/h;->a:Landroidx/recyclerview/widget/P;

    .line 22
    .line 23
    iget v3, v2, Lu/h;->b:I

    .line 24
    .line 25
    iget v6, v2, Lu/h;->c:I

    .line 26
    .line 27
    iget v7, v2, Lu/h;->d:I

    .line 28
    .line 29
    iget v2, v2, Lu/h;->e:I

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v8, v5, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 35
    .line 36
    sub-int/2addr v7, v3

    .line 37
    sub-int/2addr v2, v6

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 46
    .line 47
    .line 48
    :cond_0
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iget-object v3, v4, Lu/i;->p:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Landroidx/recyclerview/widget/U;->h()J

    .line 67
    .line 68
    .line 69
    move-result-wide v10

    .line 70
    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    new-instance v11, Lu/f;

    .line 75
    .line 76
    move-object v3, v11

    .line 77
    move v6, v7

    .line 78
    move-object v7, v8

    .line 79
    move v8, v2

    .line 80
    invoke-direct/range {v3 .. v9}, Lu/f;-><init>(Lu/i;Landroidx/recyclerview/widget/P;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    .line 93
    .line 94
    iget-object v1, v4, Lu/i;->m:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    return-void
.end method
