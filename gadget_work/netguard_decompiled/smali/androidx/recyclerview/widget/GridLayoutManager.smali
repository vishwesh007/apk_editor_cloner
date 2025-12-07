.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field E:Z

.field F:I

.field G:[I

.field H:[Landroid/view/View;

.field final I:Landroid/util/SparseIntArray;

.field final J:Landroid/util/SparseIntArray;

.field K:Landroidx/recyclerview/widget/n;

.field final L:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 9
    .line 10
    new-instance v0, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    new-instance v0, Landroid/util/SparseIntArray;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 23
    .line 24
    new-instance v0, Landroidx/recyclerview/widget/n;

    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/recyclerview/widget/n;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 30
    .line 31
    new-instance v0, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/E;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Lu/q;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget p1, p1, Lu/q;->b:I

    .line 43
    .line 44
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 45
    .line 46
    if-ne p1, p2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 51
    .line 52
    if-lt p1, p2, :cond_1

    .line 53
    .line 54
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n;->b()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p3, "Span count should be at least 1. Provided "

    .line 68
    .line 69
    invoke-static {p3, p1}, LB/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p2
.end method

.method private g1(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v3, v0

    .line 9
    add-int/lit8 v4, v1, 0x1

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    array-length v3, v0

    .line 14
    sub-int/2addr v3, v2

    .line 15
    aget v3, v0, v3

    .line 16
    .line 17
    if-eq v3, p1, :cond_1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 24
    aput v3, v0, v3

    .line 25
    .line 26
    div-int v4, p1, v1

    .line 27
    .line 28
    rem-int/2addr p1, v1

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    if-gt v2, v1, :cond_3

    .line 31
    .line 32
    add-int/2addr v3, p1

    .line 33
    if-lez v3, :cond_2

    .line 34
    .line 35
    sub-int v6, v1, v3

    .line 36
    .line 37
    if-ge v6, p1, :cond_2

    .line 38
    .line 39
    add-int/lit8 v6, v4, 0x1

    .line 40
    .line 41
    sub-int/2addr v3, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v6, v4

    .line 44
    :goto_1
    add-int/2addr v5, v6

    .line 45
    aput v5, v0, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 51
    .line 52
    return-void
.end method

.method private i1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/M;->f:Z

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 6
    .line 7
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p3}, Landroidx/recyclerview/widget/n;->a(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/I;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 p3, -0x1

    .line 22
    if-ne p2, p3, :cond_1

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p3, "Cannot find span size for pre layout position. "

    .line 27
    .line 28
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "GridLayoutManager"

    .line 39
    .line 40
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 46
    .line 47
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p2, p3}, Landroidx/recyclerview/widget/n;->a(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method private j1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 1

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/M;->f:Z

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 6
    .line 7
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    rem-int/2addr p1, p3

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eq p3, v0, :cond_1

    .line 22
    .line 23
    return p3

    .line 24
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/I;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-ne p2, v0, :cond_2

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 33
    .line 34
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "GridLayoutManager"

    .line 45
    .line 46
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return p1

    .line 51
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 52
    .line 53
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    rem-int/2addr p2, p3

    .line 59
    return p2
.end method

.method private k1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 2

    .line 1
    iget-boolean p3, p3, Landroidx/recyclerview/widget/M;->f:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eq p3, v1, :cond_1

    .line 20
    .line 21
    return p3

    .line 22
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/I;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-ne p2, v1, :cond_2

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    .line 31
    .line 32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "GridLayoutManager"

    .line 43
    .line 44
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v0

    .line 48
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method private l1(Landroid/view/View;IZ)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/o;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/F;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    add-int/2addr v3, v1

    .line 25
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    .line 27
    add-int/2addr v3, v1

    .line 28
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 29
    .line 30
    add-int/2addr v3, v1

    .line 31
    iget v1, v0, Landroidx/recyclerview/widget/o;->e:I

    .line 32
    .line 33
    iget v4, v0, Landroidx/recyclerview/widget/o;->f:I

    .line 34
    .line 35
    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->h1(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x1

    .line 43
    if-ne v4, v6, :cond_0

    .line 44
    .line 45
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 46
    .line 47
    invoke-static {v5, v1, p2, v3, v4}, Landroidx/recyclerview/widget/E;->z(ZIIII)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->l()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->D()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 62
    .line 63
    invoke-static {v6, v1, v3, v2, v0}, Landroidx/recyclerview/widget/E;->z(ZIIII)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 69
    .line 70
    invoke-static {v5, v1, p2, v2, v4}, Landroidx/recyclerview/widget/E;->z(ZIIII)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->l()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->N()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 85
    .line 86
    invoke-static {v6, v1, v2, v3, v0}, Landroidx/recyclerview/widget/E;->z(ZIIII)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    move v7, v0

    .line 91
    move v0, p2

    .line 92
    move p2, v7

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroidx/recyclerview/widget/F;

    .line 98
    .line 99
    if-eqz p3, :cond_1

    .line 100
    .line 101
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/E;->C0(Landroid/view/View;IILandroidx/recyclerview/widget/F;)Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/E;->A0(Landroid/view/View;IILandroidx/recyclerview/widget/F;)Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    :goto_1
    if-eqz p3, :cond_2

    .line 111
    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method private m1()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->M()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->G()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->F()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->C()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->E()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr v0, v1

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->H()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_0
    sub-int/2addr v0, v1

    .line 34
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->g1(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final A(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-direct {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->i1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v1

    .line 27
    return p1
.end method

.method public final D0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method final E0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/r;Lu/p;)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 6
    .line 7
    if-ge v2, v3, :cond_1

    .line 8
    .line 9
    iget v3, p2, Landroidx/recyclerview/widget/r;->d:I

    .line 10
    .line 11
    if-ltz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/M;->b()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    :goto_1
    if-eqz v3, :cond_1

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget v3, p2, Landroidx/recyclerview/widget/r;->d:I

    .line 27
    .line 28
    iget v4, p2, Landroidx/recyclerview/widget/r;->g:I

    .line 29
    .line 30
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    move-object v5, p3

    .line 35
    check-cast v5, Landroidx/recyclerview/widget/k;

    .line 36
    .line 37
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/k;->a(II)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    iget v3, p2, Landroidx/recyclerview/widget/r;->d:I

    .line 48
    .line 49
    iget v4, p2, Landroidx/recyclerview/widget/r;->e:I

    .line 50
    .line 51
    add-int/2addr v3, v4

    .line 52
    iput v3, p2, Landroidx/recyclerview/widget/r;->d:I

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public final K(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-direct {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->i1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v1

    .line 27
    return p1
.end method

.method final P0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;ZZ)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    sub-int/2addr p3, v0

    .line 13
    const/4 p4, -0x1

    .line 14
    const/4 v0, -0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p4, 0x0

    .line 17
    move p4, p3

    .line 18
    const/4 p3, 0x0

    .line 19
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/recyclerview/widget/x;->k()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->g()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    move-object v5, v4

    .line 40
    :goto_1
    if-eq p3, p4, :cond_6

    .line 41
    .line 42
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-ltz v7, :cond_5

    .line 51
    .line 52
    if-ge v7, v1, :cond_5

    .line 53
    .line 54
    invoke-direct {p0, v7, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->j1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_1

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroidx/recyclerview/widget/F;

    .line 66
    .line 67
    invoke-virtual {v7}, Landroidx/recyclerview/widget/F;->c()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_2

    .line 72
    .line 73
    if-nez v5, :cond_5

    .line 74
    .line 75
    move-object v5, v6

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 78
    .line 79
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-ge v7, v3, :cond_4

    .line 84
    .line 85
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 86
    .line 87
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-ge v7, v2, :cond_3

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    return-object v6

    .line 95
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 96
    .line 97
    move-object v4, v6

    .line 98
    :cond_5
    :goto_3
    add-int/2addr p3, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    if-eqz v4, :cond_7

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_7
    move-object v4, v5

    .line 104
    :goto_4
    return-object v4
.end method

.method final V0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/r;Lu/j;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/x;->j()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v8, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    iget v11, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    aget v10, v10, v11

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v9, :cond_2

    .line 3
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->m1()V

    .line 4
    :cond_2
    iget v11, v3, Landroidx/recyclerview/widget/r;->e:I

    if-ne v11, v6, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 5
    :goto_2
    iget v12, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    if-nez v11, :cond_4

    .line 6
    iget v12, v3, Landroidx/recyclerview/widget/r;->d:I

    invoke-direct {v0, v12, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->j1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    move-result v12

    .line 7
    iget v13, v3, Landroidx/recyclerview/widget/r;->d:I

    invoke-direct {v0, v13, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->k1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4
    const/4 v13, 0x0

    .line 8
    :goto_3
    iget v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    if-ge v13, v14, :cond_9

    .line 9
    iget v14, v3, Landroidx/recyclerview/widget/r;->d:I

    if-ltz v14, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/M;->b()I

    move-result v15

    if-ge v14, v15, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_9

    if-lez v12, :cond_9

    .line 10
    iget v14, v3, Landroidx/recyclerview/widget/r;->d:I

    .line 11
    invoke-direct {v0, v14, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->k1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    move-result v15

    .line 12
    iget v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    if-gt v15, v8, :cond_8

    sub-int/2addr v12, v15

    if-gez v12, :cond_6

    goto :goto_5

    .line 13
    :cond_6
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/r;->b(Landroidx/recyclerview/widget/I;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_5

    .line 14
    :cond_7
    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aput-object v8, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 15
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_5
    if-nez v13, :cond_a

    .line 16
    iput-boolean v6, v4, Lu/j;->b:Z

    return-void

    :cond_a
    if-eqz v11, :cond_b

    move v14, v13

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v12, v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    :goto_6
    if-eq v12, v14, :cond_c

    .line 17
    iget-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v8, v8, v12

    .line 18
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Landroidx/recyclerview/widget/o;

    .line 19
    invoke-static {v8}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    move-result v8

    invoke-direct {v0, v8, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->k1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    move-result v8

    iput v8, v6, Landroidx/recyclerview/widget/o;->f:I

    .line 20
    iput v15, v6, Landroidx/recyclerview/widget/o;->e:I

    add-int/2addr v15, v8

    add-int v12, v12, v16

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_7
    if-ge v2, v13, :cond_13

    .line 21
    iget-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v8, v8, v2

    .line 22
    iget-object v12, v3, Landroidx/recyclerview/widget/r;->k:Ljava/util/List;

    if-nez v12, :cond_e

    if-eqz v11, :cond_d

    .line 23
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/E;->c(Landroid/view/View;)V

    goto :goto_8

    .line 24
    :cond_d
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/E;->d(Landroid/view/View;)V

    goto :goto_8

    :cond_e
    if-eqz v11, :cond_f

    .line 25
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/E;->a(Landroid/view/View;)V

    goto :goto_8

    .line 26
    :cond_f
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/E;->b(Landroid/view/View;)V

    .line 27
    :goto_8
    iget-object v12, v0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroid/graphics/Rect;

    if-nez v12, :cond_10

    .line 28
    invoke-virtual {v14, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_9

    .line 29
    :cond_10
    invoke-virtual {v12, v8}, Landroidx/recyclerview/widget/RecyclerView;->P(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v12

    .line 30
    invoke-virtual {v14, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 31
    :goto_9
    invoke-direct {v0, v8, v5, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->l1(Landroid/view/View;IZ)V

    .line 32
    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    invoke-virtual {v12, v8}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    move-result v12

    if-le v12, v6, :cond_11

    move v6, v12

    .line 33
    :cond_11
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/o;

    .line 34
    iget-object v14, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    invoke-virtual {v14, v8}, Landroidx/recyclerview/widget/x;->d(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v8, v8, v14

    iget v12, v12, Landroidx/recyclerview/widget/o;->f:I

    int-to-float v12, v12

    div-float/2addr v8, v12

    cmpl-float v12, v8, v1

    if-lez v12, :cond_12

    move v1, v8

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    if-eqz v9, :cond_15

    .line 35
    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 36
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->g1(I)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_a
    if-ge v1, v13, :cond_15

    .line 37
    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v5, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    .line 38
    invoke-direct {v0, v2, v8, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->l1(Landroid/view/View;IZ)V

    .line 39
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    move-result v2

    if-le v2, v6, :cond_14

    move v6, v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v13, :cond_19

    .line 40
    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 41
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    move-result v5

    if-eq v5, v6, :cond_17

    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/o;

    .line 43
    iget-object v8, v5, Landroidx/recyclerview/widget/F;->b:Landroid/graphics/Rect;

    .line 44
    iget v9, v8, Landroid/graphics/Rect;->top:I

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    .line 45
    iget v10, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v8

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v8

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v8

    .line 46
    iget v8, v5, Landroidx/recyclerview/widget/o;->e:I

    iget v11, v5, Landroidx/recyclerview/widget/o;->f:I

    invoke-virtual {v0, v8, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->h1(II)I

    move-result v8

    .line 47
    iget v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_16

    .line 48
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v7, v8, v11, v10, v5}, Landroidx/recyclerview/widget/E;->z(ZIIII)I

    move-result v5

    sub-int v8, v6, v9

    .line 49
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_c

    :cond_16
    const/high16 v11, 0x40000000    # 2.0f

    sub-int v10, v6, v10

    .line 50
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 51
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v7, v8, v11, v9, v5}, Landroidx/recyclerview/widget/E;->z(ZIIII)I

    move-result v8

    move v5, v10

    .line 52
    :goto_c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/F;

    .line 53
    invoke-virtual {v0, v2, v5, v8, v9}, Landroidx/recyclerview/widget/E;->C0(Landroid/view/View;IILandroidx/recyclerview/widget/F;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 54
    invoke-virtual {v2, v5, v8}, Landroid/view/View;->measure(II)V

    goto :goto_d

    :cond_17
    const/high16 v11, 0x40000000    # 2.0f

    :cond_18
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 55
    :cond_19
    iput v6, v4, Lu/j;->a:I

    .line 56
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 57
    iget v1, v3, Landroidx/recyclerview/widget/r;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 58
    iget v1, v3, Landroidx/recyclerview/widget/r;->b:I

    sub-int v2, v1, v6

    goto :goto_e

    .line 59
    :cond_1a
    iget v2, v3, Landroidx/recyclerview/widget/r;->b:I

    add-int v1, v2, v6

    :goto_e
    move v5, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_10

    :cond_1b
    const/4 v2, -0x1

    .line 60
    iget v1, v3, Landroidx/recyclerview/widget/r;->f:I

    if-ne v1, v2, :cond_1c

    .line 61
    iget v1, v3, Landroidx/recyclerview/widget/r;->b:I

    sub-int v2, v1, v6

    goto :goto_f

    .line 62
    :cond_1c
    iget v2, v3, Landroidx/recyclerview/widget/r;->b:I

    add-int v1, v2, v6

    :goto_f
    move v3, v2

    const/4 v5, 0x0

    move v2, v1

    const/4 v1, 0x0

    :goto_10
    if-ge v7, v13, :cond_21

    .line 63
    iget-object v6, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    aget-object v6, v6, v7

    .line 64
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/o;

    .line 65
    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1e

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->F()I

    move-result v2

    iget-object v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    iget v9, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    iget v10, v8, Landroidx/recyclerview/widget/o;->e:I

    sub-int/2addr v9, v10

    aget v3, v3, v9

    add-int/2addr v2, v3

    .line 68
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/x;->d(Landroid/view/View;)I

    move-result v3

    sub-int v3, v2, v3

    goto :goto_11

    .line 69
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->F()I

    move-result v2

    iget-object v3, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    iget v9, v8, Landroidx/recyclerview/widget/o;->e:I

    aget v3, v3, v9

    add-int/2addr v3, v2

    .line 70
    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/x;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_11

    .line 71
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->H()I

    move-result v1

    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    iget v9, v8, Landroidx/recyclerview/widget/o;->e:I

    aget v5, v5, v9

    add-int/2addr v1, v5

    .line 72
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/x;->d(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v1

    move/from16 v18, v5

    move v5, v1

    move/from16 v1, v18

    .line 73
    :goto_11
    invoke-static {v6, v3, v5, v2, v1}, Landroidx/recyclerview/widget/E;->R(Landroid/view/View;IIII)V

    .line 74
    invoke-virtual {v8}, Landroidx/recyclerview/widget/F;->c()Z

    move-result v9

    if-nez v9, :cond_20

    invoke-virtual {v8}, Landroidx/recyclerview/widget/F;->b()Z

    move-result v8

    if-eqz v8, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v8, 0x1

    goto :goto_13

    :cond_20
    :goto_12
    const/4 v8, 0x1

    .line 75
    iput-boolean v8, v4, Lu/j;->c:Z

    .line 76
    :goto_13
    iget-boolean v9, v4, Lu/j;->d:Z

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    or-int/2addr v6, v9

    iput-boolean v6, v4, Lu/j;->d:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 77
    :cond_21
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final W0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/q;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->m1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_3

    .line 9
    .line 10
    iget-boolean v0, p2, Landroidx/recyclerview/widget/M;->f:Z

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p4, v0, :cond_0

    .line 16
    .line 17
    const/4 p4, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p4, 0x0

    .line 20
    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/q;->b:I

    .line 21
    .line 22
    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->j1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    :goto_1
    if-lez v1, :cond_3

    .line 29
    .line 30
    iget p4, p3, Landroidx/recyclerview/widget/q;->b:I

    .line 31
    .line 32
    if-lez p4, :cond_3

    .line 33
    .line 34
    add-int/lit8 p4, p4, -0x1

    .line 35
    .line 36
    iput p4, p3, Landroidx/recyclerview/widget/q;->b:I

    .line 37
    .line 38
    invoke-direct {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->j1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    sub-int/2addr p4, v0

    .line 48
    iget v0, p3, Landroidx/recyclerview/widget/q;->b:I

    .line 49
    .line 50
    :goto_2
    if-ge v0, p4, :cond_2

    .line 51
    .line 52
    add-int/lit8 v2, v0, 0x1

    .line 53
    .line 54
    invoke-direct {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->j1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-le v3, v1, :cond_2

    .line 59
    .line 60
    move v0, v2

    .line 61
    move v1, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/q;->b:I

    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    array-length p1, p1

    .line 70
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 71
    .line 72
    if-eq p1, p2, :cond_5

    .line 73
    .line 74
    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 75
    .line 76
    new-array p1, p1, [Landroid/view/View;

    .line 77
    .line 78
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 79
    .line 80
    :cond_5
    return-void
.end method

.method public final X(Landroid/view/View;ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)Landroid/view/View;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    move-object/from16 v5, p1

    .line 13
    .line 14
    :goto_0
    move-object v3, v4

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    move-object/from16 v5, p1

    .line 17
    .line 18
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    :goto_1
    goto :goto_0

    .line 25
    :cond_1
    iget-object v6, v0, Landroidx/recyclerview/widget/E;->a:Landroidx/recyclerview/widget/d;

    .line 26
    .line 27
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 35
    .line 36
    return-object v4

    .line 37
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Landroidx/recyclerview/widget/o;

    .line 42
    .line 43
    iget v7, v6, Landroidx/recyclerview/widget/o;->e:I

    .line 44
    .line 45
    iget v6, v6, Landroidx/recyclerview/widget/o;->f:I

    .line 46
    .line 47
    add-int/2addr v6, v7

    .line 48
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->X(Landroid/view/View;ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-nez v5, :cond_4

    .line 53
    .line 54
    return-object v4

    .line 55
    :cond_4
    move/from16 v5, p2

    .line 56
    .line 57
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/4 v9, 0x1

    .line 62
    if-ne v5, v9, :cond_5

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    goto :goto_3

    .line 66
    :cond_5
    const/4 v5, 0x0

    .line 67
    :goto_3
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 68
    .line 69
    if-eq v5, v10, :cond_6

    .line 70
    .line 71
    const/4 v5, 0x1

    .line 72
    goto :goto_4

    .line 73
    :cond_6
    const/4 v5, 0x0

    .line 74
    :goto_4
    const/4 v10, -0x1

    .line 75
    if-eqz v5, :cond_7

    .line 76
    .line 77
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    sub-int/2addr v5, v9

    .line 82
    const/4 v11, -0x1

    .line 83
    const/4 v12, -0x1

    .line 84
    goto :goto_5

    .line 85
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    move v11, v5

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v12, 0x1

    .line 92
    :goto_5
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 93
    .line 94
    if-ne v13, v9, :cond_8

    .line 95
    .line 96
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_8

    .line 101
    .line 102
    const/4 v13, 0x1

    .line 103
    goto :goto_6

    .line 104
    :cond_8
    const/4 v13, 0x0

    .line 105
    :goto_6
    invoke-direct {v0, v5, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->i1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    move v10, v5

    .line 110
    move/from16 v16, v12

    .line 111
    .line 112
    const/4 v8, -0x1

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v15, -0x1

    .line 116
    move-object v5, v4

    .line 117
    :goto_7
    if-eq v10, v11, :cond_1a

    .line 118
    .line 119
    move/from16 v17, v11

    .line 120
    .line 121
    invoke-direct {v0, v10, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->i1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-ne v1, v3, :cond_9

    .line 130
    .line 131
    goto/16 :goto_10

    .line 132
    .line 133
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 134
    .line 135
    .line 136
    move-result v18

    .line 137
    if-eqz v18, :cond_b

    .line 138
    .line 139
    if-eq v11, v14, :cond_b

    .line 140
    .line 141
    if-eqz v4, :cond_a

    .line 142
    .line 143
    goto/16 :goto_10

    .line 144
    .line 145
    :cond_a
    move-object/from16 v18, v3

    .line 146
    .line 147
    move-object/from16 v21, v5

    .line 148
    .line 149
    move/from16 v19, v9

    .line 150
    .line 151
    const/16 v20, 0x1

    .line 152
    .line 153
    goto/16 :goto_e

    .line 154
    .line 155
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    check-cast v11, Landroidx/recyclerview/widget/o;

    .line 160
    .line 161
    iget v2, v11, Landroidx/recyclerview/widget/o;->e:I

    .line 162
    .line 163
    move-object/from16 v18, v3

    .line 164
    .line 165
    iget v3, v11, Landroidx/recyclerview/widget/o;->f:I

    .line 166
    .line 167
    add-int/2addr v3, v2

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 169
    .line 170
    .line 171
    move-result v19

    .line 172
    if-eqz v19, :cond_c

    .line 173
    .line 174
    if-ne v2, v7, :cond_c

    .line 175
    .line 176
    if-ne v3, v6, :cond_c

    .line 177
    .line 178
    return-object v1

    .line 179
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 180
    .line 181
    .line 182
    move-result v19

    .line 183
    if-eqz v19, :cond_d

    .line 184
    .line 185
    if-eqz v4, :cond_e

    .line 186
    .line 187
    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 188
    .line 189
    .line 190
    move-result v19

    .line 191
    if-nez v19, :cond_f

    .line 192
    .line 193
    if-nez v5, :cond_f

    .line 194
    .line 195
    :cond_e
    move-object/from16 v21, v5

    .line 196
    .line 197
    goto :goto_9

    .line 198
    :cond_f
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 199
    .line 200
    .line 201
    move-result v19

    .line 202
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 203
    .line 204
    .line 205
    move-result v20

    .line 206
    move-object/from16 v21, v5

    .line 207
    .line 208
    sub-int v5, v20, v19

    .line 209
    .line 210
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 211
    .line 212
    .line 213
    move-result v19

    .line 214
    if-eqz v19, :cond_12

    .line 215
    .line 216
    if-le v5, v9, :cond_10

    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_10
    if-ne v5, v9, :cond_16

    .line 220
    .line 221
    if-le v2, v15, :cond_11

    .line 222
    .line 223
    const/4 v5, 0x1

    .line 224
    goto :goto_8

    .line 225
    :cond_11
    const/4 v5, 0x0

    .line 226
    :goto_8
    if-ne v13, v5, :cond_16

    .line 227
    .line 228
    :goto_9
    move/from16 v19, v9

    .line 229
    .line 230
    const/4 v5, 0x1

    .line 231
    const/16 v20, 0x1

    .line 232
    .line 233
    goto :goto_d

    .line 234
    :cond_12
    if-nez v4, :cond_16

    .line 235
    .line 236
    move/from16 v19, v9

    .line 237
    .line 238
    iget-object v9, v0, Landroidx/recyclerview/widget/E;->c:Landroidx/recyclerview/widget/g0;

    .line 239
    .line 240
    invoke-virtual {v9, v1}, Landroidx/recyclerview/widget/g0;->b(Landroid/view/View;)Z

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    if-eqz v9, :cond_13

    .line 245
    .line 246
    iget-object v9, v0, Landroidx/recyclerview/widget/E;->d:Landroidx/recyclerview/widget/g0;

    .line 247
    .line 248
    invoke-virtual {v9, v1}, Landroidx/recyclerview/widget/g0;->b(Landroid/view/View;)Z

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    if-eqz v9, :cond_13

    .line 253
    .line 254
    const/4 v9, 0x1

    .line 255
    goto :goto_a

    .line 256
    :cond_13
    const/4 v9, 0x0

    .line 257
    :goto_a
    const/16 v20, 0x1

    .line 258
    .line 259
    xor-int/lit8 v9, v9, 0x1

    .line 260
    .line 261
    if-eqz v9, :cond_17

    .line 262
    .line 263
    if-le v5, v12, :cond_14

    .line 264
    .line 265
    goto :goto_c

    .line 266
    :cond_14
    if-ne v5, v12, :cond_17

    .line 267
    .line 268
    if-le v2, v8, :cond_15

    .line 269
    .line 270
    const/4 v5, 0x1

    .line 271
    goto :goto_b

    .line 272
    :cond_15
    const/4 v5, 0x0

    .line 273
    :goto_b
    if-ne v13, v5, :cond_17

    .line 274
    .line 275
    :goto_c
    const/4 v5, 0x1

    .line 276
    goto :goto_d

    .line 277
    :cond_16
    move/from16 v19, v9

    .line 278
    .line 279
    const/16 v20, 0x1

    .line 280
    .line 281
    :cond_17
    const/4 v5, 0x0

    .line 282
    :goto_d
    if-eqz v5, :cond_19

    .line 283
    .line 284
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_18

    .line 289
    .line 290
    iget v4, v11, Landroidx/recyclerview/widget/o;->e:I

    .line 291
    .line 292
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    sub-int v9, v3, v2

    .line 301
    .line 302
    move v15, v4

    .line 303
    move-object/from16 v5, v21

    .line 304
    .line 305
    move-object v4, v1

    .line 306
    goto :goto_f

    .line 307
    :cond_18
    iget v5, v11, Landroidx/recyclerview/widget/o;->e:I

    .line 308
    .line 309
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    sub-int v12, v3, v2

    .line 318
    .line 319
    move v8, v5

    .line 320
    move/from16 v9, v19

    .line 321
    .line 322
    move-object v5, v1

    .line 323
    goto :goto_f

    .line 324
    :cond_19
    :goto_e
    move/from16 v9, v19

    .line 325
    .line 326
    move-object/from16 v5, v21

    .line 327
    .line 328
    :goto_f
    add-int v10, v10, v16

    .line 329
    .line 330
    move-object/from16 v1, p3

    .line 331
    .line 332
    move-object/from16 v2, p4

    .line 333
    .line 334
    move/from16 v11, v17

    .line 335
    .line 336
    move-object/from16 v3, v18

    .line 337
    .line 338
    goto/16 :goto_7

    .line 339
    .line 340
    :cond_1a
    :goto_10
    move-object/from16 v21, v5

    .line 341
    .line 342
    if-eqz v4, :cond_1b

    .line 343
    .line 344
    goto :goto_11

    .line 345
    :cond_1b
    move-object/from16 v4, v21

    .line 346
    .line 347
    :goto_11
    return-object v4
.end method

.method public final Z(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Landroidx/core/view/accessibility/k;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/E;->Z(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Landroidx/core/view/accessibility/k;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Landroid/widget/GridView;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p3, p1}, Landroidx/core/view/accessibility/k;->g(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Landroid/view/View;Landroidx/core/view/accessibility/k;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/o;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/E;->a0(Landroid/view/View;Landroidx/core/view/accessibility/k;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/o;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/F;->a()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-direct {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->i1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 24
    .line 25
    const/4 p3, 0x1

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    iget p2, v0, Landroidx/recyclerview/widget/o;->e:I

    .line 29
    .line 30
    iget v0, v0, Landroidx/recyclerview/widget/o;->f:I

    .line 31
    .line 32
    invoke-static {p2, v0, p1, p3}, Landroidx/core/view/accessibility/j;->a(IIII)Landroidx/core/view/accessibility/j;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/k;->i(Landroidx/core/view/accessibility/j;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget p2, v0, Landroidx/recyclerview/widget/o;->e:I

    .line 41
    .line 42
    iget v0, v0, Landroidx/recyclerview/widget/o;->f:I

    .line 43
    .line 44
    invoke-static {p1, p3, p2, v0}, Landroidx/core/view/accessibility/j;->a(IIII)Landroidx/core/view/accessibility/j;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/k;->i(Landroidx/core/view/accessibility/j;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public final c0(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n;->b()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/n;->b:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c1(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(Z)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final d0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/recyclerview/widget/n;->b:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e0(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n;->b()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/n;->b:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final f0(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n;->b()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/n;->b:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final g0(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/n;->b()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/n;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/n;->b:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final h0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)V
    .locals 7

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/M;->f:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroidx/recyclerview/widget/o;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroidx/recyclerview/widget/F;->a()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    iget v6, v4, Landroidx/recyclerview/widget/o;->f:I

    .line 31
    .line 32
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    .line 34
    .line 35
    iget v4, v4, Landroidx/recyclerview/widget/o;->e:I

    .line 36
    .line 37
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->h0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method final h1(II)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 13
    .line 14
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 15
    .line 16
    sub-int v2, v1, p1

    .line 17
    .line 18
    aget v2, v0, v2

    .line 19
    .line 20
    sub-int/2addr v1, p1

    .line 21
    sub-int/2addr v1, p2

    .line 22
    aget p1, v0, v1

    .line 23
    .line 24
    sub-int/2addr v2, p1

    .line 25
    return v2

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 27
    .line 28
    add-int/2addr p2, p1

    .line 29
    aget p2, v0, p2

    .line 30
    .line 31
    aget p1, v0, p1

    .line 32
    .line 33
    sub-int/2addr p2, p1

    .line 34
    return p2
.end method

.method public final i(Landroidx/recyclerview/widget/F;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/o;

    .line 2
    .line 3
    return p1
.end method

.method public final i0(Landroidx/recyclerview/widget/M;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i0(Landroidx/recyclerview/widget/M;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->E:Z

    .line 6
    .line 7
    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->n(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final o(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->o(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final q(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final r(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->r(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final r0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->m1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 14
    .line 15
    new-array v0, v0, [Landroid/view/View;

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->r0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final t0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->m1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 14
    .line 15
    new-array v0, v0, [Landroid/view/View;

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[Landroid/view/View;

    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->t0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final u()Landroidx/recyclerview/widget/F;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/o;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/o;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final v(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/F;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final w(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/F;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 6
    .line 7
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/o;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/o;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/o;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final x0(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/E;->x0(Landroid/graphics/Rect;II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->F()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->G()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->H()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->E()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v0

    .line 26
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v0, v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    add-int/2addr p1, v2

    .line 36
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    invoke-static {v0}, Landroidx/core/view/f0;->o(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/E;->j(III)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 47
    .line 48
    array-length v0, p3

    .line 49
    sub-int/2addr v0, v3

    .line 50
    aget p3, p3, v0

    .line 51
    .line 52
    add-int/2addr p3, v1

    .line 53
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    invoke-static {v0}, Landroidx/core/view/f0;->p(Landroid/view/View;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/E;->j(III)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    add-int/2addr p1, v1

    .line 69
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    invoke-static {v0}, Landroidx/core/view/f0;->p(Landroid/view/View;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/E;->j(III)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:[I

    .line 80
    .line 81
    array-length v0, p1

    .line 82
    sub-int/2addr v0, v3

    .line 83
    aget p1, p1, v0

    .line 84
    .line 85
    add-int/2addr p1, v2

    .line 86
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    invoke-static {v0}, Landroidx/core/view/f0;->o(Landroid/view/View;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/E;->j(III)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .line 98
    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 99
    .line 100
    .line 101
    return-void
.end method
