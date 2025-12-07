.class public final Lu/i;
.super Landroidx/recyclerview/widget/U;
.source "SourceFile"


# static fields
.field private static s:Landroid/animation/TimeInterpolator;


# instance fields
.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field l:Ljava/util/ArrayList;

.field m:Ljava/util/ArrayList;

.field n:Ljava/util/ArrayList;

.field o:Ljava/util/ArrayList;

.field p:Ljava/util/ArrayList;

.field q:Ljava/util/ArrayList;

.field r:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/U;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu/i;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lu/i;->i:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lu/i;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lu/i;->l:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lu/i;->m:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lu/i;->n:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lu/i;->o:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lu/i;->p:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lu/i;->q:Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lu/i;->r:Ljava/util/ArrayList;

    .line 80
    .line 81
    return-void
.end method

.method static n(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/recyclerview/widget/P;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private r(Landroidx/recyclerview/widget/P;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lu/g;

    .line 14
    .line 15
    invoke-direct {p0, v1, p1}, Lu/i;->s(Lu/g;Landroidx/recyclerview/widget/P;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, v1, Lu/g;->a:Landroidx/recyclerview/widget/P;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v1, Lu/g;->b:Landroidx/recyclerview/widget/P;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method private s(Lu/g;Landroidx/recyclerview/widget/P;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lu/g;->b:Landroidx/recyclerview/widget/P;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    iput-object v1, p1, Lu/g;->b:Landroidx/recyclerview/widget/P;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lu/g;->a:Landroidx/recyclerview/widget/P;

    .line 10
    .line 11
    if-ne v0, p2, :cond_1

    .line 12
    .line 13
    iput-object v1, p1, Lu/g;->a:Landroidx/recyclerview/widget/P;

    .line 14
    .line 15
    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 16
    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p2, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p2, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method private u(Landroidx/recyclerview/widget/P;)V
    .locals 2

    .line 1
    sget-object v0, Lu/i;->s:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lu/i;->s:Landroid/animation/TimeInterpolator;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lu/i;->s:Landroid/animation/TimeInterpolator;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lu/i;->p(Landroidx/recyclerview/widget/P;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/P;Landroidx/recyclerview/widget/P;IIII)Z
    .locals 9

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    move v5, p6

    .line 9
    invoke-virtual/range {v0 .. v5}, Lu/i;->l(Landroidx/recyclerview/widget/P;IIII)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {p0, p1}, Lu/i;->u(Landroidx/recyclerview/widget/P;)V

    .line 33
    .line 34
    .line 35
    sub-int v3, p5, p3

    .line 36
    .line 37
    int-to-float v3, v3

    .line 38
    sub-float/2addr v3, v0

    .line 39
    float-to-int v3, v3

    .line 40
    sub-int v4, p6, p4

    .line 41
    .line 42
    int-to-float v4, v4

    .line 43
    sub-float/2addr v4, v1

    .line 44
    float-to-int v4, v4

    .line 45
    iget-object v5, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p2}, Lu/i;->u(Landroidx/recyclerview/widget/P;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p2, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 64
    .line 65
    neg-int v1, v3

    .line 66
    int-to-float v1, v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p2, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 71
    .line 72
    neg-int v1, v4

    .line 73
    int-to-float v1, v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p2, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lu/i;->k:Ljava/util/ArrayList;

    .line 84
    .line 85
    new-instance v8, Lu/g;

    .line 86
    .line 87
    move-object v1, v8

    .line 88
    move-object v2, p1

    .line 89
    move-object v3, p2

    .line 90
    move v4, p3

    .line 91
    move v5, p4

    .line 92
    move v6, p5

    .line 93
    move v7, p6

    .line 94
    invoke-direct/range {v1 .. v7}, Lu/g;-><init>(Landroidx/recyclerview/widget/P;Landroidx/recyclerview/widget/P;IIII)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    const/4 p1, 0x1

    .line 101
    return p1
.end method

.method public final k(Landroidx/recyclerview/widget/P;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lu/i;->u(Landroidx/recyclerview/widget/P;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lu/i;->i:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/P;IIII)Z
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    add-int v4, p2, v1

    .line 9
    .line 10
    iget-object p2, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    float-to-int p2, p2

    .line 17
    add-int v5, p3, p2

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lu/i;->u(Landroidx/recyclerview/widget/P;)V

    .line 20
    .line 21
    .line 22
    sub-int p2, p4, v4

    .line 23
    .line 24
    sub-int p3, p5, v5

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_0
    if-eqz p2, :cond_1

    .line 36
    .line 37
    neg-int p2, p2

    .line 38
    int-to-float p2, p2

    .line 39
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 40
    .line 41
    .line 42
    :cond_1
    if-eqz p3, :cond_2

    .line 43
    .line 44
    neg-int p2, p3

    .line 45
    int-to-float p2, p2

    .line 46
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p2, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 50
    .line 51
    new-instance p3, Lu/h;

    .line 52
    .line 53
    move-object v2, p3

    .line 54
    move-object v3, p1

    .line 55
    move v6, p4

    .line 56
    move v7, p5

    .line 57
    invoke-direct/range {v2 .. v7}, Lu/h;-><init>(Landroidx/recyclerview/widget/P;IIII)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    return p1
.end method

.method public final m(Landroidx/recyclerview/widget/P;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lu/i;->u(Landroidx/recyclerview/widget/P;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lu/i;->h:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method final o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu/i;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->e()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final p(Landroidx/recyclerview/widget/P;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-ltz v1, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lu/h;

    .line 28
    .line 29
    iget-object v3, v3, Lu/h;->a:Landroidx/recyclerview/widget/P;

    .line 30
    .line 31
    if-ne v3, p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lu/i;->k:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {p0, p1, v1}, Lu/i;->r(Landroidx/recyclerview/widget/P;Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lu/i;->h:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/high16 v3, 0x3f800000    # 1.0f

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v1, p0, Lu/i;->i:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v1, p0, Lu/i;->n:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 90
    .line 91
    if-ltz v1, :cond_5

    .line 92
    .line 93
    iget-object v4, p0, Lu/i;->n:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {p0, p1, v4}, Lu/i;->r(Landroidx/recyclerview/widget/P;Ljava/util/ArrayList;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    iget-object v4, p0, Lu/i;->n:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    :cond_4
    goto :goto_1

    .line 116
    :cond_5
    iget-object v1, p0, Lu/i;->m:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 123
    .line 124
    if-ltz v1, :cond_8

    .line 125
    .line 126
    iget-object v4, p0, Lu/i;->m:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 139
    .line 140
    if-ltz v5, :cond_7

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    check-cast v6, Lu/h;

    .line 147
    .line 148
    iget-object v6, v6, Lu/h;->a:Landroidx/recyclerview/widget/P;

    .line 149
    .line 150
    if-ne v6, p1, :cond_6

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_7

    .line 169
    .line 170
    iget-object v4, p0, Lu/i;->m:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_6
    goto :goto_3

    .line 177
    :cond_7
    :goto_4
    goto :goto_2

    .line 178
    :cond_8
    iget-object v1, p0, Lu/i;->l:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    :goto_5
    add-int/lit8 v1, v1, -0x1

    .line 185
    .line 186
    if-ltz v1, :cond_a

    .line 187
    .line 188
    iget-object v2, p0, Lu/i;->l:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_9

    .line 201
    .line 202
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_9

    .line 213
    .line 214
    iget-object v2, p0, Lu/i;->l:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    :cond_9
    goto :goto_5

    .line 220
    :cond_a
    iget-object v0, p0, Lu/i;->q:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lu/i;->o:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lu/i;->r:Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lu/i;->p:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lu/i;->o()V

    .line 241
    .line 242
    .line 243
    return-void
.end method

.method public final q()V
    .locals 7

    .line 1
    iget-object v0, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lu/h;

    .line 19
    .line 20
    iget-object v3, v2, Lu/h;->a:Landroidx/recyclerview/widget/P;

    .line 21
    .line 22
    iget-object v3, v3, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v2, Lu/h;->a:Landroidx/recyclerview/widget/P;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lu/i;->h:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    if-ltz v0, :cond_1

    .line 50
    .line 51
    iget-object v2, p0, Lu/i;->h:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/recyclerview/widget/P;

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lu/i;->h:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p0, Lu/i;->i:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 75
    .line 76
    const/high16 v2, 0x3f800000    # 1.0f

    .line 77
    .line 78
    if-ltz v0, :cond_2

    .line 79
    .line 80
    iget-object v3, p0, Lu/i;->i:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroidx/recyclerview/widget/P;

    .line 87
    .line 88
    iget-object v4, v3, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lu/i;->i:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    iget-object v0, p0, Lu/i;->k:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 109
    .line 110
    if-ltz v0, :cond_5

    .line 111
    .line 112
    iget-object v3, p0, Lu/i;->k:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Lu/g;

    .line 119
    .line 120
    iget-object v4, v3, Lu/g;->a:Landroidx/recyclerview/widget/P;

    .line 121
    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    invoke-direct {p0, v3, v4}, Lu/i;->s(Lu/g;Landroidx/recyclerview/widget/P;)Z

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object v4, v3, Lu/g;->b:Landroidx/recyclerview/widget/P;

    .line 128
    .line 129
    if-eqz v4, :cond_4

    .line 130
    .line 131
    invoke-direct {p0, v3, v4}, Lu/i;->s(Lu/g;Landroidx/recyclerview/widget/P;)Z

    .line 132
    .line 133
    .line 134
    :cond_4
    goto :goto_3

    .line 135
    :cond_5
    iget-object v0, p0, Lu/i;->k:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lu/i;->t()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_6

    .line 145
    .line 146
    return-void

    .line 147
    :cond_6
    iget-object v0, p0, Lu/i;->m:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 154
    .line 155
    if-ltz v0, :cond_9

    .line 156
    .line 157
    iget-object v3, p0, Lu/i;->m:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    :goto_5
    add-int/lit8 v4, v4, -0x1

    .line 170
    .line 171
    if-ltz v4, :cond_8

    .line 172
    .line 173
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    check-cast v5, Lu/h;

    .line 178
    .line 179
    iget-object v6, v5, Lu/h;->a:Landroidx/recyclerview/widget/P;

    .line 180
    .line 181
    iget-object v6, v6, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 182
    .line 183
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 187
    .line 188
    .line 189
    iget-object v5, v5, Lu/h;->a:Landroidx/recyclerview/widget/P;

    .line 190
    .line 191
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_7

    .line 202
    .line 203
    iget-object v5, p0, Lu/i;->m:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :cond_7
    goto :goto_5

    .line 209
    :cond_8
    goto :goto_4

    .line 210
    :cond_9
    iget-object v0, p0, Lu/i;->l:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 217
    .line 218
    if-ltz v0, :cond_c

    .line 219
    .line 220
    iget-object v1, p0, Lu/i;->l:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    :goto_7
    add-int/lit8 v3, v3, -0x1

    .line 233
    .line 234
    if-ltz v3, :cond_b

    .line 235
    .line 236
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    check-cast v4, Landroidx/recyclerview/widget/P;

    .line 241
    .line 242
    iget-object v5, v4, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 243
    .line 244
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/U;->d(Landroidx/recyclerview/widget/P;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_a

    .line 258
    .line 259
    iget-object v4, p0, Lu/i;->l:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    :cond_a
    goto :goto_7

    .line 265
    :cond_b
    goto :goto_6

    .line 266
    :cond_c
    iget-object v0, p0, Lu/i;->n:Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    :goto_8
    add-int/lit8 v0, v0, -0x1

    .line 273
    .line 274
    if-ltz v0, :cond_11

    .line 275
    .line 276
    iget-object v1, p0, Lu/i;->n:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    :goto_9
    add-int/lit8 v2, v2, -0x1

    .line 289
    .line 290
    if-ltz v2, :cond_10

    .line 291
    .line 292
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    check-cast v3, Lu/g;

    .line 297
    .line 298
    iget-object v4, v3, Lu/g;->a:Landroidx/recyclerview/widget/P;

    .line 299
    .line 300
    if-eqz v4, :cond_d

    .line 301
    .line 302
    invoke-direct {p0, v3, v4}, Lu/i;->s(Lu/g;Landroidx/recyclerview/widget/P;)Z

    .line 303
    .line 304
    .line 305
    :cond_d
    iget-object v4, v3, Lu/g;->b:Landroidx/recyclerview/widget/P;

    .line 306
    .line 307
    if-eqz v4, :cond_e

    .line 308
    .line 309
    invoke-direct {p0, v3, v4}, Lu/i;->s(Lu/g;Landroidx/recyclerview/widget/P;)Z

    .line 310
    .line 311
    .line 312
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_f

    .line 317
    .line 318
    iget-object v3, p0, Lu/i;->n:Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    :cond_f
    goto :goto_9

    .line 324
    :cond_10
    goto :goto_8

    .line 325
    :cond_11
    iget-object v0, p0, Lu/i;->q:Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-static {v0}, Lu/i;->n(Ljava/util/ArrayList;)V

    .line 328
    .line 329
    .line 330
    iget-object v0, p0, Lu/i;->p:Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-static {v0}, Lu/i;->n(Ljava/util/ArrayList;)V

    .line 333
    .line 334
    .line 335
    iget-object v0, p0, Lu/i;->o:Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-static {v0}, Lu/i;->n(Ljava/util/ArrayList;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Lu/i;->r:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-static {v0}, Lu/i;->n(Ljava/util/ArrayList;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->e()V

    .line 346
    .line 347
    .line 348
    return-void
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lu/i;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lu/i;->h:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lu/i;->p:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lu/i;->q:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lu/i;->o:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lu/i;->r:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lu/i;->m:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lu/i;->l:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Lu/i;->n:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 93
    :goto_1
    return v0
.end method

.method public final v()V
    .locals 13

    .line 1
    iget-object v0, p0, Lu/i;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iget-object v1, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iget-object v2, p0, Lu/i;->k:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    xor-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    iget-object v3, p0, Lu/i;->i:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    xor-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v4, p0, Lu/i;->h:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    move-object v8, v5

    .line 59
    check-cast v8, Landroidx/recyclerview/widget/P;

    .line 60
    .line 61
    iget-object v10, v8, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    iget-object v5, p0, Lu/i;->q:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->i()J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    invoke-virtual {v9, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    new-instance v12, Lu/d;

    .line 86
    .line 87
    const/4 v11, 0x0

    .line 88
    move-object v6, v12

    .line 89
    move-object v7, p0

    .line 90
    invoke-direct/range {v6 .. v11}, Lu/d;-><init>(Lu/i;Ljava/lang/Object;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object v4, p0, Lu/i;->h:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 104
    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    new-instance v5, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v6, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    .line 118
    .line 119
    iget-object v6, p0, Lu/i;->m:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    iget-object v6, p0, Lu/i;->j:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 127
    .line 128
    .line 129
    new-instance v6, Lu/a;

    .line 130
    .line 131
    invoke-direct {v6, p0, v5}, Lu/a;-><init>(Lu/i;Ljava/util/ArrayList;)V

    .line 132
    .line 133
    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Lu/h;

    .line 141
    .line 142
    iget-object v5, v5, Lu/h;->a:Landroidx/recyclerview/widget/P;

    .line 143
    .line 144
    iget-object v5, v5, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->i()J

    .line 147
    .line 148
    .line 149
    move-result-wide v7

    .line 150
    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/f0;->H(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {v6}, Lu/a;->run()V

    .line 155
    .line 156
    .line 157
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 158
    .line 159
    new-instance v5, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    iget-object v6, p0, Lu/i;->k:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    .line 168
    .line 169
    iget-object v6, p0, Lu/i;->n:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    iget-object v6, p0, Lu/i;->k:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 177
    .line 178
    .line 179
    new-instance v6, Lu/b;

    .line 180
    .line 181
    invoke-direct {v6, p0, v5}, Lu/b;-><init>(Lu/i;Ljava/util/ArrayList;)V

    .line 182
    .line 183
    .line 184
    if-eqz v0, :cond_4

    .line 185
    .line 186
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Lu/g;

    .line 191
    .line 192
    iget-object v5, v5, Lu/g;->a:Landroidx/recyclerview/widget/P;

    .line 193
    .line 194
    iget-object v5, v5, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 195
    .line 196
    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->i()J

    .line 197
    .line 198
    .line 199
    move-result-wide v7

    .line 200
    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/f0;->H(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_4
    invoke-virtual {v6}, Lu/b;->run()V

    .line 205
    .line 206
    .line 207
    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 208
    .line 209
    new-instance v3, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-object v5, p0, Lu/i;->i:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    .line 218
    .line 219
    iget-object v5, p0, Lu/i;->l:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    iget-object v5, p0, Lu/i;->i:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 227
    .line 228
    .line 229
    new-instance v5, Lu/c;

    .line 230
    .line 231
    invoke-direct {v5, p0, v3}, Lu/c;-><init>(Lu/i;Ljava/util/ArrayList;)V

    .line 232
    .line 233
    .line 234
    if-nez v0, :cond_7

    .line 235
    .line 236
    if-nez v1, :cond_7

    .line 237
    .line 238
    if-eqz v2, :cond_6

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_6
    invoke-virtual {v5}, Lu/c;->run()V

    .line 242
    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_7
    :goto_3
    const-wide/16 v6, 0x0

    .line 246
    .line 247
    if-eqz v0, :cond_8

    .line 248
    .line 249
    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->i()J

    .line 250
    .line 251
    .line 252
    move-result-wide v8

    .line 253
    goto :goto_4

    .line 254
    :cond_8
    move-wide v8, v6

    .line 255
    :goto_4
    if-eqz v1, :cond_9

    .line 256
    .line 257
    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->h()J

    .line 258
    .line 259
    .line 260
    move-result-wide v0

    .line 261
    goto :goto_5

    .line 262
    :cond_9
    move-wide v0, v6

    .line 263
    :goto_5
    if-eqz v2, :cond_a

    .line 264
    .line 265
    invoke-virtual {p0}, Landroidx/recyclerview/widget/U;->g()J

    .line 266
    .line 267
    .line 268
    move-result-wide v6

    .line 269
    :cond_a
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 270
    .line 271
    .line 272
    move-result-wide v0

    .line 273
    add-long/2addr v0, v8

    .line 274
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    check-cast v2, Landroidx/recyclerview/widget/P;

    .line 279
    .line 280
    iget-object v2, v2, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 281
    .line 282
    invoke-static {v2, v5, v0, v1}, Landroidx/core/view/f0;->H(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 283
    .line 284
    .line 285
    :cond_b
    :goto_6
    return-void
.end method
