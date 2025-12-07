.class final Lc0/a;
.super Landroidx/core/view/accessibility/n;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Iterable;

.field private b:[B


# virtual methods
.method public final d()Lc0/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lc0/a;->a:Ljava/lang/Iterable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " events"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v0, Lc0/b;

    .line 17
    .line 18
    iget-object v1, p0, Lc0/a;->a:Ljava/lang/Iterable;

    .line 19
    .line 20
    iget-object v2, p0, Lc0/a;->b:[B

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lc0/b;-><init>(Ljava/lang/Iterable;[B)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v2, "Missing required properties:"

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method public final p(Ljava/util/ArrayList;)Landroidx/core/view/accessibility/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lc0/a;->a:Ljava/lang/Iterable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final q([B)Landroidx/core/view/accessibility/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lc0/a;->b:[B

    .line 2
    .line 3
    return-object p0
.end method
