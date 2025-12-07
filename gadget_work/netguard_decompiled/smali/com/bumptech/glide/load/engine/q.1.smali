.class final Lcom/bumptech/glide/load/engine/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/j;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements LY/e;


# instance fields
.field private A:LE/e;

.field private B:LE/e;

.field private C:Ljava/lang/Object;

.field private D:Lcom/bumptech/glide/load/DataSource;

.field private E:Lcom/bumptech/glide/load/data/e;

.field private volatile F:Lcom/bumptech/glide/load/engine/k;

.field private volatile G:Z

.field private volatile H:Z

.field private I:Z

.field private final d:Lcom/bumptech/glide/load/engine/l;

.field private final e:Ljava/util/ArrayList;

.field private final f:LY/i;

.field private final g:Lcom/bumptech/glide/load/engine/A;

.field private final h:Landroidx/core/util/f;

.field private final i:Lcom/bumptech/glide/load/engine/i;

.field private final j:Lcom/bumptech/glide/load/engine/p;

.field private k:Lcom/bumptech/glide/k;

.field private l:LE/e;

.field private m:Lcom/bumptech/glide/Priority;

.field private n:Lcom/bumptech/glide/load/engine/K;

.field private o:I

.field private p:I

.field private q:Lcom/bumptech/glide/load/engine/v;

.field private r:LE/i;

.field private s:Lcom/bumptech/glide/load/engine/n;

.field private t:I

.field private u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field private v:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field private w:J

.field private x:Z

.field private y:Ljava/lang/Object;

.field private z:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/A;Landroidx/core/util/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/l;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/l;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/q;->d:Lcom/bumptech/glide/load/engine/l;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/q;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-static {}, LY/i;->a()LY/i;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/q;->f:LY/i;

    .line 23
    .line 24
    new-instance v0, Lcom/bumptech/glide/load/engine/i;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/i;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/q;->i:Lcom/bumptech/glide/load/engine/i;

    .line 30
    .line 31
    new-instance v0, Lcom/bumptech/glide/load/engine/p;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/p;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/q;->j:Lcom/bumptech/glide/load/engine/p;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/q;->g:Lcom/bumptech/glide/load/engine/A;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/q;->h:Landroidx/core/util/f;

    .line 41
    .line 42
    return-void
.end method

.method private k(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/V;
    .locals 5

    .line 1
    const-string v0, "Decoded result "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->a()V

    .line 7
    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_0
    sget v2, LX/m;->b:I

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/engine/q;->l(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/V;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string p3, "DecodeJob"

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-direct {p0, p3, v2, v3, v1}, Lcom/bumptech/glide/load/engine/q;->q(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->a()V

    .line 45
    .line 46
    .line 47
    return-object p2

    .line 48
    :catchall_0
    move-exception p2

    .line 49
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->a()V

    .line 50
    .line 51
    .line 52
    throw p2
.end method

.method private l(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/V;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->d:Lcom/bumptech/glide/load/engine/l;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/l;->h(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/T;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->r:LE/i;

    .line 12
    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v4, 0x1a

    .line 16
    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 21
    .line 22
    if-eq p2, v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l;->w()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 34
    :goto_1
    sget-object v3, LM/v;->i:LE/h;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/Boolean;

    .line 41
    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    :cond_3
    :goto_2
    move-object v5, v0

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    new-instance v0, LE/i;

    .line 55
    .line 56
    invoke-direct {v0}, LE/i;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/q;->r:LE/i;

    .line 60
    .line 61
    invoke-virtual {v0, v4}, LE/i;->d(LE/i;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v3, v1}, LE/i;->e(LE/h;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :goto_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->k:Lcom/bumptech/glide/k;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->i()Lcom/bumptech/glide/q;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/q;->j(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/load/engine/q;->o:I

    .line 83
    .line 84
    iget v4, p0, Lcom/bumptech/glide/load/engine/q;->p:I

    .line 85
    .line 86
    new-instance v7, Lcom/bumptech/glide/load/engine/o;

    .line 87
    .line 88
    invoke-direct {v7, p0, p2}, Lcom/bumptech/glide/load/engine/o;-><init>(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V

    .line 89
    .line 90
    .line 91
    move-object v6, p1

    .line 92
    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/load/engine/T;->a(IILE/i;Lcom/bumptech/glide/load/data/g;Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/load/engine/V;

    .line 93
    .line 94
    .line 95
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->a()V

    .line 97
    .line 98
    .line 99
    return-object p2

    .line 100
    :catchall_0
    move-exception p2

    .line 101
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->a()V

    .line 102
    .line 103
    .line 104
    throw p2
.end method

.method private m()V
    .locals 6

    .line 1
    const-string v0, "DecodeJob"

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
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/q;->w:J

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "data: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/q;->C:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v3, ", cache key: "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/q;->A:LE/e;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, ", fetcher: "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/q;->E:Lcom/bumptech/glide/load/data/e;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "Retrieved data"

    .line 49
    .line 50
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/q;->q(Ljava/lang/String;JLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->E:Lcom/bumptech/glide/load/data/e;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/q;->C:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/q;->D:Lcom/bumptech/glide/load/DataSource;

    .line 59
    .line 60
    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/q;->k(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/V;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/P; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/q;->B:LE/e;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/q;->D:Lcom/bumptech/glide/load/DataSource;

    .line 69
    .line 70
    invoke-virtual {v1, v2, v3, v0}, Lcom/bumptech/glide/load/engine/P;->g(LE/e;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/q;->e:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-object v1, v0

    .line 79
    :goto_0
    if-eqz v1, :cond_6

    .line 80
    .line 81
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/q;->D:Lcom/bumptech/glide/load/DataSource;

    .line 82
    .line 83
    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/q;->I:Z

    .line 84
    .line 85
    instance-of v4, v1, Lcom/bumptech/glide/load/engine/Q;

    .line 86
    .line 87
    if-eqz v4, :cond_1

    .line 88
    .line 89
    move-object v4, v1

    .line 90
    check-cast v4, Lcom/bumptech/glide/load/engine/Q;

    .line 91
    .line 92
    invoke-interface {v4}, Lcom/bumptech/glide/load/engine/Q;->a()V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/q;->i:Lcom/bumptech/glide/load/engine/i;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/i;->d()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_2

    .line 102
    .line 103
    invoke-static {v1}, Lcom/bumptech/glide/load/engine/U;->a(Lcom/bumptech/glide/load/engine/V;)Lcom/bumptech/glide/load/engine/U;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move-object v1, v0

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->x()V

    .line 109
    .line 110
    .line 111
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/q;->s:Lcom/bumptech/glide/load/engine/n;

    .line 112
    .line 113
    check-cast v5, Lcom/bumptech/glide/load/engine/I;

    .line 114
    .line 115
    invoke-virtual {v5, v1, v2, v3}, Lcom/bumptech/glide/load/engine/I;->j(Lcom/bumptech/glide/load/engine/V;Lcom/bumptech/glide/load/DataSource;Z)V

    .line 116
    .line 117
    .line 118
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 119
    .line 120
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 121
    .line 122
    :try_start_1
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/i;->d()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->g:Lcom/bumptech/glide/load/engine/A;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/q;->r:LE/i;

    .line 131
    .line 132
    invoke-virtual {v4, v1, v2}, Lcom/bumptech/glide/load/engine/i;->c(Lcom/bumptech/glide/load/engine/A;LE/i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    :cond_3
    if-eqz v0, :cond_4

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/U;->e()V

    .line 138
    .line 139
    .line 140
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->j:Lcom/bumptech/glide/load/engine/p;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/p;->b()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->u()V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catchall_0
    move-exception v1

    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/U;->e()V

    .line 156
    .line 157
    .line 158
    :cond_5
    throw v1

    .line 159
    :cond_6
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->v()V

    .line 160
    .line 161
    .line 162
    :cond_7
    :goto_1
    return-void
.end method

.method private n()Lcom/bumptech/glide/load/engine/k;
    .locals 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/m;->b:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/q;->d:Lcom/bumptech/glide/load/engine/l;

    .line 13
    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Unrecognized stage: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/b0;

    .line 50
    .line 51
    invoke-direct {v0, v2, p0}, Lcom/bumptech/glide/load/engine/b0;-><init>(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/j;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/g;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/l;->c()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1, v2, p0}, Lcom/bumptech/glide/load/engine/g;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/j;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    new-instance v0, Lcom/bumptech/glide/load/engine/W;

    .line 66
    .line 67
    invoke-direct {v0, v2, p0}, Lcom/bumptech/glide/load/engine/W;-><init>(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/j;)V

    .line 68
    .line 69
    .line 70
    return-object v0
.end method

.method private o(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/m;->b:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_5

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/q;->q:Lcom/bumptech/glide/load/engine/v;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/v;->b()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/q;->o(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    return-object p1

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Unrecognized stage: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_3
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/q;->x:Z

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 73
    .line 74
    :goto_1
    return-object p1

    .line 75
    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/q;->q:Lcom/bumptech/glide/load/engine/v;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/v;->a()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/q;->o(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_2
    return-object p1
.end method

.method private q(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " in "

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p3}, LX/m;->a(J)D

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ", load key: "

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/q;->n:Lcom/bumptech/glide/load/engine/K;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    const-string p1, ", "

    .line 34
    .line 35
    invoke-virtual {p1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string p1, ""

    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ", thread: "

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "DecodeJob"

    .line 66
    .line 67
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private r()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->x()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/P;

    .line 5
    .line 6
    const-string v1, "Failed to load resource"

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/q;->e:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/P;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->s:Lcom/bumptech/glide/load/engine/n;

    .line 19
    .line 20
    check-cast v1, Lcom/bumptech/glide/load/engine/I;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iput-object v0, v1, Lcom/bumptech/glide/load/engine/I;->w:Lcom/bumptech/glide/load/engine/P;

    .line 24
    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/I;->g()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->j:Lcom/bumptech/glide/load/engine/p;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/p;->c()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->u()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v0
.end method

.method private u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->j:Lcom/bumptech/glide/load/engine/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/p;->e()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->i:Lcom/bumptech/glide/load/engine/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/i;->b()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->d:Lcom/bumptech/glide/load/engine/l;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/l;->a()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/q;->G:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->k:Lcom/bumptech/glide/k;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->l:LE/e;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->r:LE/i;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->m:Lcom/bumptech/glide/Priority;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->n:Lcom/bumptech/glide/load/engine/K;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->s:Lcom/bumptech/glide/load/engine/n;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->F:Lcom/bumptech/glide/load/engine/k;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->z:Ljava/lang/Thread;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->A:LE/e;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->C:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->D:Lcom/bumptech/glide/load/DataSource;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->E:Lcom/bumptech/glide/load/data/e;

    .line 45
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/q;->w:J

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/q;->H:Z

    .line 51
    .line 52
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->y:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->e:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->h:Landroidx/core/util/f;

    .line 60
    .line 61
    invoke-interface {v0, p0}, Landroidx/core/util/f;->a(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private v()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/q;->z:Ljava/lang/Thread;

    .line 6
    .line 7
    sget v0, LX/m;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/q;->w:J

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/q;->H:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->F:Lcom/bumptech/glide/load/engine/k;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->F:Lcom/bumptech/glide/load/engine/k;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/k;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 33
    .line 34
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/q;->o(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->n()Lcom/bumptech/glide/load/engine/k;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/q;->F:Lcom/bumptech/glide/load/engine/k;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 47
    .line 48
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 49
    .line 50
    if-ne v1, v2, :cond_0

    .line 51
    .line 52
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/q;->v:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->s:Lcom/bumptech/glide/load/engine/n;

    .line 57
    .line 58
    check-cast v0, Lcom/bumptech/glide/load/engine/I;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/I;->n(Lcom/bumptech/glide/load/engine/q;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 65
    .line 66
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 67
    .line 68
    if-eq v1, v2, :cond_2

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/q;->H:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    :cond_2
    if-nez v0, :cond_3

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->r()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/m;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->v:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->m()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Unrecognized run reason: "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/q;->v:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->v()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/q;->o(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->n()Lcom/bumptech/glide/load/engine/k;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/q;->F:Lcom/bumptech/glide/load/engine/k;

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->v()V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->f:LY/i;

    .line 2
    .line 3
    invoke-virtual {v0}, LY/i;->c()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/q;->G:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr v2, v1

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Throwable;

    .line 33
    .line 34
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v2, "Already notified"

    .line 37
    .line 38
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/q;->G:Z

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/engine/q;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->m:Lcom/bumptech/glide/Priority;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/q;->m:Lcom/bumptech/glide/Priority;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/bumptech/glide/load/engine/q;->t:I

    .line 19
    .line 20
    iget p1, p1, Lcom/bumptech/glide/load/engine/q;->t:I

    .line 21
    .line 22
    sub-int/2addr v0, p1

    .line 23
    :cond_0
    return v0
.end method

.method public final f()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/q;->v:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->s:Lcom/bumptech/glide/load/engine/n;

    .line 6
    .line 7
    check-cast v0, Lcom/bumptech/glide/load/engine/I;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/I;->n(Lcom/bumptech/glide/load/engine/q;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final g(LE/e;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->a()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/P;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v1, "Fetching data failed"

    .line 11
    .line 12
    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/P;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->b()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/engine/P;->g(LE/e;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/q;->e:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/q;->z:Ljava/lang/Thread;

    .line 32
    .line 33
    if-eq p1, p2, :cond_0

    .line 34
    .line 35
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/q;->v:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/q;->s:Lcom/bumptech/glide/load/engine/n;

    .line 40
    .line 41
    check-cast p1, Lcom/bumptech/glide/load/engine/I;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/load/engine/I;->n(Lcom/bumptech/glide/load/engine/q;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->v()V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final h(LE/e;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;LE/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/q;->A:LE/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/q;->C:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/q;->E:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/q;->D:Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/q;->B:LE/e;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/q;->d:Lcom/bumptech/glide/load/engine/l;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/l;->c()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    :cond_0
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/q;->I:Z

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/q;->z:Ljava/lang/Thread;

    .line 32
    .line 33
    if-eq p1, p2, :cond_1

    .line 34
    .line 35
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/q;->v:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/q;->s:Lcom/bumptech/glide/load/engine/n;

    .line 40
    .line 41
    check-cast p1, Lcom/bumptech/glide/load/engine/I;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/load/engine/I;->n(Lcom/bumptech/glide/load/engine/q;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->m()V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final i()LY/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->f:LY/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/q;->H:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->F:Lcom/bumptech/glide/load/engine/k;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/k;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method final p(Lcom/bumptech/glide/k;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/K;LE/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/v;Ljava/util/Map;ZZZLE/i;Lcom/bumptech/glide/load/engine/I;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/q;->d:Lcom/bumptech/glide/load/engine/l;

    iget-object v15, v0, Lcom/bumptech/glide/load/engine/q;->g:Lcom/bumptech/glide/load/engine/A;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lcom/bumptech/glide/load/engine/l;->u(Lcom/bumptech/glide/k;Ljava/lang/Object;LE/e;IILcom/bumptech/glide/load/engine/v;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;LE/i;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/A;)V

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/q;->k:Lcom/bumptech/glide/k;

    move-object/from16 v1, p4

    .line 3
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/q;->l:LE/e;

    move-object/from16 v1, p9

    .line 4
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/q;->m:Lcom/bumptech/glide/Priority;

    move-object/from16 v1, p3

    .line 5
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/q;->n:Lcom/bumptech/glide/load/engine/K;

    move/from16 v1, p5

    .line 6
    iput v1, v0, Lcom/bumptech/glide/load/engine/q;->o:I

    move/from16 v1, p6

    .line 7
    iput v1, v0, Lcom/bumptech/glide/load/engine/q;->p:I

    move-object/from16 v1, p10

    .line 8
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/q;->q:Lcom/bumptech/glide/load/engine/v;

    move/from16 v1, p14

    .line 9
    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/q;->x:Z

    move-object/from16 v1, p15

    .line 10
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/q;->r:LE/i;

    move-object/from16 v1, p16

    .line 11
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/q;->s:Lcom/bumptech/glide/load/engine/n;

    move/from16 v1, p17

    .line 12
    iput v1, v0, Lcom/bumptech/glide/load/engine/q;->t:I

    .line 13
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/q;->v:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    move-object/from16 v1, p2

    .line 14
    iput-object v1, v0, Lcom/bumptech/glide/load/engine/q;->y:Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    const-string v0, "DecodeJob"

    .line 2
    .line 3
    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/q;->E:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    :try_start_0
    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/q;->H:Z

    .line 8
    .line 9
    if-eqz v3, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->r()V
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/f; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->w()V
    :try_end_1
    .catch Lcom/bumptech/glide/load/engine/f; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->a()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void

    .line 29
    :catchall_0
    move-exception v3

    .line 30
    const/4 v4, 0x3

    .line 31
    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/q;->H:Z

    .line 43
    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", stage: "

    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->u:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 65
    .line 66
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 67
    .line 68
    if-eq v0, v1, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->e:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->r()V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/q;->H:Z

    .line 79
    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    throw v3

    .line 83
    :cond_5
    throw v3

    .line 84
    :catch_0
    move-exception v0

    .line 85
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->a()V

    .line 90
    .line 91
    .line 92
    :cond_6
    throw v0
.end method

.method final s(Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/V;)Lcom/bumptech/glide/load/engine/V;
    .locals 12

    .line 1
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/V;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->d:Lcom/bumptech/glide/load/engine/l;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v8}, Lcom/bumptech/glide/load/engine/l;->s(Ljava/lang/Class;)LE/l;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/q;->k:Lcom/bumptech/glide/k;

    .line 21
    .line 22
    iget v4, p0, Lcom/bumptech/glide/load/engine/q;->o:I

    .line 23
    .line 24
    iget v5, p0, Lcom/bumptech/glide/load/engine/q;->p:I

    .line 25
    .line 26
    invoke-interface {v0, v3, p2, v4, v5}, LE/l;->b(Lcom/bumptech/glide/k;Lcom/bumptech/glide/load/engine/V;II)Lcom/bumptech/glide/load/engine/V;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    move-object v7, v0

    .line 31
    move-object v0, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v0, p2

    .line 34
    move-object v7, v2

    .line 35
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/V;->d()V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/l;->v(Lcom/bumptech/glide/load/engine/V;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/l;->n(Lcom/bumptech/glide/load/engine/V;)LE/k;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/q;->r:LE/i;

    .line 55
    .line 56
    invoke-interface {v2, p2}, LE/k;->d(LE/i;)Lcom/bumptech/glide/load/EncodeStrategy;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    sget-object p2, Lcom/bumptech/glide/load/EncodeStrategy;->NONE:Lcom/bumptech/glide/load/EncodeStrategy;

    .line 62
    .line 63
    :goto_1
    move-object v10, v2

    .line 64
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/q;->A:LE/e;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l;->g()Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    :goto_2
    const/4 v9, 0x1

    .line 77
    if-ge v6, v4, :cond_4

    .line 78
    .line 79
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    check-cast v11, LJ/F;

    .line 84
    .line 85
    iget-object v11, v11, LJ/F;->a:LE/e;

    .line 86
    .line 87
    invoke-interface {v11, v2}, LE/e;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-eqz v11, :cond_3

    .line 92
    .line 93
    const/4 v5, 0x1

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    :goto_3
    xor-int/lit8 v2, v5, 0x1

    .line 99
    .line 100
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/q;->q:Lcom/bumptech/glide/load/engine/v;

    .line 101
    .line 102
    invoke-virtual {v3, v2, p1, p2}, Lcom/bumptech/glide/load/engine/v;->d(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_8

    .line 107
    .line 108
    if-eqz v10, :cond_7

    .line 109
    .line 110
    sget-object p1, Lcom/bumptech/glide/load/engine/m;->c:[I

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    aget p1, p1, v2

    .line 117
    .line 118
    if-eq p1, v9, :cond_6

    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    if-ne p1, v2, :cond_5

    .line 122
    .line 123
    new-instance p1, Lcom/bumptech/glide/load/engine/X;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l;->b()LG/b;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/q;->A:LE/e;

    .line 130
    .line 131
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/q;->l:LE/e;

    .line 132
    .line 133
    iget v5, p0, Lcom/bumptech/glide/load/engine/q;->o:I

    .line 134
    .line 135
    iget v6, p0, Lcom/bumptech/glide/load/engine/q;->p:I

    .line 136
    .line 137
    iget-object v9, p0, Lcom/bumptech/glide/load/engine/q;->r:LE/i;

    .line 138
    .line 139
    move-object v1, p1

    .line 140
    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/engine/X;-><init>(LG/b;LE/e;LE/e;IILE/l;Ljava/lang/Class;LE/i;)V

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v1, "Unknown strategy: "

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_6
    new-instance p1, Lcom/bumptech/glide/load/engine/h;

    .line 165
    .line 166
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/q;->A:LE/e;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/q;->l:LE/e;

    .line 169
    .line 170
    invoke-direct {p1, p2, v1}, Lcom/bumptech/glide/load/engine/h;-><init>(LE/e;LE/e;)V

    .line 171
    .line 172
    .line 173
    :goto_4
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/U;->a(Lcom/bumptech/glide/load/engine/V;)Lcom/bumptech/glide/load/engine/U;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/q;->i:Lcom/bumptech/glide/load/engine/i;

    .line 178
    .line 179
    invoke-virtual {p2, p1, v10, v0}, Lcom/bumptech/glide/load/engine/i;->e(LE/e;LE/k;Lcom/bumptech/glide/load/engine/U;)V

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_7
    new-instance p1, Lcom/bumptech/glide/p;

    .line 184
    .line 185
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/V;->get()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-direct {p1, p2}, Lcom/bumptech/glide/p;-><init>(Ljava/lang/Class;)V

    .line 194
    .line 195
    .line 196
    throw p1

    .line 197
    :cond_8
    :goto_5
    return-object v0
.end method

.method final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/q;->j:Lcom/bumptech/glide/load/engine/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/p;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/q;->u()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method final y()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/q;->o(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method
