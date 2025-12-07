.class final Lcom/bumptech/glide/load/engine/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/n;
.implements LY/e;


# static fields
.field private static final C:Lcom/bumptech/glide/load/engine/F;


# instance fields
.field private volatile A:Z

.field private B:Z

.field final d:Lcom/bumptech/glide/load/engine/H;

.field private final e:LY/i;

.field private final f:Lcom/bumptech/glide/load/engine/M;

.field private final g:Landroidx/core/util/f;

.field private final h:Lcom/bumptech/glide/load/engine/F;

.field private final i:Lcom/bumptech/glide/load/engine/J;

.field private final j:LI/h;

.field private final k:LI/h;

.field private final l:LI/h;

.field private final m:LI/h;

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private o:LE/e;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/bumptech/glide/load/engine/V;

.field u:Lcom/bumptech/glide/load/DataSource;

.field private v:Z

.field w:Lcom/bumptech/glide/load/engine/P;

.field private x:Z

.field y:Lcom/bumptech/glide/load/engine/N;

.field private z:Lcom/bumptech/glide/load/engine/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/F;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/F;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/load/engine/I;->C:Lcom/bumptech/glide/load/engine/F;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>(LI/h;LI/h;LI/h;LI/h;Lcom/bumptech/glide/load/engine/J;Lcom/bumptech/glide/load/engine/M;Landroidx/core/util/f;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/I;->C:Lcom/bumptech/glide/load/engine/F;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/bumptech/glide/load/engine/H;

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/H;-><init>(Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/I;->d:Lcom/bumptech/glide/load/engine/H;

    .line 18
    .line 19
    invoke-static {}, LY/i;->a()LY/i;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/I;->e:LY/i;

    .line 24
    .line 25
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/I;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/I;->j:LI/h;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/I;->k:LI/h;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/I;->l:LI/h;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/I;->m:LI/h;

    .line 39
    .line 40
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/I;->i:Lcom/bumptech/glide/load/engine/J;

    .line 41
    .line 42
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/I;->f:Lcom/bumptech/glide/load/engine/M;

    .line 43
    .line 44
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/I;->g:Landroidx/core/util/f;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/I;->h:Lcom/bumptech/glide/load/engine/F;

    .line 47
    .line 48
    return-void
.end method

.method private f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->v:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->A:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method private declared-synchronized l()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->o:LE/e;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->d:Lcom/bumptech/glide/load/engine/H;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/H;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/I;->o:LE/e;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/I;->y:Lcom/bumptech/glide/load/engine/N;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/I;->t:Lcom/bumptech/glide/load/engine/V;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/I;->x:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/I;->A:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/I;->v:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/I;->B:Z

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/I;->z:Lcom/bumptech/glide/load/engine/q;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/q;->t()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/I;->z:Lcom/bumptech/glide/load/engine/q;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/I;->w:Lcom/bumptech/glide/load/engine/P;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/I;->u:Lcom/bumptech/glide/load/DataSource;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->g:Landroidx/core/util/f;

    .line 39
    .line 40
    invoke-interface {v0, p0}, Landroidx/core/util/f;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    .line 53
    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Lcom/bumptech/glide/request/h;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->e:LY/i;

    .line 3
    .line 4
    invoke-virtual {v0}, LY/i;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->d:Lcom/bumptech/glide/load/engine/H;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/H;->e(Lcom/bumptech/glide/request/h;Ljava/util/concurrent/Executor;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->v:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/I;->d(I)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/bumptech/glide/load/engine/E;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/E;-><init>(Lcom/bumptech/glide/load/engine/I;Lcom/bumptech/glide/request/h;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->x:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/I;->d(I)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/bumptech/glide/load/engine/D;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/D;-><init>(Lcom/bumptech/glide/load/engine/I;Lcom/bumptech/glide/request/h;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/I;->A:Z

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x0

    .line 51
    :goto_0
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    .line 52
    .line 53
    invoke-static {p1, v1}, LX/l;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :goto_1
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    monitor-exit p0

    .line 60
    throw p1
.end method

.method final b(Lcom/bumptech/glide/request/h;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->y:Lcom/bumptech/glide/load/engine/N;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/I;->u:Lcom/bumptech/glide/load/DataSource;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/I;->B:Z

    .line 6
    .line 7
    check-cast p1, Lcom/bumptech/glide/request/i;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/bumptech/glide/request/i;->q(Lcom/bumptech/glide/load/engine/V;Lcom/bumptech/glide/load/DataSource;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    new-instance v0, Lcom/bumptech/glide/load/engine/f;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/f;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method final c()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->e:LY/i;

    .line 3
    .line 4
    invoke-virtual {v0}, LY/i;->c()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/I;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "Not yet complete!"

    .line 12
    .line 13
    invoke-static {v1, v0}, LX/l;->a(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 28
    .line 29
    invoke-static {v2, v1}, LX/l;->a(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->y:Lcom/bumptech/glide/load/engine/N;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/I;->l()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/N;->g()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw v0
.end method

.method final declared-synchronized d(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/I;->f()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "Not yet complete!"

    .line 7
    .line 8
    invoke-static {v1, v0}, LX/l;->a(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/I;->y:Lcom/bumptech/glide/load/engine/N;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/N;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method final declared-synchronized e(LE/e;ZZZZ)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/I;->o:LE/e;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/I;->p:Z

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/I;->q:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/I;->r:Z

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/I;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method final g()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->e:LY/i;

    .line 3
    .line 4
    invoke-virtual {v0}, LY/i;->c()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->A:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/I;->l()V

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->d:Lcom/bumptech/glide/load/engine/H;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/H;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->x:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->x:Z

    .line 30
    .line 31
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/I;->o:LE/e;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/I;->d:Lcom/bumptech/glide/load/engine/H;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/H;->g()Lcom/bumptech/glide/load/engine/H;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/H;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    add-int/2addr v3, v0

    .line 44
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/engine/I;->d(I)V

    .line 45
    .line 46
    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->i:Lcom/bumptech/glide/load/engine/J;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    check-cast v0, Lcom/bumptech/glide/load/engine/C;

    .line 52
    .line 53
    invoke-virtual {v0, p0, v1, v3}, Lcom/bumptech/glide/load/engine/C;->f(Lcom/bumptech/glide/load/engine/I;LE/e;Lcom/bumptech/glide/load/engine/N;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/H;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/bumptech/glide/load/engine/G;

    .line 71
    .line 72
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/G;->b:Ljava/util/concurrent/Executor;

    .line 73
    .line 74
    new-instance v3, Lcom/bumptech/glide/load/engine/D;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/G;->a:Lcom/bumptech/glide/request/h;

    .line 77
    .line 78
    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/D;-><init>(Lcom/bumptech/glide/load/engine/I;Lcom/bumptech/glide/request/h;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/I;->c()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v1, "Already failed once"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v1, "Received an exception without any callbacks to notify"

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw v0
.end method

.method final h()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->e:LY/i;

    .line 3
    .line 4
    invoke-virtual {v0}, LY/i;->c()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->A:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->t:Lcom/bumptech/glide/load/engine/V;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/V;->d()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/I;->l()V

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->d:Lcom/bumptech/glide/load/engine/H;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/H;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->v:Z

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->h:Lcom/bumptech/glide/load/engine/F;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/I;->t:Lcom/bumptech/glide/load/engine/V;

    .line 36
    .line 37
    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/I;->p:Z

    .line 38
    .line 39
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/I;->o:LE/e;

    .line 40
    .line 41
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/I;->f:Lcom/bumptech/glide/load/engine/M;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/bumptech/glide/load/engine/N;

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    move-object v1, v0

    .line 50
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/N;-><init>(Lcom/bumptech/glide/load/engine/V;ZZLE/e;Lcom/bumptech/glide/load/engine/M;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/I;->y:Lcom/bumptech/glide/load/engine/N;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->v:Z

    .line 57
    .line 58
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/I;->d:Lcom/bumptech/glide/load/engine/H;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/H;->g()Lcom/bumptech/glide/load/engine/H;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/H;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/2addr v2, v0

    .line 69
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/engine/I;->d(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->o:LE/e;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/I;->y:Lcom/bumptech/glide/load/engine/N;

    .line 75
    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/I;->i:Lcom/bumptech/glide/load/engine/J;

    .line 78
    .line 79
    check-cast v3, Lcom/bumptech/glide/load/engine/C;

    .line 80
    .line 81
    invoke-virtual {v3, p0, v0, v2}, Lcom/bumptech/glide/load/engine/C;->f(Lcom/bumptech/glide/load/engine/I;LE/e;Lcom/bumptech/glide/load/engine/N;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/H;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/bumptech/glide/load/engine/G;

    .line 99
    .line 100
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/G;->b:Ljava/util/concurrent/Executor;

    .line 101
    .line 102
    new-instance v3, Lcom/bumptech/glide/load/engine/E;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/G;->a:Lcom/bumptech/glide/request/h;

    .line 105
    .line 106
    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/E;-><init>(Lcom/bumptech/glide/load/engine/I;Lcom/bumptech/glide/request/h;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/I;->c()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    const-string v1, "Already have resource"

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string v1, "Received a resource without any callbacks to notify"

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    throw v0
.end method

.method public final i()LY/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->e:LY/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Lcom/bumptech/glide/load/engine/V;Lcom/bumptech/glide/load/DataSource;Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/I;->t:Lcom/bumptech/glide/load/engine/V;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/I;->u:Lcom/bumptech/glide/load/DataSource;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/I;->B:Z

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/I;->h()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method final declared-synchronized m(Lcom/bumptech/glide/request/h;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->e:LY/i;

    .line 3
    .line 4
    invoke-virtual {v0}, LY/i;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->d:Lcom/bumptech/glide/load/engine/H;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/H;->h(Lcom/bumptech/glide/request/h;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/I;->d:Lcom/bumptech/glide/load/engine/H;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/H;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/I;->f()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->A:Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/I;->z:Lcom/bumptech/glide/load/engine/q;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/q;->j()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/I;->i:Lcom/bumptech/glide/load/engine/J;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/I;->o:LE/e;

    .line 38
    .line 39
    check-cast p1, Lcom/bumptech/glide/load/engine/C;

    .line 40
    .line 41
    invoke-virtual {p1, v1, p0}, Lcom/bumptech/glide/load/engine/C;->e(LE/e;Lcom/bumptech/glide/load/engine/I;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/I;->v:Z

    .line 45
    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/I;->x:Z

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/I;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/I;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :cond_3
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    throw p1
.end method

.method public final n(Lcom/bumptech/glide/load/engine/q;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->l:LI/h;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->r:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->m:LI/h;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->k:LI/h;

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, p1}, LI/h;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final declared-synchronized o(Lcom/bumptech/glide/load/engine/q;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/I;->z:Lcom/bumptech/glide/load/engine/q;

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/q;->y()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->j:LI/h;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->q:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->l:LI/h;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/I;->r:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->m:LI/h;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/I;->k:LI/h;

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, p1}, LI/h;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method
