.class final Lcom/bumptech/glide/load/engine/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LH/g;

.field private volatile b:LH/b;


# direct methods
.method constructor <init>(LH/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/A;->a:LH/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()LH/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/A;->b:LH/b;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/A;->b:LH/b;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/A;->a:LH/g;

    .line 11
    .line 12
    invoke-virtual {v0}, LH/g;->a()LH/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/A;->b:LH/b;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/A;->b:LH/b;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Landroidx/emoji2/text/d;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, v1}, Landroidx/emoji2/text/d;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/A;->b:LH/b;

    .line 29
    .line 30
    :cond_1
    monitor-exit p0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0

    .line 35
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/A;->b:LH/b;

    .line 36
    .line 37
    return-object v0
.end method
