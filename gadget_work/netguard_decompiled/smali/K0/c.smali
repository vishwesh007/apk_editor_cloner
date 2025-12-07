.class public abstract LK0/c;
.super LK0/a;
.source "SourceFile"


# instance fields
.field private final e:LI0/l;

.field private transient f:LI0/e;


# direct methods
.method public constructor <init>(LI0/e;LI0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LK0/a;-><init>(LI0/e;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LK0/c;->e:LI0/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getContext()LI0/l;
    .locals 1

    .line 1
    iget-object v0, p0, LK0/c;->e:LI0/l;

    .line 2
    .line 3
    invoke-static {v0}, LP0/f;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected final i()V
    .locals 3

    .line 1
    iget-object v0, p0, LK0/c;->f:LI0/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, LK0/c;->e:LI0/l;

    .line 8
    .line 9
    invoke-static {v1}, LP0/f;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, LI0/g;->a:LI0/f;

    .line 13
    .line 14
    invoke-interface {v1, v2}, LI0/l;->get(LI0/j;)LI0/i;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, LP0/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    check-cast v1, LI0/g;

    .line 22
    .line 23
    invoke-interface {v1, v0}, LI0/g;->r(LI0/e;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object v0, LK0/b;->d:LK0/b;

    .line 27
    .line 28
    iput-object v0, p0, LK0/c;->f:LI0/e;

    .line 29
    .line 30
    return-void
.end method

.method public final j()LI0/e;
    .locals 2

    .line 1
    iget-object v0, p0, LK0/c;->f:LI0/e;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, LK0/c;->e:LI0/l;

    .line 6
    .line 7
    invoke-static {v0}, LP0/f;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, LI0/g;->a:LI0/f;

    .line 11
    .line 12
    invoke-interface {v0, v1}, LI0/l;->get(LI0/j;)LI0/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, LI0/g;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, p0}, LI0/g;->q(LI0/e;)Lkotlinx/coroutines/internal/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    :cond_0
    move-object v0, p0

    .line 27
    :cond_1
    iput-object v0, p0, LK0/c;->f:LI0/e;

    .line 28
    .line 29
    :cond_2
    return-object v0
.end method
