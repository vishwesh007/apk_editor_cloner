.class final Lz0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/g;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Lz0/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lz0/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz0/f;->b:Ljava/lang/Object;

    iput-object p1, p0, Lz0/f;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lz0/f;->c:Lz0/b;

    return-void
.end method

.method static bridge synthetic b(Lz0/f;)Lz0/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lz0/f;->c:Lz0/b;

    return-object p0
.end method

.method static bridge synthetic c(Lz0/f;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lz0/f;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/core/view/accessibility/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz0/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lz0/f;->c:Lz0/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lz0/f;->a:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    new-instance v1, Lz0/e;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lz0/e;-><init>(Lz0/f;Landroidx/core/view/accessibility/n;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method
