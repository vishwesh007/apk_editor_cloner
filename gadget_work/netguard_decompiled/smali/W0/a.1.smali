.class public abstract LW0/a;
.super LW0/Y;
.source "SourceFile"

# interfaces
.implements LI0/e;


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, LW0/Y;->B()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected final E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, LW0/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LW0/j;

    .line 6
    .line 7
    iget-object p1, p1, LW0/j;->a:Ljava/lang/Throwable;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    invoke-super {p0}, LW0/Y;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, LG0/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, LW0/j;

    .line 9
    .line 10
    invoke-direct {p1, v0}, LW0/j;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, LW0/Y;->A(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, LW0/H;->g:Lkotlinx/coroutines/internal/t;

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0, p1}, LW0/a;->l(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final getContext()LI0/l;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final p()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, " was cancelled"

    .line 10
    .line 11
    invoke-static {v1, v0}, LP0/f;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final y(Lw/b;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, LW0/s;->b(LI0/l;Ljava/lang/Throwable;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
