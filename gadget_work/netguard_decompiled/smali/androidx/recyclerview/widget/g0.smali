.class final Landroidx/recyclerview/widget/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/recyclerview/widget/f0;

.field b:Landroidx/recyclerview/widget/e0;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/f0;

    .line 5
    .line 6
    new-instance p1, Landroidx/recyclerview/widget/e0;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/recyclerview/widget/e0;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/g0;->b:Landroidx/recyclerview/widget/e0;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method final a(IIII)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/recyclerview/widget/f0;->c()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0}, Landroidx/recyclerview/widget/f0;->b()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-le p2, p1, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, -0x1

    .line 16
    :goto_0
    const/4 v4, 0x0

    .line 17
    :goto_1
    if-eq p1, p2, :cond_3

    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/f0;->a(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-interface {v0, v5}, Landroidx/recyclerview/widget/f0;->e(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-interface {v0, v5}, Landroidx/recyclerview/widget/f0;->d(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    iget-object v8, p0, Landroidx/recyclerview/widget/g0;->b:Landroidx/recyclerview/widget/e0;

    .line 32
    .line 33
    iput v1, v8, Landroidx/recyclerview/widget/e0;->b:I

    .line 34
    .line 35
    iput v2, v8, Landroidx/recyclerview/widget/e0;->c:I

    .line 36
    .line 37
    iput v6, v8, Landroidx/recyclerview/widget/e0;->d:I

    .line 38
    .line 39
    iput v7, v8, Landroidx/recyclerview/widget/e0;->e:I

    .line 40
    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    or-int/lit8 v6, p3, 0x0

    .line 44
    .line 45
    iput v6, v8, Landroidx/recyclerview/widget/e0;->a:I

    .line 46
    .line 47
    invoke-virtual {v8}, Landroidx/recyclerview/widget/e0;->a()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    return-object v5

    .line 54
    :cond_1
    if-eqz p4, :cond_2

    .line 55
    .line 56
    iget-object v6, p0, Landroidx/recyclerview/widget/g0;->b:Landroidx/recyclerview/widget/e0;

    .line 57
    .line 58
    or-int/lit8 v7, p4, 0x0

    .line 59
    .line 60
    iput v7, v6, Landroidx/recyclerview/widget/e0;->a:I

    .line 61
    .line 62
    invoke-virtual {v6}, Landroidx/recyclerview/widget/e0;->a()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_2

    .line 67
    .line 68
    move-object v4, v5

    .line 69
    :cond_2
    add-int/2addr p1, v3

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    return-object v4
.end method

.method final b(Landroid/view/View;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/g0;->b:Landroidx/recyclerview/widget/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/f0;

    .line 4
    .line 5
    invoke-interface {v1}, Landroidx/recyclerview/widget/f0;->c()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-interface {v1}, Landroidx/recyclerview/widget/f0;->b()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/f0;->e(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/f0;->d(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput v2, v0, Landroidx/recyclerview/widget/e0;->b:I

    .line 22
    .line 23
    iput v3, v0, Landroidx/recyclerview/widget/e0;->c:I

    .line 24
    .line 25
    iput v4, v0, Landroidx/recyclerview/widget/e0;->d:I

    .line 26
    .line 27
    iput p1, v0, Landroidx/recyclerview/widget/e0;->e:I

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/g0;->b:Landroidx/recyclerview/widget/e0;

    .line 30
    .line 31
    const/16 v0, 0x6003

    .line 32
    .line 33
    or-int/lit8 v0, v0, 0x0

    .line 34
    .line 35
    iput v0, p1, Landroidx/recyclerview/widget/e0;->a:I

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->a()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method
