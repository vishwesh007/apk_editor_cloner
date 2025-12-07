.class public final LW0/g;
.super LW0/T;
.source "SourceFile"

# interfaces
.implements LW0/f;


# virtual methods
.method public final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LW0/g;->p(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, LG0/j;->a:LG0/j;

    .line 7
    .line 8
    return-object p1
.end method

.method public final i(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    iget-object v0, p0, LW0/U;->g:LW0/Y;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, LW0/Y;->m(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    :goto_0
    return p1

    .line 16
    :cond_1
    invoke-static {}, LP0/f;->h()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    throw p1
.end method

.method public final p(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, LW0/U;->g:LW0/Y;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_0
    invoke-static {}, LP0/f;->h()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
