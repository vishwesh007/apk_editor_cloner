.class final Lz0/j;
.super Landroidx/core/view/accessibility/n;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lz0/h;

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/view/accessibility/n;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz0/j;->a:Ljava/lang/Object;

    new-instance v0, Lz0/h;

    invoke-direct {v0}, Lz0/h;-><init>()V

    iput-object v0, p0, Lz0/j;->b:Lz0/h;

    return-void
.end method


# virtual methods
.method public final b(Lo0/r;Lz0/b;)Landroidx/core/view/accessibility/n;
    .locals 1

    .line 1
    new-instance v0, Lz0/f;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lz0/f;-><init>(Ljava/util/concurrent/Executor;Lz0/b;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lz0/j;->b:Lz0/h;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lz0/h;->a(Lz0/f;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lz0/j;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-boolean p2, p0, Lz0/j;->c:Z

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    monitor-exit p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, p0, Lz0/j;->b:Lz0/h;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lz0/h;->b(Landroidx/core/view/accessibility/n;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-object p0

    .line 27
    :catchall_0
    move-exception p2

    .line 28
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p2
.end method

.method public final c(Lz0/b;)Landroidx/core/view/accessibility/n;
    .locals 2

    .line 1
    sget-object v0, Lz0/d;->a:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lz0/f;

    .line 4
    .line 5
    invoke-direct {v1, v0, p1}, Lz0/f;-><init>(Ljava/util/concurrent/Executor;Lz0/b;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lz0/j;->b:Lz0/h;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lz0/h;->a(Lz0/f;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lz0/j;->a:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-boolean v0, p0, Lz0/j;->c:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    monitor-exit p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Lz0/j;->b:Lz0/h;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lz0/h;->b(Landroidx/core/view/accessibility/n;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object p0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public final f()Ljava/lang/Exception;
    .locals 2

    .line 1
    iget-object v0, p0, Lz0/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lz0/j;->e:Ljava/lang/Exception;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final g()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lz0/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lz0/j;->c:Z

    .line 5
    .line 6
    const-string v2, "Task is not yet complete"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lp0/s;->d(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lz0/j;->e:Ljava/lang/Exception;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lz0/j;->d:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :cond_0
    new-instance v2, Landroidx/fragment/app/s;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Landroidx/fragment/app/s;-><init>(Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    throw v2

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method public final h()V
    .locals 0

    .line 1
    return-void
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lz0/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lz0/j;->c:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lz0/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lz0/j;->c:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lz0/j;->e:Ljava/lang/Exception;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    :cond_0
    monitor-exit v0

    .line 15
    return v2

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz0/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lz0/j;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lz0/j;->c:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lz0/j;->d:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lz0/j;->b:Lz0/h;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lz0/h;->b(Landroidx/core/view/accessibility/n;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_1
    invoke-static {p0}, Lz0/a;->a(Landroidx/core/view/accessibility/n;)Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    throw v1

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v1
.end method

.method public final u(Ljava/lang/Exception;)Z
    .locals 2

    .line 1
    const-string v0, "Exception must not be null"

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lz0/j;->a:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v0, p0, Lz0/j;->c:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lz0/j;->c:Z

    .line 17
    .line 18
    iput-object p1, p0, Lz0/j;->e:Ljava/lang/Exception;

    .line 19
    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, p0, Lz0/j;->b:Lz0/h;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lz0/h;->b(Landroidx/core/view/accessibility/n;)V

    .line 24
    .line 25
    .line 26
    return v0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final v(Ljava/lang/Boolean;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lz0/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lz0/j;->c:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lz0/j;->c:Z

    .line 13
    .line 14
    iput-object p1, p0, Lz0/j;->d:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object p1, p0, Lz0/j;->b:Lz0/h;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lz0/h;->b(Landroidx/core/view/accessibility/n;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method
