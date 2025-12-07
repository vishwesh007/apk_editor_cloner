.class public final Landroidx/core/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final r:I

.field public static final synthetic s:I


# instance fields
.field final a:Landroidx/core/widget/a;

.field private final b:Landroid/view/animation/AccelerateInterpolator;

.field final c:Landroid/view/View;

.field private d:Ljava/lang/Runnable;

.field private e:[F

.field private f:[F

.field private g:I

.field private h:I

.field private i:[F

.field private j:[F

.field private k:[F

.field private l:Z

.field m:Z

.field n:Z

.field o:Z

.field private p:Z

.field private final q:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Landroidx/core/widget/k;->r:I

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/widget/a;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/core/widget/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/core/widget/k;->a:Landroidx/core/widget/a;

    .line 10
    .line 11
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/core/widget/k;->b:Landroid/view/animation/AccelerateInterpolator;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    new-array v2, v1, [F

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Landroidx/core/widget/k;->e:[F

    .line 25
    .line 26
    new-array v2, v1, [F

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Landroidx/core/widget/k;->f:[F

    .line 32
    .line 33
    new-array v2, v1, [F

    .line 34
    .line 35
    fill-array-data v2, :array_2

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Landroidx/core/widget/k;->i:[F

    .line 39
    .line 40
    new-array v2, v1, [F

    .line 41
    .line 42
    fill-array-data v2, :array_3

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Landroidx/core/widget/k;->j:[F

    .line 46
    .line 47
    new-array v1, v1, [F

    .line 48
    .line 49
    fill-array-data v1, :array_4

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Landroidx/core/widget/k;->k:[F

    .line 53
    .line 54
    iput-object p1, p0, Landroidx/core/widget/k;->c:Landroid/view/View;

    .line 55
    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 65
    .line 66
    const v2, 0x44c4e000    # 1575.0f

    .line 67
    .line 68
    .line 69
    mul-float v2, v2, v1

    .line 70
    .line 71
    const/high16 v3, 0x3f000000    # 0.5f

    .line 72
    .line 73
    add-float/2addr v2, v3

    .line 74
    float-to-int v2, v2

    .line 75
    const v4, 0x439d8000    # 315.0f

    .line 76
    .line 77
    .line 78
    mul-float v1, v1, v4

    .line 79
    .line 80
    add-float/2addr v1, v3

    .line 81
    float-to-int v1, v1

    .line 82
    int-to-float v2, v2

    .line 83
    iget-object v3, p0, Landroidx/core/widget/k;->k:[F

    .line 84
    .line 85
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 86
    .line 87
    div-float/2addr v2, v4

    .line 88
    const/4 v5, 0x0

    .line 89
    aput v2, v3, v5

    .line 90
    .line 91
    const/4 v6, 0x1

    .line 92
    aput v2, v3, v6

    .line 93
    .line 94
    int-to-float v1, v1

    .line 95
    iget-object v2, p0, Landroidx/core/widget/k;->j:[F

    .line 96
    .line 97
    div-float/2addr v1, v4

    .line 98
    aput v1, v2, v5

    .line 99
    .line 100
    aput v1, v2, v6

    .line 101
    .line 102
    iput v6, p0, Landroidx/core/widget/k;->g:I

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/core/widget/k;->f:[F

    .line 105
    .line 106
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 107
    .line 108
    .line 109
    aput v2, v1, v5

    .line 110
    .line 111
    aput v2, v1, v6

    .line 112
    .line 113
    iget-object v1, p0, Landroidx/core/widget/k;->e:[F

    .line 114
    .line 115
    const v2, 0x3e4ccccd    # 0.2f

    .line 116
    .line 117
    .line 118
    aput v2, v1, v5

    .line 119
    .line 120
    aput v2, v1, v6

    .line 121
    .line 122
    iget-object v1, p0, Landroidx/core/widget/k;->i:[F

    .line 123
    .line 124
    const v2, 0x3a83126f    # 0.001f

    .line 125
    .line 126
    .line 127
    aput v2, v1, v5

    .line 128
    .line 129
    aput v2, v1, v6

    .line 130
    .line 131
    sget v1, Landroidx/core/widget/k;->r:I

    .line 132
    .line 133
    iput v1, p0, Landroidx/core/widget/k;->h:I

    .line 134
    .line 135
    invoke-virtual {v0}, Landroidx/core/widget/a;->i()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/core/widget/a;->h()V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Landroidx/core/widget/k;->q:Landroid/widget/ListView;

    .line 142
    .line 143
    return-void

    .line 144
    nop

    .line 145
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private a(IFFF)F
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/k;->e:[F

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/core/widget/k;->f:[F

    .line 6
    .line 7
    aget v1, v1, p1

    .line 8
    .line 9
    mul-float v0, v0, p3

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1}, Landroidx/core/widget/k;->b(FFF)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-direct {p0, p2, v0}, Landroidx/core/widget/k;->c(FF)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-float/2addr p3, p2

    .line 21
    invoke-direct {p0, p3, v0}, Landroidx/core/widget/k;->c(FF)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sub-float/2addr p2, v1

    .line 26
    iget-object p3, p0, Landroidx/core/widget/k;->b:Landroid/view/animation/AccelerateInterpolator;

    .line 27
    .line 28
    cmpg-float v0, p2, v2

    .line 29
    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    neg-float p2, p2

    .line 33
    invoke-virtual {p3, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    neg-float p2, p2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    cmpl-float v0, p2, v2

    .line 40
    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    :goto_0
    const/high16 p3, -0x40800000    # -1.0f

    .line 48
    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-static {p2, p3, v0}, Landroidx/core/widget/k;->b(FFF)F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 p2, 0x0

    .line 57
    :goto_1
    cmpl-float p3, p2, v2

    .line 58
    .line 59
    if-nez p3, :cond_2

    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    iget-object v0, p0, Landroidx/core/widget/k;->i:[F

    .line 63
    .line 64
    aget v0, v0, p1

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/core/widget/k;->j:[F

    .line 67
    .line 68
    aget v1, v1, p1

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/core/widget/k;->k:[F

    .line 71
    .line 72
    aget p1, v2, p1

    .line 73
    .line 74
    mul-float v0, v0, p4

    .line 75
    .line 76
    if-lez p3, :cond_3

    .line 77
    .line 78
    mul-float p2, p2, v0

    .line 79
    .line 80
    invoke-static {p2, v1, p1}, Landroidx/core/widget/k;->b(FFF)F

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1

    .line 85
    :cond_3
    neg-float p2, p2

    .line 86
    mul-float p2, p2, v0

    .line 87
    .line 88
    invoke-static {p2, v1, p1}, Landroidx/core/widget/k;->b(FFF)F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    neg-float p1, p1

    .line 93
    return p1
.end method

.method static b(FFF)F
    .locals 1

    .line 1
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private c(FF)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Landroidx/core/widget/k;->g:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v2, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    cmpg-float v1, p1, v0

    .line 19
    .line 20
    if-gez v1, :cond_4

    .line 21
    .line 22
    neg-float p2, p2

    .line 23
    div-float/2addr p1, p2

    .line 24
    return p1

    .line 25
    :cond_2
    cmpg-float v3, p1, p2

    .line 26
    .line 27
    if-gez v3, :cond_4

    .line 28
    .line 29
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    .line 31
    cmpl-float v4, p1, v0

    .line 32
    .line 33
    if-ltz v4, :cond_3

    .line 34
    .line 35
    div-float/2addr p1, p2

    .line 36
    sub-float/2addr v3, p1

    .line 37
    return v3

    .line 38
    :cond_3
    iget-boolean p1, p0, Landroidx/core/widget/k;->o:Z

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    if-ne v1, v2, :cond_4

    .line 43
    .line 44
    return v3

    .line 45
    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public final d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/widget/k;->q:Landroid/widget/ListView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/core/widget/l;->b(Landroid/widget/ListView;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/k;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/core/widget/k;->m:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/core/widget/k;->o:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/core/widget/k;->a:Landroidx/core/widget/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/core/widget/a;->g()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/core/widget/k;->p:Z

    .line 21
    .line 22
    return-void
.end method

.method final f()Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/core/widget/k;->a:Landroidx/core/widget/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/widget/a;->e()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroidx/core/widget/a;->c()I

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/core/widget/k;->q:Landroid/widget/ListView;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    add-int v7, v6, v5

    .line 32
    .line 33
    if-lez v1, :cond_1

    .line 34
    .line 35
    if-lt v7, v3, :cond_2

    .line 36
    .line 37
    sub-int/2addr v5, v4

    .line 38
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-gt v1, v2, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-gez v1, :cond_3

    .line 54
    .line 55
    if-gtz v6, :cond_2

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-ltz v1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v1, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 71
    :goto_1
    if-nez v1, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const/4 v0, 0x1

    .line 75
    :cond_5
    :goto_2
    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/k;->p:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_1

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v2, p0, Landroidx/core/widget/k;->a:Landroidx/core/widget/a;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v0, v4, :cond_4

    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    if-eq v0, p1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-boolean p1, p0, Landroidx/core/widget/k;->m:Z

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iput-boolean v1, p0, Landroidx/core/widget/k;->o:Z

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v2}, Landroidx/core/widget/a;->g()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    iput-boolean v3, p0, Landroidx/core/widget/k;->n:Z

    .line 38
    .line 39
    iput-boolean v1, p0, Landroidx/core/widget/k;->l:Z

    .line 40
    .line 41
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    int-to-float v4, v4

    .line 50
    iget-object v5, p0, Landroidx/core/widget/k;->c:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    int-to-float v6, v6

    .line 57
    invoke-direct {p0, v1, v0, v4, v6}, Landroidx/core/widget/k;->a(IFFF)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    int-to-float p1, p1

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    int-to-float v4, v4

    .line 75
    invoke-direct {p0, v3, p2, p1, v4}, Landroidx/core/widget/k;->a(IFFF)F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {v2, v0, p1}, Landroidx/core/widget/a;->j(FF)V

    .line 80
    .line 81
    .line 82
    iget-boolean p1, p0, Landroidx/core/widget/k;->o:Z

    .line 83
    .line 84
    if-nez p1, :cond_7

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/core/widget/k;->f()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    iget-object p1, p0, Landroidx/core/widget/k;->d:Ljava/lang/Runnable;

    .line 93
    .line 94
    if-nez p1, :cond_5

    .line 95
    .line 96
    new-instance p1, Landroidx/core/widget/b;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Landroidx/core/widget/b;-><init>(Landroidx/core/widget/k;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Landroidx/core/widget/k;->d:Ljava/lang/Runnable;

    .line 102
    .line 103
    :cond_5
    iput-boolean v3, p0, Landroidx/core/widget/k;->o:Z

    .line 104
    .line 105
    iput-boolean v3, p0, Landroidx/core/widget/k;->m:Z

    .line 106
    .line 107
    iget-boolean p1, p0, Landroidx/core/widget/k;->l:Z

    .line 108
    .line 109
    if-nez p1, :cond_6

    .line 110
    .line 111
    iget p1, p0, Landroidx/core/widget/k;->h:I

    .line 112
    .line 113
    if-lez p1, :cond_6

    .line 114
    .line 115
    iget-object p2, p0, Landroidx/core/widget/k;->d:Ljava/lang/Runnable;

    .line 116
    .line 117
    int-to-long v6, p1

    .line 118
    invoke-static {v5, p2, v6, v7}, Landroidx/core/view/f0;->H(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_6
    iget-object p1, p0, Landroidx/core/widget/k;->d:Ljava/lang/Runnable;

    .line 123
    .line 124
    check-cast p1, Landroidx/core/widget/b;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/core/widget/b;->run()V

    .line 127
    .line 128
    .line 129
    :goto_0
    iput-boolean v3, p0, Landroidx/core/widget/k;->l:Z

    .line 130
    .line 131
    :cond_7
    :goto_1
    return v1
.end method
