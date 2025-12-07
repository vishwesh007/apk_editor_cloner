.class public abstract LW0/F;
.super LW0/G;
.source "SourceFile"

# interfaces
.implements LW0/v;


# static fields
.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "_queue"

    const-class v1, LW0/F;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LW0/F;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LW0/F;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LW0/G;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LW0/F;->_queue:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, LW0/F;->_delayed:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, LW0/F;->_isCompleted:I

    .line 11
    .line 12
    return-void
.end method

.method public static final E(LW0/t;)Z
    .locals 0

    .line 1
    iget p0, p0, LW0/F;->_isCompleted:I

    .line 2
    .line 3
    return p0
.end method

.method private final G(Ljava/lang/Runnable;)Z
    .locals 6

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, LW0/F;->_queue:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, LW0/F;->_isCompleted:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    return v2

    .line 9
    :cond_1
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    sget-object v3, LW0/F;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 13
    .line 14
    :cond_2
    const/4 v0, 0x0

    .line 15
    invoke-virtual {v3, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :goto_1
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return v1

    .line 32
    :cond_4
    instance-of v3, v0, Lkotlinx/coroutines/internal/m;

    .line 33
    .line 34
    if-eqz v3, :cond_a

    .line 35
    .line 36
    move-object v3, v0

    .line 37
    check-cast v3, Lkotlinx/coroutines/internal/m;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_9

    .line 44
    .line 45
    if-eq v4, v1, :cond_6

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    if-eq v4, v0, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    return v2

    .line 52
    :cond_6
    sget-object v2, LW0/F;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    .line 54
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/m;->e()Lkotlinx/coroutines/internal/m;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_7
    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_8

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_8
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eq v1, v0, :cond_7

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_9
    return v1

    .line 73
    :cond_a
    invoke-static {}, LW0/H;->a()Lkotlinx/coroutines/internal/t;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-ne v0, v3, :cond_b

    .line 78
    .line 79
    return v2

    .line 80
    :cond_b
    new-instance v3, Lkotlinx/coroutines/internal/m;

    .line 81
    .line 82
    const/16 v4, 0x8

    .line 83
    .line 84
    invoke-direct {v3, v4, v1}, Lkotlinx/coroutines/internal/m;-><init>(IZ)V

    .line 85
    .line 86
    .line 87
    move-object v4, v0

    .line 88
    check-cast v4, Ljava/lang/Runnable;

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    sget-object v4, LW0/F;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 97
    .line 98
    :cond_c
    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_d

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_d
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eq v5, v0, :cond_c

    .line 111
    .line 112
    :goto_2
    if-eqz v2, :cond_0

    .line 113
    .line 114
    return v1
.end method


# virtual methods
.method public F(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LW0/F;->G(Ljava/lang/Runnable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, LW0/G;->C()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eq v0, p1, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, LW0/t;->j:LW0/t;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, LW0/t;->F(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method protected final H()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, LW0/C;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, LW0/F;->_delayed:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, LW0/E;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/z;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, LW0/F;->_queue:Ljava/lang/Object;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    instance-of v2, v0, Lkotlinx/coroutines/internal/m;

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    check-cast v0, Lkotlinx/coroutines/internal/m;

    .line 32
    .line 33
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->d()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    invoke-static {}, LW0/H;->a()Lkotlinx/coroutines/internal/t;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-ne v0, v2, :cond_4

    .line 43
    .line 44
    :goto_0
    const/4 v1, 0x1

    .line 45
    :cond_4
    :goto_1
    return v1
.end method

.method public final I()J
    .locals 12

    .line 1
    invoke-virtual {p0}, LW0/C;->B()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget-object v0, p0, LW0/F;->_delayed:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, LW0/E;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/z;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-nez v6, :cond_6

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    :cond_1
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/z;->b()Lkotlinx/coroutines/internal/A;

    .line 31
    .line 32
    .line 33
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-nez v8, :cond_2

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    move-object v8, v5

    .line 38
    goto :goto_3

    .line 39
    :cond_2
    :try_start_1
    check-cast v8, LW0/D;

    .line 40
    .line 41
    iget-wide v9, v8, LW0/D;->d:J

    .line 42
    .line 43
    sub-long v9, v6, v9

    .line 44
    .line 45
    cmp-long v11, v9, v1

    .line 46
    .line 47
    if-ltz v11, :cond_3

    .line 48
    .line 49
    const/4 v9, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v9, 0x0

    .line 52
    :goto_0
    if-eqz v9, :cond_4

    .line 53
    .line 54
    invoke-direct {p0, v8}, LW0/F;->G(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const/4 v8, 0x0

    .line 60
    :goto_1
    if-eqz v8, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/internal/z;->f(I)Lkotlinx/coroutines/internal/A;

    .line 63
    .line 64
    .line 65
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    goto :goto_2

    .line 67
    :cond_5
    move-object v8, v5

    .line 68
    :goto_2
    monitor-exit v0

    .line 69
    :goto_3
    check-cast v8, LW0/D;

    .line 70
    .line 71
    if-nez v8, :cond_1

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :catchall_0
    move-exception v1

    .line 75
    monitor-exit v0

    .line 76
    throw v1

    .line 77
    :cond_6
    :goto_4
    iget-object v0, p0, LW0/F;->_queue:Ljava/lang/Object;

    .line 78
    .line 79
    if-nez v0, :cond_7

    .line 80
    .line 81
    :goto_5
    move-object v7, v5

    .line 82
    goto :goto_7

    .line 83
    :cond_7
    instance-of v6, v0, Lkotlinx/coroutines/internal/m;

    .line 84
    .line 85
    if-eqz v6, :cond_b

    .line 86
    .line 87
    move-object v6, v0

    .line 88
    check-cast v6, Lkotlinx/coroutines/internal/m;

    .line 89
    .line 90
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/m;->f()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    sget-object v8, Lkotlinx/coroutines/internal/m;->g:Lkotlinx/coroutines/internal/t;

    .line 95
    .line 96
    if-eq v7, v8, :cond_8

    .line 97
    .line 98
    check-cast v7, Ljava/lang/Runnable;

    .line 99
    .line 100
    goto :goto_7

    .line 101
    :cond_8
    sget-object v7, LW0/F;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 102
    .line 103
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/m;->e()Lkotlinx/coroutines/internal/m;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    :cond_9
    invoke-virtual {v7, p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_a

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_a
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    if-eq v8, v0, :cond_9

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_b
    invoke-static {}, LW0/H;->a()Lkotlinx/coroutines/internal/t;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    if-ne v0, v6, :cond_c

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_c
    sget-object v6, LW0/F;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 129
    .line 130
    :cond_d
    invoke-virtual {v6, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_e

    .line 135
    .line 136
    const/4 v6, 0x1

    .line 137
    goto :goto_6

    .line 138
    :cond_e
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    if-eq v7, v0, :cond_d

    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    :goto_6
    if-eqz v6, :cond_6

    .line 146
    .line 147
    move-object v7, v0

    .line 148
    check-cast v7, Ljava/lang/Runnable;

    .line 149
    .line 150
    :goto_7
    if-eqz v7, :cond_f

    .line 151
    .line 152
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 153
    .line 154
    .line 155
    return-wide v1

    .line 156
    :cond_f
    invoke-super {p0}, LW0/C;->x()J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    cmp-long v0, v3, v1

    .line 161
    .line 162
    if-nez v0, :cond_10

    .line 163
    .line 164
    goto :goto_b

    .line 165
    :cond_10
    iget-object v0, p0, LW0/F;->_queue:Ljava/lang/Object;

    .line 166
    .line 167
    const-wide v3, 0x7fffffffffffffffL

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    if-nez v0, :cond_11

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_11
    instance-of v6, v0, Lkotlinx/coroutines/internal/m;

    .line 176
    .line 177
    if-eqz v6, :cond_16

    .line 178
    .line 179
    check-cast v0, Lkotlinx/coroutines/internal/m;

    .line 180
    .line 181
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->d()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_12

    .line 186
    .line 187
    goto :goto_b

    .line 188
    :cond_12
    :goto_8
    iget-object v0, p0, LW0/F;->_delayed:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, LW0/E;

    .line 191
    .line 192
    if-nez v0, :cond_13

    .line 193
    .line 194
    goto :goto_9

    .line 195
    :cond_13
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/z;->d()Lkotlinx/coroutines/internal/A;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    move-object v5, v0

    .line 200
    check-cast v5, LW0/D;

    .line 201
    .line 202
    :goto_9
    if-nez v5, :cond_14

    .line 203
    .line 204
    goto :goto_a

    .line 205
    :cond_14
    iget-wide v3, v5, LW0/D;->d:J

    .line 206
    .line 207
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 208
    .line 209
    .line 210
    move-result-wide v5

    .line 211
    sub-long/2addr v3, v5

    .line 212
    cmp-long v0, v3, v1

    .line 213
    .line 214
    if-gez v0, :cond_15

    .line 215
    .line 216
    goto :goto_b

    .line 217
    :cond_15
    :goto_a
    move-wide v1, v3

    .line 218
    goto :goto_b

    .line 219
    :cond_16
    invoke-static {}, LW0/H;->a()Lkotlinx/coroutines/internal/t;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    if-ne v0, v5, :cond_17

    .line 224
    .line 225
    goto :goto_a

    .line 226
    :cond_17
    :goto_b
    return-wide v1
.end method

.method protected final J()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LW0/F;->_queue:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object v0, p0, LW0/F;->_delayed:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public final K(JLW0/D;)V
    .locals 5

    .line 1
    iget v0, p0, LW0/F;->_isCompleted:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, LW0/F;->_delayed:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, LW0/E;

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    sget-object v3, LW0/F;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    new-instance v4, LW0/E;

    .line 18
    .line 19
    invoke-direct {v4, p1, p2}, LW0/E;-><init>(J)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v3, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, LW0/F;->_delayed:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0}, LP0/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    check-cast v0, LW0/E;

    .line 41
    .line 42
    :cond_3
    move-object v3, p0

    .line 43
    check-cast v3, LW0/t;

    .line 44
    .line 45
    invoke-virtual {p3, p1, p2, v0, v3}, LW0/D;->l(JLW0/E;LW0/t;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_1
    if-eqz v0, :cond_6

    .line 50
    .line 51
    if-eq v0, v2, :cond_5

    .line 52
    .line 53
    const/4 p1, 0x2

    .line 54
    if-ne v0, p1, :cond_4

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "unexpected result"

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, LW0/G;->D(JLW0/D;)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    iget-object p1, p0, LW0/F;->_delayed:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, LW0/E;

    .line 76
    .line 77
    if-nez p1, :cond_7

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_7
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/z;->d()Lkotlinx/coroutines/internal/A;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    move-object v1, p1

    .line 85
    check-cast v1, LW0/D;

    .line 86
    .line 87
    :goto_2
    if-ne v1, p3, :cond_8

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_8
    const/4 v2, 0x0

    .line 91
    :goto_3
    if-eqz v2, :cond_9

    .line 92
    .line 93
    invoke-virtual {p0}, LW0/G;->C()Ljava/lang/Thread;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-eq p2, p1, :cond_9

    .line 102
    .line 103
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 104
    .line 105
    .line 106
    :cond_9
    :goto_4
    return-void
.end method

.method public shutdown()V
    .locals 7

    .line 1
    invoke-static {}, LW0/f0;->b()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, LW0/F;->_isCompleted:I

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, LW0/F;->_queue:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    sget-object v4, LW0/F;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    invoke-static {}, LW0/H;->a()Lkotlinx/coroutines/internal/t;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    :cond_1
    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    :goto_0
    if-eqz v3, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    instance-of v4, v1, Lkotlinx/coroutines/internal/m;

    .line 37
    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    check-cast v1, Lkotlinx/coroutines/internal/m;

    .line 41
    .line 42
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/m;->b()Z

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    invoke-static {}, LW0/H;->a()Lkotlinx/coroutines/internal/t;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-ne v1, v4, :cond_5

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_5
    new-instance v4, Lkotlinx/coroutines/internal/m;

    .line 54
    .line 55
    const/16 v5, 0x8

    .line 56
    .line 57
    invoke-direct {v4, v5, v0}, Lkotlinx/coroutines/internal/m;-><init>(IZ)V

    .line 58
    .line 59
    .line 60
    move-object v5, v1

    .line 61
    check-cast v5, Ljava/lang/Runnable;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/internal/m;->a(Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    sget-object v5, LW0/F;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 67
    .line 68
    :cond_6
    invoke-virtual {v5, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_7

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_7
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    if-eq v6, v1, :cond_6

    .line 81
    .line 82
    :goto_1
    if-eqz v3, :cond_0

    .line 83
    .line 84
    :goto_2
    invoke-virtual {p0}, LW0/F;->I()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    const-wide/16 v3, 0x0

    .line 89
    .line 90
    cmp-long v5, v0, v3

    .line 91
    .line 92
    if-gtz v5, :cond_8

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    :goto_3
    iget-object v0, p0, LW0/F;->_delayed:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, LW0/E;

    .line 102
    .line 103
    if-nez v0, :cond_9

    .line 104
    .line 105
    move-object v0, v2

    .line 106
    goto :goto_4

    .line 107
    :cond_9
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/z;->g()Lkotlinx/coroutines/internal/A;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, LW0/D;

    .line 112
    .line 113
    :goto_4
    if-nez v0, :cond_a

    .line 114
    .line 115
    return-void

    .line 116
    :cond_a
    invoke-virtual {p0, v3, v4, v0}, LW0/G;->D(JLW0/D;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3
.end method

.method public final t(LI0/l;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, LW0/F;->F(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
