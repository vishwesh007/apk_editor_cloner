.class public Lcom/bumptech/glide/manager/I;
.super Landroidx/fragment/app/u;
.source "SourceFile"


# instance fields
.field private final Q:Lcom/bumptech/glide/manager/a;

.field private final R:Lcom/bumptech/glide/manager/t;

.field private final S:Ljava/util/HashSet;

.field private T:Lcom/bumptech/glide/manager/I;

.field private U:Lcom/bumptech/glide/x;

.field private V:Landroidx/fragment/app/u;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/manager/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/bumptech/glide/manager/p;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, v2, p0}, Lcom/bumptech/glide/manager/p;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/bumptech/glide/manager/I;->R:Lcom/bumptech/glide/manager/t;

    .line 16
    .line 17
    new-instance v1, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/bumptech/glide/manager/I;->S:Ljava/util/HashSet;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/bumptech/glide/manager/I;->Q:Lcom/bumptech/glide/manager/a;

    .line 25
    .line 26
    return-void
.end method

.method private h0(Landroid/content/Context;Landroidx/fragment/app/T;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/I;->T:Lcom/bumptech/glide/manager/I;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/manager/I;->S:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/manager/I;->T:Lcom/bumptech/glide/manager/I;

    .line 12
    .line 13
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/d;->b(Landroid/content/Context;)Lcom/bumptech/glide/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/bumptech/glide/d;->i()Lcom/bumptech/glide/manager/s;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/manager/s;->g(Landroidx/fragment/app/T;)Lcom/bumptech/glide/manager/I;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/manager/I;->T:Lcom/bumptech/glide/manager/I;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/fragment/app/u;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/bumptech/glide/manager/I;->T:Lcom/bumptech/glide/manager/I;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/bumptech/glide/manager/I;->S:Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/u;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/manager/I;->Q:Lcom/bumptech/glide/manager/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->d()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method final d0()Ljava/util/Set;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/I;->T:Lcom/bumptech/glide/manager/I;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/u;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/manager/I;->S:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bumptech/glide/manager/I;->T:Lcom/bumptech/glide/manager/I;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/bumptech/glide/manager/I;->d0()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_7

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/bumptech/glide/manager/I;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/fragment/app/u;->j()Landroidx/fragment/app/u;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v3, v2, Lcom/bumptech/glide/manager/I;->V:Landroidx/fragment/app/u;

    .line 58
    .line 59
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/u;->j()Landroidx/fragment/app/u;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    iget-object v4, p0, Lcom/bumptech/glide/manager/I;->V:Landroidx/fragment/app/u;

    .line 67
    .line 68
    :goto_2
    invoke-virtual {v3}, Landroidx/fragment/app/u;->j()Landroidx/fragment/app/u;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    invoke-virtual {v5, v4}, Landroidx/fragment/app/u;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/u;->j()Landroidx/fragment/app/u;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    goto :goto_2

    .line 87
    :cond_6
    const/4 v3, 0x0

    .line 88
    :goto_3
    if-eqz v3, :cond_2

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method

.method final e0()Lcom/bumptech/glide/manager/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/I;->Q:Lcom/bumptech/glide/manager/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f0()Lcom/bumptech/glide/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/I;->U:Lcom/bumptech/glide/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g0()Lcom/bumptech/glide/manager/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/I;->R:Lcom/bumptech/glide/manager/t;

    .line 2
    .line 3
    return-object v0
.end method

.method final i0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/manager/I;->V:Landroidx/fragment/app/u;

    .line 3
    .line 4
    return-void
.end method

.method public final j0(Lcom/bumptech/glide/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/I;->U:Lcom/bumptech/glide/x;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/u;->q(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/u;->j()Landroidx/fragment/app/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/u;->j()Landroidx/fragment/app/u;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/u;->h()Landroidx/fragment/app/T;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x5

    .line 21
    const-string v1, "SupportRMFragment"

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string p1, "Unable to register fragment with root, ancestor detached"

    .line 32
    .line 33
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void

    .line 37
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->g()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {p0, v2, p1}, Lcom/bumptech/glide/manager/I;->h0(Landroid/content/Context;Landroidx/fragment/app/T;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const-string v0, "Unable to register fragment with root"

    .line 53
    .line 54
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/u;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/manager/I;->Q:Lcom/bumptech/glide/manager/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/manager/I;->T:Lcom/bumptech/glide/manager/I;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bumptech/glide/manager/I;->S:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/bumptech/glide/manager/I;->T:Lcom/bumptech/glide/manager/I;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/fragment/app/u;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "{parent="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/u;->j()Landroidx/fragment/app/u;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/I;->V:Landroidx/fragment/app/u;

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "}"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final u()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/u;->u()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/manager/I;->V:Landroidx/fragment/app/u;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/manager/I;->T:Lcom/bumptech/glide/manager/I;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bumptech/glide/manager/I;->S:Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/manager/I;->T:Lcom/bumptech/glide/manager/I;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/u;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/manager/I;->Q:Lcom/bumptech/glide/manager/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->b()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
