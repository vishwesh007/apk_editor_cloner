.class final LQ/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LD/a;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/ArrayList;

.field final d:Lcom/bumptech/glide/x;

.field private final e:LG/g;

.field private f:Z

.field private g:Z

.field private h:Lcom/bumptech/glide/u;

.field private i:LQ/i;

.field private j:Z

.field private k:LQ/i;

.field private l:Landroid/graphics/Bitmap;

.field private m:LE/l;

.field private n:LQ/i;

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/d;LD/e;IILL/g;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/d;->d()LG/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/bumptech/glide/d;->f()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/bumptech/glide/d;->m(Landroid/content/Context;)Lcom/bumptech/glide/x;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/bumptech/glide/d;->f()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/bumptech/glide/d;->m(Landroid/content/Context;)Lcom/bumptech/glide/x;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/bumptech/glide/x;->asBitmap()Lcom/bumptech/glide/u;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v2, Lcom/bumptech/glide/load/engine/v;->a:Lcom/bumptech/glide/load/engine/v;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/bumptech/glide/request/g;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/request/g;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/a;->useAnimationPool(Z)Lcom/bumptech/glide/request/a;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/bumptech/glide/request/g;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/a;->skipMemoryCache(Z)Lcom/bumptech/glide/request/a;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/bumptech/glide/request/g;

    .line 43
    .line 44
    invoke-virtual {v2, p3, p4}, Lcom/bumptech/glide/request/a;->override(II)Lcom/bumptech/glide/request/a;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/u;->apply(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/u;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance p3, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p3, p0, LQ/l;->c:Ljava/util/ArrayList;

    .line 61
    .line 62
    iput-object v1, p0, LQ/l;->d:Lcom/bumptech/glide/x;

    .line 63
    .line 64
    new-instance p3, Landroid/os/Handler;

    .line 65
    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    new-instance v1, LQ/k;

    .line 71
    .line 72
    invoke-direct {v1, p0}, LQ/k;-><init>(LQ/l;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, LQ/l;->e:LG/g;

    .line 79
    .line 80
    iput-object p3, p0, LQ/l;->b:Landroid/os/Handler;

    .line 81
    .line 82
    iput-object p1, p0, LQ/l;->h:Lcom/bumptech/glide/u;

    .line 83
    .line 84
    iput-object p2, p0, LQ/l;->a:LD/a;

    .line 85
    .line 86
    invoke-virtual {p0, p5, p6}, LQ/l;->l(LE/l;Landroid/graphics/Bitmap;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private j()V
    .locals 6

    .line 1
    iget-boolean v0, p0, LQ/l;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, LQ/l;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, LQ/l;->n:LQ/i;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, LQ/l;->n:LQ/i;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, LQ/l;->k(LQ/i;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, LQ/l;->g:Z

    .line 23
    .line 24
    iget-object v0, p0, LQ/l;->a:LD/a;

    .line 25
    .line 26
    invoke-interface {v0}, LD/a;->f()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    int-to-long v4, v1

    .line 35
    add-long/2addr v2, v4

    .line 36
    invoke-interface {v0}, LD/a;->d()V

    .line 37
    .line 38
    .line 39
    new-instance v1, LQ/i;

    .line 40
    .line 41
    iget-object v4, p0, LQ/l;->b:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-interface {v0}, LD/a;->a()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-direct {v1, v4, v5, v2, v3}, LQ/i;-><init>(Landroid/os/Handler;IJ)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, LQ/l;->k:LQ/i;

    .line 51
    .line 52
    iget-object v1, p0, LQ/l;->h:Lcom/bumptech/glide/u;

    .line 53
    .line 54
    new-instance v2, LW/b;

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-direct {v2, v3}, LW/b;-><init>(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Lcom/bumptech/glide/request/g;->signatureOf(LE/e;)Lcom/bumptech/glide/request/g;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/u;->apply(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/u;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/u;->load(Ljava/lang/Object;)Lcom/bumptech/glide/u;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p0, LQ/l;->k:LQ/i;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/u;->into(LU/g;)LU/g;

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 1
    iget-object v0, p0, LQ/l;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LQ/l;->l:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, LQ/l;->e:LG/g;

    .line 12
    .line 13
    invoke-interface {v2, v0}, LG/g;->c(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, LQ/l;->l:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, LQ/l;->f:Z

    .line 20
    .line 21
    iget-object v0, p0, LQ/l;->i:LQ/i;

    .line 22
    .line 23
    iget-object v2, p0, LQ/l;->d:Lcom/bumptech/glide/x;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/x;->clear(LU/g;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, LQ/l;->i:LQ/i;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, LQ/l;->k:LQ/i;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/x;->clear(LU/g;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, LQ/l;->k:LQ/i;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, LQ/l;->n:LQ/i;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/x;->clear(LU/g;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, LQ/l;->n:LQ/i;

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, LQ/l;->a:LD/a;

    .line 51
    .line 52
    invoke-interface {v0}, LD/a;->clear()V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, LQ/l;->j:Z

    .line 57
    .line 58
    return-void
.end method

.method final b()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, LQ/l;->a:LD/a;

    .line 2
    .line 3
    invoke-interface {v0}, LD/a;->g()Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method final c()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, LQ/l;->i:LQ/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LQ/i;->i()Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, LQ/l;->l:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method final d()I
    .locals 1

    .line 1
    iget-object v0, p0, LQ/l;->i:LQ/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, LQ/i;->e:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    return v0
.end method

.method final e()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, LQ/l;->l:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method final f()I
    .locals 1

    .line 1
    iget-object v0, p0, LQ/l;->a:LD/a;

    .line 2
    .line 3
    invoke-interface {v0}, LD/a;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final g()I
    .locals 1

    .line 1
    iget v0, p0, LQ/l;->q:I

    .line 2
    .line 3
    return v0
.end method

.method final h()I
    .locals 2

    .line 1
    iget-object v0, p0, LQ/l;->a:LD/a;

    .line 2
    .line 3
    invoke-interface {v0}, LD/a;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, LQ/l;->o:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method final i()I
    .locals 1

    .line 1
    iget v0, p0, LQ/l;->p:I

    .line 2
    .line 3
    return v0
.end method

.method final k(LQ/i;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LQ/l;->g:Z

    .line 3
    .line 4
    iget-boolean v0, p0, LQ/l;->j:Z

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iget-object v2, p0, LQ/l;->b:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean v0, p0, LQ/l;->f:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iput-object p1, p0, LQ/l;->n:LQ/i;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p1}, LQ/i;->i()Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, LQ/l;->l:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v3, p0, LQ/l;->e:LG/g;

    .line 37
    .line 38
    invoke-interface {v3, v0}, LG/g;->c(Landroid/graphics/Bitmap;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, LQ/l;->l:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, LQ/l;->i:LQ/i;

    .line 45
    .line 46
    iput-object p1, p0, LQ/l;->i:LQ/i;

    .line 47
    .line 48
    iget-object p1, p0, LQ/l;->c:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 55
    .line 56
    if-ltz v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, LQ/j;

    .line 63
    .line 64
    invoke-interface {v4}, LQ/j;->a()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-direct {p0}, LQ/l;->j()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method final l(LE/l;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-static {p1}, LX/l;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LQ/l;->m:LE/l;

    .line 5
    .line 6
    invoke-static {p2}, LX/l;->b(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, LQ/l;->l:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget-object v0, p0, LQ/l;->h:Lcom/bumptech/glide/u;

    .line 12
    .line 13
    new-instance v1, Lcom/bumptech/glide/request/g;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/request/a;->transform(LE/l;)Lcom/bumptech/glide/request/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/u;->apply(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/u;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, LQ/l;->h:Lcom/bumptech/glide/u;

    .line 27
    .line 28
    invoke-static {p2}, LX/s;->c(Landroid/graphics/Bitmap;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, LQ/l;->o:I

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, LQ/l;->p:I

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, LQ/l;->q:I

    .line 45
    .line 46
    return-void
.end method

.method final m(LQ/j;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LQ/l;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, LQ/l;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean p1, p0, LQ/l;->f:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, LQ/l;->f:Z

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, LQ/l;->j:Z

    .line 32
    .line 33
    invoke-direct {p0}, LQ/l;->j()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "Cannot subscribe twice in a row"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "Cannot subscribe to a cleared frame loader"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method final n(LQ/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, LQ/l;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, LQ/l;->f:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method
