.class public abstract Landroidx/fragment/app/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/util/ArrayList;

.field private E:Ljava/util/ArrayList;

.field private F:Ljava/util/ArrayList;

.field private G:Landroidx/fragment/app/X;

.field private H:Ljava/lang/Runnable;

.field private final a:Ljava/util/ArrayList;

.field private b:Z

.field private final c:Landroidx/fragment/app/c0;

.field d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private final f:Landroidx/fragment/app/F;

.field private g:Landroidx/activity/s;

.field private final h:Landroidx/activity/n;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/Map;

.field private k:Ljava/util/Map;

.field private final l:Landroidx/fragment/app/h;

.field private final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field n:I

.field private o:Landroidx/fragment/app/E;

.field private p:Landroidx/core/view/accessibility/n;

.field private q:Landroidx/fragment/app/u;

.field r:Landroidx/fragment/app/u;

.field private s:Landroidx/fragment/app/D;

.field private t:Landroidx/fragment/app/K;

.field private u:Landroidx/activity/result/d;

.field private v:Landroidx/activity/result/d;

.field private w:Landroidx/activity/result/d;

.field x:Ljava/util/ArrayDeque;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/fragment/app/c0;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/fragment/app/c0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 17
    .line 18
    new-instance v0, Landroidx/fragment/app/F;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroidx/fragment/app/F;-><init>(Landroidx/fragment/app/T;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/fragment/app/T;->f:Landroidx/fragment/app/F;

    .line 24
    .line 25
    new-instance v0, Landroidx/fragment/app/I;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroidx/fragment/app/I;-><init>(Landroidx/fragment/app/T;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/fragment/app/T;->h:Landroidx/activity/n;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/fragment/app/T;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Landroidx/fragment/app/T;->j:Ljava/util/Map;

    .line 49
    .line 50
    new-instance v0, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Landroidx/fragment/app/T;->k:Ljava/util/Map;

    .line 68
    .line 69
    new-instance v0, Landroidx/fragment/app/H;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/H;-><init>(Landroidx/fragment/app/T;I)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroidx/fragment/app/h;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/T;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Landroidx/fragment/app/T;->l:Landroidx/fragment/app/h;

    .line 81
    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Landroidx/fragment/app/T;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    .line 89
    const/4 v0, -0x1

    .line 90
    iput v0, p0, Landroidx/fragment/app/T;->n:I

    .line 91
    .line 92
    new-instance v0, Landroidx/fragment/app/J;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Landroidx/fragment/app/J;-><init>(Landroidx/fragment/app/T;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Landroidx/fragment/app/T;->s:Landroidx/fragment/app/D;

    .line 98
    .line 99
    new-instance v0, Landroidx/fragment/app/K;

    .line 100
    .line 101
    invoke-direct {v0}, Landroidx/fragment/app/K;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Landroidx/fragment/app/T;->t:Landroidx/fragment/app/K;

    .line 105
    .line 106
    new-instance v0, Ljava/util/ArrayDeque;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Landroidx/fragment/app/T;->x:Ljava/util/ArrayDeque;

    .line 112
    .line 113
    new-instance v0, Landroidx/fragment/app/p;

    .line 114
    .line 115
    invoke-direct {v0, p0}, Landroidx/fragment/app/p;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Landroidx/fragment/app/T;->H:Ljava/lang/Runnable;

    .line 119
    .line 120
    return-void
.end method

.method static A0(Landroidx/fragment/app/u;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "show: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/u;->y:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/u;->y:Z

    .line 33
    .line 34
    iget-boolean v0, p0, Landroidx/fragment/app/u;->H:Z

    .line 35
    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/fragment/app/u;->H:Z

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private B0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->j()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/b0;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/b0;->j()Landroidx/fragment/app/u;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-boolean v3, v2, Landroidx/fragment/app/u;->E:Z

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-boolean v3, p0, Landroidx/fragment/app/T;->b:Z

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Landroidx/fragment/app/T;->C:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    iput-boolean v3, v2, Landroidx/fragment/app/u;->E:Z

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/b0;->k()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method private C0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/T;->h:Landroidx/activity/n;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroidx/activity/n;->f(Z)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v0, p0, Landroidx/fragment/app/T;->h:Landroidx/activity/n;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-lez v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/fragment/app/T;->i0(Landroidx/fragment/app/u;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v2, 0x0

    .line 46
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/activity/n;->f(Z)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw v1
.end method

.method private E(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/T;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Landroidx/fragment/app/c0;->d(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/T;->l0(IZ)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/T;->h()Ljava/util/HashSet;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/fragment/app/k0;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/fragment/app/k0;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput-boolean v1, p0, Landroidx/fragment/app/T;->b:Z

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/fragment/app/T;->J(Z)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    iput-boolean v1, p0, Landroidx/fragment/app/T;->b:Z

    .line 45
    .line 46
    throw p1
.end method

.method private I(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/T;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/fragment/app/T;->B:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/E;->v()Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-ne v0, v1, :cond_5

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/T;->j0()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "Can not perform this action after onSaveInstanceState"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/T;->D:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    new-instance p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Landroidx/fragment/app/T;->D:Ljava/util/ArrayList;

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Landroidx/fragment/app/T;->E:Ljava/util/ArrayList;

    .line 79
    .line 80
    :cond_4
    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Landroidx/fragment/app/T;->b:Z

    .line 82
    .line 83
    return-void

    .line 84
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v0, "Must be called from main thread of fragment host"

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    const-string v0, "FragmentManager is already executing transactions"

    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1
.end method

.method private L(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    iget-boolean v5, v5, Landroidx/fragment/app/e0;->o:Z

    .line 2
    iget-object v6, v0, Landroidx/fragment/app/T;->F:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroidx/fragment/app/T;->F:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    iget-object v6, v0, Landroidx/fragment/app/T;->F:Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    invoke-virtual {v7}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v6, v0, Landroidx/fragment/app/T;->r:Landroidx/fragment/app/u;

    move v9, v3

    const/4 v10, 0x0

    :goto_1
    const/4 v12, 0x1

    if-ge v9, v4, :cond_12

    .line 7
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/fragment/app/a;

    .line 8
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_c

    .line 9
    iget-object v14, v0, Landroidx/fragment/app/T;->F:Ljava/util/ArrayList;

    const/4 v15, 0x0

    .line 10
    :goto_2
    iget-object v11, v13, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v15, v11, :cond_b

    .line 12
    iget-object v11, v13, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/d0;

    .line 13
    iget v8, v11, Landroidx/fragment/app/d0;->a:I

    if-eq v8, v12, :cond_a

    const/4 v12, 0x2

    const/16 v3, 0x9

    if-eq v8, v12, :cond_4

    const/4 v12, 0x3

    if-eq v8, v12, :cond_2

    const/4 v12, 0x6

    if-eq v8, v12, :cond_2

    const/4 v12, 0x7

    if-eq v8, v12, :cond_a

    const/16 v12, 0x8

    if-eq v8, v12, :cond_1

    goto :goto_3

    .line 14
    :cond_1
    iget-object v8, v13, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    new-instance v12, Landroidx/fragment/app/d0;

    invoke-direct {v12, v3, v6}, Landroidx/fragment/app/d0;-><init>(ILandroidx/fragment/app/u;)V

    invoke-virtual {v8, v15, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    .line 15
    iget-object v6, v11, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    goto :goto_3

    .line 16
    :cond_2
    iget-object v8, v11, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    iget-object v8, v11, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    if-ne v8, v6, :cond_3

    .line 18
    iget-object v6, v13, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    new-instance v11, Landroidx/fragment/app/d0;

    invoke-direct {v11, v3, v8}, Landroidx/fragment/app/d0;-><init>(ILandroidx/fragment/app/u;)V

    invoke-virtual {v6, v15, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v18, v7

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_3
    :goto_3
    move-object/from16 v18, v7

    goto/16 :goto_7

    .line 19
    :cond_4
    iget-object v8, v11, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    .line 20
    iget v12, v8, Landroidx/fragment/app/u;->w:I

    .line 21
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v3, v17

    const/16 v17, 0x0

    :goto_4
    if-ltz v3, :cond_8

    .line 22
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, Landroidx/fragment/app/u;

    move-object/from16 v18, v7

    .line 23
    iget v7, v2, Landroidx/fragment/app/u;->w:I

    if-ne v7, v12, :cond_7

    if-ne v2, v8, :cond_5

    move/from16 v19, v12

    const/16 v17, 0x1

    goto :goto_6

    :cond_5
    if-ne v2, v6, :cond_6

    .line 24
    iget-object v6, v13, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    new-instance v7, Landroidx/fragment/app/d0;

    move/from16 v19, v12

    const/16 v12, 0x9

    invoke-direct {v7, v12, v2}, Landroidx/fragment/app/d0;-><init>(ILandroidx/fragment/app/u;)V

    invoke-virtual {v6, v15, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    move/from16 v19, v12

    const/16 v12, 0x9

    .line 25
    :goto_5
    new-instance v7, Landroidx/fragment/app/d0;

    const/4 v12, 0x3

    invoke-direct {v7, v12, v2}, Landroidx/fragment/app/d0;-><init>(ILandroidx/fragment/app/u;)V

    .line 26
    iget v12, v11, Landroidx/fragment/app/d0;->c:I

    iput v12, v7, Landroidx/fragment/app/d0;->c:I

    .line 27
    iget v12, v11, Landroidx/fragment/app/d0;->e:I

    iput v12, v7, Landroidx/fragment/app/d0;->e:I

    .line 28
    iget v12, v11, Landroidx/fragment/app/d0;->d:I

    iput v12, v7, Landroidx/fragment/app/d0;->d:I

    .line 29
    iget v12, v11, Landroidx/fragment/app/d0;->f:I

    iput v12, v7, Landroidx/fragment/app/d0;->f:I

    .line 30
    iget-object v12, v13, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v15, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 31
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v15, v2

    goto :goto_6

    :cond_7
    move/from16 v19, v12

    :goto_6
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v2, p2

    move-object/from16 v7, v18

    move/from16 v12, v19

    goto :goto_4

    :cond_8
    move-object/from16 v18, v7

    if-eqz v17, :cond_9

    .line 32
    iget-object v2, v13, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    :goto_7
    const/4 v2, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x1

    .line 33
    iput v2, v11, Landroidx/fragment/app/d0;->a:I

    .line 34
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    move-object/from16 v18, v7

    const/4 v2, 0x1

    .line 35
    iget-object v3, v11, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v15, v2

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v7, v18

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v18, v7

    goto :goto_b

    :cond_c
    move-object/from16 v18, v7

    const/4 v2, 0x1

    .line 36
    iget-object v3, v0, Landroidx/fragment/app/T;->F:Ljava/util/ArrayList;

    .line 37
    iget-object v7, v13, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_9
    if-ltz v7, :cond_f

    .line 39
    iget-object v8, v13, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/d0;

    .line 40
    iget v11, v8, Landroidx/fragment/app/d0;->a:I

    if-eq v11, v2, :cond_e

    const/4 v2, 0x3

    if-eq v11, v2, :cond_d

    packed-switch v11, :pswitch_data_0

    goto :goto_a

    .line 41
    :pswitch_0
    iget-object v11, v8, Landroidx/fragment/app/d0;->g:Landroidx/lifecycle/l;

    iput-object v11, v8, Landroidx/fragment/app/d0;->h:Landroidx/lifecycle/l;

    goto :goto_a

    .line 42
    :pswitch_1
    iget-object v6, v8, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    goto :goto_a

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_a

    .line 43
    :cond_d
    :pswitch_3
    iget-object v8, v8, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    const/4 v2, 0x3

    .line 44
    :pswitch_4
    iget-object v8, v8, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v7, v7, -0x1

    const/4 v2, 0x1

    goto :goto_9

    :cond_f
    :goto_b
    if-nez v10, :cond_11

    .line 45
    iget-boolean v2, v13, Landroidx/fragment/app/e0;->g:Z

    if-eqz v2, :cond_10

    goto :goto_c

    :cond_10
    const/4 v10, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v10, 0x1

    :goto_d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v7, v18

    goto/16 :goto_1

    :cond_12
    move-object/from16 v18, v7

    .line 46
    iget-object v2, v0, Landroidx/fragment/app/T;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_15

    .line 47
    iget v2, v0, Landroidx/fragment/app/T;->n:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_15

    move/from16 v2, p3

    :goto_e
    if-ge v2, v4, :cond_15

    .line 48
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    .line 49
    iget-object v3, v3, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/d0;

    .line 50
    iget-object v5, v5, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    if-eqz v5, :cond_13

    .line 51
    iget-object v6, v5, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    if-eqz v6, :cond_13

    .line 52
    invoke-virtual {v0, v5}, Landroidx/fragment/app/T;->i(Landroidx/fragment/app/u;)Landroidx/fragment/app/b0;

    move-result-object v5

    move-object/from16 v6, v18

    .line 53
    invoke-virtual {v6, v5}, Landroidx/fragment/app/c0;->o(Landroidx/fragment/app/b0;)V

    goto :goto_10

    :cond_13
    move-object/from16 v6, v18

    :goto_10
    move-object/from16 v18, v6

    goto :goto_f

    :cond_14
    move-object/from16 v6, v18

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_15
    move/from16 v2, p3

    :goto_11
    if-ge v2, v4, :cond_17

    .line 54
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    move-object/from16 v5, p2

    .line 55
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, -0x1

    .line 56
    invoke-virtual {v3, v6}, Landroidx/fragment/app/a;->h(I)V

    .line 57
    invoke-virtual {v3}, Landroidx/fragment/app/a;->l()V

    goto :goto_12

    :cond_16
    const/4 v6, 0x1

    .line 58
    invoke-virtual {v3, v6}, Landroidx/fragment/app/a;->h(I)V

    .line 59
    invoke-virtual {v3}, Landroidx/fragment/app/a;->k()V

    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_17
    move-object/from16 v5, p2

    add-int/lit8 v2, v4, -0x1

    .line 60
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v3, p3

    :goto_13
    if-ge v3, v4, :cond_1c

    .line 61
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    if-eqz v2, :cond_19

    .line 62
    iget-object v7, v6, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_14
    if-ltz v7, :cond_1b

    .line 63
    iget-object v8, v6, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/d0;

    .line 64
    iget-object v8, v8, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    if-eqz v8, :cond_18

    .line 65
    invoke-virtual {v0, v8}, Landroidx/fragment/app/T;->i(Landroidx/fragment/app/u;)Landroidx/fragment/app/b0;

    move-result-object v8

    .line 66
    invoke-virtual {v8}, Landroidx/fragment/app/b0;->k()V

    :cond_18
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    .line 67
    :cond_19
    iget-object v6, v6, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/d0;

    .line 68
    iget-object v7, v7, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    if-eqz v7, :cond_1a

    .line 69
    invoke-virtual {v0, v7}, Landroidx/fragment/app/T;->i(Landroidx/fragment/app/u;)Landroidx/fragment/app/b0;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Landroidx/fragment/app/b0;->k()V

    goto :goto_15

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 71
    :cond_1c
    iget v3, v0, Landroidx/fragment/app/T;->n:I

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroidx/fragment/app/T;->l0(IZ)V

    .line 72
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move/from16 v6, p3

    :goto_16
    if-ge v6, v4, :cond_1f

    .line 73
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    .line 74
    iget-object v7, v7, Landroidx/fragment/app/e0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1d
    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/d0;

    .line 75
    iget-object v8, v8, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    if-eqz v8, :cond_1d

    .line 76
    iget-object v8, v8, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    if-eqz v8, :cond_1d

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/T;->Z()Landroidx/fragment/app/K;

    move-result-object v9

    .line 78
    invoke-static {v8, v9}, Landroidx/fragment/app/k0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/K;)Landroidx/fragment/app/k0;

    move-result-object v8

    .line 79
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 80
    :cond_1f
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/k0;

    .line 81
    iput-boolean v2, v6, Landroidx/fragment/app/k0;->d:Z

    .line 82
    invoke-virtual {v6}, Landroidx/fragment/app/k0;->h()V

    .line 83
    invoke-virtual {v6}, Landroidx/fragment/app/k0;->b()V

    goto :goto_18

    :cond_20
    move/from16 v2, p3

    :goto_19
    if-ge v2, v4, :cond_22

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    .line 85
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 86
    iget v6, v3, Landroidx/fragment/app/a;->r:I

    if-ltz v6, :cond_21

    const/4 v6, -0x1

    .line 87
    iput v6, v3, Landroidx/fragment/app/a;->r:I

    goto :goto_1a

    :cond_21
    const/4 v6, -0x1

    .line 88
    :goto_1a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_22
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private M(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method private S(Landroidx/fragment/app/u;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p1, Landroidx/fragment/app/u;->w:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-gtz v0, :cond_1

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/T;->p:Landroidx/core/view/accessibility/n;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/core/view/accessibility/n;->m()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/fragment/app/T;->p:Landroidx/core/view/accessibility/n;

    .line 21
    .line 22
    iget p1, p1, Landroidx/fragment/app/u;->w:I

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/n;->l(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_2
    return-object v1
.end method

.method static synthetic a(Landroidx/fragment/app/T;)Landroidx/fragment/app/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    return-object p0
.end method

.method static f0(I)Z
    .locals 1

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method private g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/T;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/T;->E:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/T;->D:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static g0(Landroidx/fragment/app/u;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->k()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/fragment/app/u;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-static {v2}, Landroidx/fragment/app/T;->g0(Landroidx/fragment/app/u;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :cond_1
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_2
    return v0
.end method

.method private h()Ljava/util/HashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->j()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/fragment/app/b0;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/fragment/app/b0;->j()Landroidx/fragment/app/u;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v2, v2, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/T;->Z()Landroidx/fragment/app/K;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Landroidx/fragment/app/k0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/K;)Landroidx/fragment/app/k0;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method static h0(Landroidx/fragment/app/u;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-boolean v1, p0, Landroidx/fragment/app/u;->B:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/fragment/app/u;->u:Landroidx/fragment/app/u;

    .line 14
    .line 15
    invoke-static {p0}, Landroidx/fragment/app/T;->h0(Landroidx/fragment/app/u;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :cond_2
    :goto_0
    return v0
.end method

.method static i0(Landroidx/fragment/app/u;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/fragment/app/T;->r:Landroidx/fragment/app/u;

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroidx/fragment/app/u;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object p0, v1, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/fragment/app/T;->i0(Landroidx/fragment/app/u;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method private s0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/T;->M(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v1, v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/fragment/app/a;

    .line 34
    .line 35
    iget-boolean v3, v3, Landroidx/fragment/app/e0;->o:Z

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    if-eq v2, v1, :cond_1

    .line 40
    .line 41
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/T;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    :goto_1
    if-ge v2, v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroidx/fragment/app/a;

    .line 77
    .line 78
    iget-boolean v3, v3, Landroidx/fragment/app/e0;->o:Z

    .line 79
    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/T;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v1, v2, -0x1

    .line 89
    .line 90
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    if-eq v2, v0, :cond_5

    .line 94
    .line 95
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/T;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 96
    .line 97
    .line 98
    :cond_5
    return-void

    .line 99
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string p2, "Internal error with the back stack records"

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method private x(Landroidx/fragment/app/u;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/T;->N(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/u;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/u;->R()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private z0(Landroidx/fragment/app/u;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/T;->S(Landroidx/fragment/app/u;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object v1, p1, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v3, v1, Landroidx/fragment/app/r;->c:I

    .line 15
    .line 16
    :goto_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v4, v1, Landroidx/fragment/app/r;->d:I

    .line 21
    .line 22
    :goto_1
    add-int/2addr v3, v4

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v4, v1, Landroidx/fragment/app/r;->e:I

    .line 28
    .line 29
    :goto_2
    add-int/2addr v3, v4

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v1, v1, Landroidx/fragment/app/r;->f:I

    .line 35
    .line 36
    :goto_3
    add-int/2addr v3, v1

    .line 37
    if-lez v3, :cond_6

    .line 38
    .line 39
    const v1, 0x7f09019c

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/fragment/app/u;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/fragment/app/u;->G:Landroidx/fragment/app/r;

    .line 58
    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    iget-boolean v2, p1, Landroidx/fragment/app/r;->b:Z

    .line 63
    .line 64
    :goto_4
    invoke-virtual {v0, v2}, Landroidx/fragment/app/u;->b0(Z)V

    .line 65
    .line 66
    .line 67
    :cond_6
    return-void
.end method


# virtual methods
.method final A()Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/T;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/u;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-static {v3}, Landroidx/fragment/app/T;->h0(Landroidx/fragment/app/u;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/fragment/app/u;->Q()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v1
.end method

.method final B()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/T;->C0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/T;->r:Landroidx/fragment/app/u;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->x(Landroidx/fragment/app/u;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method final C()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/T;->z:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/T;->A:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/X;->k(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->E(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method final D()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/T;->z:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/T;->A:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/X;->k(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->E(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method final F()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/T;->A:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroidx/fragment/app/X;->k(Z)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->E(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final G(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/c0;->e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Landroidx/fragment/app/T;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 p4, 0x0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-lez p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "Fragments Created Menus:"

    .line 27
    .line 28
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-ge v1, p2, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/fragment/app/T;->e:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroidx/fragment/app/u;

    .line 41
    .line 42
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v3, "  #"

    .line 46
    .line 47
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 51
    .line 52
    .line 53
    const-string v3, ": "

    .line 54
    .line 55
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/fragment/app/u;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 69
    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-lez p2, :cond_1

    .line 77
    .line 78
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "Back Stack:"

    .line 82
    .line 83
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    :goto_1
    if-ge v1, p2, :cond_1

    .line 88
    .line 89
    iget-object v2, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Landroidx/fragment/app/a;

    .line 96
    .line 97
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v3, "  #"

    .line 101
    .line 102
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 106
    .line 107
    .line 108
    const-string v3, ": "

    .line 109
    .line 110
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 v3, 0x1

    .line 121
    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->j(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v0, "Back Stack Index: "

    .line 133
    .line 134
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Landroidx/fragment/app/T;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p2, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 154
    .line 155
    monitor-enter p2

    .line 156
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-lez v0, :cond_2

    .line 163
    .line 164
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v1, "Pending Actions:"

    .line 168
    .line 169
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    if-ge p4, v0, :cond_2

    .line 173
    .line 174
    iget-object v1, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Landroidx/fragment/app/P;

    .line 181
    .line 182
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v2, "  #"

    .line 186
    .line 187
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 191
    .line 192
    .line 193
    const-string v2, ": "

    .line 194
    .line 195
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 p4, p4, 0x1

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string p2, "FragmentManager misc state:"

    .line 209
    .line 210
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string p2, "  mHost="

    .line 217
    .line 218
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object p2, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 222
    .line 223
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string p2, "  mContainer="

    .line 230
    .line 231
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object p2, p0, Landroidx/fragment/app/T;->p:Landroidx/core/view/accessibility/n;

    .line 235
    .line 236
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iget-object p2, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 240
    .line 241
    if-eqz p2, :cond_3

    .line 242
    .line 243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string p2, "  mParent="

    .line 247
    .line 248
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object p2, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 252
    .line 253
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string p2, "  mCurState="

    .line 260
    .line 261
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget p2, p0, Landroidx/fragment/app/T;->n:I

    .line 265
    .line 266
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 267
    .line 268
    .line 269
    const-string p2, " mStateSaved="

    .line 270
    .line 271
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-boolean p2, p0, Landroidx/fragment/app/T;->z:Z

    .line 275
    .line 276
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 277
    .line 278
    .line 279
    const-string p2, " mStopped="

    .line 280
    .line 281
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-boolean p2, p0, Landroidx/fragment/app/T;->A:Z

    .line 285
    .line 286
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 287
    .line 288
    .line 289
    const-string p2, " mDestroyed="

    .line 290
    .line 291
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-boolean p2, p0, Landroidx/fragment/app/T;->B:Z

    .line 295
    .line 296
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 297
    .line 298
    .line 299
    iget-boolean p2, p0, Landroidx/fragment/app/T;->y:Z

    .line 300
    .line 301
    if-eqz p2, :cond_4

    .line 302
    .line 303
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string p1, "  mNeedMenuInvalidate="

    .line 307
    .line 308
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-boolean p1, p0, Landroidx/fragment/app/T;->y:Z

    .line 312
    .line 313
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 314
    .line 315
    .line 316
    :cond_4
    return-void

    .line 317
    :catchall_0
    move-exception p1

    .line 318
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    throw p1
.end method

.method final H(Landroidx/fragment/app/P;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/fragment/app/T;->B:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "FragmentManager has been destroyed"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "FragmentManager has not been attached to a host."

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/T;->j0()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "Can not perform this action after onSaveInstanceState"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "Activity has been destroyed"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/T;->v0()V

    .line 67
    .line 68
    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p1
.end method

.method final J(Z)Z
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/T;->I(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/T;->D:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/T;->E:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    monitor-exit v3

    .line 22
    const/4 v6, 0x0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    :goto_1
    if-ge v5, v4, :cond_1

    .line 33
    .line 34
    iget-object v7, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Landroidx/fragment/app/P;

    .line 41
    .line 42
    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/P;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    or-int/2addr v6, v7

    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroidx/fragment/app/E;->v()Landroid/os/Handler;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Landroidx/fragment/app/T;->H:Ljava/lang/Runnable;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :goto_2
    if-eqz v6, :cond_2

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Landroidx/fragment/app/T;->b:Z

    .line 71
    .line 72
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/T;->D:Ljava/util/ArrayList;

    .line 73
    .line 74
    iget-object v2, p0, Landroidx/fragment/app/T;->E:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/T;->s0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Landroidx/fragment/app/T;->g()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    invoke-direct {p0}, Landroidx/fragment/app/T;->g()V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_2
    invoke-direct {p0}, Landroidx/fragment/app/T;->C0()V

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Landroidx/fragment/app/T;->C:Z

    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    iput-boolean p1, p0, Landroidx/fragment/app/T;->C:Z

    .line 96
    .line 97
    invoke-direct {p0}, Landroidx/fragment/app/T;->B0()V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/fragment/app/c0;->b()V

    .line 103
    .line 104
    .line 105
    return v0

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    throw p1
.end method

.method final K(Landroidx/fragment/app/P;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/T;->B:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->I(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroidx/fragment/app/T;->D:Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/fragment/app/T;->E:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-interface {p1, v1, v2}, Landroidx/fragment/app/P;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iput-boolean v0, p0, Landroidx/fragment/app/T;->b:Z

    .line 25
    .line 26
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/T;->D:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/fragment/app/T;->E:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/T;->s0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/T;->g()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/T;->g()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/T;->C0()V

    .line 43
    .line 44
    .line 45
    iget-boolean p1, p0, Landroidx/fragment/app/T;->C:Z

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Landroidx/fragment/app/T;->C:Z

    .line 51
    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/T;->B0()V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/c0;->b()V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method final N(Ljava/lang/String;)Landroidx/fragment/app/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c0;->f(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final O(I)Landroidx/fragment/app/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c0;->g(I)Landroidx/fragment/app/u;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final P(Ljava/lang/String;)Landroidx/fragment/app/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c0;->h(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method final Q(Ljava/lang/String;)Landroidx/fragment/app/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c0;->i(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method final R()Landroidx/core/view/accessibility/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->p:Landroidx/core/view/accessibility/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Landroidx/fragment/app/D;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/T;->T()Landroidx/fragment/app/D;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/T;->s:Landroidx/fragment/app/D;

    .line 13
    .line 14
    return-object v0
.end method

.method public final U()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final V()Landroidx/fragment/app/E;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 2
    .line 3
    return-object v0
.end method

.method final W()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->f:Landroidx/fragment/app/F;

    .line 2
    .line 3
    return-object v0
.end method

.method final X()Landroidx/fragment/app/h;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->l:Landroidx/fragment/app/h;

    .line 2
    .line 3
    return-object v0
.end method

.method final Y()Landroidx/fragment/app/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 2
    .line 3
    return-object v0
.end method

.method final Z()Landroidx/fragment/app/K;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/T;->Z()Landroidx/fragment/app/K;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/T;->t:Landroidx/fragment/app/K;

    .line 13
    .line 14
    return-object v0
.end method

.method final a0(Landroidx/fragment/app/u;)Landroidx/lifecycle/Y;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/X;->h(Landroidx/fragment/app/u;)Landroidx/lifecycle/Y;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method final b(Landroidx/fragment/app/u;)Landroidx/fragment/app/b0;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "add: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/T;->i(Landroidx/fragment/app/u;)Landroidx/fragment/app/b0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object p0, p1, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroidx/fragment/app/c0;->o(Landroidx/fragment/app/b0;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p1, Landroidx/fragment/app/u;->z:Z

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/u;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p1, Landroidx/fragment/app/u;->l:Z

    .line 47
    .line 48
    iput-boolean v1, p1, Landroidx/fragment/app/u;->H:Z

    .line 49
    .line 50
    invoke-static {p1}, Landroidx/fragment/app/T;->g0(Landroidx/fragment/app/u;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Landroidx/fragment/app/T;->y:Z

    .line 58
    .line 59
    :cond_1
    return-object v0
.end method

.method final b0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/T;->J(Z)Z

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/T;->h:Landroidx/activity/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/activity/n;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/T;->o0()Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/T;->g:Landroidx/activity/s;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/activity/s;->c()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final c0(Landroidx/fragment/app/u;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "hide: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/u;->y:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, Landroidx/fragment/app/u;->y:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Landroidx/fragment/app/u;->H:Z

    .line 35
    .line 36
    xor-int/2addr v0, v1

    .line 37
    iput-boolean v0, p1, Landroidx/fragment/app/u;->H:Z

    .line 38
    .line 39
    invoke-direct {p0, p1}, Landroidx/fragment/app/T;->z0(Landroidx/fragment/app/u;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method final d(Landroidx/fragment/app/E;Landroidx/core/view/accessibility/n;Landroidx/fragment/app/u;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/fragment/app/T;->p:Landroidx/core/view/accessibility/n;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/fragment/app/T;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/L;

    .line 16
    .line 17
    invoke-direct {v0, p3}, Landroidx/fragment/app/L;-><init>(Landroidx/fragment/app/u;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/Y;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    check-cast v0, Landroidx/fragment/app/Y;

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/T;->C0()V

    .line 39
    .line 40
    .line 41
    :cond_2
    instance-of p2, p1, Landroidx/activity/t;

    .line 42
    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    move-object p2, p1

    .line 46
    check-cast p2, Landroidx/activity/t;

    .line 47
    .line 48
    invoke-interface {p2}, Landroidx/activity/t;->getOnBackPressedDispatcher()Landroidx/activity/s;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Landroidx/fragment/app/T;->g:Landroidx/activity/s;

    .line 53
    .line 54
    if-eqz p3, :cond_3

    .line 55
    .line 56
    move-object p2, p3

    .line 57
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/T;->h:Landroidx/activity/n;

    .line 58
    .line 59
    invoke-virtual {v0, p2, v1}, Landroidx/activity/s;->a(Landroidx/lifecycle/s;Landroidx/activity/n;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    const/4 p2, 0x0

    .line 63
    if-eqz p3, :cond_5

    .line 64
    .line 65
    iget-object p1, p3, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 66
    .line 67
    iget-object p1, p1, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 68
    .line 69
    invoke-virtual {p1, p3}, Landroidx/fragment/app/X;->e(Landroidx/fragment/app/u;)Landroidx/fragment/app/X;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    instance-of v0, p1, Landroidx/lifecycle/Z;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    check-cast p1, Landroidx/lifecycle/Z;

    .line 81
    .line 82
    invoke-interface {p1}, Landroidx/lifecycle/Z;->getViewModelStore()Landroidx/lifecycle/Y;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Landroidx/fragment/app/X;->f(Landroidx/lifecycle/Y;)Landroidx/fragment/app/X;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    new-instance p1, Landroidx/fragment/app/X;

    .line 94
    .line 95
    invoke-direct {p1, p2}, Landroidx/fragment/app/X;-><init>(Z)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 99
    .line 100
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/T;->j0()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1, v0}, Landroidx/fragment/app/X;->k(Z)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 110
    .line 111
    iget-object v0, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroidx/fragment/app/c0;->w(Landroidx/fragment/app/X;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 117
    .line 118
    instance-of v0, p1, Landroidx/activity/result/j;

    .line 119
    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    check-cast p1, Landroidx/activity/result/j;

    .line 123
    .line 124
    invoke-interface {p1}, Landroidx/activity/result/j;->getActivityResultRegistry()Landroidx/activity/result/i;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p3, :cond_7

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object p3, p3, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p3, ":"

    .line 141
    .line 142
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    goto :goto_2

    .line 150
    :cond_7
    const-string p3, ""

    .line 151
    .line 152
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v1, "FragmentManager:"

    .line 155
    .line 156
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    const-string v0, "StartActivityForResult"

    .line 167
    .line 168
    invoke-static {p3, v0}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v1, Lc/d;

    .line 173
    .line 174
    invoke-direct {v1}, Lc/d;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v2, Landroidx/fragment/app/H;

    .line 178
    .line 179
    const/4 v3, 0x2

    .line 180
    invoke-direct {v2, p0, v3}, Landroidx/fragment/app/H;-><init>(Landroidx/fragment/app/T;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/i;->g(Ljava/lang/String;Lc/b;Landroidx/activity/result/c;)Landroidx/activity/result/d;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iput-object v0, p0, Landroidx/fragment/app/T;->u:Landroidx/activity/result/d;

    .line 188
    .line 189
    const-string v0, "StartIntentSenderForResult"

    .line 190
    .line 191
    invoke-static {p3, v0}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v1, Landroidx/fragment/app/M;

    .line 196
    .line 197
    invoke-direct {v1}, Landroidx/fragment/app/M;-><init>()V

    .line 198
    .line 199
    .line 200
    new-instance v2, Landroidx/fragment/app/H;

    .line 201
    .line 202
    invoke-direct {v2, p0, p2}, Landroidx/fragment/app/H;-><init>(Landroidx/fragment/app/T;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/i;->g(Ljava/lang/String;Lc/b;Landroidx/activity/result/c;)Landroidx/activity/result/d;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    iput-object p2, p0, Landroidx/fragment/app/T;->v:Landroidx/activity/result/d;

    .line 210
    .line 211
    const-string p2, "RequestPermissions"

    .line 212
    .line 213
    invoke-static {p3, p2}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    new-instance p3, Lc/c;

    .line 218
    .line 219
    invoke-direct {p3}, Lc/c;-><init>()V

    .line 220
    .line 221
    .line 222
    new-instance v0, Landroidx/fragment/app/m;

    .line 223
    .line 224
    invoke-direct {v0, p0}, Landroidx/fragment/app/m;-><init>(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/result/i;->g(Ljava/lang/String;Lc/b;Landroidx/activity/result/c;)Landroidx/activity/result/d;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iput-object p1, p0, Landroidx/fragment/app/T;->w:Landroidx/activity/result/d;

    .line 232
    .line 233
    :cond_8
    return-void

    .line 234
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 235
    .line 236
    const-string p2, "Already attached"

    .line 237
    .line 238
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p1
.end method

.method final d0(Landroidx/fragment/app/u;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/u;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/fragment/app/T;->g0(Landroidx/fragment/app/u;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/fragment/app/T;->y:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method final e(Landroidx/fragment/app/u;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "attach: "

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/u;->z:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p1, Landroidx/fragment/app/u;->z:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Landroidx/fragment/app/u;->k:Z

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/u;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "add from attach: "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/T;->g0(Landroidx/fragment/app/u;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Landroidx/fragment/app/T;->y:Z

    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final e0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/T;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f()Landroidx/fragment/app/e0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/T;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method final i(Landroidx/fragment/app/u;)Landroidx/fragment/app/b0;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/c0;->l(Ljava/lang/String;)Landroidx/fragment/app/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Landroidx/fragment/app/b0;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/fragment/app/T;->l:Landroidx/fragment/app/h;

    .line 15
    .line 16
    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/h;Landroidx/fragment/app/c0;Landroidx/fragment/app/u;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/E;->u()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Landroidx/fragment/app/b0;->m(Ljava/lang/ClassLoader;)V

    .line 30
    .line 31
    .line 32
    iget p1, p0, Landroidx/fragment/app/T;->n:I

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroidx/fragment/app/b0;->p(I)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method final j(Landroidx/fragment/app/u;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "detach: "

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/u;->z:Z

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p1, Landroidx/fragment/app/u;->z:Z

    .line 33
    .line 34
    iget-boolean v3, p1, Landroidx/fragment/app/u;->k:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "remove from detach: "

    .line 47
    .line 48
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c0;->r(Landroidx/fragment/app/u;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Landroidx/fragment/app/T;->g0(Landroidx/fragment/app/u;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iput-boolean v1, p0, Landroidx/fragment/app/T;->y:Z

    .line 73
    .line 74
    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/T;->z0(Landroidx/fragment/app/u;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final j0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/T;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/T;->A:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method final k()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/T;->z:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/T;->A:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/X;->k(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->E(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method final k0(ILandroidx/fragment/app/u;)V
    .locals 11

    .line 1
    iget-object v0, p2, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/c0;->l(Ljava/lang/String;)Landroidx/fragment/app/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Landroidx/fragment/app/T;->l:Landroidx/fragment/app/h;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/fragment/app/b0;

    .line 15
    .line 16
    invoke-direct {v0, v2, v1, p2}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/h;Landroidx/fragment/app/c0;Landroidx/fragment/app/u;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroidx/fragment/app/b0;->p(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-boolean v1, p2, Landroidx/fragment/app/u;->m:Z

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-boolean v1, p2, Landroidx/fragment/app/u;->n:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget v1, p2, Landroidx/fragment/app/u;->a:I

    .line 32
    .line 33
    if-ne v1, v4, :cond_1

    .line 34
    .line 35
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->c()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget v1, p2, Landroidx/fragment/app/u;->a:I

    .line 48
    .line 49
    const-string v5, "FragmentManager"

    .line 50
    .line 51
    const/4 v6, 0x3

    .line 52
    const/4 v7, 0x5

    .line 53
    const/4 v8, 0x4

    .line 54
    if-gt v1, p1, :cond_b

    .line 55
    .line 56
    if-ge v1, p1, :cond_3

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/fragment/app/T;->k:Ljava/util/Map;

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/fragment/app/T;->k:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/util/HashSet;

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_2

    .line 85
    .line 86
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    check-cast v10, Landroidx/core/os/e;

    .line 91
    .line 92
    invoke-virtual {v10}, Landroidx/core/os/e;->a()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Landroidx/fragment/app/u;->I()V

    .line 100
    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {v2, v1}, Landroidx/fragment/app/h;->n(Z)V

    .line 104
    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    iput-object v2, p2, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 108
    .line 109
    iput-object v2, p2, Landroidx/fragment/app/u;->L:Landroidx/fragment/app/f0;

    .line 110
    .line 111
    iget-object v9, p2, Landroidx/fragment/app/u;->M:Landroidx/lifecycle/A;

    .line 112
    .line 113
    invoke-virtual {v9, v2}, Landroidx/lifecycle/A;->i(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iput-boolean v1, p2, Landroidx/fragment/app/u;->n:Z

    .line 117
    .line 118
    iget-object v1, p0, Landroidx/fragment/app/T;->k:Ljava/util/Map;

    .line 119
    .line 120
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_3
    iget v1, p2, Landroidx/fragment/app/u;->a:I

    .line 124
    .line 125
    const/4 v2, -0x1

    .line 126
    if-eq v1, v2, :cond_4

    .line 127
    .line 128
    if-eqz v1, :cond_5

    .line 129
    .line 130
    if-eq v1, v3, :cond_6

    .line 131
    .line 132
    if-eq v1, v4, :cond_8

    .line 133
    .line 134
    if-eq v1, v8, :cond_9

    .line 135
    .line 136
    if-eq v1, v7, :cond_a

    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :cond_4
    if-le p1, v2, :cond_5

    .line 141
    .line 142
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->b()V

    .line 143
    .line 144
    .line 145
    :cond_5
    if-lez p1, :cond_6

    .line 146
    .line 147
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->d()V

    .line 148
    .line 149
    .line 150
    :cond_6
    if-le p1, v2, :cond_7

    .line 151
    .line 152
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->i()V

    .line 153
    .line 154
    .line 155
    :cond_7
    if-le p1, v3, :cond_8

    .line 156
    .line 157
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->e()V

    .line 158
    .line 159
    .line 160
    :cond_8
    if-le p1, v4, :cond_9

    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->a()V

    .line 163
    .line 164
    .line 165
    :cond_9
    if-le p1, v8, :cond_a

    .line 166
    .line 167
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->q()V

    .line 168
    .line 169
    .line 170
    :cond_a
    if-le p1, v7, :cond_14

    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->n()V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_b
    if-le v1, p1, :cond_14

    .line 177
    .line 178
    if-eqz v1, :cond_12

    .line 179
    .line 180
    if-eq v1, v3, :cond_10

    .line 181
    .line 182
    if-eq v1, v4, :cond_f

    .line 183
    .line 184
    if-eq v1, v8, :cond_e

    .line 185
    .line 186
    if-eq v1, v7, :cond_d

    .line 187
    .line 188
    const/4 v2, 0x7

    .line 189
    if-eq v1, v2, :cond_c

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_c
    if-ge p1, v2, :cond_d

    .line 193
    .line 194
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->l()V

    .line 195
    .line 196
    .line 197
    :cond_d
    if-ge p1, v7, :cond_e

    .line 198
    .line 199
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->r()V

    .line 200
    .line 201
    .line 202
    :cond_e
    if-ge p1, v8, :cond_f

    .line 203
    .line 204
    invoke-static {v6}, Landroidx/fragment/app/T;->f0(I)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_f

    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v2, "movefrom ACTIVITY_CREATED: "

    .line 213
    .line 214
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    :cond_f
    if-ge p1, v4, :cond_10

    .line 228
    .line 229
    iget-object v1, p0, Landroidx/fragment/app/T;->k:Ljava/util/Map;

    .line 230
    .line 231
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    if-nez v1, :cond_10

    .line 236
    .line 237
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->g()V

    .line 238
    .line 239
    .line 240
    :cond_10
    if-ge p1, v3, :cond_12

    .line 241
    .line 242
    iget-object v1, p0, Landroidx/fragment/app/T;->k:Ljava/util/Map;

    .line 243
    .line 244
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    if-eqz v1, :cond_11

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_11
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->f()V

    .line 252
    .line 253
    .line 254
    :cond_12
    move v3, p1

    .line 255
    :goto_1
    if-gez v3, :cond_13

    .line 256
    .line 257
    invoke-virtual {v0}, Landroidx/fragment/app/b0;->h()V

    .line 258
    .line 259
    .line 260
    :cond_13
    move p1, v3

    .line 261
    :cond_14
    :goto_2
    iget v0, p2, Landroidx/fragment/app/u;->a:I

    .line 262
    .line 263
    if-eq v0, p1, :cond_16

    .line 264
    .line 265
    invoke-static {v6}, Landroidx/fragment/app/T;->f0(I)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_15

    .line 270
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v1, "moveToState: Fragment state for "

    .line 274
    .line 275
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v1, " not updated inline; expected state "

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v1, " found "

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget v1, p2, Landroidx/fragment/app/u;->a:I

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    :cond_15
    iput p1, p2, Landroidx/fragment/app/u;->a:I

    .line 307
    .line 308
    :cond_16
    return-void
.end method

.method final l()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/T;->z:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/T;->A:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/X;->k(Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->E(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method final l0(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "No activity"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 18
    .line 19
    iget p2, p0, Landroidx/fragment/app/T;->n:I

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput p1, p0, Landroidx/fragment/app/T;->n:I

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/c0;->q()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/T;->B0()V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, Landroidx/fragment/app/T;->y:Z

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget p2, p0, Landroidx/fragment/app/T;->n:I

    .line 43
    .line 44
    const/4 v0, 0x7

    .line 45
    if-ne p2, v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/E;->y()V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Landroidx/fragment/app/T;->y:Z

    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method final m(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/u;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/fragment/app/u;->D(Landroid/content/res/Configuration;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method final m0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/T;->z:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/T;->A:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/fragment/app/X;->k(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/fragment/app/u;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, v1, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/T;->m0()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method final n()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/T;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/u;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/fragment/app/u;->E()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    return v1
.end method

.method final n0(Landroidx/fragment/app/B;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->j()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/b0;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/b0;->j()Landroidx/fragment/app/u;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v1, v1, Landroidx/fragment/app/u;->w:I

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method final o()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/T;->z:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/T;->A:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/X;->k(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->E(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final o0()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/T;->J(Z)Z

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v1}, Landroidx/fragment/app/T;->I(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroidx/fragment/app/T;->r:Landroidx/fragment/app/u;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/fragment/app/u;->f()Landroidx/fragment/app/T;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroidx/fragment/app/T;->o0()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/T;->D:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/fragment/app/T;->E:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    invoke-virtual {p0, v2, v3, v4, v0}, Landroidx/fragment/app/T;->p0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iput-boolean v1, p0, Landroidx/fragment/app/T;->b:Z

    .line 36
    .line 37
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/T;->D:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/fragment/app/T;->E:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p0, v1, v3}, Landroidx/fragment/app/T;->s0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/T;->g()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/T;->g()V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/T;->C0()V

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Landroidx/fragment/app/T;->C:Z

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iput-boolean v0, p0, Landroidx/fragment/app/T;->C:Z

    .line 61
    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/T;->B0()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->b()V

    .line 68
    .line 69
    .line 70
    move v1, v2

    .line 71
    :goto_1
    return v1
.end method

.method final p()Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/T;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/u;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-static {v5}, Landroidx/fragment/app/T;->h0(Landroidx/fragment/app/u;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    iget-boolean v6, v5, Landroidx/fragment/app/u;->y:Z

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    iget-object v6, v5, Landroidx/fragment/app/u;->t:Landroidx/fragment/app/T;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroidx/fragment/app/T;->p()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    or-int/2addr v6, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v6, 0x0

    .line 53
    :goto_1
    if-eqz v6, :cond_1

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/T;->e:Ljava/util/ArrayList;

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/T;->e:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-ge v1, v0, :cond_7

    .line 78
    .line 79
    iget-object v0, p0, Landroidx/fragment/app/T;->e:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/fragment/app/u;

    .line 86
    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_6

    .line 94
    .line 95
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_7
    iput-object v3, p0, Landroidx/fragment/app/T;->e:Ljava/util/ArrayList;

    .line 102
    .line 103
    return v4
.end method

.method final p0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x1

    .line 8
    if-gez p3, :cond_2

    .line 9
    .line 10
    and-int/lit8 v3, p4, 0x1

    .line 11
    .line 12
    if-nez v3, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    sub-int/2addr p3, v2

    .line 19
    if-gez p3, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_2
    const/4 v3, -0x1

    .line 38
    if-ltz p3, :cond_7

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int/2addr v0, v2

    .line 45
    :goto_0
    if-ltz v0, :cond_4

    .line 46
    .line 47
    iget-object v4, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroidx/fragment/app/a;

    .line 54
    .line 55
    if-ltz p3, :cond_3

    .line 56
    .line 57
    iget v4, v4, Landroidx/fragment/app/a;->r:I

    .line 58
    .line 59
    if-ne p3, v4, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    :goto_1
    if-gez v0, :cond_5

    .line 66
    .line 67
    return v1

    .line 68
    :cond_5
    and-int/2addr p4, v2

    .line 69
    if-eqz p4, :cond_6

    .line 70
    .line 71
    :goto_2
    add-int/2addr v0, v3

    .line 72
    if-ltz v0, :cond_6

    .line 73
    .line 74
    iget-object p4, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    check-cast p4, Landroidx/fragment/app/a;

    .line 81
    .line 82
    if-ltz p3, :cond_6

    .line 83
    .line 84
    iget p4, p4, Landroidx/fragment/app/a;->r:I

    .line 85
    .line 86
    if-ne p3, p4, :cond_6

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    move v3, v0

    .line 90
    :cond_7
    iget-object p3, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    sub-int/2addr p3, v2

    .line 97
    if-ne v3, p3, :cond_8

    .line 98
    .line 99
    return v1

    .line 100
    :cond_8
    iget-object p3, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    sub-int/2addr p3, v2

    .line 107
    :goto_3
    if-le p3, v3, :cond_9

    .line 108
    .line 109
    iget-object p4, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    add-int/lit8 p3, p3, -0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_9
    :goto_4
    return v2
.end method

.method final q()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/T;->B:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/T;->J(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/T;->h()Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/fragment/app/k0;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/k0;->d()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->E(I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/fragment/app/T;->p:Landroidx/core/view/accessibility/n;

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/fragment/app/T;->g:Landroidx/activity/s;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/fragment/app/T;->h:Landroidx/activity/n;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/activity/n;->d()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/fragment/app/T;->g:Landroidx/activity/s;

    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/T;->u:Landroidx/activity/result/d;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroidx/fragment/app/T;->v:Landroidx/activity/result/d;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Landroidx/fragment/app/T;->w:Landroidx/activity/result/d;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/activity/result/d;->b()V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method final q0(Landroidx/fragment/app/u;Landroidx/core/os/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->k:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/HashSet;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/fragment/app/T;->k:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget p2, p1, Landroidx/fragment/app/u;->a:I

    .line 29
    .line 30
    const/4 v0, 0x5

    .line 31
    if-ge p2, v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/u;->I()V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Landroidx/fragment/app/T;->l:Landroidx/fragment/app/h;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p2, v0}, Landroidx/fragment/app/h;->n(Z)V

    .line 40
    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    iput-object p2, p1, Landroidx/fragment/app/u;->D:Landroid/view/ViewGroup;

    .line 44
    .line 45
    iput-object p2, p1, Landroidx/fragment/app/u;->L:Landroidx/fragment/app/f0;

    .line 46
    .line 47
    iget-object v1, p1, Landroidx/fragment/app/u;->M:Landroidx/lifecycle/A;

    .line 48
    .line 49
    invoke-virtual {v1, p2}, Landroidx/lifecycle/A;->i(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput-boolean v0, p1, Landroidx/fragment/app/u;->n:Z

    .line 53
    .line 54
    iget p2, p0, Landroidx/fragment/app/T;->n:I

    .line 55
    .line 56
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/T;->k0(ILandroidx/fragment/app/u;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method final r()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->E(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method final r0(Landroidx/fragment/app/u;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/T;->f0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "remove: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " nesting="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p1, Landroidx/fragment/app/u;->q:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "FragmentManager"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget v0, p1, Landroidx/fragment/app/u;->q:I

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-lez v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    xor-int/2addr v0, v1

    .line 46
    iget-boolean v2, p1, Landroidx/fragment/app/u;->z:Z

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c0;->r(Landroidx/fragment/app/u;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Landroidx/fragment/app/T;->g0(Landroidx/fragment/app/u;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iput-boolean v1, p0, Landroidx/fragment/app/T;->y:Z

    .line 64
    .line 65
    :cond_3
    iput-boolean v1, p1, Landroidx/fragment/app/u;->l:Z

    .line 66
    .line 67
    invoke-direct {p0, p1}, Landroidx/fragment/app/T;->z0(Landroidx/fragment/app/u;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-void
.end method

.method final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/u;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/u;->K()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method final t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/u;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/fragment/app/u;->L(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method final t0(Landroid/os/Parcelable;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    move-object/from16 v1, p1

    .line 7
    .line 8
    check-cast v1, Landroidx/fragment/app/V;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/fragment/app/V;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v2, v0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->s()V

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, Landroidx/fragment/app/V;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget-object v6, v0, Landroidx/fragment/app/T;->l:Landroidx/fragment/app/h;

    .line 31
    .line 32
    const-string v11, "): "

    .line 33
    .line 34
    const/4 v12, 0x2

    .line 35
    const-string v13, "FragmentManager"

    .line 36
    .line 37
    if-eqz v4, :cond_6

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    move-object v10, v4

    .line 44
    check-cast v10, Landroidx/fragment/app/a0;

    .line 45
    .line 46
    if-eqz v10, :cond_2

    .line 47
    .line 48
    iget-object v4, v0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 49
    .line 50
    iget-object v5, v10, Landroidx/fragment/app/a0;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroidx/fragment/app/X;->d(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    invoke-static {v12}, Landroidx/fragment/app/T;->f0(I)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v7, "restoreSaveState: re-attaching retained "

    .line 67
    .line 68
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v13, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_3
    new-instance v5, Landroidx/fragment/app/b0;

    .line 82
    .line 83
    invoke-direct {v5, v6, v2, v4, v10}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/h;Landroidx/fragment/app/c0;Landroidx/fragment/app/u;Landroidx/fragment/app/a0;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    new-instance v4, Landroidx/fragment/app/b0;

    .line 88
    .line 89
    iget-object v7, v0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 90
    .line 91
    iget-object v5, v0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 92
    .line 93
    invoke-virtual {v5}, Landroidx/fragment/app/E;->u()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/T;->T()Landroidx/fragment/app/D;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    move-object v5, v4

    .line 106
    invoke-direct/range {v5 .. v10}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/h;Landroidx/fragment/app/c0;Ljava/lang/ClassLoader;Landroidx/fragment/app/D;Landroidx/fragment/app/a0;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-virtual {v5}, Landroidx/fragment/app/b0;->j()Landroidx/fragment/app/u;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iput-object v0, v4, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 114
    .line 115
    invoke-static {v12}, Landroidx/fragment/app/T;->f0(I)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_5

    .line 120
    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v7, "restoreSaveState: active ("

    .line 124
    .line 125
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v7, v4, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v13, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_5
    iget-object v4, v0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 147
    .line 148
    invoke-virtual {v4}, Landroidx/fragment/app/E;->u()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v5, v4}, Landroidx/fragment/app/b0;->m(Ljava/lang/ClassLoader;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v5}, Landroidx/fragment/app/c0;->o(Landroidx/fragment/app/b0;)V

    .line 160
    .line 161
    .line 162
    iget v4, v0, Landroidx/fragment/app/T;->n:I

    .line 163
    .line 164
    invoke-virtual {v5, v4}, Landroidx/fragment/app/b0;->p(I)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_6
    iget-object v3, v0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 170
    .line 171
    invoke-virtual {v3}, Landroidx/fragment/app/X;->g()Ljava/util/ArrayList;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    const/4 v5, 0x1

    .line 184
    if-eqz v4, :cond_9

    .line 185
    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Landroidx/fragment/app/u;

    .line 191
    .line 192
    iget-object v7, v4, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v2, v7}, Landroidx/fragment/app/c0;->c(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-nez v7, :cond_7

    .line 199
    .line 200
    invoke-static {v12}, Landroidx/fragment/app/T;->f0(I)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_8

    .line 205
    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v8, "Discarding retained Fragment "

    .line 209
    .line 210
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v8, " that was not found in the set of active Fragments "

    .line 217
    .line 218
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v8, v1, Landroidx/fragment/app/V;->a:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-static {v13, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :cond_8
    iget-object v7, v0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 234
    .line 235
    invoke-virtual {v7, v4}, Landroidx/fragment/app/X;->j(Landroidx/fragment/app/u;)V

    .line 236
    .line 237
    .line 238
    iput-object v0, v4, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 239
    .line 240
    new-instance v7, Landroidx/fragment/app/b0;

    .line 241
    .line 242
    invoke-direct {v7, v6, v2, v4}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/h;Landroidx/fragment/app/c0;Landroidx/fragment/app/u;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v5}, Landroidx/fragment/app/b0;->p(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7}, Landroidx/fragment/app/b0;->k()V

    .line 249
    .line 250
    .line 251
    iput-boolean v5, v4, Landroidx/fragment/app/u;->l:Z

    .line 252
    .line 253
    invoke-virtual {v7}, Landroidx/fragment/app/b0;->k()V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_9
    iget-object v3, v1, Landroidx/fragment/app/V;->b:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v2, v3}, Landroidx/fragment/app/c0;->t(Ljava/util/ArrayList;)V

    .line 260
    .line 261
    .line 262
    iget-object v2, v1, Landroidx/fragment/app/V;->c:[Landroidx/fragment/app/c;

    .line 263
    .line 264
    const/4 v4, 0x0

    .line 265
    if-eqz v2, :cond_f

    .line 266
    .line 267
    new-instance v2, Ljava/util/ArrayList;

    .line 268
    .line 269
    iget-object v6, v1, Landroidx/fragment/app/V;->c:[Landroidx/fragment/app/c;

    .line 270
    .line 271
    array-length v6, v6

    .line 272
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .line 274
    .line 275
    iput-object v2, v0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 276
    .line 277
    const/4 v2, 0x0

    .line 278
    :goto_3
    iget-object v6, v1, Landroidx/fragment/app/V;->c:[Landroidx/fragment/app/c;

    .line 279
    .line 280
    array-length v7, v6

    .line 281
    if-ge v2, v7, :cond_e

    .line 282
    .line 283
    aget-object v6, v6, v2

    .line 284
    .line 285
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    new-instance v7, Landroidx/fragment/app/a;

    .line 289
    .line 290
    invoke-direct {v7, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/T;)V

    .line 291
    .line 292
    .line 293
    const/4 v8, 0x0

    .line 294
    const/4 v9, 0x0

    .line 295
    :goto_4
    iget-object v10, v6, Landroidx/fragment/app/c;->a:[I

    .line 296
    .line 297
    array-length v14, v10

    .line 298
    if-ge v8, v14, :cond_c

    .line 299
    .line 300
    new-instance v14, Landroidx/fragment/app/d0;

    .line 301
    .line 302
    invoke-direct {v14}, Landroidx/fragment/app/d0;-><init>()V

    .line 303
    .line 304
    .line 305
    add-int/lit8 v15, v8, 0x1

    .line 306
    .line 307
    aget v8, v10, v8

    .line 308
    .line 309
    iput v8, v14, Landroidx/fragment/app/d0;->a:I

    .line 310
    .line 311
    invoke-static {v12}, Landroidx/fragment/app/T;->f0(I)Z

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    if-eqz v8, :cond_a

    .line 316
    .line 317
    new-instance v8, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v3, "Instantiate "

    .line 320
    .line 321
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v3, " op #"

    .line 328
    .line 329
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v3, " base fragment #"

    .line 336
    .line 337
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    aget v3, v10, v15

    .line 341
    .line 342
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    :cond_a
    iget-object v3, v6, Landroidx/fragment/app/c;->b:Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    check-cast v3, Ljava/lang/String;

    .line 359
    .line 360
    if-eqz v3, :cond_b

    .line 361
    .line 362
    invoke-virtual {v0, v3}, Landroidx/fragment/app/T;->N(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    iput-object v3, v14, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_b
    iput-object v4, v14, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    .line 370
    .line 371
    :goto_5
    invoke-static {}, Landroidx/lifecycle/l;->g()[Landroidx/lifecycle/l;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    iget-object v8, v6, Landroidx/fragment/app/c;->c:[I

    .line 376
    .line 377
    aget v8, v8, v9

    .line 378
    .line 379
    aget-object v3, v3, v8

    .line 380
    .line 381
    iput-object v3, v14, Landroidx/fragment/app/d0;->g:Landroidx/lifecycle/l;

    .line 382
    .line 383
    invoke-static {}, Landroidx/lifecycle/l;->g()[Landroidx/lifecycle/l;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    iget-object v8, v6, Landroidx/fragment/app/c;->d:[I

    .line 388
    .line 389
    aget v8, v8, v9

    .line 390
    .line 391
    aget-object v3, v3, v8

    .line 392
    .line 393
    iput-object v3, v14, Landroidx/fragment/app/d0;->h:Landroidx/lifecycle/l;

    .line 394
    .line 395
    add-int/lit8 v3, v15, 0x1

    .line 396
    .line 397
    aget v8, v10, v15

    .line 398
    .line 399
    iput v8, v14, Landroidx/fragment/app/d0;->c:I

    .line 400
    .line 401
    add-int/lit8 v15, v3, 0x1

    .line 402
    .line 403
    aget v3, v10, v3

    .line 404
    .line 405
    iput v3, v14, Landroidx/fragment/app/d0;->d:I

    .line 406
    .line 407
    add-int/lit8 v16, v15, 0x1

    .line 408
    .line 409
    aget v15, v10, v15

    .line 410
    .line 411
    iput v15, v14, Landroidx/fragment/app/d0;->e:I

    .line 412
    .line 413
    add-int/lit8 v17, v16, 0x1

    .line 414
    .line 415
    aget v10, v10, v16

    .line 416
    .line 417
    iput v10, v14, Landroidx/fragment/app/d0;->f:I

    .line 418
    .line 419
    iput v8, v7, Landroidx/fragment/app/e0;->b:I

    .line 420
    .line 421
    iput v3, v7, Landroidx/fragment/app/e0;->c:I

    .line 422
    .line 423
    iput v15, v7, Landroidx/fragment/app/e0;->d:I

    .line 424
    .line 425
    iput v10, v7, Landroidx/fragment/app/e0;->e:I

    .line 426
    .line 427
    invoke-virtual {v7, v14}, Landroidx/fragment/app/e0;->c(Landroidx/fragment/app/d0;)V

    .line 428
    .line 429
    .line 430
    add-int/lit8 v9, v9, 0x1

    .line 431
    .line 432
    move/from16 v8, v17

    .line 433
    .line 434
    goto/16 :goto_4

    .line 435
    .line 436
    :cond_c
    iget v3, v6, Landroidx/fragment/app/c;->e:I

    .line 437
    .line 438
    iput v3, v7, Landroidx/fragment/app/e0;->f:I

    .line 439
    .line 440
    iget-object v3, v6, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    .line 441
    .line 442
    iput-object v3, v7, Landroidx/fragment/app/e0;->h:Ljava/lang/String;

    .line 443
    .line 444
    iget v3, v6, Landroidx/fragment/app/c;->g:I

    .line 445
    .line 446
    iput v3, v7, Landroidx/fragment/app/a;->r:I

    .line 447
    .line 448
    iput-boolean v5, v7, Landroidx/fragment/app/e0;->g:Z

    .line 449
    .line 450
    iget v3, v6, Landroidx/fragment/app/c;->h:I

    .line 451
    .line 452
    iput v3, v7, Landroidx/fragment/app/e0;->i:I

    .line 453
    .line 454
    iget-object v3, v6, Landroidx/fragment/app/c;->i:Ljava/lang/CharSequence;

    .line 455
    .line 456
    iput-object v3, v7, Landroidx/fragment/app/e0;->j:Ljava/lang/CharSequence;

    .line 457
    .line 458
    iget v3, v6, Landroidx/fragment/app/c;->j:I

    .line 459
    .line 460
    iput v3, v7, Landroidx/fragment/app/e0;->k:I

    .line 461
    .line 462
    iget-object v3, v6, Landroidx/fragment/app/c;->k:Ljava/lang/CharSequence;

    .line 463
    .line 464
    iput-object v3, v7, Landroidx/fragment/app/e0;->l:Ljava/lang/CharSequence;

    .line 465
    .line 466
    iget-object v3, v6, Landroidx/fragment/app/c;->l:Ljava/util/ArrayList;

    .line 467
    .line 468
    iput-object v3, v7, Landroidx/fragment/app/e0;->m:Ljava/util/ArrayList;

    .line 469
    .line 470
    iget-object v3, v6, Landroidx/fragment/app/c;->m:Ljava/util/ArrayList;

    .line 471
    .line 472
    iput-object v3, v7, Landroidx/fragment/app/e0;->n:Ljava/util/ArrayList;

    .line 473
    .line 474
    iget-boolean v3, v6, Landroidx/fragment/app/c;->n:Z

    .line 475
    .line 476
    iput-boolean v3, v7, Landroidx/fragment/app/e0;->o:Z

    .line 477
    .line 478
    invoke-virtual {v7, v5}, Landroidx/fragment/app/a;->h(I)V

    .line 479
    .line 480
    .line 481
    invoke-static {v12}, Landroidx/fragment/app/T;->f0(I)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-eqz v3, :cond_d

    .line 486
    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const-string v6, "restoreAllState: back stack #"

    .line 490
    .line 491
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v6, " (index "

    .line 498
    .line 499
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    iget v6, v7, Landroidx/fragment/app/a;->r:I

    .line 503
    .line 504
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    new-instance v3, Landroidx/fragment/app/g0;

    .line 521
    .line 522
    invoke-direct {v3}, Landroidx/fragment/app/g0;-><init>()V

    .line 523
    .line 524
    .line 525
    new-instance v6, Ljava/io/PrintWriter;

    .line 526
    .line 527
    invoke-direct {v6, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 528
    .line 529
    .line 530
    const-string v3, "  "

    .line 531
    .line 532
    const/4 v8, 0x0

    .line 533
    invoke-virtual {v7, v3, v6, v8}, Landroidx/fragment/app/a;->j(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 537
    .line 538
    .line 539
    goto :goto_6

    .line 540
    :cond_d
    const/4 v8, 0x0

    .line 541
    :goto_6
    iget-object v3, v0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 542
    .line 543
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    add-int/lit8 v2, v2, 0x1

    .line 547
    .line 548
    goto/16 :goto_3

    .line 549
    .line 550
    :cond_e
    const/4 v8, 0x0

    .line 551
    goto :goto_7

    .line 552
    :cond_f
    const/4 v8, 0x0

    .line 553
    iput-object v4, v0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 554
    .line 555
    :goto_7
    iget-object v2, v0, Landroidx/fragment/app/T;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 556
    .line 557
    iget v3, v1, Landroidx/fragment/app/V;->d:I

    .line 558
    .line 559
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 560
    .line 561
    .line 562
    iget-object v2, v1, Landroidx/fragment/app/V;->e:Ljava/lang/String;

    .line 563
    .line 564
    if-eqz v2, :cond_10

    .line 565
    .line 566
    invoke-virtual {v0, v2}, Landroidx/fragment/app/T;->N(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    iput-object v2, v0, Landroidx/fragment/app/T;->r:Landroidx/fragment/app/u;

    .line 571
    .line 572
    invoke-direct {v0, v2}, Landroidx/fragment/app/T;->x(Landroidx/fragment/app/u;)V

    .line 573
    .line 574
    .line 575
    :cond_10
    iget-object v2, v1, Landroidx/fragment/app/V;->f:Ljava/util/ArrayList;

    .line 576
    .line 577
    if-eqz v2, :cond_11

    .line 578
    .line 579
    const/4 v3, 0x0

    .line 580
    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 581
    .line 582
    .line 583
    move-result v4

    .line 584
    if-ge v3, v4, :cond_11

    .line 585
    .line 586
    iget-object v4, v1, Landroidx/fragment/app/V;->g:Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    check-cast v4, Landroid/os/Bundle;

    .line 593
    .line 594
    iget-object v5, v0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 595
    .line 596
    invoke-virtual {v5}, Landroidx/fragment/app/E;->u()Landroid/content/Context;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 601
    .line 602
    .line 603
    move-result-object v5

    .line 604
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 605
    .line 606
    .line 607
    iget-object v5, v0, Landroidx/fragment/app/T;->j:Ljava/util/Map;

    .line 608
    .line 609
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v6

    .line 613
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    add-int/lit8 v3, v3, 0x1

    .line 617
    .line 618
    goto :goto_8

    .line 619
    :cond_11
    new-instance v2, Ljava/util/ArrayDeque;

    .line 620
    .line 621
    iget-object v1, v1, Landroidx/fragment/app/V;->h:Ljava/util/ArrayList;

    .line 622
    .line 623
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 624
    .line 625
    .line 626
    iput-object v2, v0, Landroidx/fragment/app/T;->x:Ljava/util/ArrayDeque;

    .line 627
    .line 628
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "FragmentManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 30
    .line 31
    const-string v2, "}"

    .line 32
    .line 33
    const-string v3, "{"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/fragment/app/T;->q:Landroidx/fragment/app/u;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "null"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-string v1, "}}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method final u(Landroidx/fragment/app/u;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/fragment/app/Y;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroidx/fragment/app/Y;->a(Landroidx/fragment/app/u;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method final u0()Landroid/os/Parcelable;
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/T;->h()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/fragment/app/k0;

    .line 21
    .line 22
    iget-boolean v3, v1, Landroidx/fragment/app/k0;->e:Z

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iput-boolean v2, v1, Landroidx/fragment/app/k0;->e:Z

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/k0;->b()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0}, Landroidx/fragment/app/T;->h()Ljava/util/HashSet;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/fragment/app/k0;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/k0;->d()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Landroidx/fragment/app/T;->J(Z)Z

    .line 58
    .line 59
    .line 60
    iput-boolean v0, p0, Landroidx/fragment/app/T;->z:Z

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/fragment/app/T;->G:Landroidx/fragment/app/X;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroidx/fragment/app/X;->k(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->u()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const-string v4, "FragmentManager"

    .line 78
    .line 79
    const/4 v5, 0x2

    .line 80
    const/4 v6, 0x0

    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    invoke-static {v5}, Landroidx/fragment/app/T;->f0(I)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    const-string v0, "saveAllState: no fragments!"

    .line 90
    .line 91
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_3
    return-object v6

    .line 95
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->v()Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v3, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 100
    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-lez v3, :cond_6

    .line 108
    .line 109
    new-array v6, v3, [Landroidx/fragment/app/c;

    .line 110
    .line 111
    :goto_2
    if-ge v2, v3, :cond_6

    .line 112
    .line 113
    new-instance v7, Landroidx/fragment/app/c;

    .line 114
    .line 115
    iget-object v8, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    check-cast v8, Landroidx/fragment/app/a;

    .line 122
    .line 123
    invoke-direct {v7, v8}, Landroidx/fragment/app/c;-><init>(Landroidx/fragment/app/a;)V

    .line 124
    .line 125
    .line 126
    aput-object v7, v6, v2

    .line 127
    .line 128
    invoke-static {v5}, Landroidx/fragment/app/T;->f0(I)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_5

    .line 133
    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v8, "saveAllState: adding back stack #"

    .line 137
    .line 138
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v8, ": "

    .line 145
    .line 146
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v8, p0, Landroidx/fragment/app/T;->d:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    new-instance v2, Landroidx/fragment/app/V;

    .line 169
    .line 170
    invoke-direct {v2}, Landroidx/fragment/app/V;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v1, v2, Landroidx/fragment/app/V;->a:Ljava/util/ArrayList;

    .line 174
    .line 175
    iput-object v0, v2, Landroidx/fragment/app/V;->b:Ljava/util/ArrayList;

    .line 176
    .line 177
    iput-object v6, v2, Landroidx/fragment/app/V;->c:[Landroidx/fragment/app/c;

    .line 178
    .line 179
    iget-object v0, p0, Landroidx/fragment/app/T;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    iput v0, v2, Landroidx/fragment/app/V;->d:I

    .line 186
    .line 187
    iget-object v0, p0, Landroidx/fragment/app/T;->r:Landroidx/fragment/app/u;

    .line 188
    .line 189
    if-eqz v0, :cond_7

    .line 190
    .line 191
    iget-object v0, v0, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 192
    .line 193
    iput-object v0, v2, Landroidx/fragment/app/V;->e:Ljava/lang/String;

    .line 194
    .line 195
    :cond_7
    iget-object v0, v2, Landroidx/fragment/app/V;->f:Ljava/util/ArrayList;

    .line 196
    .line 197
    iget-object v1, p0, Landroidx/fragment/app/T;->j:Ljava/util/Map;

    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    .line 205
    .line 206
    iget-object v0, v2, Landroidx/fragment/app/V;->g:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    .line 214
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    .line 216
    .line 217
    iget-object v1, p0, Landroidx/fragment/app/T;->x:Ljava/util/ArrayDeque;

    .line 218
    .line 219
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    .line 221
    .line 222
    iput-object v0, v2, Landroidx/fragment/app/V;->h:Ljava/util/ArrayList;

    .line 223
    .line 224
    return-object v2
.end method

.method final v()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/T;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/u;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/fragment/app/u;->M()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    return v1
.end method

.method final v0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/T;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/E;->v()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Landroidx/fragment/app/T;->H:Ljava/lang/Runnable;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/fragment/app/T;->o:Landroidx/fragment/app/E;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/fragment/app/E;->v()Landroid/os/Handler;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Landroidx/fragment/app/T;->H:Ljava/lang/Runnable;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/T;->C0()V

    .line 40
    .line 41
    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v1

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_1
.end method

.method final w()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/T;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/fragment/app/u;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/u;->N()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method final w0(Landroidx/fragment/app/u;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/T;->S(Landroidx/fragment/app/u;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Landroidx/fragment/app/B;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroidx/fragment/app/B;

    .line 12
    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/fragment/app/B;->b(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method final x0(Landroidx/fragment/app/u;Landroidx/lifecycle/l;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/T;->N(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/u;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 18
    .line 19
    if-ne v0, p0, :cond_1

    .line 20
    .line 21
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/u;->J:Landroidx/lifecycle/l;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Fragment "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " is not an active fragment of FragmentManager "

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p2
.end method

.method final y()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->E(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method final y0(Landroidx/fragment/app/u;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/u;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/T;->N(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/u;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/fragment/app/u;->s:Landroidx/fragment/app/E;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/fragment/app/u;->r:Landroidx/fragment/app/T;

    .line 20
    .line 21
    if-ne v0, p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Fragment "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " is not an active fragment of FragmentManager "

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/T;->r:Landroidx/fragment/app/u;

    .line 53
    .line 54
    iput-object p1, p0, Landroidx/fragment/app/T;->r:Landroidx/fragment/app/u;

    .line 55
    .line 56
    invoke-direct {p0, v0}, Landroidx/fragment/app/T;->x(Landroidx/fragment/app/u;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Landroidx/fragment/app/T;->r:Landroidx/fragment/app/u;

    .line 60
    .line 61
    invoke-direct {p0, p1}, Landroidx/fragment/app/T;->x(Landroidx/fragment/app/u;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method final z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/T;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->m()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/fragment/app/u;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/fragment/app/u;->P(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method
