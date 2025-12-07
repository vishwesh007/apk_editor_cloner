.class public final Landroidx/recyclerview/widget/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/List;

.field private e:I

.field f:I

.field g:Landroidx/recyclerview/widget/H;

.field final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/I;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/I;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/recyclerview/widget/I;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/recyclerview/widget/I;->d:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/I;->e:I

    .line 31
    .line 32
    iput p1, p0, Landroidx/recyclerview/widget/I;->f:I

    .line 33
    .line 34
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->g:Landroidx/recyclerview/widget/H;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/I;->g:Landroidx/recyclerview/widget/H;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/recyclerview/widget/H;->c:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private i(Landroidx/recyclerview/widget/C;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->g:Landroidx/recyclerview/widget/H;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/H;->c:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object p1, v0, Landroidx/recyclerview/widget/H;->c:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    const/4 p2, 0x0

    .line 22
    :goto_0
    iget-object v1, v0, Landroidx/recyclerview/widget/H;->a:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ge p2, v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v0, Landroidx/recyclerview/widget/H;->a:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/recyclerview/widget/G;

    .line 41
    .line 42
    iget-object v1, v1, Landroidx/recyclerview/widget/G;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ge v2, v3, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroidx/recyclerview/widget/P;

    .line 56
    .line 57
    iget-object v3, v3, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 58
    .line 59
    invoke-static {v3}, Ll/a;->a(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Landroidx/recyclerview/widget/P;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->m(Landroidx/recyclerview/widget/P;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroidx/recyclerview/widget/S;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/recyclerview/widget/S;->k()Landroidx/recyclerview/widget/Q;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v4, v2, Landroidx/recyclerview/widget/Q;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/Q;->k(Landroid/view/View;)Landroidx/core/view/c;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v3

    .line 27
    :goto_0
    invoke-static {v0, v2}, Landroidx/core/view/f0;->K(Landroid/view/View;Landroidx/core/view/c;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p2, :cond_5

    .line 31
    .line 32
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x0

    .line 39
    :goto_1
    if-ge v2, v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lu/t;

    .line 46
    .line 47
    invoke-interface {v4}, Lu/t;->a()V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/C;->onViewRecycled(Landroidx/recyclerview/widget/P;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/M;

    .line 61
    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/i0;

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/i0;->f(Landroidx/recyclerview/widget/P;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    .line 70
    .line 71
    :cond_5
    iput-object v3, p1, Landroidx/recyclerview/widget/P;->mBindingAdapter:Landroidx/recyclerview/widget/C;

    .line 72
    .line 73
    iput-object v3, p1, Landroidx/recyclerview/widget/P;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->c()Landroidx/recyclerview/widget/H;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/H;->d(Landroidx/recyclerview/widget/P;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final b(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/M;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/M;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/M;

    .line 14
    .line 15
    iget-boolean v1, v1, Landroidx/recyclerview/widget/M;->f:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "invalid position "

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ". State item count is "

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/M;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/M;->b()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->E()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1
.end method

.method final c()Landroidx/recyclerview/widget/H;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->g:Landroidx/recyclerview/widget/H;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/H;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/recyclerview/widget/H;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/I;->g:Landroidx/recyclerview/widget/H;

    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/I;->e()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->g:Landroidx/recyclerview/widget/H;

    .line 16
    .line 17
    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method final f(Landroidx/recyclerview/widget/C;Landroidx/recyclerview/widget/C;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->j()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/I;->i(Landroidx/recyclerview/widget/C;Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->c()Landroidx/recyclerview/widget/H;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget p1, v1, Landroidx/recyclerview/widget/H;->b:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    iput p1, v1, Landroidx/recyclerview/widget/H;->b:I

    .line 24
    .line 25
    :cond_0
    iget p1, v1, Landroidx/recyclerview/widget/H;->b:I

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget-object v2, v1, Landroidx/recyclerview/widget/H;->a:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge p1, v2, :cond_2

    .line 37
    .line 38
    iget-object v2, v1, Landroidx/recyclerview/widget/H;->a:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroidx/recyclerview/widget/G;

    .line 45
    .line 46
    iget-object v3, v2, Landroidx/recyclerview/widget/G;->a:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroidx/recyclerview/widget/P;

    .line 63
    .line 64
    iget-object v4, v4, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 65
    .line 66
    invoke-static {v4}, Ll/a;->a(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v2, v2, Landroidx/recyclerview/widget/G;->a:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 73
    .line 74
    .line 75
    add-int/lit8 p1, p1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    if-eqz p2, :cond_3

    .line 79
    .line 80
    iget p1, v1, Landroidx/recyclerview/widget/H;->b:I

    .line 81
    .line 82
    add-int/2addr p1, v0

    .line 83
    iput p1, v1, Landroidx/recyclerview/widget/H;->b:I

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :goto_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/I;->e()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method final g()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/I;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method final h()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/I;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/recyclerview/widget/P;

    .line 16
    .line 17
    iget-object v2, v2, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 18
    .line 19
    invoke-static {v2}, Ll/a;->a(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 28
    .line 29
    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/I;->i(Landroidx/recyclerview/widget/C;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/I;->k(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/k;

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/recyclerview/widget/k;->c:[I

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    iput v1, v0, Landroidx/recyclerview/widget/k;->d:I

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method final k(I)V
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/recyclerview/widget/P;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/I;->a(Landroidx/recyclerview/widget/P;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final l(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->O(Landroid/view/View;)Landroidx/recyclerview/widget/P;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/P;->isTmpDetached()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/P;->isScrap()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/P;->unScrap()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/P;->wasReturnedFromScrap()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/P;->clearReturnedFromScrapFlag()V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->m(Landroidx/recyclerview/widget/P;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->L:Lu/i;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/P;->isRecyclable()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->L:Lu/i;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lu/i;->p(Landroidx/recyclerview/widget/P;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method final m(Landroidx/recyclerview/widget/P;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isScrap()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v0, :cond_11

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isTmpDetached()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_10

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->shouldIgnore()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_f

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->doesTransientStatePreventRecycling()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/C;->onFailedToRecycleView(Landroidx/recyclerview/widget/P;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v4, 0x0

    .line 52
    :goto_0
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    .line 53
    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isRecyclable()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v4, 0x0

    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_3
    :goto_1
    iget v4, p0, Landroidx/recyclerview/widget/I;->f:I

    .line 67
    .line 68
    if-lez v4, :cond_c

    .line 69
    .line 70
    const/16 v4, 0x20e

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/P;->hasAnyOfTheFlags(I)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_c

    .line 77
    .line 78
    iget-object v4, p0, Landroidx/recyclerview/widget/I;->c:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iget v6, p0, Landroidx/recyclerview/widget/I;->f:I

    .line 85
    .line 86
    if-lt v5, v6, :cond_4

    .line 87
    .line 88
    if-lez v5, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/I;->k(I)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v5, v5, -0x1

    .line 94
    .line 95
    :cond_4
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 96
    .line 97
    if-eqz v6, :cond_b

    .line 98
    .line 99
    if-lez v5, :cond_b

    .line 100
    .line 101
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/k;

    .line 102
    .line 103
    iget v7, p1, Landroidx/recyclerview/widget/P;->mPosition:I

    .line 104
    .line 105
    iget-object v8, v6, Landroidx/recyclerview/widget/k;->c:[I

    .line 106
    .line 107
    if-eqz v8, :cond_6

    .line 108
    .line 109
    iget v8, v6, Landroidx/recyclerview/widget/k;->d:I

    .line 110
    .line 111
    mul-int/lit8 v8, v8, 0x2

    .line 112
    .line 113
    const/4 v9, 0x0

    .line 114
    :goto_2
    if-ge v9, v8, :cond_6

    .line 115
    .line 116
    iget-object v10, v6, Landroidx/recyclerview/widget/k;->c:[I

    .line 117
    .line 118
    aget v10, v10, v9

    .line 119
    .line 120
    if-ne v10, v7, :cond_5

    .line 121
    .line 122
    const/4 v6, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_5
    add-int/lit8 v9, v9, 0x2

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_6
    const/4 v6, 0x0

    .line 128
    :goto_3
    if-nez v6, :cond_b

    .line 129
    .line 130
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 131
    .line 132
    if-ltz v5, :cond_a

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Landroidx/recyclerview/widget/P;

    .line 139
    .line 140
    iget v6, v6, Landroidx/recyclerview/widget/P;->mPosition:I

    .line 141
    .line 142
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/k;

    .line 143
    .line 144
    iget-object v8, v7, Landroidx/recyclerview/widget/k;->c:[I

    .line 145
    .line 146
    if-eqz v8, :cond_9

    .line 147
    .line 148
    iget v8, v7, Landroidx/recyclerview/widget/k;->d:I

    .line 149
    .line 150
    mul-int/lit8 v8, v8, 0x2

    .line 151
    .line 152
    const/4 v9, 0x0

    .line 153
    :goto_4
    if-ge v9, v8, :cond_9

    .line 154
    .line 155
    iget-object v10, v7, Landroidx/recyclerview/widget/k;->c:[I

    .line 156
    .line 157
    aget v10, v10, v9

    .line 158
    .line 159
    if-ne v10, v6, :cond_8

    .line 160
    .line 161
    const/4 v6, 0x1

    .line 162
    goto :goto_5

    .line 163
    :cond_8
    add-int/lit8 v9, v9, 0x2

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_9
    const/4 v6, 0x0

    .line 167
    :goto_5
    if-nez v6, :cond_7

    .line 168
    .line 169
    :cond_a
    add-int/2addr v5, v3

    .line 170
    :cond_b
    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const/4 v4, 0x1

    .line 174
    goto :goto_6

    .line 175
    :cond_c
    const/4 v4, 0x0

    .line 176
    :goto_6
    if-nez v4, :cond_d

    .line 177
    .line 178
    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/I;->a(Landroidx/recyclerview/widget/P;Z)V

    .line 179
    .line 180
    .line 181
    const/4 v1, 0x1

    .line 182
    :cond_d
    :goto_7
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/i0;

    .line 183
    .line 184
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/i0;->f(Landroidx/recyclerview/widget/P;)V

    .line 185
    .line 186
    .line 187
    if-nez v4, :cond_e

    .line 188
    .line 189
    if-nez v1, :cond_e

    .line 190
    .line 191
    if-eqz v0, :cond_e

    .line 192
    .line 193
    iget-object v0, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 194
    .line 195
    invoke-static {v0}, Ll/a;->a(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    const/4 v0, 0x0

    .line 199
    iput-object v0, p1, Landroidx/recyclerview/widget/P;->mBindingAdapter:Landroidx/recyclerview/widget/C;

    .line 200
    .line 201
    iput-object v0, p1, Landroidx/recyclerview/widget/P;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    .line 203
    :cond_e
    return-void

    .line 204
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 209
    .line 210
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->E()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v3, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 233
    .line 234
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->E()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v0

    .line 255
    :cond_11
    :goto_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 256
    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v5, "Scrapped or attached views may not be recycled. isScrap:"

    .line 260
    .line 261
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isScrap()Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v5, " isAttached:"

    .line 272
    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget-object p1, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 277
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    if-eqz p1, :cond_12

    .line 283
    .line 284
    const/4 v1, 0x1

    .line 285
    :cond_12
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->E()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw v0
.end method

.method final n(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->O(Landroid/view/View;)Landroidx/recyclerview/widget/P;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/P;->hasAnyOfTheFlags(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_8

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isUpdated()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_8

    .line 21
    .line 22
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->L:Lu/i;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->getUnmodifiedPayloads()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    iget-boolean v0, v0, Landroidx/recyclerview/widget/U;->g:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isInvalid()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 51
    :goto_1
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 57
    :goto_3
    if-eqz v0, :cond_4

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_4
    const/4 v0, 0x0

    .line 61
    goto :goto_5

    .line 62
    :cond_5
    :goto_4
    const/4 v0, 0x1

    .line 63
    :goto_5
    if-eqz v0, :cond_6

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Ljava/util/ArrayList;

    .line 67
    .line 68
    if-nez v0, :cond_7

    .line 69
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Landroidx/recyclerview/widget/I;->b:Ljava/util/ArrayList;

    .line 76
    .line 77
    :cond_7
    invoke-virtual {p1, p0, v3}, Landroidx/recyclerview/widget/P;->setScrapContainer(Landroidx/recyclerview/widget/I;Z)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_8

    .line 86
    :cond_8
    :goto_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isInvalid()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_a

    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isRemoved()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_a

    .line 97
    .line 98
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/recyclerview/widget/C;->hasStableIds()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_9

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 112
    .line 113
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->E()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_a
    :goto_7
    invoke-virtual {p1, p0, v2}, Landroidx/recyclerview/widget/P;->setScrapContainer(Landroidx/recyclerview/widget/I;Z)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->a:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :goto_8
    return-void
.end method

.method final o(IJ)Landroidx/recyclerview/widget/P;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v8, v0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-ltz v1, :cond_3c

    .line 8
    .line 9
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/M;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/recyclerview/widget/M;->b()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_3c

    .line 16
    .line 17
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/M;

    .line 18
    .line 19
    iget-boolean v2, v9, Landroidx/recyclerview/widget/M;->f:Z

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    const/16 v3, 0x20

    .line 23
    .line 24
    if-eqz v2, :cond_6

    .line 25
    .line 26
    iget-object v2, v0, Landroidx/recyclerview/widget/I;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    const/4 v4, 0x0

    .line 38
    :goto_0
    if-ge v4, v2, :cond_2

    .line 39
    .line 40
    iget-object v5, v0, Landroidx/recyclerview/widget/I;->b:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroidx/recyclerview/widget/P;

    .line 47
    .line 48
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->wasReturnedFromScrap()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_1

    .line 53
    .line 54
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->getLayoutPosition()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-ne v6, v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/P;->addFlags(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 68
    .line 69
    invoke-virtual {v4}, Landroidx/recyclerview/widget/C;->hasStableIds()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 76
    .line 77
    invoke-virtual {v4, v1, v11}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-lez v4, :cond_4

    .line 82
    .line 83
    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 84
    .line 85
    invoke-virtual {v5}, Landroidx/recyclerview/widget/C;->getItemCount()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-ge v4, v5, :cond_4

    .line 90
    .line 91
    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 92
    .line 93
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/C;->getItemId(I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    const/4 v6, 0x0

    .line 98
    :goto_1
    if-ge v6, v2, :cond_4

    .line 99
    .line 100
    iget-object v7, v0, Landroidx/recyclerview/widget/I;->b:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Landroidx/recyclerview/widget/P;

    .line 107
    .line 108
    invoke-virtual {v7}, Landroidx/recyclerview/widget/P;->wasReturnedFromScrap()Z

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    if-nez v13, :cond_3

    .line 113
    .line 114
    invoke-virtual {v7}, Landroidx/recyclerview/widget/P;->getItemId()J

    .line 115
    .line 116
    .line 117
    move-result-wide v13

    .line 118
    cmp-long v15, v13, v4

    .line 119
    .line 120
    if-nez v15, :cond_3

    .line 121
    .line 122
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/P;->addFlags(I)V

    .line 123
    .line 124
    .line 125
    move-object v5, v7

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    :goto_2
    const/4 v5, 0x0

    .line 131
    :goto_3
    if-eqz v5, :cond_5

    .line 132
    .line 133
    const/4 v2, 0x1

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    const/4 v2, 0x0

    .line 136
    goto :goto_4

    .line 137
    :cond_6
    const/4 v2, 0x0

    .line 138
    const/4 v5, 0x0

    .line 139
    :goto_4
    iget-object v4, v0, Landroidx/recyclerview/widget/I;->c:Ljava/util/ArrayList;

    .line 140
    .line 141
    iget-object v6, v0, Landroidx/recyclerview/widget/I;->a:Ljava/util/ArrayList;

    .line 142
    .line 143
    const/4 v7, -0x1

    .line 144
    if-nez v5, :cond_1a

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    const/4 v13, 0x0

    .line 151
    :goto_5
    if-ge v13, v5, :cond_9

    .line 152
    .line 153
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    check-cast v14, Landroidx/recyclerview/widget/P;

    .line 158
    .line 159
    invoke-virtual {v14}, Landroidx/recyclerview/widget/P;->wasReturnedFromScrap()Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-nez v15, :cond_8

    .line 164
    .line 165
    invoke-virtual {v14}, Landroidx/recyclerview/widget/P;->getLayoutPosition()I

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    if-ne v15, v1, :cond_8

    .line 170
    .line 171
    invoke-virtual {v14}, Landroidx/recyclerview/widget/P;->isInvalid()Z

    .line 172
    .line 173
    .line 174
    move-result v15

    .line 175
    if-nez v15, :cond_8

    .line 176
    .line 177
    iget-boolean v15, v9, Landroidx/recyclerview/widget/M;->f:Z

    .line 178
    .line 179
    if-nez v15, :cond_7

    .line 180
    .line 181
    invoke-virtual {v14}, Landroidx/recyclerview/widget/P;->isRemoved()Z

    .line 182
    .line 183
    .line 184
    move-result v15

    .line 185
    if-nez v15, :cond_8

    .line 186
    .line 187
    :cond_7
    invoke-virtual {v14, v3}, Landroidx/recyclerview/widget/P;->addFlags(I)V

    .line 188
    .line 189
    .line 190
    move-object v5, v14

    .line 191
    goto/16 :goto_b

    .line 192
    .line 193
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_9
    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    .line 197
    .line 198
    iget-object v13, v5, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    const/4 v15, 0x0

    .line 205
    :goto_6
    if-ge v15, v14, :cond_b

    .line 206
    .line 207
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v16

    .line 211
    check-cast v16, Landroid/view/View;

    .line 212
    .line 213
    iget-object v12, v5, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/A;

    .line 214
    .line 215
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-static/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView;->O(Landroid/view/View;)Landroidx/recyclerview/widget/P;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->getLayoutPosition()I

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    if-ne v10, v1, :cond_a

    .line 227
    .line 228
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->isInvalid()Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    if-nez v10, :cond_a

    .line 233
    .line 234
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->isRemoved()Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-nez v10, :cond_a

    .line 239
    .line 240
    move-object/from16 v5, v16

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_b
    const/4 v5, 0x0

    .line 247
    :goto_7
    if-eqz v5, :cond_f

    .line 248
    .line 249
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->O(Landroid/view/View;)Landroidx/recyclerview/widget/P;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    iget-object v12, v8, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    .line 254
    .line 255
    invoke-virtual {v12, v5}, Landroidx/recyclerview/widget/d;->o(Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    iget-object v12, v8, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    .line 259
    .line 260
    iget-object v13, v12, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/A;

    .line 261
    .line 262
    iget-object v13, v13, Landroidx/recyclerview/widget/A;->b:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    .line 266
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 267
    .line 268
    .line 269
    move-result v13

    .line 270
    if-ne v13, v7, :cond_c

    .line 271
    .line 272
    :goto_8
    const/4 v13, -0x1

    .line 273
    goto :goto_9

    .line 274
    :cond_c
    iget-object v12, v12, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    .line 275
    .line 276
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/c;->d(I)Z

    .line 277
    .line 278
    .line 279
    move-result v14

    .line 280
    if-eqz v14, :cond_d

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_d
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/c;->b(I)I

    .line 284
    .line 285
    .line 286
    move-result v12

    .line 287
    sub-int/2addr v13, v12

    .line 288
    :goto_9
    if-eq v13, v7, :cond_e

    .line 289
    .line 290
    iget-object v12, v8, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    .line 291
    .line 292
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/d;->c(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/I;->n(Landroid/view/View;)V

    .line 296
    .line 297
    .line 298
    const/16 v5, 0x2020

    .line 299
    .line 300
    invoke-virtual {v10, v5}, Landroidx/recyclerview/widget/P;->addFlags(I)V

    .line 301
    .line 302
    .line 303
    move-object v5, v10

    .line 304
    goto :goto_b

    .line 305
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 306
    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v3, "layout index should not be -1 after unhiding a view:"

    .line 310
    .line 311
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->E()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v1

    .line 332
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    const/4 v10, 0x0

    .line 337
    :goto_a
    if-ge v10, v5, :cond_11

    .line 338
    .line 339
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v12

    .line 343
    check-cast v12, Landroidx/recyclerview/widget/P;

    .line 344
    .line 345
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->isInvalid()Z

    .line 346
    .line 347
    .line 348
    move-result v13

    .line 349
    if-nez v13, :cond_10

    .line 350
    .line 351
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->getLayoutPosition()I

    .line 352
    .line 353
    .line 354
    move-result v13

    .line 355
    if-ne v13, v1, :cond_10

    .line 356
    .line 357
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->isAttachedToTransitionOverlay()Z

    .line 358
    .line 359
    .line 360
    move-result v13

    .line 361
    if-nez v13, :cond_10

    .line 362
    .line 363
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    .line 367
    .line 368
    move-object v5, v12

    .line 369
    goto :goto_b

    .line 370
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 371
    .line 372
    goto :goto_a

    .line 373
    :cond_11
    const/4 v5, 0x0

    .line 374
    :goto_b
    if-eqz v5, :cond_1a

    .line 375
    .line 376
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->isRemoved()Z

    .line 377
    .line 378
    .line 379
    move-result v10

    .line 380
    if-eqz v10, :cond_12

    .line 381
    .line 382
    sget-boolean v10, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    .line 383
    .line 384
    iget-boolean v10, v9, Landroidx/recyclerview/widget/M;->f:Z

    .line 385
    .line 386
    goto :goto_e

    .line 387
    :cond_12
    iget v10, v5, Landroidx/recyclerview/widget/P;->mPosition:I

    .line 388
    .line 389
    if-ltz v10, :cond_19

    .line 390
    .line 391
    iget-object v12, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 392
    .line 393
    invoke-virtual {v12}, Landroidx/recyclerview/widget/C;->getItemCount()I

    .line 394
    .line 395
    .line 396
    move-result v12

    .line 397
    if-ge v10, v12, :cond_19

    .line 398
    .line 399
    iget-boolean v10, v9, Landroidx/recyclerview/widget/M;->f:Z

    .line 400
    .line 401
    if-nez v10, :cond_13

    .line 402
    .line 403
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 404
    .line 405
    iget v12, v5, Landroidx/recyclerview/widget/P;->mPosition:I

    .line 406
    .line 407
    invoke-virtual {v10, v12}, Landroidx/recyclerview/widget/C;->getItemViewType(I)I

    .line 408
    .line 409
    .line 410
    move-result v10

    .line 411
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->getItemViewType()I

    .line 412
    .line 413
    .line 414
    move-result v12

    .line 415
    if-eq v10, v12, :cond_13

    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_13
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 419
    .line 420
    invoke-virtual {v10}, Landroidx/recyclerview/widget/C;->hasStableIds()Z

    .line 421
    .line 422
    .line 423
    move-result v10

    .line 424
    if-eqz v10, :cond_15

    .line 425
    .line 426
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->getItemId()J

    .line 427
    .line 428
    .line 429
    move-result-wide v12

    .line 430
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 431
    .line 432
    iget v14, v5, Landroidx/recyclerview/widget/P;->mPosition:I

    .line 433
    .line 434
    invoke-virtual {v10, v14}, Landroidx/recyclerview/widget/C;->getItemId(I)J

    .line 435
    .line 436
    .line 437
    move-result-wide v14

    .line 438
    cmp-long v10, v12, v14

    .line 439
    .line 440
    if-nez v10, :cond_14

    .line 441
    .line 442
    goto :goto_d

    .line 443
    :cond_14
    :goto_c
    const/4 v10, 0x0

    .line 444
    goto :goto_e

    .line 445
    :cond_15
    :goto_d
    const/4 v10, 0x1

    .line 446
    :goto_e
    if-nez v10, :cond_18

    .line 447
    .line 448
    const/4 v10, 0x4

    .line 449
    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/P;->addFlags(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->isScrap()Z

    .line 453
    .line 454
    .line 455
    move-result v10

    .line 456
    if-eqz v10, :cond_16

    .line 457
    .line 458
    iget-object v10, v5, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 459
    .line 460
    invoke-virtual {v8, v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->unScrap()V

    .line 464
    .line 465
    .line 466
    goto :goto_f

    .line 467
    :cond_16
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->wasReturnedFromScrap()Z

    .line 468
    .line 469
    .line 470
    move-result v10

    .line 471
    if-eqz v10, :cond_17

    .line 472
    .line 473
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->clearReturnedFromScrapFlag()V

    .line 474
    .line 475
    .line 476
    :cond_17
    :goto_f
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/I;->m(Landroidx/recyclerview/widget/P;)V

    .line 477
    .line 478
    .line 479
    const/4 v5, 0x0

    .line 480
    goto :goto_10

    .line 481
    :cond_18
    const/4 v2, 0x1

    .line 482
    goto :goto_10

    .line 483
    :cond_19
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 484
    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    .line 488
    .line 489
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->E()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw v1

    .line 510
    :cond_1a
    :goto_10
    if-nez v5, :cond_2b

    .line 511
    .line 512
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 513
    .line 514
    invoke-virtual {v10, v1, v11}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 515
    .line 516
    .line 517
    move-result v10

    .line 518
    if-ltz v10, :cond_2a

    .line 519
    .line 520
    iget-object v14, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 521
    .line 522
    invoke-virtual {v14}, Landroidx/recyclerview/widget/C;->getItemCount()I

    .line 523
    .line 524
    .line 525
    move-result v14

    .line 526
    if-ge v10, v14, :cond_2a

    .line 527
    .line 528
    iget-object v14, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 529
    .line 530
    invoke-virtual {v14, v10}, Landroidx/recyclerview/widget/C;->getItemViewType(I)I

    .line 531
    .line 532
    .line 533
    move-result v14

    .line 534
    iget-object v15, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 535
    .line 536
    invoke-virtual {v15}, Landroidx/recyclerview/widget/C;->hasStableIds()Z

    .line 537
    .line 538
    .line 539
    move-result v15

    .line 540
    if-eqz v15, :cond_23

    .line 541
    .line 542
    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 543
    .line 544
    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/C;->getItemId(I)J

    .line 545
    .line 546
    .line 547
    move-result-wide v15

    .line 548
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 549
    .line 550
    .line 551
    move-result v5

    .line 552
    add-int/2addr v5, v7

    .line 553
    :goto_11
    if-ltz v5, :cond_1d

    .line 554
    .line 555
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v17

    .line 559
    move-object/from16 v12, v17

    .line 560
    .line 561
    check-cast v12, Landroidx/recyclerview/widget/P;

    .line 562
    .line 563
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->getItemId()J

    .line 564
    .line 565
    .line 566
    move-result-wide v18

    .line 567
    cmp-long v13, v18, v15

    .line 568
    .line 569
    if-nez v13, :cond_1c

    .line 570
    .line 571
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->wasReturnedFromScrap()Z

    .line 572
    .line 573
    .line 574
    move-result v13

    .line 575
    if-nez v13, :cond_1c

    .line 576
    .line 577
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->getItemViewType()I

    .line 578
    .line 579
    .line 580
    move-result v13

    .line 581
    if-ne v14, v13, :cond_1b

    .line 582
    .line 583
    invoke-virtual {v12, v3}, Landroidx/recyclerview/widget/P;->addFlags(I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->isRemoved()Z

    .line 587
    .line 588
    .line 589
    move-result v3

    .line 590
    if-eqz v3, :cond_21

    .line 591
    .line 592
    iget-boolean v3, v9, Landroidx/recyclerview/widget/M;->f:Z

    .line 593
    .line 594
    if-nez v3, :cond_21

    .line 595
    .line 596
    const/4 v3, 0x2

    .line 597
    const/16 v4, 0xe

    .line 598
    .line 599
    invoke-virtual {v12, v3, v4}, Landroidx/recyclerview/widget/P;->setFlags(II)V

    .line 600
    .line 601
    .line 602
    goto :goto_14

    .line 603
    :cond_1b
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    iget-object v13, v12, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 607
    .line 608
    invoke-virtual {v8, v13, v11}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 609
    .line 610
    .line 611
    iget-object v12, v12, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 612
    .line 613
    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView;->O(Landroid/view/View;)Landroidx/recyclerview/widget/P;

    .line 614
    .line 615
    .line 616
    move-result-object v12

    .line 617
    const/4 v13, 0x0

    .line 618
    iput-object v13, v12, Landroidx/recyclerview/widget/P;->mScrapContainer:Landroidx/recyclerview/widget/I;

    .line 619
    .line 620
    iput-boolean v11, v12, Landroidx/recyclerview/widget/P;->mInChangeScrap:Z

    .line 621
    .line 622
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->clearReturnedFromScrapFlag()V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/I;->m(Landroidx/recyclerview/widget/P;)V

    .line 626
    .line 627
    .line 628
    :cond_1c
    add-int/lit8 v5, v5, -0x1

    .line 629
    .line 630
    goto :goto_11

    .line 631
    :cond_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 632
    .line 633
    .line 634
    move-result v3

    .line 635
    add-int/2addr v3, v7

    .line 636
    :goto_12
    if-ltz v3, :cond_20

    .line 637
    .line 638
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    check-cast v5, Landroidx/recyclerview/widget/P;

    .line 643
    .line 644
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->getItemId()J

    .line 645
    .line 646
    .line 647
    move-result-wide v12

    .line 648
    cmp-long v6, v12, v15

    .line 649
    .line 650
    if-nez v6, :cond_1f

    .line 651
    .line 652
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->isAttachedToTransitionOverlay()Z

    .line 653
    .line 654
    .line 655
    move-result v6

    .line 656
    if-nez v6, :cond_1f

    .line 657
    .line 658
    invoke-virtual {v5}, Landroidx/recyclerview/widget/P;->getItemViewType()I

    .line 659
    .line 660
    .line 661
    move-result v6

    .line 662
    if-ne v14, v6, :cond_1e

    .line 663
    .line 664
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-object v12, v5

    .line 668
    goto :goto_14

    .line 669
    :cond_1e
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/I;->k(I)V

    .line 670
    .line 671
    .line 672
    goto :goto_13

    .line 673
    :cond_1f
    add-int/lit8 v3, v3, -0x1

    .line 674
    .line 675
    goto :goto_12

    .line 676
    :cond_20
    :goto_13
    const/4 v12, 0x0

    .line 677
    :cond_21
    :goto_14
    if-eqz v12, :cond_22

    .line 678
    .line 679
    iput v10, v12, Landroidx/recyclerview/widget/P;->mPosition:I

    .line 680
    .line 681
    const/4 v10, 0x1

    .line 682
    goto :goto_15

    .line 683
    :cond_22
    move-object v5, v12

    .line 684
    :cond_23
    move v10, v2

    .line 685
    move-object v12, v5

    .line 686
    :goto_15
    if-nez v12, :cond_27

    .line 687
    .line 688
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    .line 689
    .line 690
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/I;->c()Landroidx/recyclerview/widget/H;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    iget-object v2, v2, Landroidx/recyclerview/widget/H;->a:Landroid/util/SparseArray;

    .line 695
    .line 696
    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    check-cast v2, Landroidx/recyclerview/widget/G;

    .line 701
    .line 702
    if-eqz v2, :cond_25

    .line 703
    .line 704
    iget-object v2, v2, Landroidx/recyclerview/widget/G;->a:Ljava/util/ArrayList;

    .line 705
    .line 706
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    if-nez v3, :cond_25

    .line 711
    .line 712
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    add-int/2addr v3, v7

    .line 717
    :goto_16
    if-ltz v3, :cond_25

    .line 718
    .line 719
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    check-cast v4, Landroidx/recyclerview/widget/P;

    .line 724
    .line 725
    invoke-virtual {v4}, Landroidx/recyclerview/widget/P;->isAttachedToTransitionOverlay()Z

    .line 726
    .line 727
    .line 728
    move-result v4

    .line 729
    if-nez v4, :cond_24

    .line 730
    .line 731
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    check-cast v2, Landroidx/recyclerview/widget/P;

    .line 736
    .line 737
    goto :goto_17

    .line 738
    :cond_24
    add-int/lit8 v3, v3, -0x1

    .line 739
    .line 740
    goto :goto_16

    .line 741
    :cond_25
    const/4 v2, 0x0

    .line 742
    :goto_17
    if-eqz v2, :cond_26

    .line 743
    .line 744
    invoke-virtual {v2}, Landroidx/recyclerview/widget/P;->resetInternal()V

    .line 745
    .line 746
    .line 747
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    .line 748
    .line 749
    :cond_26
    move-object v5, v2

    .line 750
    goto :goto_18

    .line 751
    :cond_27
    move-object v5, v12

    .line 752
    :goto_18
    if-nez v5, :cond_2c

    .line 753
    .line 754
    invoke-static {}, Landroidx/recyclerview/widget/RecyclerView;->Q()J

    .line 755
    .line 756
    .line 757
    move-result-wide v12

    .line 758
    const-wide v2, 0x7fffffffffffffffL

    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    cmp-long v4, p2, v2

    .line 764
    .line 765
    if-eqz v4, :cond_28

    .line 766
    .line 767
    iget-object v2, v0, Landroidx/recyclerview/widget/I;->g:Landroidx/recyclerview/widget/H;

    .line 768
    .line 769
    move v3, v14

    .line 770
    move-wide v4, v12

    .line 771
    move-wide/from16 v6, p2

    .line 772
    .line 773
    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/H;->f(IJJ)Z

    .line 774
    .line 775
    .line 776
    move-result v2

    .line 777
    if-nez v2, :cond_28

    .line 778
    .line 779
    const/4 v2, 0x0

    .line 780
    return-object v2

    .line 781
    :cond_28
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 782
    .line 783
    invoke-virtual {v2, v8, v14}, Landroidx/recyclerview/widget/C;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/P;

    .line 784
    .line 785
    .line 786
    move-result-object v5

    .line 787
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 788
    .line 789
    if-eqz v2, :cond_29

    .line 790
    .line 791
    iget-object v2, v5, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 792
    .line 793
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    if-eqz v2, :cond_29

    .line 798
    .line 799
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 800
    .line 801
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 802
    .line 803
    .line 804
    iput-object v3, v5, Landroidx/recyclerview/widget/P;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 805
    .line 806
    :cond_29
    invoke-static {}, Landroidx/recyclerview/widget/RecyclerView;->Q()J

    .line 807
    .line 808
    .line 809
    move-result-wide v2

    .line 810
    iget-object v4, v0, Landroidx/recyclerview/widget/I;->g:Landroidx/recyclerview/widget/H;

    .line 811
    .line 812
    sub-long/2addr v2, v12

    .line 813
    invoke-virtual {v4, v14, v2, v3}, Landroidx/recyclerview/widget/H;->b(IJ)V

    .line 814
    .line 815
    .line 816
    goto :goto_19

    .line 817
    :cond_2a
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 818
    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    .line 820
    .line 821
    const-string v4, "Inconsistency detected. Invalid item position "

    .line 822
    .line 823
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    const-string v1, "(offset:"

    .line 830
    .line 831
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    const-string v1, ").state:"

    .line 838
    .line 839
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v9}, Landroidx/recyclerview/widget/M;->b()I

    .line 843
    .line 844
    .line 845
    move-result v1

    .line 846
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->E()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    throw v2

    .line 864
    :cond_2b
    move v10, v2

    .line 865
    :cond_2c
    :goto_19
    move-object v12, v5

    .line 866
    if-eqz v10, :cond_2d

    .line 867
    .line 868
    iget-boolean v2, v9, Landroidx/recyclerview/widget/M;->f:Z

    .line 869
    .line 870
    if-nez v2, :cond_2d

    .line 871
    .line 872
    const/16 v2, 0x2000

    .line 873
    .line 874
    invoke-virtual {v12, v2}, Landroidx/recyclerview/widget/P;->hasAnyOfTheFlags(I)Z

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    if-eqz v3, :cond_2d

    .line 879
    .line 880
    invoke-virtual {v12, v11, v2}, Landroidx/recyclerview/widget/P;->setFlags(II)V

    .line 881
    .line 882
    .line 883
    iget-boolean v2, v9, Landroidx/recyclerview/widget/M;->i:Z

    .line 884
    .line 885
    if-eqz v2, :cond_2d

    .line 886
    .line 887
    invoke-static {v12}, Landroidx/recyclerview/widget/U;->c(Landroidx/recyclerview/widget/P;)V

    .line 888
    .line 889
    .line 890
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->L:Lu/i;

    .line 891
    .line 892
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->getUnmodifiedPayloads()Ljava/util/List;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 896
    .line 897
    .line 898
    new-instance v2, Lu/n;

    .line 899
    .line 900
    invoke-direct {v2}, Lu/n;-><init>()V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v2, v12}, Lu/n;->a(Landroidx/recyclerview/widget/P;)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v8, v12, v2}, Landroidx/recyclerview/widget/RecyclerView;->c0(Landroidx/recyclerview/widget/P;Lu/n;)V

    .line 907
    .line 908
    .line 909
    :cond_2d
    iget-boolean v2, v9, Landroidx/recyclerview/widget/M;->f:Z

    .line 910
    .line 911
    if-eqz v2, :cond_2e

    .line 912
    .line 913
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->isBound()Z

    .line 914
    .line 915
    .line 916
    move-result v2

    .line 917
    if-eqz v2, :cond_2e

    .line 918
    .line 919
    iput v1, v12, Landroidx/recyclerview/widget/P;->mPreLayoutPosition:I

    .line 920
    .line 921
    goto :goto_1a

    .line 922
    :cond_2e
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->isBound()Z

    .line 923
    .line 924
    .line 925
    move-result v2

    .line 926
    if-eqz v2, :cond_2f

    .line 927
    .line 928
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->needsUpdate()Z

    .line 929
    .line 930
    .line 931
    move-result v2

    .line 932
    if-nez v2, :cond_2f

    .line 933
    .line 934
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->isInvalid()Z

    .line 935
    .line 936
    .line 937
    move-result v2

    .line 938
    if-eqz v2, :cond_30

    .line 939
    .line 940
    :cond_2f
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    .line 941
    .line 942
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/b;

    .line 943
    .line 944
    invoke-virtual {v2, v1, v11}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 945
    .line 946
    .line 947
    move-result v13

    .line 948
    const/4 v2, 0x0

    .line 949
    iput-object v2, v12, Landroidx/recyclerview/widget/P;->mBindingAdapter:Landroidx/recyclerview/widget/C;

    .line 950
    .line 951
    iput-object v8, v12, Landroidx/recyclerview/widget/P;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 952
    .line 953
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->getItemViewType()I

    .line 954
    .line 955
    .line 956
    move-result v3

    .line 957
    invoke-static {}, Landroidx/recyclerview/widget/RecyclerView;->Q()J

    .line 958
    .line 959
    .line 960
    move-result-wide v14

    .line 961
    const-wide v4, 0x7fffffffffffffffL

    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    cmp-long v2, p2, v4

    .line 967
    .line 968
    if-eqz v2, :cond_31

    .line 969
    .line 970
    iget-object v2, v0, Landroidx/recyclerview/widget/I;->g:Landroidx/recyclerview/widget/H;

    .line 971
    .line 972
    move-wide v4, v14

    .line 973
    move-wide/from16 v6, p2

    .line 974
    .line 975
    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/H;->e(IJJ)Z

    .line 976
    .line 977
    .line 978
    move-result v2

    .line 979
    if-nez v2, :cond_31

    .line 980
    .line 981
    :cond_30
    :goto_1a
    const/4 v1, 0x0

    .line 982
    const/4 v3, 0x1

    .line 983
    goto :goto_1e

    .line 984
    :cond_31
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->isTmpDetached()Z

    .line 985
    .line 986
    .line 987
    move-result v2

    .line 988
    if-eqz v2, :cond_32

    .line 989
    .line 990
    iget-object v2, v12, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 991
    .line 992
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    .line 993
    .line 994
    .line 995
    move-result v3

    .line 996
    iget-object v4, v12, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 997
    .line 998
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 999
    .line 1000
    .line 1001
    move-result-object v4

    .line 1002
    invoke-static {v8, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    .line 1004
    .line 1005
    const/4 v2, 0x1

    .line 1006
    goto :goto_1b

    .line 1007
    :cond_32
    const/4 v2, 0x0

    .line 1008
    :goto_1b
    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 1009
    .line 1010
    invoke-virtual {v3, v12, v13}, Landroidx/recyclerview/widget/C;->bindViewHolder(Landroidx/recyclerview/widget/P;I)V

    .line 1011
    .line 1012
    .line 1013
    if-eqz v2, :cond_33

    .line 1014
    .line 1015
    iget-object v2, v12, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 1016
    .line 1017
    invoke-static {v8, v2}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 1018
    .line 1019
    .line 1020
    :cond_33
    invoke-static {}, Landroidx/recyclerview/widget/RecyclerView;->Q()J

    .line 1021
    .line 1022
    .line 1023
    move-result-wide v2

    .line 1024
    iget-object v4, v0, Landroidx/recyclerview/widget/I;->g:Landroidx/recyclerview/widget/H;

    .line 1025
    .line 1026
    invoke-virtual {v12}, Landroidx/recyclerview/widget/P;->getItemViewType()I

    .line 1027
    .line 1028
    .line 1029
    move-result v5

    .line 1030
    sub-long/2addr v2, v14

    .line 1031
    invoke-virtual {v4, v5, v2, v3}, Landroidx/recyclerview/widget/H;->a(IJ)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->S()Z

    .line 1035
    .line 1036
    .line 1037
    move-result v2

    .line 1038
    if-eqz v2, :cond_37

    .line 1039
    .line 1040
    iget-object v2, v12, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 1041
    .line 1042
    invoke-static {v2}, Landroidx/core/view/f0;->l(Landroid/view/View;)I

    .line 1043
    .line 1044
    .line 1045
    move-result v3

    .line 1046
    if-nez v3, :cond_34

    .line 1047
    .line 1048
    const/4 v3, 0x1

    .line 1049
    invoke-static {v2, v3}, Landroidx/core/view/f0;->S(Landroid/view/View;I)V

    .line 1050
    .line 1051
    .line 1052
    goto :goto_1c

    .line 1053
    :cond_34
    const/4 v3, 0x1

    .line 1054
    :goto_1c
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroidx/recyclerview/widget/S;

    .line 1055
    .line 1056
    if-nez v4, :cond_35

    .line 1057
    .line 1058
    goto :goto_1d

    .line 1059
    :cond_35
    invoke-virtual {v4}, Landroidx/recyclerview/widget/S;->k()Landroidx/recyclerview/widget/Q;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v4

    .line 1063
    instance-of v5, v4, Landroidx/recyclerview/widget/Q;

    .line 1064
    .line 1065
    if-eqz v5, :cond_36

    .line 1066
    .line 1067
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/Q;->l(Landroid/view/View;)V

    .line 1068
    .line 1069
    .line 1070
    :cond_36
    invoke-static {v2, v4}, Landroidx/core/view/f0;->K(Landroid/view/View;Landroidx/core/view/c;)V

    .line 1071
    .line 1072
    .line 1073
    goto :goto_1d

    .line 1074
    :cond_37
    const/4 v3, 0x1

    .line 1075
    :goto_1d
    iget-boolean v2, v9, Landroidx/recyclerview/widget/M;->f:Z

    .line 1076
    .line 1077
    if-eqz v2, :cond_38

    .line 1078
    .line 1079
    iput v1, v12, Landroidx/recyclerview/widget/P;->mPreLayoutPosition:I

    .line 1080
    .line 1081
    :cond_38
    const/4 v1, 0x1

    .line 1082
    :goto_1e
    iget-object v2, v12, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 1083
    .line 1084
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v2

    .line 1088
    if-nez v2, :cond_39

    .line 1089
    .line 1090
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v2

    .line 1094
    check-cast v2, Landroidx/recyclerview/widget/F;

    .line 1095
    .line 1096
    iget-object v4, v12, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 1097
    .line 1098
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    .line 1100
    .line 1101
    goto :goto_1f

    .line 1102
    :cond_39
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v4

    .line 1106
    if-nez v4, :cond_3a

    .line 1107
    .line 1108
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v2

    .line 1112
    check-cast v2, Landroidx/recyclerview/widget/F;

    .line 1113
    .line 1114
    iget-object v4, v12, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 1115
    .line 1116
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    .line 1118
    .line 1119
    goto :goto_1f

    .line 1120
    :cond_3a
    check-cast v2, Landroidx/recyclerview/widget/F;

    .line 1121
    .line 1122
    :goto_1f
    iput-object v12, v2, Landroidx/recyclerview/widget/F;->a:Landroidx/recyclerview/widget/P;

    .line 1123
    .line 1124
    if-eqz v10, :cond_3b

    .line 1125
    .line 1126
    if-eqz v1, :cond_3b

    .line 1127
    .line 1128
    const/4 v11, 0x1

    .line 1129
    :cond_3b
    iput-boolean v11, v2, Landroidx/recyclerview/widget/F;->d:Z

    .line 1130
    .line 1131
    return-object v12

    .line 1132
    :cond_3c
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 1133
    .line 1134
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    const-string v4, "Invalid item position "

    .line 1137
    .line 1138
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1142
    .line 1143
    .line 1144
    const-string v4, "("

    .line 1145
    .line 1146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    .line 1152
    const-string v1, "). Item count:"

    .line 1153
    .line 1154
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/M;

    .line 1158
    .line 1159
    invoke-virtual {v1}, Landroidx/recyclerview/widget/M;->b()I

    .line 1160
    .line 1161
    .line 1162
    move-result v1

    .line 1163
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->E()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v1

    .line 1170
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v1

    .line 1177
    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1178
    .line 1179
    .line 1180
    throw v2
.end method

.method final p(Landroidx/recyclerview/widget/P;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/P;->mInChangeScrap:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, Landroidx/recyclerview/widget/P;->mScrapContainer:Landroidx/recyclerview/widget/I;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Landroidx/recyclerview/widget/P;->mInChangeScrap:Z

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->clearReturnedFromScrapFlag()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/E;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/recyclerview/widget/E;->j:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/I;->e:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Landroidx/recyclerview/widget/I;->f:I

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/I;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_1
    if-ltz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Landroidx/recyclerview/widget/I;->f:I

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/I;->k(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-void
.end method
