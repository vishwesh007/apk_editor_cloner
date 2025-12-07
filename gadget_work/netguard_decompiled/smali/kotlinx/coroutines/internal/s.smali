.class public Lkotlinx/coroutines/internal/s;
.super LW0/a;
.source "SourceFile"

# interfaces
.implements LK0/d;


# virtual methods
.method public final c()LK0/d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected j(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, LJ0/b;->b(LI0/e;)LI0/e;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    instance-of v1, p1, LW0/j;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast p1, LW0/j;

    .line 11
    .line 12
    iget-object p1, p1, LW0/j;->a:Ljava/lang/Throwable;

    .line 13
    .line 14
    invoke-static {p1}, LG0/a;->b(Ljava/lang/Throwable;)LG0/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/e;->b(LI0/e;Ljava/lang/Object;LO0/l;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected l(Ljava/lang/Object;)V
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
    invoke-static {p1}, LG0/a;->b(Ljava/lang/Throwable;)LG0/e;

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    throw p1
.end method

.method protected final z()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
