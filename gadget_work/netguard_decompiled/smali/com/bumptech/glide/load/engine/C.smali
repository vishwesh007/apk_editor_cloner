.class public final Lcom/bumptech/glide/load/engine/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/J;
.implements LH/l;
.implements Lcom/bumptech/glide/load/engine/M;


# static fields
.field private static final h:Z


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/S;

.field private final b:Lcom/bumptech/glide/load/engine/L;

.field private final c:LH/k;

.field private final d:Lcom/bumptech/glide/load/engine/z;

.field private final e:Lcom/bumptech/glide/load/engine/Z;

.field private final f:Lcom/bumptech/glide/load/engine/x;

.field private final g:Lcom/bumptech/glide/load/engine/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Engine"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/bumptech/glide/load/engine/C;->h:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(LH/k;LH/g;LI/h;LI/h;LI/h;LI/h;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/C;->c:LH/k;

    .line 5
    .line 6
    new-instance v0, Lcom/bumptech/glide/load/engine/A;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/A;-><init>(LH/g;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lcom/bumptech/glide/load/engine/e;

    .line 12
    .line 13
    invoke-direct {p2}, Lcom/bumptech/glide/load/engine/e;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/C;->g:Lcom/bumptech/glide/load/engine/e;

    .line 17
    .line 18
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/load/engine/e;->d(Lcom/bumptech/glide/load/engine/M;)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Lcom/bumptech/glide/load/engine/L;

    .line 22
    .line 23
    invoke-direct {p2}, Lcom/bumptech/glide/load/engine/L;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/C;->b:Lcom/bumptech/glide/load/engine/L;

    .line 27
    .line 28
    new-instance p2, Lcom/bumptech/glide/load/engine/S;

    .line 29
    .line 30
    invoke-direct {p2}, Lcom/bumptech/glide/load/engine/S;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/C;->a:Lcom/bumptech/glide/load/engine/S;

    .line 34
    .line 35
    new-instance p2, Lcom/bumptech/glide/load/engine/z;

    .line 36
    .line 37
    move-object v1, p2

    .line 38
    move-object v2, p3

    .line 39
    move-object v3, p4

    .line 40
    move-object v4, p5

    .line 41
    move-object v5, p6

    .line 42
    move-object v6, p0

    .line 43
    move-object v7, p0

    .line 44
    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/engine/z;-><init>(LI/h;LI/h;LI/h;LI/h;Lcom/bumptech/glide/load/engine/J;Lcom/bumptech/glide/load/engine/M;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/C;->d:Lcom/bumptech/glide/load/engine/z;

    .line 48
    .line 49
    new-instance p2, Lcom/bumptech/glide/load/engine/x;

    .line 50
    .line 51
    invoke-direct {p2, v0}, Lcom/bumptech/glide/load/engine/x;-><init>(Lcom/bumptech/glide/load/engine/A;)V

    .line 52
    .line 53
    .line 54
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/C;->f:Lcom/bumptech/glide/load/engine/x;

    .line 55
    .line 56
    new-instance p2, Lcom/bumptech/glide/load/engine/Z;

    .line 57
    .line 58
    invoke-direct {p2}, Lcom/bumptech/glide/load/engine/Z;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/C;->e:Lcom/bumptech/glide/load/engine/Z;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, LH/k;->i(LH/l;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private c(Lcom/bumptech/glide/load/engine/K;ZJ)Lcom/bumptech/glide/load/engine/N;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/C;->g:Lcom/bumptech/glide/load/engine/e;

    .line 6
    .line 7
    monitor-enter p2

    .line 8
    :try_start_0
    iget-object v1, p2, Lcom/bumptech/glide/load/engine/e;->c:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/bumptech/glide/load/engine/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    monitor-exit p2

    .line 19
    move-object v2, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/bumptech/glide/load/engine/N;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/load/engine/e;->c(Lcom/bumptech/glide/load/engine/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    :cond_2
    monitor-exit p2

    .line 33
    :goto_0
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/N;->a()V

    .line 36
    .line 37
    .line 38
    :cond_3
    if-eqz v2, :cond_5

    .line 39
    .line 40
    sget-boolean p2, Lcom/bumptech/glide/load/engine/C;->h:Z

    .line 41
    .line 42
    if-eqz p2, :cond_4

    .line 43
    .line 44
    const-string p2, "Loaded resource from active resources"

    .line 45
    .line 46
    invoke-static {p2, p3, p4, p1}, Lcom/bumptech/glide/load/engine/C;->d(Ljava/lang/String;JLE/e;)V

    .line 47
    .line 48
    .line 49
    :cond_4
    return-object v2

    .line 50
    :cond_5
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/C;->c:LH/k;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, LX/o;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    move-object v2, p2

    .line 57
    check-cast v2, Lcom/bumptech/glide/load/engine/V;

    .line 58
    .line 59
    if-nez v2, :cond_6

    .line 60
    .line 61
    move-object v2, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_6
    instance-of p2, v2, Lcom/bumptech/glide/load/engine/N;

    .line 64
    .line 65
    if-eqz p2, :cond_7

    .line 66
    .line 67
    check-cast v2, Lcom/bumptech/glide/load/engine/N;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_7
    new-instance p2, Lcom/bumptech/glide/load/engine/N;

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    const/4 v4, 0x1

    .line 74
    move-object v1, p2

    .line 75
    move-object v5, p1

    .line 76
    move-object v6, p0

    .line 77
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/N;-><init>(Lcom/bumptech/glide/load/engine/V;ZZLE/e;Lcom/bumptech/glide/load/engine/M;)V

    .line 78
    .line 79
    .line 80
    move-object v2, p2

    .line 81
    :goto_1
    if-eqz v2, :cond_8

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/N;->a()V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/C;->g:Lcom/bumptech/glide/load/engine/e;

    .line 87
    .line 88
    invoke-virtual {p2, p1, v2}, Lcom/bumptech/glide/load/engine/e;->a(LE/e;Lcom/bumptech/glide/load/engine/N;)V

    .line 89
    .line 90
    .line 91
    :cond_8
    if-eqz v2, :cond_a

    .line 92
    .line 93
    sget-boolean p2, Lcom/bumptech/glide/load/engine/C;->h:Z

    .line 94
    .line 95
    if-eqz p2, :cond_9

    .line 96
    .line 97
    const-string p2, "Loaded resource from cache"

    .line 98
    .line 99
    invoke-static {p2, p3, p4, p1}, Lcom/bumptech/glide/load/engine/C;->d(Ljava/lang/String;JLE/e;)V

    .line 100
    .line 101
    .line 102
    :cond_9
    return-object v2

    .line 103
    :cond_a
    return-object v0

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    monitor-exit p2

    .line 106
    throw p1
.end method

.method private static d(Ljava/lang/String;JLE/e;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, " in "

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, LX/m;->a(J)D

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "ms, key: "

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "Engine"

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static h(Lcom/bumptech/glide/load/engine/V;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/bumptech/glide/load/engine/N;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/bumptech/glide/load/engine/N;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/N;->g()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Cannot release anything but an EngineResource"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method private i(Lcom/bumptech/glide/k;Ljava/lang/Object;LE/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/v;Ljava/util/Map;ZZLE/i;ZZZZLcom/bumptech/glide/request/h;Ljava/util/concurrent/Executor;Lcom/bumptech/glide/load/engine/K;J)Lcom/bumptech/glide/load/engine/B;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    move-object/from16 v15, p20

    move-wide/from16 v13, p21

    .line 1
    iget-object v12, v0, Lcom/bumptech/glide/load/engine/C;->a:Lcom/bumptech/glide/load/engine/S;

    move/from16 v11, p17

    invoke-virtual {v12, v15, v11}, Lcom/bumptech/glide/load/engine/S;->a(LE/e;Z)Lcom/bumptech/glide/load/engine/I;

    move-result-object v3

    .line 2
    sget-boolean v26, Lcom/bumptech/glide/load/engine/C;->h:Z

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3, v1, v2}, Lcom/bumptech/glide/load/engine/I;->a(Lcom/bumptech/glide/request/h;Ljava/util/concurrent/Executor;)V

    if-eqz v26, :cond_0

    const-string v2, "Added to existing load"

    .line 4
    invoke-static {v2, v13, v14, v15}, Lcom/bumptech/glide/load/engine/C;->d(Ljava/lang/String;JLE/e;)V

    .line 5
    :cond_0
    new-instance v2, Lcom/bumptech/glide/load/engine/B;

    invoke-direct {v2, v0, v1, v3}, Lcom/bumptech/glide/load/engine/B;-><init>(Lcom/bumptech/glide/load/engine/C;Lcom/bumptech/glide/request/h;Lcom/bumptech/glide/load/engine/I;)V

    return-object v2

    .line 6
    :cond_1
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/C;->d:Lcom/bumptech/glide/load/engine/z;

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/z;->g:Landroidx/core/util/f;

    .line 7
    invoke-interface {v3}, Landroidx/core/util/f;->b()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/bumptech/glide/load/engine/I;

    move-object/from16 v25, v10

    invoke-static {v10}, LX/l;->b(Ljava/lang/Object;)V

    move-object v3, v10

    move-object/from16 v4, p20

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    .line 8
    invoke-virtual/range {v3 .. v8}, Lcom/bumptech/glide/load/engine/I;->e(LE/e;ZZZZ)V

    .line 9
    iget-object v9, v0, Lcom/bumptech/glide/load/engine/C;->f:Lcom/bumptech/glide/load/engine/x;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v4, v12

    move-object/from16 v12, p20

    move-wide v5, v13

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object v7, v15

    move/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move/from16 v21, p11

    move/from16 v22, p12

    move/from16 v23, p17

    move-object/from16 v24, p13

    .line 10
    invoke-virtual/range {v9 .. v25}, Lcom/bumptech/glide/load/engine/x;->a(Lcom/bumptech/glide/k;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/K;LE/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/v;Ljava/util/Map;ZZZLE/i;Lcom/bumptech/glide/load/engine/I;)Lcom/bumptech/glide/load/engine/q;

    move-result-object v8

    .line 11
    invoke-virtual {v4, v7, v3}, Lcom/bumptech/glide/load/engine/S;->b(LE/e;Lcom/bumptech/glide/load/engine/I;)V

    .line 12
    invoke-virtual {v3, v1, v2}, Lcom/bumptech/glide/load/engine/I;->a(Lcom/bumptech/glide/request/h;Ljava/util/concurrent/Executor;)V

    .line 13
    invoke-virtual {v3, v8}, Lcom/bumptech/glide/load/engine/I;->o(Lcom/bumptech/glide/load/engine/q;)V

    if-eqz v26, :cond_2

    const-string v2, "Started new load"

    .line 14
    invoke-static {v2, v5, v6, v7}, Lcom/bumptech/glide/load/engine/C;->d(Ljava/lang/String;JLE/e;)V

    .line 15
    :cond_2
    new-instance v2, Lcom/bumptech/glide/load/engine/B;

    invoke-direct {v2, v0, v1, v3}, Lcom/bumptech/glide/load/engine/B;-><init>(Lcom/bumptech/glide/load/engine/C;Lcom/bumptech/glide/request/h;Lcom/bumptech/glide/load/engine/I;)V

    return-object v2
.end method


# virtual methods
.method public final a(LE/e;Lcom/bumptech/glide/load/engine/N;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->g:Lcom/bumptech/glide/load/engine/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/e;->c:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/bumptech/glide/load/engine/d;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v1, Lcom/bumptech/glide/load/engine/d;->c:Lcom/bumptech/glide/load/engine/V;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/N;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->c:LH/k;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, LX/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/bumptech/glide/load/engine/V;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/C;->e:Lcom/bumptech/glide/load/engine/Z;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0}, Lcom/bumptech/glide/load/engine/Z;->a(Lcom/bumptech/glide/load/engine/V;Z)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v0

    .line 45
    throw p1
.end method

.method public final b(Lcom/bumptech/glide/k;Ljava/lang/Object;LE/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/v;Ljava/util/Map;ZZLE/i;ZZZZLcom/bumptech/glide/request/h;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/B;
    .locals 24

    move-object/from16 v15, p0

    .line 1
    sget-boolean v0, Lcom/bumptech/glide/load/engine/C;->h:Z

    if-eqz v0, :cond_0

    sget v0, LX/m;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v13, v0

    .line 3
    iget-object v0, v15, Lcom/bumptech/glide/load/engine/C;->b:Lcom/bumptech/glide/load/engine/L;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/K;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/engine/K;-><init>(Ljava/lang/Object;LE/e;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;LE/i;)V

    .line 6
    monitor-enter p0

    move/from16 v12, p14

    .line 7
    :try_start_0
    invoke-direct {v15, v0, v12, v13, v14}, Lcom/bumptech/glide/load/engine/C;->c(Lcom/bumptech/glide/load/engine/K;ZJ)Lcom/bumptech/glide/load/engine/N;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    .line 8
    invoke-direct/range {v1 .. v23}, Lcom/bumptech/glide/load/engine/C;->i(Lcom/bumptech/glide/k;Ljava/lang/Object;LE/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/v;Ljava/util/Map;ZZLE/i;ZZZZLcom/bumptech/glide/request/h;Ljava/util/concurrent/Executor;Lcom/bumptech/glide/load/engine/K;J)Lcom/bumptech/glide/load/engine/B;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 9
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    const/4 v2, 0x0

    move-object/from16 v3, p18

    check-cast v3, Lcom/bumptech/glide/request/i;

    invoke-virtual {v3, v1, v0, v2}, Lcom/bumptech/glide/request/i;->q(Lcom/bumptech/glide/load/engine/V;Lcom/bumptech/glide/load/DataSource;Z)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e(LE/e;Lcom/bumptech/glide/load/engine/I;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->a:Lcom/bumptech/glide/load/engine/S;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/S;->c(LE/e;Lcom/bumptech/glide/load/engine/I;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final declared-synchronized f(Lcom/bumptech/glide/load/engine/I;LE/e;Lcom/bumptech/glide/load/engine/N;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p3}, Lcom/bumptech/glide/load/engine/N;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->g:Lcom/bumptech/glide/load/engine/e;

    .line 11
    .line 12
    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/engine/e;->a(LE/e;Lcom/bumptech/glide/load/engine/N;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p3, p0, Lcom/bumptech/glide/load/engine/C;->a:Lcom/bumptech/glide/load/engine/S;

    .line 16
    .line 17
    invoke-virtual {p3, p2, p1}, Lcom/bumptech/glide/load/engine/S;->c(LE/e;Lcom/bumptech/glide/load/engine/I;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public final g(Lcom/bumptech/glide/load/engine/V;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/C;->e:Lcom/bumptech/glide/load/engine/Z;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/engine/Z;->a(Lcom/bumptech/glide/load/engine/V;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
