.class public final Lkotlinx/coroutines/scheduling/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field static final synthetic k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final d:Lkotlinx/coroutines/scheduling/n;

.field public e:I

.field private f:J

.field private g:J

.field private h:I

.field public i:Z

.field private volatile indexInArray:I

.field final synthetic j:Lkotlinx/coroutines/scheduling/b;

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field volatile synthetic workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/a;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/a;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 2
    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lkotlinx/coroutines/scheduling/n;

    .line 13
    .line 14
    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/n;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/n;

    .line 18
    .line 19
    const/4 p1, 0x4

    .line 20
    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->workerCtl:I

    .line 24
    .line 25
    sget-object p1, Lkotlinx/coroutines/scheduling/b;->n:Lkotlinx/coroutines/internal/t;

    .line 26
    .line 27
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a;->nextParkedWorker:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object p1, LQ0/e;->d:LQ0/d;

    .line 30
    .line 31
    invoke-virtual {p1}, LQ0/d;->b()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->h:I

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/a;->f(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final e()Lkotlinx/coroutines/scheduling/h;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/a;->d(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/e;

    .line 11
    .line 12
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->d()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/b;->i:Lkotlinx/coroutines/scheduling/e;

    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->d()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    .line 27
    .line 28
    :cond_0
    return-object v0

    .line 29
    :cond_1
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/b;->i:Lkotlinx/coroutines/scheduling/e;

    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->d()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/e;

    .line 40
    .line 41
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->d()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    .line 46
    .line 47
    :cond_2
    return-object v0
.end method

.method private final i(Z)Lkotlinx/coroutines/scheduling/h;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 4
    .line 5
    iget-wide v1, v1, Lkotlinx/coroutines/scheduling/b;->controlState:J

    .line 6
    .line 7
    const-wide/32 v3, 0x1fffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v1, v3

    .line 11
    long-to-int v2, v1

    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_0
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/a;->d(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 22
    .line 23
    const-wide v5, 0x7fffffffffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    move-wide v8, v5

    .line 30
    :cond_1
    :goto_0
    const-wide/16 v10, 0x0

    .line 31
    .line 32
    if-ge v7, v2, :cond_5

    .line 33
    .line 34
    add-int/lit8 v7, v7, 0x1

    .line 35
    .line 36
    const/4 v12, 0x1

    .line 37
    add-int/2addr v1, v12

    .line 38
    if-le v1, v2, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_2
    iget-object v12, v4, Lkotlinx/coroutines/scheduling/b;->j:Lkotlinx/coroutines/internal/r;

    .line 42
    .line 43
    invoke-virtual {v12, v1}, Lkotlinx/coroutines/internal/r;->b(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    check-cast v12, Lkotlinx/coroutines/scheduling/a;

    .line 48
    .line 49
    if-eqz v12, :cond_1

    .line 50
    .line 51
    if-eq v12, v0, :cond_1

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object v13, v0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/n;

    .line 56
    .line 57
    iget-object v12, v12, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/n;

    .line 58
    .line 59
    invoke-virtual {v13, v12}, Lkotlinx/coroutines/scheduling/n;->g(Lkotlinx/coroutines/scheduling/n;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v12

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object v13, v0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/n;

    .line 65
    .line 66
    iget-object v12, v12, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/n;

    .line 67
    .line 68
    invoke-virtual {v13, v12}, Lkotlinx/coroutines/scheduling/n;->h(Lkotlinx/coroutines/scheduling/n;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v12

    .line 72
    :goto_1
    const-wide/16 v14, -0x1

    .line 73
    .line 74
    cmp-long v16, v12, v14

    .line 75
    .line 76
    if-nez v16, :cond_4

    .line 77
    .line 78
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/n;

    .line 79
    .line 80
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/n;->e()Lkotlinx/coroutines/scheduling/h;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    return-object v1

    .line 85
    :cond_4
    cmp-long v14, v12, v10

    .line 86
    .line 87
    if-lez v14, :cond_1

    .line 88
    .line 89
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    cmp-long v1, v8, v5

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    move-wide v8, v10

    .line 100
    :goto_2
    iput-wide v8, v0, Lkotlinx/coroutines/scheduling/a;->g:J

    .line 101
    .line 102
    return-object v3
.end method


# virtual methods
.method public final a(Z)Lkotlinx/coroutines/scheduling/h;
    .locals 9

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 9
    .line 10
    :cond_1
    iget-wide v5, v0, Lkotlinx/coroutines/scheduling/b;->controlState:J

    .line 11
    .line 12
    const-wide v3, 0x7ffffc0000000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr v3, v5

    .line 18
    const/16 v7, 0x2a

    .line 19
    .line 20
    shr-long/2addr v3, v7

    .line 21
    long-to-int v4, v3

    .line 22
    if-nez v4, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-wide v3, 0x40000000000L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    sub-long v7, v5, v3

    .line 32
    .line 33
    sget-object v3, Lkotlinx/coroutines/scheduling/b;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 34
    .line 35
    move-object v4, v0

    .line 36
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    :goto_0
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iput v1, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 46
    .line 47
    :goto_1
    const/4 v0, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const/4 v0, 0x0

    .line 50
    :goto_2
    if-eqz v0, :cond_9

    .line 51
    .line 52
    if-eqz p1, :cond_6

    .line 53
    .line 54
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 55
    .line 56
    iget p1, p1, Lkotlinx/coroutines/scheduling/b;->d:I

    .line 57
    .line 58
    mul-int/lit8 p1, p1, 0x2

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/a;->d(I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/4 v1, 0x0

    .line 68
    :goto_3
    if-eqz v1, :cond_5

    .line 69
    .line 70
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->e()Lkotlinx/coroutines/scheduling/h;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-nez p1, :cond_8

    .line 75
    .line 76
    :cond_5
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/n;

    .line 77
    .line 78
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/n;->e()Lkotlinx/coroutines/scheduling/h;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-nez p1, :cond_8

    .line 83
    .line 84
    if-nez v1, :cond_7

    .line 85
    .line 86
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->e()Lkotlinx/coroutines/scheduling/h;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-nez p1, :cond_8

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->e()Lkotlinx/coroutines/scheduling/h;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_8

    .line 98
    .line 99
    :cond_7
    :goto_4
    invoke-direct {p0, v2}, Lkotlinx/coroutines/scheduling/a;->i(Z)Lkotlinx/coroutines/scheduling/h;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :cond_8
    return-object p1

    .line 104
    :cond_9
    if-eqz p1, :cond_a

    .line 105
    .line 106
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/n;

    .line 107
    .line 108
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/n;->e()Lkotlinx/coroutines/scheduling/h;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_b

    .line 113
    .line 114
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 115
    .line 116
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/b;->i:Lkotlinx/coroutines/scheduling/e;

    .line 117
    .line 118
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/k;->d()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_a
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 126
    .line 127
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/b;->i:Lkotlinx/coroutines/scheduling/e;

    .line 128
    .line 129
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/k;->d()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    .line 134
    .line 135
    :cond_b
    :goto_5
    if-nez p1, :cond_c

    .line 136
    .line 137
    invoke-direct {p0, v1}, Lkotlinx/coroutines/scheduling/a;->i(Z)Lkotlinx/coroutines/scheduling/h;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :cond_c
    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->indexInArray:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(I)I
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->h:I

    .line 2
    .line 3
    shl-int/lit8 v1, v0, 0xd

    .line 4
    .line 5
    xor-int/2addr v0, v1

    .line 6
    shr-int/lit8 v1, v0, 0x11

    .line 7
    .line 8
    xor-int/2addr v0, v1

    .line 9
    shl-int/lit8 v1, v0, 0x5

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    iput v0, p0, Lkotlinx/coroutines/scheduling/a;->h:I

    .line 13
    .line 14
    add-int/lit8 v1, p1, -0x1

    .line 15
    .line 16
    and-int v2, v1, p1

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    and-int p1, v0, v1

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    const v1, 0x7fffffff

    .line 24
    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    rem-int/2addr v0, p1

    .line 28
    return v0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 7
    .line 8
    iget-object v1, v1, Lkotlinx/coroutines/scheduling/b;->g:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "-worker-"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string v1, "TERMINATED"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->indexInArray:I

    .line 38
    .line 39
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final h(I)Z
    .locals 6

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget-object v2, Lkotlinx/coroutines/scheduling/b;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 11
    .line 12
    const-wide v3, 0x40000000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 18
    .line 19
    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 20
    .line 21
    .line 22
    :cond_1
    if-eq v0, p1, :cond_2

    .line 23
    .line 24
    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 25
    .line 26
    :cond_2
    return v1
.end method

.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :cond_1
    :goto_1
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 6
    .line 7
    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/b;->isTerminated()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x5

    .line 12
    if-nez v3, :cond_13

    .line 13
    .line 14
    iget v3, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 15
    .line 16
    if-eq v3, v4, :cond_13

    .line 17
    .line 18
    iget-boolean v3, v1, Lkotlinx/coroutines/scheduling/a;->i:Z

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lkotlinx/coroutines/scheduling/a;->a(Z)Lkotlinx/coroutines/scheduling/h;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v5, 0x3

    .line 25
    const-wide/16 v6, 0x0

    .line 26
    .line 27
    if-eqz v3, :cond_6

    .line 28
    .line 29
    iput-wide v6, v1, Lkotlinx/coroutines/scheduling/a;->g:J

    .line 30
    .line 31
    iget-object v0, v3, Lkotlinx/coroutines/scheduling/h;->e:Lkotlinx/coroutines/scheduling/i;

    .line 32
    .line 33
    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->a()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iput-wide v6, v1, Lkotlinx/coroutines/scheduling/a;->f:J

    .line 38
    .line 39
    iget v0, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    if-ne v0, v5, :cond_2

    .line 43
    .line 44
    iput v6, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 45
    .line 46
    :cond_2
    iget-object v5, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {v1, v6}, Lkotlinx/coroutines/scheduling/a;->h(I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/b;->h()V

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    move-object v3, v0

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-interface {v6, v0, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_3
    if-nez v2, :cond_5

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 84
    .line 85
    const-wide/32 v2, -0x200000

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 89
    .line 90
    .line 91
    iget v0, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 92
    .line 93
    if-eq v0, v4, :cond_0

    .line 94
    .line 95
    const/4 v0, 0x4

    .line 96
    iput v0, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    iput-boolean v0, v1, Lkotlinx/coroutines/scheduling/a;->i:Z

    .line 100
    .line 101
    iget-wide v8, v1, Lkotlinx/coroutines/scheduling/a;->g:J

    .line 102
    .line 103
    const/4 v3, 0x1

    .line 104
    cmp-long v10, v8, v6

    .line 105
    .line 106
    if-eqz v10, :cond_8

    .line 107
    .line 108
    if-nez v2, :cond_7

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    goto :goto_1

    .line 112
    :cond_7
    invoke-virtual {v1, v5}, Lkotlinx/coroutines/scheduling/a;->h(I)Z

    .line 113
    .line 114
    .line 115
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 116
    .line 117
    .line 118
    iget-wide v2, v1, Lkotlinx/coroutines/scheduling/a;->g:J

    .line 119
    .line 120
    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 121
    .line 122
    .line 123
    iput-wide v6, v1, Lkotlinx/coroutines/scheduling/a;->g:J

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    iget-object v8, v1, Lkotlinx/coroutines/scheduling/a;->nextParkedWorker:Ljava/lang/Object;

    .line 127
    .line 128
    sget-object v9, Lkotlinx/coroutines/scheduling/b;->n:Lkotlinx/coroutines/internal/t;

    .line 129
    .line 130
    if-eq v8, v9, :cond_9

    .line 131
    .line 132
    const/4 v8, 0x1

    .line 133
    goto :goto_4

    .line 134
    :cond_9
    const/4 v8, 0x0

    .line 135
    :goto_4
    if-nez v8, :cond_a

    .line 136
    .line 137
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 138
    .line 139
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/scheduling/b;->d(Lkotlinx/coroutines/scheduling/a;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :cond_a
    const/4 v8, -0x1

    .line 145
    iput v8, v1, Lkotlinx/coroutines/scheduling/a;->workerCtl:I

    .line 146
    .line 147
    :cond_b
    :goto_5
    iget-object v9, v1, Lkotlinx/coroutines/scheduling/a;->nextParkedWorker:Ljava/lang/Object;

    .line 148
    .line 149
    sget-object v10, Lkotlinx/coroutines/scheduling/b;->n:Lkotlinx/coroutines/internal/t;

    .line 150
    .line 151
    if-eq v9, v10, :cond_c

    .line 152
    .line 153
    const/4 v9, 0x1

    .line 154
    goto :goto_6

    .line 155
    :cond_c
    const/4 v9, 0x0

    .line 156
    :goto_6
    if-eqz v9, :cond_1

    .line 157
    .line 158
    iget v9, v1, Lkotlinx/coroutines/scheduling/a;->workerCtl:I

    .line 159
    .line 160
    if-ne v9, v8, :cond_1

    .line 161
    .line 162
    iget-object v9, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 163
    .line 164
    invoke-virtual {v9}, Lkotlinx/coroutines/scheduling/b;->isTerminated()Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-nez v9, :cond_1

    .line 169
    .line 170
    iget v9, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 171
    .line 172
    if-ne v9, v4, :cond_d

    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :cond_d
    invoke-virtual {v1, v5}, Lkotlinx/coroutines/scheduling/a;->h(I)Z

    .line 177
    .line 178
    .line 179
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 180
    .line 181
    .line 182
    iget-wide v9, v1, Lkotlinx/coroutines/scheduling/a;->f:J

    .line 183
    .line 184
    cmp-long v11, v9, v6

    .line 185
    .line 186
    if-nez v11, :cond_e

    .line 187
    .line 188
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 189
    .line 190
    .line 191
    move-result-wide v9

    .line 192
    iget-object v11, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 193
    .line 194
    iget-wide v11, v11, Lkotlinx/coroutines/scheduling/b;->f:J

    .line 195
    .line 196
    add-long/2addr v9, v11

    .line 197
    iput-wide v9, v1, Lkotlinx/coroutines/scheduling/a;->f:J

    .line 198
    .line 199
    :cond_e
    iget-object v9, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 200
    .line 201
    iget-wide v9, v9, Lkotlinx/coroutines/scheduling/b;->f:J

    .line 202
    .line 203
    invoke-static {v9, v10}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 204
    .line 205
    .line 206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    iget-wide v11, v1, Lkotlinx/coroutines/scheduling/a;->f:J

    .line 211
    .line 212
    sub-long/2addr v9, v11

    .line 213
    cmp-long v11, v9, v6

    .line 214
    .line 215
    if-ltz v11, :cond_b

    .line 216
    .line 217
    iput-wide v6, v1, Lkotlinx/coroutines/scheduling/a;->f:J

    .line 218
    .line 219
    iget-object v9, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    .line 220
    .line 221
    iget-object v10, v9, Lkotlinx/coroutines/scheduling/b;->j:Lkotlinx/coroutines/internal/r;

    .line 222
    .line 223
    monitor-enter v10

    .line 224
    :try_start_1
    invoke-virtual {v9}, Lkotlinx/coroutines/scheduling/b;->isTerminated()Z

    .line 225
    .line 226
    .line 227
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    if-eqz v11, :cond_f

    .line 229
    .line 230
    monitor-exit v10

    .line 231
    goto :goto_5

    .line 232
    :cond_f
    :try_start_2
    iget-wide v11, v9, Lkotlinx/coroutines/scheduling/b;->controlState:J

    .line 233
    .line 234
    const-wide/32 v13, 0x1fffff

    .line 235
    .line 236
    .line 237
    and-long/2addr v11, v13

    .line 238
    long-to-int v12, v11

    .line 239
    iget v11, v9, Lkotlinx/coroutines/scheduling/b;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    .line 241
    if-gt v12, v11, :cond_10

    .line 242
    .line 243
    monitor-exit v10

    .line 244
    goto :goto_5

    .line 245
    :cond_10
    :try_start_3
    sget-object v11, Lkotlinx/coroutines/scheduling/a;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 246
    .line 247
    invoke-virtual {v11, v1, v8, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 248
    .line 249
    .line 250
    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    if-nez v11, :cond_11

    .line 252
    .line 253
    monitor-exit v10

    .line 254
    goto :goto_5

    .line 255
    :cond_11
    :try_start_4
    iget v11, v1, Lkotlinx/coroutines/scheduling/a;->indexInArray:I

    .line 256
    .line 257
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/a;->f(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v1, v11, v0}, Lkotlinx/coroutines/scheduling/b;->g(Lkotlinx/coroutines/scheduling/a;II)V

    .line 261
    .line 262
    .line 263
    sget-object v12, Lkotlinx/coroutines/scheduling/b;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 264
    .line 265
    invoke-virtual {v12, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    .line 266
    .line 267
    .line 268
    move-result-wide v15

    .line 269
    and-long v12, v15, v13

    .line 270
    .line 271
    long-to-int v13, v12

    .line 272
    if-eq v13, v11, :cond_12

    .line 273
    .line 274
    iget-object v12, v9, Lkotlinx/coroutines/scheduling/b;->j:Lkotlinx/coroutines/internal/r;

    .line 275
    .line 276
    invoke-virtual {v12, v13}, Lkotlinx/coroutines/internal/r;->b(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    invoke-static {v12}, LP0/f;->b(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    check-cast v12, Lkotlinx/coroutines/scheduling/a;

    .line 284
    .line 285
    iget-object v14, v9, Lkotlinx/coroutines/scheduling/b;->j:Lkotlinx/coroutines/internal/r;

    .line 286
    .line 287
    invoke-virtual {v14, v11, v12}, Lkotlinx/coroutines/internal/r;->c(ILkotlinx/coroutines/scheduling/a;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v12, v11}, Lkotlinx/coroutines/scheduling/a;->f(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9, v12, v13, v11}, Lkotlinx/coroutines/scheduling/b;->g(Lkotlinx/coroutines/scheduling/a;II)V

    .line 294
    .line 295
    .line 296
    :cond_12
    iget-object v9, v9, Lkotlinx/coroutines/scheduling/b;->j:Lkotlinx/coroutines/internal/r;

    .line 297
    .line 298
    const/4 v11, 0x0

    .line 299
    invoke-virtual {v9, v13, v11}, Lkotlinx/coroutines/internal/r;->c(ILkotlinx/coroutines/scheduling/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 300
    .line 301
    .line 302
    monitor-exit v10

    .line 303
    iput v4, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    .line 304
    .line 305
    goto/16 :goto_5

    .line 306
    .line 307
    :catchall_1
    move-exception v0

    .line 308
    monitor-exit v10

    .line 309
    throw v0

    .line 310
    :cond_13
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/scheduling/a;->h(I)Z

    .line 311
    .line 312
    .line 313
    return-void
.end method
