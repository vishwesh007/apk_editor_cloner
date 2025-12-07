.class final Landroidx/collection/a;
.super Landroidx/collection/m;
.source "SourceFile"


# instance fields
.field final synthetic d:Landroidx/collection/b;


# direct methods
.method constructor <init>(Landroidx/collection/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/collection/a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/collection/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/n;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected final b(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/collection/n;->e:[Ljava/lang/Object;

    .line 4
    .line 5
    shl-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    add-int/2addr p1, p2

    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    return-object p1
.end method

.method protected final c()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    iget v0, v0, Landroidx/collection/n;->f:I

    .line 4
    .line 5
    return v0
.end method

.method protected final e(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/n;->e(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected final f(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/n;->g(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected final h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/n;->j(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected final i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->d:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/collection/n;->k(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
