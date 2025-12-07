.class final Lcom/bumptech/glide/load/engine/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/bumptech/glide/request/h;

.field final synthetic e:Lcom/bumptech/glide/load/engine/I;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/I;Lcom/bumptech/glide/request/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/D;->e:Lcom/bumptech/glide/load/engine/I;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/D;->d:Lcom/bumptech/glide/request/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/D;->d:Lcom/bumptech/glide/request/h;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/request/i;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/request/i;->d()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/D;->e:Lcom/bumptech/glide/load/engine/I;

    .line 11
    .line 12
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/D;->e:Lcom/bumptech/glide/load/engine/I;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/I;->d:Lcom/bumptech/glide/load/engine/H;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/D;->d:Lcom/bumptech/glide/request/h;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/H;->f(Lcom/bumptech/glide/request/h;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/D;->e:Lcom/bumptech/glide/load/engine/I;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/D;->d:Lcom/bumptech/glide/request/h;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_2
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/I;->w:Lcom/bumptech/glide/load/engine/P;

    .line 33
    .line 34
    check-cast v3, Lcom/bumptech/glide/request/i;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/request/i;->o(Lcom/bumptech/glide/load/engine/P;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v2

    .line 41
    :try_start_3
    new-instance v3, Lcom/bumptech/glide/load/engine/f;

    .line 42
    .line 43
    invoke-direct {v3, v2}, Lcom/bumptech/glide/load/engine/f;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v3

    .line 47
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/D;->e:Lcom/bumptech/glide/load/engine/I;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/I;->c()V

    .line 50
    .line 51
    .line 52
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 54
    return-void

    .line 55
    :catchall_1
    move-exception v2

    .line 56
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 57
    :try_start_6
    throw v2

    .line 58
    :catchall_2
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 60
    throw v1
.end method
