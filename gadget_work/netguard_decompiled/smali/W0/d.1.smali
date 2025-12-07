.class public final LW0/d;
.super LW0/y;
.source "SourceFile"

# interfaces
.implements LI0/e;
.implements LK0/d;


# static fields
.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _state:Ljava/lang/Object;

.field private g:LW0/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "_decision"

    const-class v1, LW0/d;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LW0/d;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LW0/d;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 11

    .line 1
    :cond_0
    iget-object v0, p0, LW0/d;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, LW0/c0;

    .line 4
    .line 5
    if-nez v1, :cond_b

    .line 6
    .line 7
    instance-of v1, v0, LW0/j;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    instance-of v1, v0, LW0/i;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    move-object v9, v0

    .line 19
    check-cast v9, LW0/i;

    .line 20
    .line 21
    iget-object v1, v9, LW0/i;->e:Ljava/lang/Throwable;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 v1, 0x0

    .line 28
    :goto_0
    xor-int/2addr v1, v8

    .line 29
    if-eqz v1, :cond_7

    .line 30
    .line 31
    iget-object v2, v9, LW0/i;->a:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v3, v9, LW0/i;->b:LW0/c;

    .line 34
    .line 35
    iget-object v4, v9, LW0/i;->c:LO0/l;

    .line 36
    .line 37
    iget-object v5, v9, LW0/i;->d:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v10, LW0/i;

    .line 40
    .line 41
    move-object v1, v10

    .line 42
    move-object v6, p2

    .line 43
    invoke-direct/range {v1 .. v6}, LW0/i;-><init>(Ljava/lang/Object;LW0/c;LO0/l;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, LW0/d;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 47
    .line 48
    :cond_3
    invoke-virtual {v1, p0, v0, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const/4 v7, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eq v2, v0, :cond_3

    .line 61
    .line 62
    :goto_1
    if-eqz v7, :cond_0

    .line 63
    .line 64
    iget-object v0, v9, LW0/i;->b:LW0/c;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    :try_start_0
    invoke-virtual {v0, p2}, LW0/c;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    move-object v2, v0

    .line 76
    new-instance v0, Lw/b;

    .line 77
    .line 78
    const-string v3, "Exception in invokeOnCancellation handler for "

    .line 79
    .line 80
    invoke-static {p0, v3}, LP0/f;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-direct {v0, v3, v2}, Lw/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v0}, LW0/s;->b(LI0/l;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    iget-object v0, v9, LW0/i;->c:LO0/l;

    .line 91
    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    :try_start_1
    invoke-interface {v0, p2}, LO0/l;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    move-object v2, v0

    .line 101
    new-instance v0, Lw/b;

    .line 102
    .line 103
    const-string v3, "Exception in resume onCancellation handler for "

    .line 104
    .line 105
    invoke-static {p0, v3}, LP0/f;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-direct {v0, v3, v2}, Lw/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v0}, LW0/s;->b(LI0/l;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :goto_3
    return-void

    .line 116
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string v1, "Must be called at most once"

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_8
    sget-object v9, LW0/d;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 129
    .line 130
    new-instance v10, LW0/i;

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v4, 0x0

    .line 134
    const/16 v6, 0xe

    .line 135
    .line 136
    move-object v1, v10

    .line 137
    move-object v2, v0

    .line 138
    move-object v5, p2

    .line 139
    invoke-direct/range {v1 .. v6}, LW0/i;-><init>(Ljava/lang/Object;LW0/c;LO0/l;Ljava/util/concurrent/CancellationException;I)V

    .line 140
    .line 141
    .line 142
    :cond_9
    invoke-virtual {v9, p0, v0, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_a

    .line 147
    .line 148
    const/4 v7, 0x1

    .line 149
    goto :goto_4

    .line 150
    :cond_a
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eq v1, v0, :cond_9

    .line 155
    .line 156
    :goto_4
    if-eqz v7, :cond_0

    .line 157
    .line 158
    return-void

    .line 159
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    const-string v1, "Not completed"

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0
.end method

.method public final b()LI0/e;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()LK0/d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-super {p0, p1}, LW0/y;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    return-object p1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 13

    .line 1
    invoke-static {p1}, LG0/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, LW0/j;

    .line 9
    .line 10
    invoke-direct {p1, v0}, LW0/j;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    iget v0, p0, LW0/y;->f:I

    .line 14
    .line 15
    :goto_1
    const/4 v4, 0x0

    .line 16
    iget-object v7, p0, LW0/d;->_state:Ljava/lang/Object;

    .line 17
    .line 18
    instance-of v1, v7, LW0/c0;

    .line 19
    .line 20
    if-eqz v1, :cond_13

    .line 21
    .line 22
    move-object v1, v7

    .line 23
    check-cast v1, LW0/c0;

    .line 24
    .line 25
    instance-of v2, p1, LW0/j;

    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x2

    .line 30
    const/4 v11, 0x0

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto :goto_5

    .line 34
    :cond_1
    if-eq v0, v8, :cond_3

    .line 35
    .line 36
    if-ne v0, v10, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 v2, 0x0

    .line 40
    goto :goto_3

    .line 41
    :cond_3
    :goto_2
    const/4 v2, 0x1

    .line 42
    :goto_3
    if-nez v2, :cond_4

    .line 43
    .line 44
    goto :goto_5

    .line 45
    :cond_4
    instance-of v2, v1, LW0/c;

    .line 46
    .line 47
    if-eqz v2, :cond_6

    .line 48
    .line 49
    new-instance v12, LW0/i;

    .line 50
    .line 51
    if-eqz v2, :cond_5

    .line 52
    .line 53
    check-cast v1, LW0/c;

    .line 54
    .line 55
    move-object v3, v1

    .line 56
    goto :goto_4

    .line 57
    :cond_5
    move-object v3, v9

    .line 58
    :goto_4
    const/4 v5, 0x0

    .line 59
    const/16 v6, 0x10

    .line 60
    .line 61
    move-object v1, v12

    .line 62
    move-object v2, p1

    .line 63
    invoke-direct/range {v1 .. v6}, LW0/i;-><init>(Ljava/lang/Object;LW0/c;LO0/l;Ljava/util/concurrent/CancellationException;I)V

    .line 64
    .line 65
    .line 66
    goto :goto_6

    .line 67
    :cond_6
    :goto_5
    move-object v12, p1

    .line 68
    :goto_6
    sget-object v1, LW0/d;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 69
    .line 70
    :cond_7
    invoke-virtual {v1, p0, v7, v12}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_8

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    goto :goto_7

    .line 78
    :cond_8
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eq v2, v7, :cond_7

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    :goto_7
    if-nez v1, :cond_9

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_9
    iget p1, p0, LW0/y;->f:I

    .line 89
    .line 90
    if-ne p1, v10, :cond_a

    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    goto :goto_8

    .line 94
    :cond_a
    const/4 p1, 0x0

    .line 95
    :goto_8
    if-nez p1, :cond_12

    .line 96
    .line 97
    invoke-virtual {p0}, LW0/d;->i()V

    .line 98
    .line 99
    .line 100
    :cond_b
    iget p1, p0, LW0/d;->_decision:I

    .line 101
    .line 102
    if-eqz p1, :cond_d

    .line 103
    .line 104
    if-ne p1, v8, :cond_c

    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    goto :goto_9

    .line 108
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    const-string v0, "Already resumed"

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_d
    sget-object p1, LW0/d;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 121
    .line 122
    invoke-virtual {p1, p0, v11, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_b

    .line 127
    .line 128
    const/4 p1, 0x1

    .line 129
    :goto_9
    if-eqz p1, :cond_e

    .line 130
    .line 131
    goto :goto_c

    .line 132
    :cond_e
    const/4 p1, 0x4

    .line 133
    if-ne v0, p1, :cond_f

    .line 134
    .line 135
    goto :goto_a

    .line 136
    :cond_f
    const/4 v8, 0x0

    .line 137
    :goto_a
    invoke-virtual {p0}, LW0/d;->h()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, LW0/d;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_10

    .line 146
    .line 147
    invoke-static {v0}, LG0/a;->b(Ljava/lang/Throwable;)LG0/e;

    .line 148
    .line 149
    .line 150
    goto :goto_b

    .line 151
    :cond_10
    invoke-virtual {p0, p1}, LW0/d;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    :goto_b
    if-eqz v8, :cond_11

    .line 155
    .line 156
    throw v9

    .line 157
    :cond_11
    throw v9

    .line 158
    :cond_12
    throw v9

    .line 159
    :cond_13
    instance-of v0, v7, LW0/e;

    .line 160
    .line 161
    if-eqz v0, :cond_14

    .line 162
    .line 163
    check-cast v7, LW0/e;

    .line 164
    .line 165
    invoke-virtual {v7}, LW0/e;->b()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_14

    .line 170
    .line 171
    :goto_c
    return-void

    .line 172
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    const-string v1, "Already resumed, but proposed with update "

    .line 175
    .line 176
    invoke-static {p1, v1}, LP0/f;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, LW0/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LW0/i;

    .line 6
    .line 7
    iget-object p1, p1, LW0/i;->a:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_0
    return-object p1
.end method

.method public final getContext()LI0/l;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LW0/d;->_state:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, LW0/d;->g:LW0/b0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, LW0/b0;->d:LW0/b0;

    .line 7
    .line 8
    iput-object v0, p0, LW0/d;->g:LW0/b0;

    .line 9
    .line 10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CancellableContinuation("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, LW0/s;->c(LI0/e;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "){"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, LW0/d;->_state:Ljava/lang/Object;

    .line 22
    .line 23
    instance-of v2, v1, LW0/c0;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const-string v1, "Active"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of v1, v1, LW0/e;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-string v1, "Cancelled"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "Completed"

    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "}@"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, LW0/s;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method
