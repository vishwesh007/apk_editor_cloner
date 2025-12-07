.class final Lcom/bumptech/glide/load/engine/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH/a;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LE/a;Ljava/lang/Object;LE/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE/a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, LE/i;

    .line 10
    .line 11
    invoke-interface {v0, v1, p1, v2}, LE/a;->a(Ljava/lang/Object;Ljava/io/File;LE/i;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->a:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method final c(Lcom/bumptech/glide/load/engine/A;LE/i;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/A;->a()LH/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, LE/e;

    .line 8
    .line 9
    new-instance v1, Lcom/bumptech/glide/load/engine/i;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, LE/k;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lcom/bumptech/glide/load/engine/U;

    .line 18
    .line 19
    invoke-direct {v1, v2, v3, p2}, Lcom/bumptech/glide/load/engine/i;-><init>(LE/a;Ljava/lang/Object;LE/i;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0, v1}, LH/b;->a(LE/e;LH/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lcom/bumptech/glide/load/engine/U;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/U;->e()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p2, Lcom/bumptech/glide/load/engine/U;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/U;->e()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/load/engine/U;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method final e(LE/e;LE/k;Lcom/bumptech/glide/load/engine/U;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/i;->c:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method
