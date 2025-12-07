.class public final Lcom/bumptech/glide/load/engine/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/I;

.field private final b:Lcom/bumptech/glide/request/h;

.field final synthetic c:Lcom/bumptech/glide/load/engine/C;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/C;Lcom/bumptech/glide/request/h;Lcom/bumptech/glide/load/engine/I;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/B;->c:Lcom/bumptech/glide/load/engine/C;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/B;->b:Lcom/bumptech/glide/request/h;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/B;->a:Lcom/bumptech/glide/load/engine/I;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->c:Lcom/bumptech/glide/load/engine/C;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->a:Lcom/bumptech/glide/load/engine/I;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/B;->b:Lcom/bumptech/glide/request/h;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/I;->m(Lcom/bumptech/glide/request/h;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method
