.class public final Lkotlinx/coroutines/internal/d;
.super LW0/y;
.source "SourceFile"

# interfaces
.implements LK0/d;
.implements LI0/e;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;

.field public final g:LW0/o;

.field public final h:LI0/e;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, Lkotlinx/coroutines/internal/d;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(LW0/o;LI0/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LW0/y;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/internal/d;->g:LW0/o;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/internal/d;->h:LI0/e;

    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/internal/e;->a()Lkotlinx/coroutines/internal/t;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/d;->getContext()LI0/l;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object p2, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/t;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    sget-object v0, Lkotlinx/coroutines/internal/v;->e:Lkotlinx/coroutines/internal/v;

    .line 26
    .line 27
    invoke-interface {p1, p2, v0}, LI0/l;->fold(Ljava/lang/Object;LO0/p;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, LP0/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lkotlinx/coroutines/internal/d;->j:Ljava/lang/Object;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lkotlinx/coroutines/internal/d;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    instance-of v0, p1, LW0/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LW0/k;

    .line 6
    .line 7
    iget-object p1, p1, LW0/k;->b:LO0/l;

    .line 8
    .line 9
    invoke-interface {p1, p2}, LO0/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final b()LI0/e;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c()LK0/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->h:LI0/e;

    .line 2
    .line 3
    instance-of v1, v0, LK0/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, LK0/d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->h:LI0/e;

    .line 2
    .line 3
    invoke-interface {v0}, LI0/e;->getContext()LI0/l;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, LG0/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    move-object v3, p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v3, LW0/j;

    .line 16
    .line 17
    invoke-direct {v3, v2}, LW0/j;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/d;->g:LW0/o;

    .line 21
    .line 22
    invoke-virtual {v2}, LW0/o;->u()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iput-object v3, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    .line 30
    .line 31
    iput v5, p0, LW0/y;->f:I

    .line 32
    .line 33
    invoke-virtual {v2, v1, p0}, LW0/o;->t(LI0/l;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    invoke-static {}, LW0/f0;->a()LW0/C;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, LW0/C;->z()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iput-object v3, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    .line 48
    .line 49
    iput v5, p0, LW0/y;->f:I

    .line 50
    .line 51
    invoke-virtual {v1, p0}, LW0/C;->w(LW0/y;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2}, LW0/C;->y(Z)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/d;->getContext()LI0/l;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v3, p0, Lkotlinx/coroutines/internal/d;->j:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/y;->b(LI0/l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-interface {v0, p1}, LI0/e;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/y;->a(LI0/l;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {v1}, LW0/C;->B()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/y;->a(LI0/l;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    const/4 v0, 0x0

    .line 89
    :try_start_3
    invoke-virtual {p0, p1, v0}, LW0/y;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v1}, LW0/C;->v()V

    .line 93
    .line 94
    .line 95
    :goto_2
    return-void

    .line 96
    :catchall_2
    move-exception p1

    .line 97
    invoke-virtual {v1}, LW0/C;->v()V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method public final getContext()LI0/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->h:LI0/e;

    invoke-interface {v0}, LI0/e;->getContext()LI0/l;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/internal/e;->a()Lkotlinx/coroutines/internal/t;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, LW0/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, LW0/d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v0}, LW0/d;->i()V

    .line 15
    .line 16
    .line 17
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DispatchedContinuation["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lkotlinx/coroutines/internal/d;->g:LW0/o;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lkotlinx/coroutines/internal/d;->h:LI0/e;

    .line 19
    .line 20
    invoke-static {v1}, LW0/s;->c(LI0/e;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x5d

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
