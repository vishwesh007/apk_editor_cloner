.class final Landroidx/recyclerview/widget/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/collection/n;

.field final b:Landroidx/collection/f;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/n;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/n;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/i0;->a:Landroidx/collection/n;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/f;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/i0;->b:Landroidx/collection/f;

    .line 17
    .line 18
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/P;I)Lu/n;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/i0;->a:Landroidx/collection/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/n;->e(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/n;->l(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/recyclerview/widget/h0;

    .line 16
    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    iget v3, v2, Landroidx/recyclerview/widget/h0;->a:I

    .line 20
    .line 21
    and-int v4, v3, p2

    .line 22
    .line 23
    if-eqz v4, :cond_4

    .line 24
    .line 25
    not-int v4, p2

    .line 26
    and-int/2addr v3, v4

    .line 27
    iput v3, v2, Landroidx/recyclerview/widget/h0;->a:I

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    if-ne p2, v4, :cond_1

    .line 31
    .line 32
    iget-object p2, v2, Landroidx/recyclerview/widget/h0;->b:Lu/n;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/16 v4, 0x8

    .line 36
    .line 37
    if-ne p2, v4, :cond_3

    .line 38
    .line 39
    iget-object p2, v2, Landroidx/recyclerview/widget/h0;->c:Lu/n;

    .line 40
    .line 41
    :goto_0
    and-int/lit8 v3, v3, 0xc

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroidx/collection/n;->j(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput p1, v2, Landroidx/recyclerview/widget/h0;->a:I

    .line 50
    .line 51
    iput-object v1, v2, Landroidx/recyclerview/widget/h0;->b:Lu/n;

    .line 52
    .line 53
    iput-object v1, v2, Landroidx/recyclerview/widget/h0;->c:Lu/n;

    .line 54
    .line 55
    sget-object p1, Landroidx/recyclerview/widget/h0;->d:Landroidx/core/util/g;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroidx/core/util/g;->a(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    return-object p2

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string p2, "Must provide flag PRE or POST"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_4
    return-object v1
.end method


# virtual methods
.method final a(Landroidx/recyclerview/widget/P;Lu/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/i0;->a:Landroidx/collection/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/collection/n;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroidx/recyclerview/widget/h0;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroidx/recyclerview/widget/h0;->a()Landroidx/recyclerview/widget/h0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, p1, v1}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object p2, v1, Landroidx/recyclerview/widget/h0;->c:Lu/n;

    .line 20
    .line 21
    iget p1, v1, Landroidx/recyclerview/widget/h0;->a:I

    .line 22
    .line 23
    or-int/lit8 p1, p1, 0x8

    .line 24
    .line 25
    iput p1, v1, Landroidx/recyclerview/widget/h0;->a:I

    .line 26
    .line 27
    return-void
.end method

.method final c(Landroidx/recyclerview/widget/P;)Lu/n;
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/i0;->b(Landroidx/recyclerview/widget/P;I)Lu/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method final d(Landroidx/recyclerview/widget/P;)Lu/n;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/i0;->b(Landroidx/recyclerview/widget/P;I)Lu/n;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method final e(Landroidx/recyclerview/widget/P;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/i0;->a:Landroidx/collection/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/collection/n;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/recyclerview/widget/h0;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/h0;->a:I

    .line 14
    .line 15
    and-int/lit8 v0, v0, -0x2

    .line 16
    .line 17
    iput v0, p1, Landroidx/recyclerview/widget/h0;->a:I

    .line 18
    .line 19
    return-void
.end method

.method final f(Landroidx/recyclerview/widget/P;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/i0;->b:Landroidx/collection/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/f;->j()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    if-ltz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/collection/f;->k(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-ne p1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/collection/f;->i(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/i0;->a:Landroidx/collection/n;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/collection/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/recyclerview/widget/h0;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput v0, p1, Landroidx/recyclerview/widget/h0;->a:I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p1, Landroidx/recyclerview/widget/h0;->b:Lu/n;

    .line 35
    .line 36
    iput-object v0, p1, Landroidx/recyclerview/widget/h0;->c:Lu/n;

    .line 37
    .line 38
    sget-object v0, Landroidx/recyclerview/widget/h0;->d:Landroidx/core/util/g;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroidx/core/util/g;->a(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method
