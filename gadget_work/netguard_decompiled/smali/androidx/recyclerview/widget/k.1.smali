.class final Landroidx/recyclerview/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/p;


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:I


# virtual methods
.method public final a(II)V
    .locals 5

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    if-ltz p2, :cond_2

    .line 4
    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/k;->d:I

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->c:[I

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    new-array v1, v1, [I

    .line 15
    .line 16
    iput-object v1, p0, Landroidx/recyclerview/widget/k;->c:[I

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    array-length v2, v1

    .line 24
    if-lt v0, v2, :cond_1

    .line 25
    .line 26
    mul-int/lit8 v2, v0, 0x2

    .line 27
    .line 28
    new-array v2, v2, [I

    .line 29
    .line 30
    iput-object v2, p0, Landroidx/recyclerview/widget/k;->c:[I

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->c:[I

    .line 38
    .line 39
    aput p1, v1, v0

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    aput p2, v1, v0

    .line 44
    .line 45
    iget p1, p0, Landroidx/recyclerview/widget/k;->d:I

    .line 46
    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    iput p1, p0, Landroidx/recyclerview/widget/k;->d:I

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string p2, "Pixel distance must be non-negative"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string p2, "Layout positions must be non-negative"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method final b(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/k;->d:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->c:[I

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/E;

    .line 13
    .line 14
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 15
    .line 16
    if-eqz v2, :cond_5

    .line 17
    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/recyclerview/widget/E;->P()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->h()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/C;->getItemCount()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v1, v0, p0}, Landroidx/recyclerview/widget/E;->l(ILu/p;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView;->u:Z

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/recyclerview/widget/b;->h()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    :cond_2
    const/4 v0, 0x1

    .line 63
    :cond_3
    if-nez v0, :cond_4

    .line 64
    .line 65
    iget v0, p0, Landroidx/recyclerview/widget/k;->a:I

    .line 66
    .line 67
    iget v2, p0, Landroidx/recyclerview/widget/k;->b:I

    .line 68
    .line 69
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/M;

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2, v3, p0}, Landroidx/recyclerview/widget/E;->k(IILandroidx/recyclerview/widget/M;Lu/p;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/k;->d:I

    .line 75
    .line 76
    iget v2, v1, Landroidx/recyclerview/widget/E;->j:I

    .line 77
    .line 78
    if-le v0, v2, :cond_5

    .line 79
    .line 80
    iput v0, v1, Landroidx/recyclerview/widget/E;->j:I

    .line 81
    .line 82
    iput-boolean p2, v1, Landroidx/recyclerview/widget/E;->k:Z

    .line 83
    .line 84
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/I;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/recyclerview/widget/I;->q()V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method
