.class final Lu/b;
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
    iput-object p1, p0, Lu/b;->e:Lu/i;

    .line 2
    .line 3
    iput-object p2, p0, Lu/b;->d:Ljava/util/ArrayList;

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
    .locals 14

    .line 1
    iget-object v0, p0, Lu/b;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v9, p0, Lu/b;->e:Lu/i;

    .line 12
    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lu/g;

    .line 20
    .line 21
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v3, v2, Lu/g;->a:Landroidx/recyclerview/widget/P;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    move-object v7, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object v3, v3, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 32
    .line 33
    move-object v7, v3

    .line 34
    :goto_1
    iget-object v3, v2, Lu/g;->b:Landroidx/recyclerview/widget/P;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    iget-object v4, v3, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 39
    .line 40
    :cond_2
    move-object v10, v4

    .line 41
    const/4 v11, 0x0

    .line 42
    if-eqz v7, :cond_3

    .line 43
    .line 44
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v9}, Landroidx/recyclerview/widget/U;->g()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget-object v3, v9, Lu/i;->r:Ljava/util/ArrayList;

    .line 57
    .line 58
    iget-object v4, v2, Lu/g;->a:Landroidx/recyclerview/widget/P;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget v3, v2, Lu/g;->e:I

    .line 64
    .line 65
    iget v4, v2, Lu/g;->c:I

    .line 66
    .line 67
    sub-int/2addr v3, v4

    .line 68
    int-to-float v3, v3

    .line 69
    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 70
    .line 71
    .line 72
    iget v3, v2, Lu/g;->f:I

    .line 73
    .line 74
    iget v4, v2, Lu/g;->d:I

    .line 75
    .line 76
    sub-int/2addr v3, v4

    .line 77
    int-to-float v3, v3

    .line 78
    invoke-virtual {v6, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    new-instance v13, Lu/d;

    .line 86
    .line 87
    const/4 v8, 0x1

    .line 88
    move-object v3, v13

    .line 89
    move-object v4, v9

    .line 90
    move-object v5, v2

    .line 91
    invoke-direct/range {v3 .. v8}, Lu/d;-><init>(Lu/i;Ljava/lang/Object;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 99
    .line 100
    .line 101
    :cond_3
    if-eqz v10, :cond_0

    .line 102
    .line 103
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    iget-object v4, v9, Lu/i;->r:Ljava/util/ArrayList;

    .line 108
    .line 109
    iget-object v5, v2, Lu/g;->b:Landroidx/recyclerview/widget/P;

    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v9}, Landroidx/recyclerview/widget/U;->g()J

    .line 123
    .line 124
    .line 125
    move-result-wide v5

    .line 126
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const/high16 v5, 0x3f800000    # 1.0f

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    new-instance v5, Lu/e;

    .line 137
    .line 138
    invoke-direct {v5, v9, v2, v3, v10}, Lu/e;-><init>(Lu/i;Lu/g;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    .line 152
    .line 153
    iget-object v1, v9, Lu/i;->n:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    return-void
.end method
