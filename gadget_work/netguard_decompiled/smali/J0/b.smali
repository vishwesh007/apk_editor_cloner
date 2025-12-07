.class public final LJ0/b;
.super LJ0/e;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;LI0/e;LO0/p;)LI0/e;
    .locals 2

    .line 1
    const-string v0, "completion"

    .line 2
    .line 3
    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, LK0/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p2, LK0/a;

    .line 11
    .line 12
    invoke-virtual {p2, p0, p1}, LK0/a;->a(Ljava/lang/Object;LI0/e;)LI0/e;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, LI0/e;->getContext()LI0/l;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, LI0/m;->d:LI0/m;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    new-instance v0, LJ0/c;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1, p2}, LJ0/c;-><init>(Ljava/lang/Object;LI0/e;LO0/p;)V

    .line 28
    .line 29
    .line 30
    move-object p0, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v1, LJ0/d;

    .line 33
    .line 34
    invoke-direct {v1, p1, v0, p2, p0}, LJ0/d;-><init>(LI0/e;LI0/l;LO0/p;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object p0, v1

    .line 38
    :goto_0
    return-object p0
.end method

.method public static b(LI0/e;)LI0/e;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, LK0/c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, LK0/c;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, LK0/c;->j()LI0/e;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    return-object p0
.end method
