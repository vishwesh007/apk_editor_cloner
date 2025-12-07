.class final Lcom/bumptech/glide/load/engine/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/V;
.implements LY/e;


# static fields
.field private static final h:Landroidx/core/util/f;


# instance fields
.field private final d:LY/i;

.field private e:Lcom/bumptech/glide/load/engine/V;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/L;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/L;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-static {v1, v0}, LY/g;->b(ILY/c;)Landroidx/core/util/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/bumptech/glide/load/engine/U;->h:Landroidx/core/util/f;

    .line 13
    .line 14
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LY/i;->a()LY/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/U;->d:LY/i;

    .line 9
    .line 10
    return-void
.end method

.method static a(Lcom/bumptech/glide/load/engine/V;)Lcom/bumptech/glide/load/engine/U;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/U;->h:Landroidx/core/util/f;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/core/util/f;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bumptech/glide/load/engine/U;

    .line 8
    .line 9
    invoke-static {v0}, LX/l;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/U;->g:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/U;->f:Z

    .line 17
    .line 18
    iput-object p0, v0, Lcom/bumptech/glide/load/engine/U;->e:Lcom/bumptech/glide/load/engine/V;

    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/U;->e:Lcom/bumptech/glide/load/engine/V;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/V;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/U;->e:Lcom/bumptech/glide/load/engine/V;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/V;->c()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/U;->d:LY/i;

    .line 3
    .line 4
    invoke-virtual {v0}, LY/i;->c()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/U;->g:Z

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/U;->f:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/U;->e:Lcom/bumptech/glide/load/engine/V;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/V;->d()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/U;->e:Lcom/bumptech/glide/load/engine/V;

    .line 21
    .line 22
    sget-object v0, Lcom/bumptech/glide/load/engine/U;->h:Landroidx/core/util/f;

    .line 23
    .line 24
    invoke-interface {v0, p0}, Landroidx/core/util/f;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :cond_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method

.method final declared-synchronized e()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/U;->d:LY/i;

    .line 3
    .line 4
    invoke-virtual {v0}, LY/i;->c()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/U;->f:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/U;->f:Z

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/U;->g:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/U;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :cond_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "Already unlocked"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0

    .line 33
    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/U;->e:Lcom/bumptech/glide/load/engine/V;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/V;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final i()LY/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/U;->d:LY/i;

    .line 2
    .line 3
    return-object v0
.end method
