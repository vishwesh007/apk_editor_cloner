.class public final LQ/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LQ/d;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    iput-object v0, p0, LQ/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LG/g;LG/b;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LQ/d;->a:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, LQ/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, LQ/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, LX/q;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, LX/q;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2, p3}, LX/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, LX/q;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, LQ/d;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/collection/b;

    .line 26
    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object p2, p0, LQ/d;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p2, Landroidx/collection/b;

    .line 31
    .line 32
    invoke-virtual {p2, v0, v1}, Landroidx/collection/n;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Ljava/util/List;

    .line 37
    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object p1, p0, LQ/d;->a:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object p2

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p2
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, LQ/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LG/g;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, LG/g;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final c(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, LQ/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LG/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-array p1, p1, [B

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    check-cast v0, LG/b;

    .line 12
    .line 13
    const-class v1, [B

    .line 14
    .line 15
    invoke-interface {v0, p1, v1}, LG/b;->f(ILjava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, [B

    .line 20
    .line 21
    return-object p1
.end method

.method public final d(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, LQ/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LG/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-array p1, p1, [I

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    check-cast v0, LG/b;

    .line 12
    .line 13
    const-class v1, [I

    .line 14
    .line 15
    invoke-interface {v0, p1, v1}, LG/b;->f(ILjava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, [I

    .line 20
    .line 21
    return-object p1
.end method

.method public final e(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, LQ/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/collection/b;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, LQ/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroidx/collection/b;

    .line 9
    .line 10
    new-instance v2, LX/q;

    .line 11
    .line 12
    invoke-direct {v2, p1, p2, p3}, LX/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, p4}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public final f(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, LQ/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LG/g;

    .line 4
    .line 5
    invoke-interface {v0, p1}, LG/g;->c(Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g([B)V
    .locals 2

    .line 1
    iget-object v0, p0, LQ/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LG/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast v0, LG/b;

    .line 10
    .line 11
    invoke-interface {v0, p1}, LG/b;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final h([I)V
    .locals 2

    .line 1
    iget-object v0, p0, LQ/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LG/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast v0, LG/b;

    .line 10
    .line 11
    invoke-interface {v0, p1}, LG/b;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
