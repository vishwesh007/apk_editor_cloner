.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Landroidx/recyclerview/widget/E;
.source "SourceFile"


# instance fields
.field final A:Landroidx/recyclerview/widget/q;

.field private final B:Lu/j;

.field private C:I

.field private D:[I

.field p:I

.field private q:Landroidx/recyclerview/widget/r;

.field r:Landroidx/recyclerview/widget/x;

.field private s:Z

.field private t:Z

.field u:Z

.field private v:Z

.field private w:Z

.field x:I

.field y:I

.field z:Landroidx/recyclerview/widget/t;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/E;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 5
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v2, -0x1

    .line 7
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v2, -0x80000000

    .line 8
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 10
    new-instance v3, Landroidx/recyclerview/widget/q;

    invoke-direct {v3}, Landroidx/recyclerview/widget/q;-><init>()V

    iput-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/q;

    .line 11
    new-instance v3, Lu/j;

    invoke-direct {v3}, Lu/j;-><init>()V

    iput-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Lu/j;

    const/4 v3, 0x2

    .line 12
    iput v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    new-array v3, v3, [I

    .line 13
    iput-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 14
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(I)V

    .line 15
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Ljava/lang/String;)V

    .line 16
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/E;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 22
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 23
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 24
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v0, -0x80000000

    .line 26
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 28
    new-instance v1, Landroidx/recyclerview/widget/q;

    invoke-direct {v1}, Landroidx/recyclerview/widget/q;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/q;

    .line 29
    new-instance v1, Lu/j;

    invoke-direct {v1}, Lu/j;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Lu/j;

    const/4 v1, 0x2

    .line 30
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    new-array v1, v1, [I

    .line 31
    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 32
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/E;->J(Landroid/content/Context;Landroid/util/AttributeSet;II)Lu/q;

    move-result-object p1

    .line 33
    iget p2, p1, Lu/q;->a:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(I)V

    .line 34
    iget-boolean p2, p1, Lu/q;->c:Z

    .line 35
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Ljava/lang/String;)V

    .line 36
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iput-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 39
    :goto_0
    iget-boolean p1, p1, Lu/q;->d:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(Z)V

    return-void
.end method

.method private F0(Landroidx/recyclerview/widget/M;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 23
    .line 24
    xor-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 31
    .line 32
    move-object v0, p1

    .line 33
    move-object v4, p0

    .line 34
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/T;->a(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/x;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/E;Z)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method private G0(Landroidx/recyclerview/widget/M;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 23
    .line 24
    xor-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 31
    .line 32
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 33
    .line 34
    move-object v0, p1

    .line 35
    move-object v4, p0

    .line 36
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/T;->b(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/x;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/E;ZZ)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method private H0(Landroidx/recyclerview/widget/M;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 23
    .line 24
    xor-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 31
    .line 32
    move-object v0, p1

    .line 33
    move-object v4, p0

    .line 34
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/T;->c(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/x;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/E;Z)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method private Q0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int/2addr v0, p1

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    neg-int v0, v0

    .line 11
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    neg-int p2, p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 20
    .line 21
    invoke-virtual {p3}, Landroidx/recyclerview/widget/x;->g()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    sub-int/2addr p3, p1

    .line 26
    if-lez p3, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/x;->p(I)V

    .line 31
    .line 32
    .line 33
    add-int/2addr p3, p2

    .line 34
    return p3

    .line 35
    :cond_0
    return p2

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private R0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->k()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    neg-int p2, p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 20
    .line 21
    invoke-virtual {p3}, Landroidx/recyclerview/widget/x;->k()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    sub-int/2addr p1, p3

    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 29
    .line 30
    neg-int p4, p1

    .line 31
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/x;->p(I)V

    .line 32
    .line 33
    .line 34
    sub-int/2addr p2, p1

    .line 35
    :cond_0
    return p2

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private S0()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private T0()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private X0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;)V
    .locals 5

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/r;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-boolean v0, p2, Landroidx/recyclerview/widget/r;->l:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/r;->g:I

    .line 12
    .line 13
    iget v1, p2, Landroidx/recyclerview/widget/r;->i:I

    .line 14
    .line 15
    iget p2, p2, Landroidx/recyclerview/widget/r;->f:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne p2, v3, :cond_7

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_8

    .line 28
    .line 29
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroidx/recyclerview/widget/x;->f()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    sub-int/2addr v4, v0

    .line 36
    add-int/2addr v4, v1

    .line 37
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-ge v0, p2, :cond_e

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 49
    .line 50
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-lt v3, v4, :cond_3

    .line 55
    .line 56
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/x;->o(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ge v1, v4, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    invoke-direct {p0, p1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(Landroidx/recyclerview/widget/I;II)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_8

    .line 72
    .line 73
    :cond_4
    add-int/2addr p2, v3

    .line 74
    move v0, p2

    .line 75
    :goto_2
    if-ltz v0, :cond_e

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-lt v2, v4, :cond_6

    .line 88
    .line 89
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/x;->o(Landroid/view/View;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-ge v1, v4, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    :goto_3
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(Landroidx/recyclerview/widget/I;II)V

    .line 102
    .line 103
    .line 104
    goto :goto_8

    .line 105
    :cond_7
    if-gez v0, :cond_8

    .line 106
    .line 107
    goto :goto_8

    .line 108
    :cond_8
    sub-int/2addr v0, v1

    .line 109
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 114
    .line 115
    if-eqz v1, :cond_b

    .line 116
    .line 117
    add-int/2addr p2, v3

    .line 118
    move v1, p2

    .line 119
    :goto_4
    if-ltz v1, :cond_e

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 126
    .line 127
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-gt v3, v0, :cond_a

    .line 132
    .line 133
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 134
    .line 135
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/x;->n(Landroid/view/View;)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-le v2, v0, :cond_9

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_a
    :goto_5
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(Landroidx/recyclerview/widget/I;II)V

    .line 146
    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_b
    const/4 v1, 0x0

    .line 150
    :goto_6
    if-ge v1, p2, :cond_e

    .line 151
    .line 152
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 157
    .line 158
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-gt v4, v0, :cond_d

    .line 163
    .line 164
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 165
    .line 166
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/x;->n(Landroid/view/View;)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-le v3, v0, :cond_c

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_d
    :goto_7
    invoke-direct {p0, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(Landroidx/recyclerview/widget/I;II)V

    .line 177
    .line 178
    .line 179
    :cond_e
    :goto_8
    return-void
.end method

.method private Y0(Landroidx/recyclerview/widget/I;II)V
    .locals 2

    .line 1
    if-ne p2, p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-le p3, p2, :cond_2

    .line 5
    .line 6
    :goto_0
    add-int/lit8 p3, p3, -0x1

    .line 7
    .line 8
    if-lt p3, p2, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/E;->a:Landroidx/recyclerview/widget/d;

    .line 21
    .line 22
    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/d;->m(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/I;->l(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    if-le p2, p3, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/E;->a:Landroidx/recyclerview/widget/d;

    .line 42
    .line 43
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/d;->m(I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/I;->l(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 p2, p2, -0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    return-void
.end method

.method private Z0()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 14
    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 22
    .line 23
    :goto_1
    return-void
.end method

.method private d1(IIZLandroidx/recyclerview/widget/M;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->i()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->f()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    iput-boolean v1, v0, Landroidx/recyclerview/widget/r;->l:Z

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 27
    .line 28
    iput p1, v0, Landroidx/recyclerview/widget/r;->f:I

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 31
    .line 32
    aput v2, v0, v2

    .line 33
    .line 34
    aput v2, v0, v3

    .line 35
    .line 36
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 40
    .line 41
    iget p4, p4, Landroidx/recyclerview/widget/r;->f:I

    .line 42
    .line 43
    aput v2, v0, v2

    .line 44
    .line 45
    aput v2, v0, v3

    .line 46
    .line 47
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 48
    .line 49
    aget p4, p4, v2

    .line 50
    .line 51
    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p4

    .line 55
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 56
    .line 57
    aget v0, v0, v3

    .line 58
    .line 59
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-ne p1, v3, :cond_1

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    move v1, v0

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v1, p4

    .line 73
    :goto_1
    iput v1, p1, Landroidx/recyclerview/widget/r;->h:I

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move p4, v0

    .line 79
    :goto_2
    iput p4, p1, Landroidx/recyclerview/widget/r;->i:I

    .line 80
    .line 81
    const/4 p4, -0x1

    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/recyclerview/widget/x;->h()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    add-int/2addr v0, v1

    .line 91
    iput v0, p1, Landroidx/recyclerview/widget/r;->h:I

    .line 92
    .line 93
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 98
    .line 99
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    const/4 v3, -0x1

    .line 104
    :cond_4
    iput v3, v0, Landroidx/recyclerview/widget/r;->e:I

    .line 105
    .line 106
    invoke-static {p1}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 107
    .line 108
    .line 109
    move-result p4

    .line 110
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 111
    .line 112
    iget v2, v1, Landroidx/recyclerview/widget/r;->e:I

    .line 113
    .line 114
    add-int/2addr p4, v2

    .line 115
    iput p4, v0, Landroidx/recyclerview/widget/r;->d:I

    .line 116
    .line 117
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 118
    .line 119
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 120
    .line 121
    .line 122
    move-result p4

    .line 123
    iput p4, v1, Landroidx/recyclerview/widget/r;->b:I

    .line 124
    .line 125
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 126
    .line 127
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 132
    .line 133
    invoke-virtual {p4}, Landroidx/recyclerview/widget/x;->g()I

    .line 134
    .line 135
    .line 136
    move-result p4

    .line 137
    sub-int/2addr p1, p4

    .line 138
    goto :goto_4

    .line 139
    :cond_5
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 144
    .line 145
    iget v1, v0, Landroidx/recyclerview/widget/r;->h:I

    .line 146
    .line 147
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 148
    .line 149
    invoke-virtual {v2}, Landroidx/recyclerview/widget/x;->k()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    add-int/2addr v2, v1

    .line 154
    iput v2, v0, Landroidx/recyclerview/widget/r;->h:I

    .line 155
    .line 156
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 157
    .line 158
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 159
    .line 160
    if-eqz v1, :cond_6

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    const/4 v3, -0x1

    .line 164
    :goto_3
    iput v3, v0, Landroidx/recyclerview/widget/r;->e:I

    .line 165
    .line 166
    invoke-static {p1}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 167
    .line 168
    .line 169
    move-result p4

    .line 170
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 171
    .line 172
    iget v2, v1, Landroidx/recyclerview/widget/r;->e:I

    .line 173
    .line 174
    add-int/2addr p4, v2

    .line 175
    iput p4, v0, Landroidx/recyclerview/widget/r;->d:I

    .line 176
    .line 177
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 178
    .line 179
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 180
    .line 181
    .line 182
    move-result p4

    .line 183
    iput p4, v1, Landroidx/recyclerview/widget/r;->b:I

    .line 184
    .line 185
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 186
    .line 187
    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    neg-int p1, p1

    .line 192
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 193
    .line 194
    invoke-virtual {p4}, Landroidx/recyclerview/widget/x;->k()I

    .line 195
    .line 196
    .line 197
    move-result p4

    .line 198
    add-int/2addr p1, p4

    .line 199
    :goto_4
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 200
    .line 201
    iput p2, p4, Landroidx/recyclerview/widget/r;->c:I

    .line 202
    .line 203
    if-eqz p3, :cond_7

    .line 204
    .line 205
    sub-int/2addr p2, p1

    .line 206
    iput p2, p4, Landroidx/recyclerview/widget/r;->c:I

    .line 207
    .line 208
    :cond_7
    iput p1, p4, Landroidx/recyclerview/widget/r;->g:I

    .line 209
    .line 210
    return-void
.end method

.method private e1(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->g()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, p2

    .line 10
    iput v1, v0, Landroidx/recyclerview/widget/r;->c:I

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    :goto_0
    iput v1, v0, Landroidx/recyclerview/widget/r;->e:I

    .line 23
    .line 24
    iput p1, v0, Landroidx/recyclerview/widget/r;->d:I

    .line 25
    .line 26
    iput v2, v0, Landroidx/recyclerview/widget/r;->f:I

    .line 27
    .line 28
    iput p2, v0, Landroidx/recyclerview/widget/r;->b:I

    .line 29
    .line 30
    const/high16 p1, -0x80000000

    .line 31
    .line 32
    iput p1, v0, Landroidx/recyclerview/widget/r;->g:I

    .line 33
    .line 34
    return-void
.end method

.method private f1(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->k()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int v1, p2, v1

    .line 10
    .line 11
    iput v1, v0, Landroidx/recyclerview/widget/r;->c:I

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 14
    .line 15
    iput p1, v0, Landroidx/recyclerview/widget/r;->d:I

    .line 16
    .line 17
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, -0x1

    .line 25
    :goto_0
    iput p1, v0, Landroidx/recyclerview/widget/r;->e:I

    .line 26
    .line 27
    iput v1, v0, Landroidx/recyclerview/widget/r;->f:I

    .line 28
    .line 29
    iput p2, v0, Landroidx/recyclerview/widget/r;->b:I

    .line 30
    .line 31
    const/high16 p1, -0x80000000

    .line 32
    .line 33
    iput p1, v0, Landroidx/recyclerview/widget/r;->g:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method final B0()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->D()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/high16 v2, 0x40000000    # 2.0f

    .line 7
    .line 8
    if-eq v0, v2, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->N()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    const/4 v3, 0x1

    .line 22
    if-ge v2, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    .line 34
    if-gez v5, :cond_0

    .line 35
    .line 36
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    .line 38
    if-gez v4, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_1
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    :cond_2
    return v1
.end method

.method public D0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method E0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/r;Lu/p;)V
    .locals 1

    .line 1
    iget v0, p2, Landroidx/recyclerview/widget/r;->d:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/M;->b()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iget p2, p2, Landroidx/recyclerview/widget/r;->g:I

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    check-cast p3, Landroidx/recyclerview/widget/k;

    .line 19
    .line 20
    invoke-virtual {p3, v0, p1}, Landroidx/recyclerview/widget/k;->a(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method final I0(I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_b

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_8

    .line 7
    .line 8
    const/16 v2, 0x11

    .line 9
    .line 10
    const/high16 v3, -0x80000000

    .line 11
    .line 12
    if-eq p1, v2, :cond_6

    .line 13
    .line 14
    const/16 v2, 0x21

    .line 15
    .line 16
    if-eq p1, v2, :cond_4

    .line 17
    .line 18
    const/16 v0, 0x42

    .line 19
    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x82

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    return v3

    .line 27
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 28
    .line 29
    if-ne p1, v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/high16 v1, -0x80000000

    .line 33
    .line 34
    :goto_0
    return v1

    .line 35
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/high16 v1, -0x80000000

    .line 41
    .line 42
    :goto_1
    return v1

    .line 43
    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 44
    .line 45
    if-ne p1, v1, :cond_5

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_5
    const/high16 v0, -0x80000000

    .line 49
    .line 50
    :goto_2
    return v0

    .line 51
    :cond_6
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 52
    .line 53
    if-nez p1, :cond_7

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_7
    const/high16 v0, -0x80000000

    .line 57
    .line 58
    :goto_3
    return v0

    .line 59
    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 60
    .line 61
    if-ne p1, v1, :cond_9

    .line 62
    .line 63
    return v1

    .line 64
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_a

    .line 69
    .line 70
    return v0

    .line 71
    :cond_a
    return v1

    .line 72
    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 73
    .line 74
    if-ne p1, v1, :cond_c

    .line 75
    .line 76
    return v0

    .line 77
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_d

    .line 82
    .line 83
    return v1

    .line 84
    :cond_d
    return v0
.end method

.method final J0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/r;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/recyclerview/widget/r;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method final K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I
    .locals 7

    .line 1
    iget v0, p2, Landroidx/recyclerview/widget/r;->c:I

    .line 2
    .line 3
    iget v1, p2, Landroidx/recyclerview/widget/r;->g:I

    .line 4
    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    iput v1, p2, Landroidx/recyclerview/widget/r;->g:I

    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v1, p2, Landroidx/recyclerview/widget/r;->c:I

    .line 18
    .line 19
    iget v3, p2, Landroidx/recyclerview/widget/r;->h:I

    .line 20
    .line 21
    add-int/2addr v1, v3

    .line 22
    :cond_2
    iget-boolean v3, p2, Landroidx/recyclerview/widget/r;->l:Z

    .line 23
    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    if-lez v1, :cond_a

    .line 27
    .line 28
    :cond_3
    iget v3, p2, Landroidx/recyclerview/widget/r;->d:I

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-ltz v3, :cond_4

    .line 32
    .line 33
    invoke-virtual {p3}, Landroidx/recyclerview/widget/M;->b()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-ge v3, v5, :cond_4

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_4
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-eqz v3, :cond_a

    .line 43
    .line 44
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Lu/j;

    .line 45
    .line 46
    iput v4, v3, Lu/j;->a:I

    .line 47
    .line 48
    iput-boolean v4, v3, Lu/j;->b:Z

    .line 49
    .line 50
    iput-boolean v4, v3, Lu/j;->c:Z

    .line 51
    .line 52
    iput-boolean v4, v3, Lu/j;->d:Z

    .line 53
    .line 54
    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/r;Lu/j;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v4, v3, Lu/j;->b:Z

    .line 58
    .line 59
    if-eqz v4, :cond_5

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    iget v4, p2, Landroidx/recyclerview/widget/r;->b:I

    .line 63
    .line 64
    iget v5, v3, Lu/j;->a:I

    .line 65
    .line 66
    iget v6, p2, Landroidx/recyclerview/widget/r;->f:I

    .line 67
    .line 68
    mul-int v6, v6, v5

    .line 69
    .line 70
    add-int/2addr v6, v4

    .line 71
    iput v6, p2, Landroidx/recyclerview/widget/r;->b:I

    .line 72
    .line 73
    iget-boolean v4, v3, Lu/j;->c:Z

    .line 74
    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    iget-object v4, p2, Landroidx/recyclerview/widget/r;->k:Ljava/util/List;

    .line 78
    .line 79
    if-nez v4, :cond_6

    .line 80
    .line 81
    iget-boolean v4, p3, Landroidx/recyclerview/widget/M;->f:Z

    .line 82
    .line 83
    if-nez v4, :cond_7

    .line 84
    .line 85
    :cond_6
    iget v4, p2, Landroidx/recyclerview/widget/r;->c:I

    .line 86
    .line 87
    sub-int/2addr v4, v5

    .line 88
    iput v4, p2, Landroidx/recyclerview/widget/r;->c:I

    .line 89
    .line 90
    sub-int/2addr v1, v5

    .line 91
    :cond_7
    iget v4, p2, Landroidx/recyclerview/widget/r;->g:I

    .line 92
    .line 93
    if-eq v4, v2, :cond_9

    .line 94
    .line 95
    add-int/2addr v4, v5

    .line 96
    iput v4, p2, Landroidx/recyclerview/widget/r;->g:I

    .line 97
    .line 98
    iget v5, p2, Landroidx/recyclerview/widget/r;->c:I

    .line 99
    .line 100
    if-gez v5, :cond_8

    .line 101
    .line 102
    add-int/2addr v4, v5

    .line 103
    iput v4, p2, Landroidx/recyclerview/widget/r;->g:I

    .line 104
    .line 105
    :cond_8
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;)V

    .line 106
    .line 107
    .line 108
    :cond_9
    if-eqz p4, :cond_2

    .line 109
    .line 110
    iget-boolean v3, v3, Lu/j;->d:Z

    .line 111
    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    :cond_a
    :goto_1
    iget p1, p2, Landroidx/recyclerview/widget/r;->c:I

    .line 115
    .line 116
    sub-int/2addr v0, p1

    .line 117
    return v0
.end method

.method final L0(Z)Landroid/view/View;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(IIZ)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, -0x1

    .line 20
    add-int/2addr v0, v1

    .line 21
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(IIZ)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method final M0(Z)Landroid/view/View;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(IIZ)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(IIZ)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method final N0(II)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 2
    .line 3
    .line 4
    if-le p2, p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-ge p2, p1, :cond_1

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->k()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ge v0, v1, :cond_3

    .line 37
    .line 38
    const/16 v0, 0x4104

    .line 39
    .line 40
    const/16 v1, 0x4004

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const/16 v0, 0x1041

    .line 44
    .line 45
    const/16 v1, 0x1001

    .line 46
    .line 47
    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 48
    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/recyclerview/widget/E;->c:Landroidx/recyclerview/widget/g0;

    .line 52
    .line 53
    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/recyclerview/widget/g0;->a(IIII)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/E;->d:Landroidx/recyclerview/widget/g0;

    .line 59
    .line 60
    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/recyclerview/widget/g0;->a(IIII)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :goto_2
    return-object p1
.end method

.method public final O()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method final O0(IIZ)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x140

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const/16 p3, 0x6003

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p3, 0x140

    .line 12
    .line 13
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/E;->c:Landroidx/recyclerview/widget/g0;

    .line 18
    .line 19
    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/recyclerview/widget/g0;->a(IIII)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/E;->d:Landroidx/recyclerview/widget/g0;

    .line 25
    .line 26
    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/recyclerview/widget/g0;->a(IIII)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_1
    return-object p1
.end method

.method P0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;ZZ)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v1, v3

    .line 19
    const/4 v4, -0x1

    .line 20
    const/4 v5, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v4, v1

    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v5, 0x1

    .line 25
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 30
    .line 31
    invoke-virtual {v7}, Landroidx/recyclerview/widget/x;->k()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 36
    .line 37
    invoke-virtual {v8}, Landroidx/recyclerview/widget/x;->g()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/4 v9, 0x0

    .line 42
    move-object v10, v9

    .line 43
    move-object v11, v10

    .line 44
    :goto_1
    if-eq v1, v4, :cond_a

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    invoke-static {v12}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    iget-object v14, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 55
    .line 56
    invoke-virtual {v14, v12}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    iget-object v15, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 61
    .line 62
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    if-ltz v13, :cond_9

    .line 67
    .line 68
    if-ge v13, v6, :cond_9

    .line 69
    .line 70
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    check-cast v13, Landroidx/recyclerview/widget/F;

    .line 75
    .line 76
    invoke-virtual {v13}, Landroidx/recyclerview/widget/F;->c()Z

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    if-eqz v13, :cond_1

    .line 81
    .line 82
    if-nez v11, :cond_9

    .line 83
    .line 84
    move-object v11, v12

    .line 85
    goto :goto_7

    .line 86
    :cond_1
    if-gt v15, v7, :cond_2

    .line 87
    .line 88
    if-ge v14, v7, :cond_2

    .line 89
    .line 90
    const/4 v13, 0x1

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    const/4 v13, 0x0

    .line 93
    :goto_2
    if-lt v14, v8, :cond_3

    .line 94
    .line 95
    if-le v15, v8, :cond_3

    .line 96
    .line 97
    const/4 v14, 0x1

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    const/4 v14, 0x0

    .line 100
    :goto_3
    if-nez v13, :cond_5

    .line 101
    .line 102
    if-eqz v14, :cond_4

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_4
    return-object v12

    .line 106
    :cond_5
    :goto_4
    if-eqz p3, :cond_7

    .line 107
    .line 108
    if-eqz v14, :cond_6

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_6
    if-nez v9, :cond_9

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_7
    if-eqz v13, :cond_8

    .line 115
    .line 116
    :goto_5
    move-object v10, v12

    .line 117
    goto :goto_7

    .line 118
    :cond_8
    if-nez v9, :cond_9

    .line 119
    .line 120
    :goto_6
    move-object v9, v12

    .line 121
    :cond_9
    :goto_7
    add-int/2addr v1, v5

    .line 122
    goto :goto_1

    .line 123
    :cond_a
    if-eqz v9, :cond_b

    .line 124
    .line 125
    goto :goto_8

    .line 126
    :cond_b
    if-eqz v10, :cond_c

    .line 127
    .line 128
    move-object v9, v10

    .line 129
    goto :goto_8

    .line 130
    :cond_c
    move-object v9, v11

    .line 131
    :goto_8
    return-object v9
.end method

.method protected final U0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/view/f0;->n(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method V0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/r;Lu/j;)V
    .locals 7

    .line 1
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/r;->b(Landroidx/recyclerview/widget/I;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput-boolean p2, p4, Lu/j;->b:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/recyclerview/widget/F;

    .line 16
    .line 17
    iget-object v1, p3, Landroidx/recyclerview/widget/r;->k:Ljava/util/List;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, -0x1

    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 24
    .line 25
    iget v4, p3, Landroidx/recyclerview/widget/r;->f:I

    .line 26
    .line 27
    if-ne v4, v3, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    :cond_1
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/E;->c(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/E;->d(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 41
    .line 42
    iget v4, p3, Landroidx/recyclerview/widget/r;->f:I

    .line 43
    .line 44
    if-ne v4, v3, :cond_4

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    :cond_4
    if-ne v1, v2, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/E;->a(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/E;->b(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/E;->S(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, p4, Lu/j;->a:I

    .line 66
    .line 67
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 68
    .line 69
    if-ne v1, p2, :cond_8

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->M()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->G()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    sub-int/2addr v1, v2

    .line 86
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/x;->d(Landroid/view/View;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    sub-int v2, v1, v2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->F()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/x;->d(Landroid/view/View;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v1, v2

    .line 106
    :goto_1
    iget v4, p3, Landroidx/recyclerview/widget/r;->f:I

    .line 107
    .line 108
    if-ne v4, v3, :cond_7

    .line 109
    .line 110
    iget p3, p3, Landroidx/recyclerview/widget/r;->b:I

    .line 111
    .line 112
    iget v3, p4, Lu/j;->a:I

    .line 113
    .line 114
    sub-int v3, p3, v3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    iget v3, p3, Landroidx/recyclerview/widget/r;->b:I

    .line 118
    .line 119
    iget p3, p4, Lu/j;->a:I

    .line 120
    .line 121
    add-int/2addr p3, v3

    .line 122
    goto :goto_2

    .line 123
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->H()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 128
    .line 129
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/x;->d(Landroid/view/View;)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    add-int/2addr v2, v1

    .line 134
    iget v4, p3, Landroidx/recyclerview/widget/r;->f:I

    .line 135
    .line 136
    if-ne v4, v3, :cond_9

    .line 137
    .line 138
    iget p3, p3, Landroidx/recyclerview/widget/r;->b:I

    .line 139
    .line 140
    iget v3, p4, Lu/j;->a:I

    .line 141
    .line 142
    sub-int v3, p3, v3

    .line 143
    .line 144
    move v5, v1

    .line 145
    move v1, p3

    .line 146
    move p3, v2

    .line 147
    move v2, v3

    .line 148
    move v3, v5

    .line 149
    goto :goto_2

    .line 150
    :cond_9
    iget p3, p3, Landroidx/recyclerview/widget/r;->b:I

    .line 151
    .line 152
    iget v3, p4, Lu/j;->a:I

    .line 153
    .line 154
    add-int/2addr v3, p3

    .line 155
    move v5, v2

    .line 156
    move v2, p3

    .line 157
    move p3, v5

    .line 158
    move v6, v3

    .line 159
    move v3, v1

    .line 160
    move v1, v6

    .line 161
    :goto_2
    invoke-static {p1, v2, v3, v1, p3}, Landroidx/recyclerview/widget/E;->R(Landroid/view/View;IIII)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/recyclerview/widget/F;->c()Z

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    if-nez p3, :cond_a

    .line 169
    .line 170
    invoke-virtual {v0}, Landroidx/recyclerview/widget/F;->b()Z

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    if-eqz p3, :cond_b

    .line 175
    .line 176
    :cond_a
    iput-boolean p2, p4, Lu/j;->c:Z

    .line 177
    .line 178
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    iput-boolean p1, p4, Lu/j;->d:Z

    .line 183
    .line 184
    return-void
.end method

.method public final W(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    return-void
.end method

.method W0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/q;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public X(Landroid/view/View;ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/high16 p2, -0x80000000

    .line 17
    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->l()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    const v2, 0x3eaaaaab

    .line 32
    .line 33
    .line 34
    mul-float v1, v1, v2

    .line 35
    .line 36
    float-to-int v1, v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, v1, v2, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1(IIZLandroidx/recyclerview/widget/M;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 42
    .line 43
    iput p2, v1, Landroidx/recyclerview/widget/r;->g:I

    .line 44
    .line 45
    iput-boolean v2, v1, Landroidx/recyclerview/widget/r;->a:Z

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    invoke-virtual {p0, p3, v1, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I

    .line 49
    .line 50
    .line 51
    const/4 p2, -0x1

    .line 52
    if-ne p1, p2, :cond_3

    .line 53
    .line 54
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 55
    .line 56
    if-eqz p3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    add-int/2addr p3, p2

    .line 63
    invoke-virtual {p0, p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(II)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    invoke-virtual {p0, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(II)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 78
    .line 79
    if-eqz p3, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    invoke-virtual {p0, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(II)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    add-int/2addr p3, p2

    .line 95
    invoke-virtual {p0, p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(II)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    :goto_0
    if-ne p1, p2, :cond_5

    .line 100
    .line 101
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_7

    .line 115
    .line 116
    if-nez p3, :cond_6

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_6
    return-object p1

    .line 120
    :cond_7
    return-object p3
.end method

.method public final Y(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/E;->Y(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(IIZ)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, -0x1

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    invoke-virtual {p0, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(IIZ)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-static {v0}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method final a1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v0, Landroidx/recyclerview/widget/r;->a:Z

    .line 18
    .line 19
    if-lez p1, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, -0x1

    .line 24
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-direct {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1(IIZLandroidx/recyclerview/widget/M;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 32
    .line 33
    iget v4, v2, Landroidx/recyclerview/widget/r;->g:I

    .line 34
    .line 35
    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    add-int/2addr v4, p2

    .line 40
    if-gez v4, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    if-le v3, v4, :cond_3

    .line 44
    .line 45
    mul-int p1, v0, v4

    .line 46
    .line 47
    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 48
    .line 49
    neg-int p3, p1

    .line 50
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/x;->p(I)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 54
    .line 55
    iput p1, p2, Landroidx/recyclerview/widget/r;->j:I

    .line 56
    .line 57
    return p1

    .line 58
    :cond_4
    :goto_1
    return v1
.end method

.method public final b1(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "invalid orientation:"

    .line 10
    .line 11
    invoke-static {v1, p1}, LB/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 24
    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_2
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/x;->a(Landroidx/recyclerview/widget/E;I)Landroidx/recyclerview/widget/x;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/q;

    .line 38
    .line 39
    iput-object v0, v1, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/x;

    .line 40
    .line 41
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public c1(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/E;->f(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final h()Z
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
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public h0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 13
    .line 14
    if-eq v3, v4, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/E;->n0(Landroidx/recyclerview/widget/I;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v6, 0x0

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iget v3, v3, Landroidx/recyclerview/widget/t;->a:I

    .line 33
    .line 34
    if-ltz v3, :cond_2

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v7, 0x0

    .line 39
    :goto_0
    if-eqz v7, :cond_3

    .line 40
    .line 41
    iput v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 42
    .line 43
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 44
    .line 45
    .line 46
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 47
    .line 48
    iput-boolean v6, v3, Landroidx/recyclerview/widget/r;->a:Z

    .line 49
    .line 50
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0()V

    .line 51
    .line 52
    .line 53
    iget-object v3, v0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    if-nez v3, :cond_5

    .line 56
    .line 57
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 58
    goto :goto_2

    .line 59
    :cond_5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    iget-object v8, v0, Landroidx/recyclerview/widget/E;->a:Landroidx/recyclerview/widget/d;

    .line 66
    .line 67
    invoke-virtual {v8, v3}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_6

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_6
    :goto_2
    iget-object v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/q;

    .line 75
    .line 76
    iget-boolean v9, v8, Landroidx/recyclerview/widget/q;->e:Z

    .line 77
    .line 78
    const/high16 v10, -0x80000000

    .line 79
    .line 80
    if-eqz v9, :cond_9

    .line 81
    .line 82
    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 83
    .line 84
    if-ne v9, v4, :cond_9

    .line 85
    .line 86
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 87
    .line 88
    if-eqz v9, :cond_7

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_7
    if-eqz v3, :cond_2b

    .line 92
    .line 93
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 94
    .line 95
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 100
    .line 101
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->g()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-ge v9, v11, :cond_8

    .line 106
    .line 107
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 108
    .line 109
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 114
    .line 115
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->k()I

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-gt v9, v11, :cond_2b

    .line 120
    .line 121
    :cond_8
    invoke-static {v3}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    invoke-virtual {v8, v9, v3}, Landroidx/recyclerview/widget/q;->c(ILandroid/view/View;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_16

    .line 129
    .line 130
    :cond_9
    :goto_3
    invoke-virtual {v8}, Landroidx/recyclerview/widget/q;->d()V

    .line 131
    .line 132
    .line 133
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 134
    .line 135
    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 136
    .line 137
    xor-int/2addr v3, v9

    .line 138
    iput-boolean v3, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 139
    .line 140
    iget-boolean v3, v2, Landroidx/recyclerview/widget/M;->f:Z

    .line 141
    .line 142
    if-nez v3, :cond_1a

    .line 143
    .line 144
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 145
    .line 146
    if-ne v3, v4, :cond_a

    .line 147
    .line 148
    goto/16 :goto_a

    .line 149
    .line 150
    :cond_a
    if-ltz v3, :cond_19

    .line 151
    .line 152
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-lt v3, v9, :cond_b

    .line 157
    .line 158
    goto/16 :goto_9

    .line 159
    .line 160
    :cond_b
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 161
    .line 162
    iput v3, v8, Landroidx/recyclerview/widget/q;->b:I

    .line 163
    .line 164
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 165
    .line 166
    if-eqz v9, :cond_e

    .line 167
    .line 168
    iget v11, v9, Landroidx/recyclerview/widget/t;->a:I

    .line 169
    .line 170
    if-ltz v11, :cond_c

    .line 171
    .line 172
    const/4 v11, 0x1

    .line 173
    goto :goto_4

    .line 174
    :cond_c
    const/4 v11, 0x0

    .line 175
    :goto_4
    if-eqz v11, :cond_e

    .line 176
    .line 177
    iget-boolean v3, v9, Landroidx/recyclerview/widget/t;->c:Z

    .line 178
    .line 179
    iput-boolean v3, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 180
    .line 181
    if-eqz v3, :cond_d

    .line 182
    .line 183
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 184
    .line 185
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->g()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 190
    .line 191
    iget v9, v9, Landroidx/recyclerview/widget/t;->b:I

    .line 192
    .line 193
    sub-int/2addr v3, v9

    .line 194
    iput v3, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 195
    .line 196
    goto/16 :goto_8

    .line 197
    .line 198
    :cond_d
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 199
    .line 200
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->k()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 205
    .line 206
    iget v9, v9, Landroidx/recyclerview/widget/t;->b:I

    .line 207
    .line 208
    add-int/2addr v3, v9

    .line 209
    iput v3, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 210
    .line 211
    goto/16 :goto_8

    .line 212
    .line 213
    :cond_e
    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 214
    .line 215
    if-ne v9, v10, :cond_17

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->t(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    if-eqz v3, :cond_13

    .line 222
    .line 223
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 224
    .line 225
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 230
    .line 231
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->l()I

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    if-le v9, v11, :cond_f

    .line 236
    .line 237
    invoke-virtual {v8}, Landroidx/recyclerview/widget/q;->a()V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_8

    .line 241
    .line 242
    :cond_f
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 243
    .line 244
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 249
    .line 250
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->k()I

    .line 251
    .line 252
    .line 253
    move-result v11

    .line 254
    sub-int/2addr v9, v11

    .line 255
    if-gez v9, :cond_10

    .line 256
    .line 257
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 258
    .line 259
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->k()I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    iput v3, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 264
    .line 265
    iput-boolean v6, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 266
    .line 267
    goto/16 :goto_8

    .line 268
    .line 269
    :cond_10
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 270
    .line 271
    invoke-virtual {v9}, Landroidx/recyclerview/widget/x;->g()I

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 276
    .line 277
    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 278
    .line 279
    .line 280
    move-result v11

    .line 281
    sub-int/2addr v9, v11

    .line 282
    if-gez v9, :cond_11

    .line 283
    .line 284
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 285
    .line 286
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->g()I

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    iput v3, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 291
    .line 292
    iput-boolean v5, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_11
    iget-boolean v9, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 296
    .line 297
    if-eqz v9, :cond_12

    .line 298
    .line 299
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 300
    .line 301
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 306
    .line 307
    invoke-virtual {v9}, Landroidx/recyclerview/widget/x;->m()I

    .line 308
    .line 309
    .line 310
    move-result v9

    .line 311
    add-int/2addr v9, v3

    .line 312
    goto :goto_5

    .line 313
    :cond_12
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 314
    .line 315
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 316
    .line 317
    .line 318
    move-result v9

    .line 319
    :goto_5
    iput v9, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-lez v3, :cond_16

    .line 327
    .line 328
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-static {v3}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 337
    .line 338
    if-ge v9, v3, :cond_14

    .line 339
    .line 340
    const/4 v3, 0x1

    .line 341
    goto :goto_6

    .line 342
    :cond_14
    const/4 v3, 0x0

    .line 343
    :goto_6
    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 344
    .line 345
    if-ne v3, v9, :cond_15

    .line 346
    .line 347
    const/4 v3, 0x1

    .line 348
    goto :goto_7

    .line 349
    :cond_15
    const/4 v3, 0x0

    .line 350
    :goto_7
    iput-boolean v3, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 351
    .line 352
    :cond_16
    invoke-virtual {v8}, Landroidx/recyclerview/widget/q;->a()V

    .line 353
    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_17
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 357
    .line 358
    iput-boolean v3, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 359
    .line 360
    if-eqz v3, :cond_18

    .line 361
    .line 362
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 363
    .line 364
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->g()I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 369
    .line 370
    sub-int/2addr v3, v9

    .line 371
    iput v3, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_18
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 375
    .line 376
    invoke-virtual {v3}, Landroidx/recyclerview/widget/x;->k()I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 381
    .line 382
    add-int/2addr v3, v9

    .line 383
    iput v3, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 384
    .line 385
    :goto_8
    const/4 v3, 0x1

    .line 386
    goto :goto_b

    .line 387
    :cond_19
    :goto_9
    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 388
    .line 389
    iput v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 390
    .line 391
    :cond_1a
    :goto_a
    const/4 v3, 0x0

    .line 392
    :goto_b
    if-eqz v3, :cond_1b

    .line 393
    .line 394
    goto/16 :goto_15

    .line 395
    .line 396
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-nez v3, :cond_1c

    .line 401
    .line 402
    goto/16 :goto_12

    .line 403
    .line 404
    :cond_1c
    iget-object v3, v0, Landroidx/recyclerview/widget/E;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 405
    .line 406
    if-nez v3, :cond_1e

    .line 407
    .line 408
    :cond_1d
    :goto_c
    const/4 v3, 0x0

    .line 409
    goto :goto_d

    .line 410
    :cond_1e
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    if-eqz v3, :cond_1d

    .line 415
    .line 416
    iget-object v9, v0, Landroidx/recyclerview/widget/E;->a:Landroidx/recyclerview/widget/d;

    .line 417
    .line 418
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)Z

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    if-eqz v9, :cond_1f

    .line 423
    .line 424
    goto :goto_c

    .line 425
    :cond_1f
    :goto_d
    if-eqz v3, :cond_21

    .line 426
    .line 427
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    check-cast v9, Landroidx/recyclerview/widget/F;

    .line 432
    .line 433
    invoke-virtual {v9}, Landroidx/recyclerview/widget/F;->c()Z

    .line 434
    .line 435
    .line 436
    move-result v11

    .line 437
    if-nez v11, :cond_20

    .line 438
    .line 439
    invoke-virtual {v9}, Landroidx/recyclerview/widget/F;->a()I

    .line 440
    .line 441
    .line 442
    move-result v11

    .line 443
    if-ltz v11, :cond_20

    .line 444
    .line 445
    invoke-virtual {v9}, Landroidx/recyclerview/widget/F;->a()I

    .line 446
    .line 447
    .line 448
    move-result v9

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    if-ge v9, v11, :cond_20

    .line 454
    .line 455
    const/4 v9, 0x1

    .line 456
    goto :goto_e

    .line 457
    :cond_20
    const/4 v9, 0x0

    .line 458
    :goto_e
    if-eqz v9, :cond_21

    .line 459
    .line 460
    invoke-static {v3}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 461
    .line 462
    .line 463
    move-result v9

    .line 464
    invoke-virtual {v8, v9, v3}, Landroidx/recyclerview/widget/q;->c(ILandroid/view/View;)V

    .line 465
    .line 466
    .line 467
    goto :goto_11

    .line 468
    :cond_21
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 469
    .line 470
    iget-boolean v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 471
    .line 472
    if-eq v3, v9, :cond_22

    .line 473
    .line 474
    goto :goto_12

    .line 475
    :cond_22
    iget-boolean v3, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 476
    .line 477
    invoke-virtual {v0, v1, v2, v3, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;ZZ)Landroid/view/View;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    if-eqz v3, :cond_28

    .line 482
    .line 483
    invoke-static {v3}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 484
    .line 485
    .line 486
    move-result v9

    .line 487
    invoke-virtual {v8, v9, v3}, Landroidx/recyclerview/widget/q;->b(ILandroid/view/View;)V

    .line 488
    .line 489
    .line 490
    iget-boolean v9, v2, Landroidx/recyclerview/widget/M;->f:Z

    .line 491
    .line 492
    if-nez v9, :cond_27

    .line 493
    .line 494
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0()Z

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    if-eqz v9, :cond_27

    .line 499
    .line 500
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 501
    .line 502
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 503
    .line 504
    .line 505
    move-result v9

    .line 506
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 507
    .line 508
    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 513
    .line 514
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->k()I

    .line 515
    .line 516
    .line 517
    move-result v11

    .line 518
    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 519
    .line 520
    invoke-virtual {v12}, Landroidx/recyclerview/widget/x;->g()I

    .line 521
    .line 522
    .line 523
    move-result v12

    .line 524
    if-gt v3, v11, :cond_23

    .line 525
    .line 526
    if-ge v9, v11, :cond_23

    .line 527
    .line 528
    const/4 v13, 0x1

    .line 529
    goto :goto_f

    .line 530
    :cond_23
    const/4 v13, 0x0

    .line 531
    :goto_f
    if-lt v9, v12, :cond_24

    .line 532
    .line 533
    if-le v3, v12, :cond_24

    .line 534
    .line 535
    const/4 v3, 0x1

    .line 536
    goto :goto_10

    .line 537
    :cond_24
    const/4 v3, 0x0

    .line 538
    :goto_10
    if-nez v13, :cond_25

    .line 539
    .line 540
    if-eqz v3, :cond_27

    .line 541
    .line 542
    :cond_25
    iget-boolean v3, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 543
    .line 544
    if-eqz v3, :cond_26

    .line 545
    .line 546
    move v11, v12

    .line 547
    :cond_26
    iput v11, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 548
    .line 549
    :cond_27
    :goto_11
    const/4 v3, 0x1

    .line 550
    goto :goto_13

    .line 551
    :cond_28
    :goto_12
    const/4 v3, 0x0

    .line 552
    :goto_13
    if-eqz v3, :cond_29

    .line 553
    .line 554
    goto :goto_15

    .line 555
    :cond_29
    invoke-virtual {v8}, Landroidx/recyclerview/widget/q;->a()V

    .line 556
    .line 557
    .line 558
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 559
    .line 560
    if-eqz v3, :cond_2a

    .line 561
    .line 562
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/M;->b()I

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    add-int/2addr v3, v4

    .line 567
    goto :goto_14

    .line 568
    :cond_2a
    const/4 v3, 0x0

    .line 569
    :goto_14
    iput v3, v8, Landroidx/recyclerview/widget/q;->b:I

    .line 570
    .line 571
    :goto_15
    iput-boolean v5, v8, Landroidx/recyclerview/widget/q;->e:Z

    .line 572
    .line 573
    :cond_2b
    :goto_16
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 574
    .line 575
    iget v9, v3, Landroidx/recyclerview/widget/r;->j:I

    .line 576
    .line 577
    if-ltz v9, :cond_2c

    .line 578
    .line 579
    const/4 v9, 0x1

    .line 580
    goto :goto_17

    .line 581
    :cond_2c
    const/4 v9, -0x1

    .line 582
    :goto_17
    iput v9, v3, Landroidx/recyclerview/widget/r;->f:I

    .line 583
    .line 584
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 585
    .line 586
    aput v6, v3, v6

    .line 587
    .line 588
    aput v6, v3, v5

    .line 589
    .line 590
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 594
    .line 595
    iget v9, v9, Landroidx/recyclerview/widget/r;->f:I

    .line 596
    .line 597
    aput v6, v3, v6

    .line 598
    .line 599
    aput v6, v3, v5

    .line 600
    .line 601
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 602
    .line 603
    aget v3, v3, v6

    .line 604
    .line 605
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 610
    .line 611
    invoke-virtual {v9}, Landroidx/recyclerview/widget/x;->k()I

    .line 612
    .line 613
    .line 614
    move-result v9

    .line 615
    add-int/2addr v9, v3

    .line 616
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 617
    .line 618
    aget v3, v3, v5

    .line 619
    .line 620
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    iget-object v11, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 625
    .line 626
    invoke-virtual {v11}, Landroidx/recyclerview/widget/x;->h()I

    .line 627
    .line 628
    .line 629
    move-result v11

    .line 630
    add-int/2addr v11, v3

    .line 631
    iget-boolean v3, v2, Landroidx/recyclerview/widget/M;->f:Z

    .line 632
    .line 633
    if-eqz v3, :cond_2f

    .line 634
    .line 635
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 636
    .line 637
    if-eq v3, v4, :cond_2f

    .line 638
    .line 639
    iget v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 640
    .line 641
    if-eq v12, v10, :cond_2f

    .line 642
    .line 643
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->t(I)Landroid/view/View;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    if-eqz v3, :cond_2f

    .line 648
    .line 649
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 650
    .line 651
    if-eqz v10, :cond_2d

    .line 652
    .line 653
    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 654
    .line 655
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->g()I

    .line 656
    .line 657
    .line 658
    move-result v10

    .line 659
    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 660
    .line 661
    invoke-virtual {v12, v3}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 662
    .line 663
    .line 664
    move-result v3

    .line 665
    sub-int/2addr v10, v3

    .line 666
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 667
    .line 668
    goto :goto_18

    .line 669
    :cond_2d
    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 670
    .line 671
    invoke-virtual {v10, v3}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 672
    .line 673
    .line 674
    move-result v3

    .line 675
    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 676
    .line 677
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->k()I

    .line 678
    .line 679
    .line 680
    move-result v10

    .line 681
    sub-int/2addr v3, v10

    .line 682
    iget v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 683
    .line 684
    :goto_18
    sub-int/2addr v10, v3

    .line 685
    if-lez v10, :cond_2e

    .line 686
    .line 687
    add-int/2addr v9, v10

    .line 688
    goto :goto_19

    .line 689
    :cond_2e
    sub-int/2addr v11, v10

    .line 690
    :cond_2f
    :goto_19
    iget-boolean v3, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 691
    .line 692
    if-eqz v3, :cond_30

    .line 693
    .line 694
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 695
    .line 696
    if-eqz v3, :cond_31

    .line 697
    .line 698
    goto :goto_1a

    .line 699
    :cond_30
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 700
    .line 701
    if-eqz v3, :cond_32

    .line 702
    .line 703
    :cond_31
    const/4 v3, -0x1

    .line 704
    goto :goto_1b

    .line 705
    :cond_32
    :goto_1a
    const/4 v3, 0x1

    .line 706
    :goto_1b
    invoke-virtual {v0, v1, v2, v8, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/q;I)V

    .line 707
    .line 708
    .line 709
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/E;->s(Landroidx/recyclerview/widget/I;)V

    .line 710
    .line 711
    .line 712
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 713
    .line 714
    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 715
    .line 716
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->i()I

    .line 717
    .line 718
    .line 719
    move-result v10

    .line 720
    if-nez v10, :cond_33

    .line 721
    .line 722
    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 723
    .line 724
    invoke-virtual {v10}, Landroidx/recyclerview/widget/x;->f()I

    .line 725
    .line 726
    .line 727
    move-result v10

    .line 728
    if-nez v10, :cond_33

    .line 729
    .line 730
    const/4 v10, 0x1

    .line 731
    goto :goto_1c

    .line 732
    :cond_33
    const/4 v10, 0x0

    .line 733
    :goto_1c
    iput-boolean v10, v3, Landroidx/recyclerview/widget/r;->l:Z

    .line 734
    .line 735
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 736
    .line 737
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 738
    .line 739
    .line 740
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 741
    .line 742
    iput v6, v3, Landroidx/recyclerview/widget/r;->i:I

    .line 743
    .line 744
    iget-boolean v3, v8, Landroidx/recyclerview/widget/q;->d:Z

    .line 745
    .line 746
    if-eqz v3, :cond_35

    .line 747
    .line 748
    iget v3, v8, Landroidx/recyclerview/widget/q;->b:I

    .line 749
    .line 750
    iget v10, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 751
    .line 752
    invoke-direct {v0, v3, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    .line 753
    .line 754
    .line 755
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 756
    .line 757
    iput v9, v3, Landroidx/recyclerview/widget/r;->h:I

    .line 758
    .line 759
    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I

    .line 760
    .line 761
    .line 762
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 763
    .line 764
    iget v9, v3, Landroidx/recyclerview/widget/r;->b:I

    .line 765
    .line 766
    iget v10, v3, Landroidx/recyclerview/widget/r;->d:I

    .line 767
    .line 768
    iget v3, v3, Landroidx/recyclerview/widget/r;->c:I

    .line 769
    .line 770
    if-lez v3, :cond_34

    .line 771
    .line 772
    add-int/2addr v11, v3

    .line 773
    :cond_34
    iget v3, v8, Landroidx/recyclerview/widget/q;->b:I

    .line 774
    .line 775
    iget v12, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 776
    .line 777
    invoke-direct {v0, v3, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(II)V

    .line 778
    .line 779
    .line 780
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 781
    .line 782
    iput v11, v3, Landroidx/recyclerview/widget/r;->h:I

    .line 783
    .line 784
    iget v11, v3, Landroidx/recyclerview/widget/r;->d:I

    .line 785
    .line 786
    iget v12, v3, Landroidx/recyclerview/widget/r;->e:I

    .line 787
    .line 788
    add-int/2addr v11, v12

    .line 789
    iput v11, v3, Landroidx/recyclerview/widget/r;->d:I

    .line 790
    .line 791
    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I

    .line 792
    .line 793
    .line 794
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 795
    .line 796
    iget v11, v3, Landroidx/recyclerview/widget/r;->b:I

    .line 797
    .line 798
    iget v3, v3, Landroidx/recyclerview/widget/r;->c:I

    .line 799
    .line 800
    if-lez v3, :cond_37

    .line 801
    .line 802
    invoke-direct {v0, v10, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    .line 803
    .line 804
    .line 805
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 806
    .line 807
    iput v3, v9, Landroidx/recyclerview/widget/r;->h:I

    .line 808
    .line 809
    invoke-virtual {v0, v1, v9, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I

    .line 810
    .line 811
    .line 812
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 813
    .line 814
    iget v9, v3, Landroidx/recyclerview/widget/r;->b:I

    .line 815
    .line 816
    goto :goto_1d

    .line 817
    :cond_35
    iget v3, v8, Landroidx/recyclerview/widget/q;->b:I

    .line 818
    .line 819
    iget v10, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 820
    .line 821
    invoke-direct {v0, v3, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(II)V

    .line 822
    .line 823
    .line 824
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 825
    .line 826
    iput v11, v3, Landroidx/recyclerview/widget/r;->h:I

    .line 827
    .line 828
    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I

    .line 829
    .line 830
    .line 831
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 832
    .line 833
    iget v11, v3, Landroidx/recyclerview/widget/r;->b:I

    .line 834
    .line 835
    iget v10, v3, Landroidx/recyclerview/widget/r;->d:I

    .line 836
    .line 837
    iget v3, v3, Landroidx/recyclerview/widget/r;->c:I

    .line 838
    .line 839
    if-lez v3, :cond_36

    .line 840
    .line 841
    add-int/2addr v9, v3

    .line 842
    :cond_36
    iget v3, v8, Landroidx/recyclerview/widget/q;->b:I

    .line 843
    .line 844
    iget v12, v8, Landroidx/recyclerview/widget/q;->c:I

    .line 845
    .line 846
    invoke-direct {v0, v3, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    .line 847
    .line 848
    .line 849
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 850
    .line 851
    iput v9, v3, Landroidx/recyclerview/widget/r;->h:I

    .line 852
    .line 853
    iget v9, v3, Landroidx/recyclerview/widget/r;->d:I

    .line 854
    .line 855
    iget v12, v3, Landroidx/recyclerview/widget/r;->e:I

    .line 856
    .line 857
    add-int/2addr v9, v12

    .line 858
    iput v9, v3, Landroidx/recyclerview/widget/r;->d:I

    .line 859
    .line 860
    invoke-virtual {v0, v1, v3, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I

    .line 861
    .line 862
    .line 863
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 864
    .line 865
    iget v9, v3, Landroidx/recyclerview/widget/r;->b:I

    .line 866
    .line 867
    iget v3, v3, Landroidx/recyclerview/widget/r;->c:I

    .line 868
    .line 869
    if-lez v3, :cond_37

    .line 870
    .line 871
    invoke-direct {v0, v10, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(II)V

    .line 872
    .line 873
    .line 874
    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 875
    .line 876
    iput v3, v10, Landroidx/recyclerview/widget/r;->h:I

    .line 877
    .line 878
    invoke-virtual {v0, v1, v10, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I

    .line 879
    .line 880
    .line 881
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 882
    .line 883
    iget v11, v3, Landroidx/recyclerview/widget/r;->b:I

    .line 884
    .line 885
    :cond_37
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    if-lez v3, :cond_39

    .line 890
    .line 891
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 892
    .line 893
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 894
    .line 895
    xor-int/2addr v3, v10

    .line 896
    if-eqz v3, :cond_38

    .line 897
    .line 898
    invoke-direct {v0, v11, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)I

    .line 899
    .line 900
    .line 901
    move-result v3

    .line 902
    add-int/2addr v9, v3

    .line 903
    add-int/2addr v11, v3

    .line 904
    invoke-direct {v0, v9, v1, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)I

    .line 905
    .line 906
    .line 907
    move-result v3

    .line 908
    goto :goto_1e

    .line 909
    :cond_38
    invoke-direct {v0, v9, v1, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)I

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    add-int/2addr v9, v3

    .line 914
    add-int/2addr v11, v3

    .line 915
    invoke-direct {v0, v11, v1, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;Z)I

    .line 916
    .line 917
    .line 918
    move-result v3

    .line 919
    :goto_1e
    add-int/2addr v9, v3

    .line 920
    add-int/2addr v11, v3

    .line 921
    :cond_39
    iget-boolean v3, v2, Landroidx/recyclerview/widget/M;->j:Z

    .line 922
    .line 923
    if-eqz v3, :cond_42

    .line 924
    .line 925
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 926
    .line 927
    .line 928
    move-result v3

    .line 929
    if-eqz v3, :cond_42

    .line 930
    .line 931
    iget-boolean v3, v2, Landroidx/recyclerview/widget/M;->f:Z

    .line 932
    .line 933
    if-nez v3, :cond_42

    .line 934
    .line 935
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0()Z

    .line 936
    .line 937
    .line 938
    move-result v3

    .line 939
    if-nez v3, :cond_3a

    .line 940
    .line 941
    goto/16 :goto_25

    .line 942
    .line 943
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/I;->d()Ljava/util/List;

    .line 944
    .line 945
    .line 946
    move-result-object v3

    .line 947
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 948
    .line 949
    .line 950
    move-result v10

    .line 951
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 952
    .line 953
    .line 954
    move-result-object v12

    .line 955
    invoke-static {v12}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 956
    .line 957
    .line 958
    move-result v12

    .line 959
    const/4 v13, 0x0

    .line 960
    const/4 v14, 0x0

    .line 961
    const/4 v15, 0x0

    .line 962
    :goto_1f
    if-ge v13, v10, :cond_3f

    .line 963
    .line 964
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v16

    .line 968
    move-object/from16 v5, v16

    .line 969
    .line 970
    check-cast v5, Landroidx/recyclerview/widget/P;

    .line 971
    .line 972
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->isRemoved()Z

    .line 973
    .line 974
    .line 975
    move-result v16

    .line 976
    if-eqz v16, :cond_3b

    .line 977
    .line 978
    goto :goto_22

    .line 979
    :cond_3b
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->getLayoutPosition()I

    .line 980
    .line 981
    .line 982
    move-result v7

    .line 983
    if-ge v7, v12, :cond_3c

    .line 984
    .line 985
    const/4 v7, 0x1

    .line 986
    goto :goto_20

    .line 987
    :cond_3c
    const/4 v7, 0x0

    .line 988
    :goto_20
    iget-boolean v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 989
    .line 990
    if-eq v7, v6, :cond_3d

    .line 991
    .line 992
    const/4 v6, -0x1

    .line 993
    goto :goto_21

    .line 994
    :cond_3d
    const/4 v6, 0x1

    .line 995
    :goto_21
    if-ne v6, v4, :cond_3e

    .line 996
    .line 997
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 998
    .line 999
    iget-object v5, v5, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 1000
    .line 1001
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 1002
    .line 1003
    .line 1004
    move-result v5

    .line 1005
    add-int/2addr v14, v5

    .line 1006
    goto :goto_22

    .line 1007
    :cond_3e
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 1008
    .line 1009
    iget-object v5, v5, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 1010
    .line 1011
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/x;->c(Landroid/view/View;)I

    .line 1012
    .line 1013
    .line 1014
    move-result v5

    .line 1015
    add-int/2addr v15, v5

    .line 1016
    :goto_22
    add-int/lit8 v13, v13, 0x1

    .line 1017
    .line 1018
    const/4 v5, 0x1

    .line 1019
    const/4 v6, 0x0

    .line 1020
    goto :goto_1f

    .line 1021
    :cond_3f
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 1022
    .line 1023
    iput-object v3, v4, Landroidx/recyclerview/widget/r;->k:Ljava/util/List;

    .line 1024
    .line 1025
    if-lez v14, :cond_40

    .line 1026
    .line 1027
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v3

    .line 1031
    invoke-static {v3}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 1032
    .line 1033
    .line 1034
    move-result v3

    .line 1035
    invoke-direct {v0, v3, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(II)V

    .line 1036
    .line 1037
    .line 1038
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 1039
    .line 1040
    iput v14, v3, Landroidx/recyclerview/widget/r;->h:I

    .line 1041
    .line 1042
    const/4 v4, 0x0

    .line 1043
    iput v4, v3, Landroidx/recyclerview/widget/r;->c:I

    .line 1044
    .line 1045
    const/4 v5, 0x0

    .line 1046
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/r;->a(Landroid/view/View;)V

    .line 1047
    .line 1048
    .line 1049
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 1050
    .line 1051
    invoke-virtual {v0, v1, v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I

    .line 1052
    .line 1053
    .line 1054
    goto :goto_23

    .line 1055
    :cond_40
    const/4 v4, 0x0

    .line 1056
    :goto_23
    if-lez v15, :cond_41

    .line 1057
    .line 1058
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Landroid/view/View;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v3

    .line 1062
    invoke-static {v3}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 1063
    .line 1064
    .line 1065
    move-result v3

    .line 1066
    invoke-direct {v0, v3, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->e1(II)V

    .line 1067
    .line 1068
    .line 1069
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 1070
    .line 1071
    iput v15, v3, Landroidx/recyclerview/widget/r;->h:I

    .line 1072
    .line 1073
    iput v4, v3, Landroidx/recyclerview/widget/r;->c:I

    .line 1074
    .line 1075
    const/4 v5, 0x0

    .line 1076
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/r;->a(Landroid/view/View;)V

    .line 1077
    .line 1078
    .line 1079
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 1080
    .line 1081
    invoke-virtual {v0, v1, v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(Landroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/r;Landroidx/recyclerview/widget/M;Z)I

    .line 1082
    .line 1083
    .line 1084
    goto :goto_24

    .line 1085
    :cond_41
    const/4 v5, 0x0

    .line 1086
    :goto_24
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 1087
    .line 1088
    iput-object v5, v1, Landroidx/recyclerview/widget/r;->k:Ljava/util/List;

    .line 1089
    .line 1090
    :cond_42
    :goto_25
    iget-boolean v1, v2, Landroidx/recyclerview/widget/M;->f:Z

    .line 1091
    .line 1092
    if-nez v1, :cond_43

    .line 1093
    .line 1094
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 1095
    .line 1096
    invoke-virtual {v1}, Landroidx/recyclerview/widget/x;->q()V

    .line 1097
    .line 1098
    .line 1099
    goto :goto_26

    .line 1100
    :cond_43
    invoke-virtual {v8}, Landroidx/recyclerview/widget/q;->d()V

    .line 1101
    .line 1102
    .line 1103
    :goto_26
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 1104
    .line 1105
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 1106
    .line 1107
    return-void
.end method

.method public i0(Landroidx/recyclerview/widget/M;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 6
    .line 7
    const/high16 p1, -0x80000000

    .line 8
    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/q;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/q;->d()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final j0(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/t;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroidx/recyclerview/widget/t;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 8
    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iput v1, p1, Landroidx/recyclerview/widget/t;->a:I

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final k(IILandroidx/recyclerview/widget/M;Lu/p;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-lez p1, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const/4 v0, -0x1

    .line 25
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1(IIZLandroidx/recyclerview/widget/M;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Landroidx/recyclerview/widget/r;

    .line 33
    .line 34
    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Landroidx/recyclerview/widget/M;Landroidx/recyclerview/widget/r;Lu/p;)V

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_2
    return-void
.end method

.method public final k0()Landroid/os/Parcelable;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/recyclerview/widget/t;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/t;-><init>(Landroidx/recyclerview/widget/t;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/t;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/recyclerview/widget/t;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0()V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 26
    .line 27
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 28
    .line 29
    xor-int/2addr v1, v2

    .line 30
    iput-boolean v1, v0, Landroidx/recyclerview/widget/t;->c:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/x;->g()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/x;->b(Landroid/view/View;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    iput v2, v0, Landroidx/recyclerview/widget/t;->b:I

    .line 52
    .line 53
    invoke-static {v1}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, v0, Landroidx/recyclerview/widget/t;->a:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, v0, Landroidx/recyclerview/widget/t;->a:I

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/x;->e(Landroid/view/View;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/x;

    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/recyclerview/widget/x;->k()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    sub-int/2addr v1, v2

    .line 83
    iput v1, v0, Landroidx/recyclerview/widget/t;->b:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v1, -0x1

    .line 87
    iput v1, v0, Landroidx/recyclerview/widget/t;->a:I

    .line 88
    .line 89
    :goto_0
    return-object v0
.end method

.method public final l(ILu/p;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v4, v0, Landroidx/recyclerview/widget/t;->a:I

    .line 9
    .line 10
    if-ltz v4, :cond_0

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v5, 0x0

    .line 15
    :goto_0
    if-eqz v5, :cond_1

    .line 16
    .line 17
    iget-boolean v0, v0, Landroidx/recyclerview/widget/t;->c:Z

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0()V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 24
    .line 25
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 26
    .line 27
    if-ne v4, v2, :cond_3

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    add-int/lit8 v4, p1, -0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v4, 0x0

    .line 35
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    :cond_4
    const/4 v0, 0x0

    .line 39
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    .line 40
    .line 41
    if-ge v0, v2, :cond_5

    .line 42
    .line 43
    if-ltz v4, :cond_5

    .line 44
    .line 45
    if-ge v4, p1, :cond_5

    .line 46
    .line 47
    move-object v2, p2

    .line 48
    check-cast v2, Landroidx/recyclerview/widget/k;

    .line 49
    .line 50
    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/k;->a(II)V

    .line 51
    .line 52
    .line 53
    add-int/2addr v4, v1

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_5
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public n(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public o(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final p(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public q(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public r(Landroidx/recyclerview/widget/M;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Landroidx/recyclerview/widget/M;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public r0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
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
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final s0(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 2
    .line 3
    const/high16 p1, -0x80000000

    .line 4
    .line 5
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroidx/recyclerview/widget/t;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p1, Landroidx/recyclerview/widget/t;->a:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->q0()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final t(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/E;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int v1, p1, v1

    .line 19
    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    if-ge v1, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroidx/recyclerview/widget/E;->I(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, p1, :cond_1

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/E;->t(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public t0(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1(ILandroidx/recyclerview/widget/I;Landroidx/recyclerview/widget/M;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public u()Landroidx/recyclerview/widget/F;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/F;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/F;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
