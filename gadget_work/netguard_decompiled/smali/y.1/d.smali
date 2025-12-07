.class public final Ly/d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final g:Landroid/view/animation/LinearInterpolator;

.field private static final h:Lp/a;

.field private static final i:[I


# instance fields
.field private final a:Ly/c;

.field private b:F

.field private c:Landroid/content/res/Resources;

.field private d:Landroid/animation/ValueAnimator;

.field e:F

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly/d;->g:Landroid/view/animation/LinearInterpolator;

    .line 7
    .line 8
    new-instance v0, Lp/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lp/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ly/d;->h:Lp/a;

    .line 14
    .line 15
    const/high16 v0, -0x1000000

    .line 16
    .line 17
    filled-new-array {v0}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Ly/d;->i:[I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ly/d;->c:Landroid/content/res/Resources;

    .line 12
    .line 13
    new-instance p1, Ly/c;

    .line 14
    .line 15
    invoke-direct {p1}, Ly/c;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ly/d;->a:Ly/c;

    .line 19
    .line 20
    sget-object v0, Ly/d;->i:[I

    .line 21
    .line 22
    iput-object v0, p1, Ly/c;->i:[I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Ly/c;->a(I)V

    .line 26
    .line 27
    .line 28
    const/high16 v0, 0x40200000    # 2.5f

    .line 29
    .line 30
    iput v0, p1, Ly/c;->h:F

    .line 31
    .line 32
    iget-object v1, p1, Ly/c;->b:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [F

    .line 42
    .line 43
    fill-array-data v0, :array_0

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Ly/a;

    .line 51
    .line 52
    invoke-direct {v1, p0, p1}, Ly/a;-><init>(Ly/d;Ly/c;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    .line 57
    .line 58
    const/4 v1, -0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Ly/d;->g:Landroid/view/animation/LinearInterpolator;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Ly/b;

    .line 72
    .line 73
    invoke-direct {v1, p0, p1}, Ly/b;-><init>(Ly/d;Ly/c;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Ly/d;->d:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private f(FFFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly/d;->c:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 8
    .line 9
    mul-float p2, p2, v0

    .line 10
    .line 11
    iget-object v1, p0, Ly/d;->a:Ly/c;

    .line 12
    .line 13
    iput p2, v1, Ly/c;->h:F

    .line 14
    .line 15
    iget-object v2, v1, Ly/c;->b:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    .line 19
    .line 20
    mul-float p1, p1, v0

    .line 21
    .line 22
    iput p1, v1, Ly/c;->q:F

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {v1, p1}, Ly/c;->a(I)V

    .line 26
    .line 27
    .line 28
    mul-float p3, p3, v0

    .line 29
    .line 30
    mul-float p4, p4, v0

    .line 31
    .line 32
    float-to-int p1, p3

    .line 33
    iput p1, v1, Ly/c;->r:I

    .line 34
    .line 35
    float-to-int p1, p4

    .line 36
    iput p1, v1, Ly/c;->s:I

    .line 37
    .line 38
    return-void
.end method

.method static i(FLy/c;)V
    .locals 8

    .line 1
    const/high16 v0, 0x3f400000    # 0.75f

    .line 2
    .line 3
    cmpl-float v1, p0, v0

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    sub-float/2addr p0, v0

    .line 8
    const/high16 v0, 0x3e800000    # 0.25f

    .line 9
    .line 10
    div-float/2addr p0, v0

    .line 11
    iget-object v0, p1, Ly/c;->i:[I

    .line 12
    .line 13
    iget v1, p1, Ly/c;->j:I

    .line 14
    .line 15
    aget v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    array-length v3, v0

    .line 20
    rem-int/2addr v1, v3

    .line 21
    aget v0, v0, v1

    .line 22
    .line 23
    shr-int/lit8 v1, v2, 0x18

    .line 24
    .line 25
    and-int/lit16 v1, v1, 0xff

    .line 26
    .line 27
    shr-int/lit8 v3, v2, 0x10

    .line 28
    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 30
    .line 31
    shr-int/lit8 v4, v2, 0x8

    .line 32
    .line 33
    and-int/lit16 v4, v4, 0xff

    .line 34
    .line 35
    and-int/lit16 v2, v2, 0xff

    .line 36
    .line 37
    shr-int/lit8 v5, v0, 0x18

    .line 38
    .line 39
    and-int/lit16 v5, v5, 0xff

    .line 40
    .line 41
    shr-int/lit8 v6, v0, 0x10

    .line 42
    .line 43
    and-int/lit16 v6, v6, 0xff

    .line 44
    .line 45
    shr-int/lit8 v7, v0, 0x8

    .line 46
    .line 47
    and-int/lit16 v7, v7, 0xff

    .line 48
    .line 49
    and-int/lit16 v0, v0, 0xff

    .line 50
    .line 51
    sub-int/2addr v5, v1

    .line 52
    int-to-float v5, v5

    .line 53
    mul-float v5, v5, p0

    .line 54
    .line 55
    float-to-int v5, v5

    .line 56
    add-int/2addr v1, v5

    .line 57
    shl-int/lit8 v1, v1, 0x18

    .line 58
    .line 59
    sub-int/2addr v6, v3

    .line 60
    int-to-float v5, v6

    .line 61
    mul-float v5, v5, p0

    .line 62
    .line 63
    float-to-int v5, v5

    .line 64
    add-int/2addr v3, v5

    .line 65
    shl-int/lit8 v3, v3, 0x10

    .line 66
    .line 67
    or-int/2addr v1, v3

    .line 68
    sub-int/2addr v7, v4

    .line 69
    int-to-float v3, v7

    .line 70
    mul-float v3, v3, p0

    .line 71
    .line 72
    float-to-int v3, v3

    .line 73
    add-int/2addr v4, v3

    .line 74
    shl-int/lit8 v3, v4, 0x8

    .line 75
    .line 76
    or-int/2addr v1, v3

    .line 77
    sub-int/2addr v0, v2

    .line 78
    int-to-float v0, v0

    .line 79
    mul-float p0, p0, v0

    .line 80
    .line 81
    float-to-int p0, p0

    .line 82
    add-int/2addr v2, p0

    .line 83
    or-int p0, v2, v1

    .line 84
    .line 85
    iput p0, p1, Ly/c;->u:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object p0, p1, Ly/c;->i:[I

    .line 89
    .line 90
    iget v0, p1, Ly/c;->j:I

    .line 91
    .line 92
    aget p0, p0, v0

    .line 93
    .line 94
    iput p0, p1, Ly/c;->u:I

    .line 95
    .line 96
    :goto_0
    return-void
.end method


# virtual methods
.method final a(FLy/c;Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Ly/d;->f:Z

    .line 2
    .line 3
    const v1, 0x3c23d70a    # 0.01f

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Ly/d;->i(FLy/c;)V

    .line 9
    .line 10
    .line 11
    iget p3, p2, Ly/c;->m:F

    .line 12
    .line 13
    const v0, 0x3f4ccccd    # 0.8f

    .line 14
    .line 15
    .line 16
    div-float/2addr p3, v0

    .line 17
    float-to-double v2, p3

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 23
    .line 24
    add-double/2addr v2, v4

    .line 25
    double-to-float p3, v2

    .line 26
    iget v0, p2, Ly/c;->k:F

    .line 27
    .line 28
    iget v2, p2, Ly/c;->l:F

    .line 29
    .line 30
    sub-float v1, v2, v1

    .line 31
    .line 32
    sub-float/2addr v1, v0

    .line 33
    mul-float v1, v1, p1

    .line 34
    .line 35
    add-float/2addr v1, v0

    .line 36
    iput v1, p2, Ly/c;->e:F

    .line 37
    .line 38
    iput v2, p2, Ly/c;->f:F

    .line 39
    .line 40
    iget v0, p2, Ly/c;->m:F

    .line 41
    .line 42
    sub-float/2addr p3, v0

    .line 43
    mul-float p3, p3, p1

    .line 44
    .line 45
    add-float/2addr p3, v0

    .line 46
    iput p3, p2, Ly/c;->g:F

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .line 51
    cmpl-float v2, p1, v0

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    if-eqz p3, :cond_3

    .line 56
    .line 57
    :cond_1
    iget p3, p2, Ly/c;->m:F

    .line 58
    .line 59
    sget-object v2, Ly/d;->h:Lp/a;

    .line 60
    .line 61
    const v3, 0x3f4a3d71    # 0.79f

    .line 62
    .line 63
    .line 64
    const/high16 v4, 0x3f000000    # 0.5f

    .line 65
    .line 66
    cmpg-float v5, p1, v4

    .line 67
    .line 68
    if-gez v5, :cond_2

    .line 69
    .line 70
    div-float v0, p1, v4

    .line 71
    .line 72
    iget v4, p2, Ly/c;->k:F

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Lp/a;->getInterpolation(F)F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    mul-float v0, v0, v3

    .line 79
    .line 80
    add-float/2addr v0, v1

    .line 81
    add-float/2addr v0, v4

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    sub-float v5, p1, v4

    .line 84
    .line 85
    div-float/2addr v5, v4

    .line 86
    iget v4, p2, Ly/c;->k:F

    .line 87
    .line 88
    add-float/2addr v4, v3

    .line 89
    invoke-virtual {v2, v5}, Lp/a;->getInterpolation(F)F

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    sub-float/2addr v0, v2

    .line 94
    mul-float v0, v0, v3

    .line 95
    .line 96
    add-float/2addr v0, v1

    .line 97
    sub-float v0, v4, v0

    .line 98
    .line 99
    move v6, v4

    .line 100
    move v4, v0

    .line 101
    move v0, v6

    .line 102
    :goto_0
    const v1, 0x3e570a3c    # 0.20999998f

    .line 103
    .line 104
    .line 105
    mul-float v1, v1, p1

    .line 106
    .line 107
    add-float/2addr v1, p3

    .line 108
    iget p3, p0, Ly/d;->e:F

    .line 109
    .line 110
    add-float/2addr p1, p3

    .line 111
    const/high16 p3, 0x43580000    # 216.0f

    .line 112
    .line 113
    mul-float p1, p1, p3

    .line 114
    .line 115
    iput v4, p2, Ly/c;->e:F

    .line 116
    .line 117
    iput v0, p2, Ly/c;->f:F

    .line 118
    .line 119
    iput v1, p2, Ly/c;->g:F

    .line 120
    .line 121
    iput p1, p0, Ly/d;->b:F

    .line 122
    .line 123
    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly/d;->a:Ly/c;

    .line 2
    .line 3
    iget-boolean v1, v0, Ly/c;->n:Z

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, v0, Ly/c;->n:Z

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final c(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly/d;->a:Ly/c;

    .line 2
    .line 3
    iget v1, v0, Ly/c;->p:F

    .line 4
    .line 5
    cmpl-float v1, p1, v1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, Ly/c;->p:F

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final varargs d([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/d;->a:Ly/c;

    .line 2
    .line 3
    iput-object p1, v0, Ly/c;->i:[I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Ly/c;->a(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ly/c;->a(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    iget v1, p0, Ly/d;->b:F

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Ly/d;->a:Ly/c;

    .line 22
    .line 23
    iget-object v8, v1, Ly/c;->a:Landroid/graphics/RectF;

    .line 24
    .line 25
    iget v2, v1, Ly/c;->q:F

    .line 26
    .line 27
    iget v3, v1, Ly/c;->h:F

    .line 28
    .line 29
    const/high16 v9, 0x40000000    # 2.0f

    .line 30
    .line 31
    div-float/2addr v3, v9

    .line 32
    add-float/2addr v3, v2

    .line 33
    const/4 v10, 0x0

    .line 34
    cmpg-float v2, v2, v10

    .line 35
    .line 36
    if-gtz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-float v2, v2

    .line 51
    div-float/2addr v2, v9

    .line 52
    iget v3, v1, Ly/c;->r:I

    .line 53
    .line 54
    int-to-float v3, v3

    .line 55
    iget v4, v1, Ly/c;->p:F

    .line 56
    .line 57
    mul-float v3, v3, v4

    .line 58
    .line 59
    div-float/2addr v3, v9

    .line 60
    iget v4, v1, Ly/c;->h:F

    .line 61
    .line 62
    div-float/2addr v4, v9

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    sub-float v3, v2, v3

    .line 68
    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    int-to-float v2, v2

    .line 74
    sub-float/2addr v2, v3

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    int-to-float v4, v4

    .line 80
    sub-float/2addr v4, v3

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    int-to-float v5, v5

    .line 86
    add-float/2addr v5, v3

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    add-float/2addr v0, v3

    .line 93
    invoke-virtual {v8, v2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    .line 95
    .line 96
    iget v0, v1, Ly/c;->e:F

    .line 97
    .line 98
    iget v2, v1, Ly/c;->g:F

    .line 99
    .line 100
    add-float/2addr v0, v2

    .line 101
    const/high16 v3, 0x43b40000    # 360.0f

    .line 102
    .line 103
    mul-float v0, v0, v3

    .line 104
    .line 105
    iget v4, v1, Ly/c;->f:F

    .line 106
    .line 107
    add-float/2addr v4, v2

    .line 108
    mul-float v4, v4, v3

    .line 109
    .line 110
    sub-float v11, v4, v0

    .line 111
    .line 112
    iget-object v7, v1, Ly/c;->b:Landroid/graphics/Paint;

    .line 113
    .line 114
    iget v2, v1, Ly/c;->u:I

    .line 115
    .line 116
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    .line 118
    .line 119
    iget v2, v1, Ly/c;->t:I

    .line 120
    .line 121
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    .line 123
    .line 124
    iget v2, v1, Ly/c;->h:F

    .line 125
    .line 126
    div-float/2addr v2, v9

    .line 127
    invoke-virtual {v8, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    div-float/2addr v5, v9

    .line 143
    iget-object v6, v1, Ly/c;->d:Landroid/graphics/Paint;

    .line 144
    .line 145
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    .line 147
    .line 148
    neg-float v2, v2

    .line 149
    invoke-virtual {v8, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 150
    .line 151
    .line 152
    const/4 v6, 0x0

    .line 153
    move-object v2, p1

    .line 154
    move-object v3, v8

    .line 155
    move v4, v0

    .line 156
    move v5, v11

    .line 157
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 158
    .line 159
    .line 160
    iget-boolean v2, v1, Ly/c;->n:Z

    .line 161
    .line 162
    if-eqz v2, :cond_2

    .line 163
    .line 164
    iget-object v2, v1, Ly/c;->o:Landroid/graphics/Path;

    .line 165
    .line 166
    if-nez v2, :cond_1

    .line 167
    .line 168
    new-instance v2, Landroid/graphics/Path;

    .line 169
    .line 170
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v2, v1, Ly/c;->o:Landroid/graphics/Path;

    .line 174
    .line 175
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 182
    .line 183
    .line 184
    :goto_0
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    div-float/2addr v2, v9

    .line 197
    iget v3, v1, Ly/c;->r:I

    .line 198
    .line 199
    int-to-float v3, v3

    .line 200
    iget v4, v1, Ly/c;->p:F

    .line 201
    .line 202
    mul-float v3, v3, v4

    .line 203
    .line 204
    div-float/2addr v3, v9

    .line 205
    iget-object v4, v1, Ly/c;->o:Landroid/graphics/Path;

    .line 206
    .line 207
    invoke-virtual {v4, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    .line 209
    .line 210
    iget-object v4, v1, Ly/c;->o:Landroid/graphics/Path;

    .line 211
    .line 212
    iget v5, v1, Ly/c;->r:I

    .line 213
    .line 214
    int-to-float v5, v5

    .line 215
    iget v6, v1, Ly/c;->p:F

    .line 216
    .line 217
    mul-float v5, v5, v6

    .line 218
    .line 219
    invoke-virtual {v4, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    .line 221
    .line 222
    iget-object v4, v1, Ly/c;->o:Landroid/graphics/Path;

    .line 223
    .line 224
    iget v5, v1, Ly/c;->r:I

    .line 225
    .line 226
    int-to-float v5, v5

    .line 227
    iget v6, v1, Ly/c;->p:F

    .line 228
    .line 229
    mul-float v5, v5, v6

    .line 230
    .line 231
    div-float/2addr v5, v9

    .line 232
    iget v7, v1, Ly/c;->s:I

    .line 233
    .line 234
    int-to-float v7, v7

    .line 235
    mul-float v7, v7, v6

    .line 236
    .line 237
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 238
    .line 239
    .line 240
    iget-object v4, v1, Ly/c;->o:Landroid/graphics/Path;

    .line 241
    .line 242
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    add-float/2addr v5, v2

    .line 247
    sub-float/2addr v5, v3

    .line 248
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    iget v3, v1, Ly/c;->h:F

    .line 253
    .line 254
    div-float/2addr v3, v9

    .line 255
    add-float/2addr v3, v2

    .line 256
    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->offset(FF)V

    .line 257
    .line 258
    .line 259
    iget-object v2, v1, Ly/c;->o:Landroid/graphics/Path;

    .line 260
    .line 261
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 262
    .line 263
    .line 264
    iget-object v2, v1, Ly/c;->c:Landroid/graphics/Paint;

    .line 265
    .line 266
    iget v3, v1, Ly/c;->u:I

    .line 267
    .line 268
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    .line 270
    .line 271
    iget v3, v1, Ly/c;->t:I

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 277
    .line 278
    .line 279
    add-float/2addr v0, v11

    .line 280
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v1, Ly/c;->o:Landroid/graphics/Path;

    .line 292
    .line 293
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 297
    .line 298
    .line 299
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 300
    .line 301
    .line 302
    return-void
.end method

.method public final e(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/d;->a:Ly/c;

    .line 2
    .line 3
    iput p1, v0, Ly/c;->g:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly/d;->a:Ly/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Ly/c;->e:F

    .line 5
    .line 6
    iput p1, v0, Ly/c;->f:F

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly/d;->a:Ly/c;

    .line 2
    .line 3
    iget v0, v0, Ly/c;->t:I

    .line 4
    .line 5
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    return v0
.end method

.method public final h()V
    .locals 4

    .line 1
    const/high16 v0, 0x40f00000    # 7.5f

    .line 2
    .line 3
    const/high16 v1, 0x40200000    # 2.5f

    .line 4
    .line 5
    const/high16 v2, 0x41200000    # 10.0f

    .line 6
    .line 7
    const/high16 v3, 0x40a00000    # 5.0f

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, v2, v3}, Ly/d;->f(FFFF)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly/d;->d:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/d;->a:Ly/c;

    .line 2
    .line 3
    iput p1, v0, Ly/c;->t:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/d;->a:Ly/c;

    .line 2
    .line 3
    iget-object v0, v0, Ly/c;->b:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final start()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly/d;->d:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly/d;->a:Ly/c;

    .line 7
    .line 8
    iget v1, v0, Ly/c;->e:F

    .line 9
    .line 10
    iput v1, v0, Ly/c;->k:F

    .line 11
    .line 12
    iget v2, v0, Ly/c;->f:F

    .line 13
    .line 14
    iput v2, v0, Ly/c;->l:F

    .line 15
    .line 16
    iget v3, v0, Ly/c;->g:F

    .line 17
    .line 18
    iput v3, v0, Ly/c;->m:F

    .line 19
    .line 20
    cmpl-float v1, v2, v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Ly/d;->f:Z

    .line 26
    .line 27
    iget-object v0, p0, Ly/d;->d:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    const-wide/16 v1, 0x29a

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Ly/d;->d:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Ly/c;->a(I)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput v1, v0, Ly/c;->k:F

    .line 46
    .line 47
    iput v1, v0, Ly/c;->l:F

    .line 48
    .line 49
    iput v1, v0, Ly/c;->m:F

    .line 50
    .line 51
    iput v1, v0, Ly/c;->e:F

    .line 52
    .line 53
    iput v1, v0, Ly/c;->f:F

    .line 54
    .line 55
    iput v1, v0, Ly/c;->g:F

    .line 56
    .line 57
    iget-object v0, p0, Ly/d;->d:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    const-wide/16 v1, 0x534

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Ly/d;->d:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly/d;->d:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ly/d;->b:F

    .line 8
    .line 9
    iget-object v1, p0, Ly/d;->a:Ly/c;

    .line 10
    .line 11
    iget-boolean v2, v1, Ly/c;->n:Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iput-boolean v3, v1, Ly/c;->n:Z

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v1, v3}, Ly/c;->a(I)V

    .line 19
    .line 20
    .line 21
    iput v0, v1, Ly/c;->k:F

    .line 22
    .line 23
    iput v0, v1, Ly/c;->l:F

    .line 24
    .line 25
    iput v0, v1, Ly/c;->m:F

    .line 26
    .line 27
    iput v0, v1, Ly/c;->e:F

    .line 28
    .line 29
    iput v0, v1, Ly/c;->f:F

    .line 30
    .line 31
    iput v0, v1, Ly/c;->g:F

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
