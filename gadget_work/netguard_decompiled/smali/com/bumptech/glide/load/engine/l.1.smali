.class final Lcom/bumptech/glide/load/engine/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/ArrayList;

.field private c:Lcom/bumptech/glide/k;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Class;

.field private h:Lcom/bumptech/glide/load/engine/A;

.field private i:LE/i;

.field private j:Ljava/util/Map;

.field private k:Ljava/lang/Class;

.field private l:Z

.field private m:Z

.field private n:LE/e;

.field private o:Lcom/bumptech/glide/Priority;

.field private p:Lcom/bumptech/glide/load/engine/v;

.field private q:Z

.field private r:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->n:LE/e;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->g:Ljava/lang/Class;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->k:Ljava/lang/Class;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->i:LE/i;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->o:Lcom/bumptech/glide/Priority;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->j:Ljava/util/Map;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->p:Lcom/bumptech/glide/load/engine/v;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->l:Z

    .line 27
    .line 28
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->m:Z

    .line 34
    .line 35
    return-void
.end method

.method final b()LG/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->b()LG/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final c()Ljava/util/ArrayList;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->m:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->m:Z

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/l;->g()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v4, v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, LJ/F;

    .line 30
    .line 31
    iget-object v6, v5, LJ/F;->a:LE/e;

    .line 32
    .line 33
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    iget-object v6, v5, LJ/F;->a:LE/e;

    .line 40
    .line 41
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    const/4 v6, 0x0

    .line 45
    :goto_1
    iget-object v7, v5, LJ/F;->b:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-ge v6, v8, :cond_2

    .line 52
    .line 53
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-nez v8, :cond_1

    .line 62
    .line 63
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-object v1
.end method

.method final d()LH/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->h:Lcom/bumptech/glide/load/engine/A;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/A;->a()LH/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final e()Lcom/bumptech/glide/load/engine/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->p:Lcom/bumptech/glide/load/engine/v;

    .line 2
    .line 3
    return-object v0
.end method

.method final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/l;->f:I

    .line 2
    .line 3
    return v0
.end method

.method final g()Ljava/util/ArrayList;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->l:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->l:Z

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->i()Lcom/bumptech/glide/q;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l;->d:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/q;->g(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    if-ge v3, v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, LJ/G;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/l;->d:Ljava/lang/Object;

    .line 39
    .line 40
    iget v6, p0, Lcom/bumptech/glide/load/engine/l;->e:I

    .line 41
    .line 42
    iget v7, p0, Lcom/bumptech/glide/load/engine/l;->f:I

    .line 43
    .line 44
    iget-object v8, p0, Lcom/bumptech/glide/load/engine/l;->i:LE/i;

    .line 45
    .line 46
    invoke-interface {v4, v5, v6, v7, v8}, LJ/G;->a(Ljava/lang/Object;IILE/i;)LJ/F;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-object v1
.end method

.method final h(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/T;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->i()Lcom/bumptech/glide/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->g:Ljava/lang/Class;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l;->k:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1, v2}, Lcom/bumptech/glide/q;->f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/T;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method final i()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->d:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final j(Ljava/io/File;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->i()Lcom/bumptech/glide/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/q;->g(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method final k()LE/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->i:LE/i;

    .line 2
    .line 3
    return-object v0
.end method

.method final l()Lcom/bumptech/glide/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->o:Lcom/bumptech/glide/Priority;

    .line 2
    .line 3
    return-object v0
.end method

.method final m()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->i()Lcom/bumptech/glide/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l;->g:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/l;->k:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/q;->h(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method final n(Lcom/bumptech/glide/load/engine/V;)LE/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->i()Lcom/bumptech/glide/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/q;->i(Lcom/bumptech/glide/load/engine/V;)LE/k;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method final o(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->i()Lcom/bumptech/glide/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/q;->j(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method final p()LE/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->n:LE/e;

    .line 2
    .line 3
    return-object v0
.end method

.method final q(Ljava/lang/Object;)LE/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->i()Lcom/bumptech/glide/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/q;->k(Ljava/lang/Object;)LE/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method final r()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->k:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method final s(Ljava/lang/Class;)LE/l;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->j:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, LE/l;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->j:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, LE/l;

    .line 50
    .line 51
    :cond_1
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->j:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->q:Z

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "Missing transformation for "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_3
    :goto_0
    invoke-static {}, LL/g;->c()LL/g;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_4
    return-object v0
.end method

.method final t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/l;->e:I

    .line 2
    .line 3
    return v0
.end method

.method final u(Lcom/bumptech/glide/k;Ljava/lang/Object;LE/e;IILcom/bumptech/glide/load/engine/v;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;LE/i;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/A;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/l;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/l;->n:LE/e;

    .line 6
    .line 7
    iput p4, p0, Lcom/bumptech/glide/load/engine/l;->e:I

    .line 8
    .line 9
    iput p5, p0, Lcom/bumptech/glide/load/engine/l;->f:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/l;->p:Lcom/bumptech/glide/load/engine/v;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/l;->g:Ljava/lang/Class;

    .line 14
    .line 15
    iput-object p14, p0, Lcom/bumptech/glide/load/engine/l;->h:Lcom/bumptech/glide/load/engine/A;

    .line 16
    .line 17
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/l;->k:Ljava/lang/Class;

    .line 18
    .line 19
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/l;->o:Lcom/bumptech/glide/Priority;

    .line 20
    .line 21
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/l;->i:LE/i;

    .line 22
    .line 23
    iput-object p11, p0, Lcom/bumptech/glide/load/engine/l;->j:Ljava/util/Map;

    .line 24
    .line 25
    iput-boolean p12, p0, Lcom/bumptech/glide/load/engine/l;->q:Z

    .line 26
    .line 27
    iput-boolean p13, p0, Lcom/bumptech/glide/load/engine/l;->r:Z

    .line 28
    .line 29
    return-void
.end method

.method final v(Lcom/bumptech/glide/load/engine/V;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->c:Lcom/bumptech/glide/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->i()Lcom/bumptech/glide/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/q;->l(Lcom/bumptech/glide/load/engine/V;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->r:Z

    .line 2
    .line 3
    return v0
.end method
