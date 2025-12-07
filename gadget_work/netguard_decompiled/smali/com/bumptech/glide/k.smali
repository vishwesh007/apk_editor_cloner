.class public final Lcom/bumptech/glide/k;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field static final k:Lcom/bumptech/glide/b;


# instance fields
.field private final a:LG/b;

.field private final b:LX/k;

.field private final c:LE/d;

.field private final d:Lcom/bumptech/glide/c;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/Map;

.field private final g:Lcom/bumptech/glide/load/engine/C;

.field private final h:Lcom/bumptech/glide/m;

.field private final i:I

.field private j:Lcom/bumptech/glide/request/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/k;->k:Lcom/bumptech/glide/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LG/b;LX/k;LE/d;Lcom/bumptech/glide/c;Landroidx/collection/b;Ljava/util/List;Lcom/bumptech/glide/load/engine/C;Lcom/bumptech/glide/m;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/k;->a:LG/b;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bumptech/glide/k;->c:LE/d;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bumptech/glide/k;->d:Lcom/bumptech/glide/c;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/bumptech/glide/k;->e:Ljava/util/List;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/bumptech/glide/k;->f:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/load/engine/C;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/bumptech/glide/k;->h:Lcom/bumptech/glide/m;

    .line 21
    .line 22
    iput p10, p0, Lcom/bumptech/glide/k;->i:I

    .line 23
    .line 24
    invoke-static {p3}, LX/l;->c(LX/k;)LX/k;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/k;->b:LX/k;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Ljava/lang/Class;)LU/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/k;->c:LE/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-class v0, Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance p2, LU/b;

    .line 15
    .line 16
    invoke-direct {p2, p1}, LU/b;-><init>(Landroid/widget/ImageView;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance p2, LU/d;

    .line 29
    .line 30
    invoke-direct {p2, p1}, LU/d;-><init>(Landroid/widget/ImageView;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-object p2

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Unhandled class: "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, ", try .as*(Class).transcode(ResourceTranscoder)"

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public final b()LG/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/k;->a:LG/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/k;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized d()Lcom/bumptech/glide/request/g;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/k;->j:Lcom/bumptech/glide/request/g;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/k;->d:Lcom/bumptech/glide/c;

    .line 7
    .line 8
    check-cast v0, Lcom/bumptech/glide/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/bumptech/glide/request/g;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->lock()Lcom/bumptech/glide/request/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/bumptech/glide/request/g;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/bumptech/glide/k;->j:Lcom/bumptech/glide/request/g;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/k;->j:Lcom/bumptech/glide/request/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method

.method public final e(Ljava/lang/Class;)Lcom/bumptech/glide/y;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/k;->f:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/bumptech/glide/y;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Class;

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/bumptech/glide/y;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-nez v1, :cond_2

    .line 51
    .line 52
    sget-object v1, Lcom/bumptech/glide/k;->k:Lcom/bumptech/glide/b;

    .line 53
    .line 54
    :cond_2
    return-object v1
.end method

.method public final f()Lcom/bumptech/glide/load/engine/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/load/engine/C;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lcom/bumptech/glide/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/k;->h:Lcom/bumptech/glide/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/k;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()Lcom/bumptech/glide/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/k;->b:LX/k;

    .line 2
    .line 3
    invoke-interface {v0}, LX/k;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bumptech/glide/q;

    .line 8
    .line 9
    return-object v0
.end method
