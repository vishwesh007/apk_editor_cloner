.class public abstract Lp0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final w:[Lm0/c;


# instance fields
.field private volatile a:Ljava/lang/String;

.field b:Lp0/a0;

.field private final c:Landroid/content/Context;

.field private final d:Lp0/m;

.field final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private h:Lp0/o;

.field protected i:Lp0/d;

.field private j:Landroid/os/IInterface;

.field private final k:Ljava/util/ArrayList;

.field private l:Lp0/Q;

.field private m:I

.field private final n:Lp0/b;

.field private final o:Lp0/c;

.field private final p:I

.field private final q:Ljava/lang/String;

.field private volatile r:Ljava/lang/String;

.field private s:Lm0/a;

.field private t:Z

.field private volatile u:Lp0/U;

.field protected v:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Lm0/c;

    sput-object v0, Lp0/g;->w:[Lm0/c;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lp0/m;Lm0/d;ILp0/b;Lp0/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p4, 0x0

    .line 5
    iput-object p4, p0, Lp0/g;->a:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lp0/g;->f:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lp0/g;->g:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lp0/g;->k:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lp0/g;->m:I

    .line 30
    .line 31
    iput-object p4, p0, Lp0/g;->s:Lm0/a;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lp0/g;->t:Z

    .line 35
    .line 36
    iput-object p4, p0, Lp0/g;->u:Lp0/U;

    .line 37
    .line 38
    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object p4, p0, Lp0/g;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iput-object p1, p0, Lp0/g;->c:Landroid/content/Context;

    .line 48
    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    const-string p1, "Supervisor must not be null"

    .line 52
    .line 53
    invoke-static {p3, p1}, Lp0/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iput-object p3, p0, Lp0/g;->d:Lp0/m;

    .line 57
    .line 58
    new-instance p1, Lp0/N;

    .line 59
    .line 60
    invoke-direct {p1, p0, p2}, Lp0/N;-><init>(Lp0/g;Landroid/os/Looper;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lp0/g;->e:Landroid/os/Handler;

    .line 64
    .line 65
    iput p5, p0, Lp0/g;->p:I

    .line 66
    .line 67
    iput-object p6, p0, Lp0/g;->n:Lp0/b;

    .line 68
    .line 69
    iput-object p7, p0, Lp0/g;->o:Lp0/c;

    .line 70
    .line 71
    iput-object p8, p0, Lp0/g;->q:Ljava/lang/String;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 75
    .line 76
    const-string p2, "Looper must not be null"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 83
    .line 84
    const-string p2, "Context must not be null"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method static bridge synthetic D(Lp0/g;)Lm0/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lp0/g;->s:Lm0/a;

    return-object p0
.end method

.method static bridge synthetic E(Lp0/g;)Lp0/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lp0/g;->n:Lp0/b;

    return-object p0
.end method

.method static bridge synthetic F(Lp0/g;)Lp0/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lp0/g;->o:Lp0/c;

    return-object p0
.end method

.method static bridge synthetic G(Lp0/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lp0/g;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic H(Lp0/g;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lp0/g;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic I(Lp0/g;Lm0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/g;->s:Lm0/a;

    return-void
.end method

.method static bridge synthetic J(Lp0/g;Lp0/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/g;->h:Lp0/o;

    return-void
.end method

.method static bridge synthetic K(Lp0/g;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lp0/g;->Q(ILandroid/os/IInterface;)V

    return-void
.end method

.method static bridge synthetic L(Lp0/g;Lp0/U;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/g;->u:Lp0/U;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic M(Lp0/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/g;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lp0/g;->m:I

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lp0/g;->t:Z

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x4

    .line 16
    :goto_0
    iget-object v1, p0, Lp0/g;->e:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object p0, p0, Lp0/g;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/16 v2, 0x10

    .line 25
    .line 26
    invoke-virtual {v1, v0, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method static bridge synthetic N(Lp0/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lp0/g;->t:Z

    return p0
.end method

.method static bridge synthetic O(Lp0/g;IILandroid/os/IInterface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lp0/g;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lp0/g;->m:I

    .line 5
    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, p2, p3}, Lp0/g;->Q(ILandroid/os/IInterface;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x1

    .line 16
    :goto_0
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method static bridge synthetic P(Lp0/g;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp0/g;->t:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lp0/g;->z()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lp0/g;->z()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :catch_0
    :goto_0
    return v1
.end method

.method private final Q(ILandroid/os/IInterface;)V
    .locals 9

    .line 1
    const-string v0, " on com.google.android.gms"

    .line 2
    .line 3
    const-string v1, " on com.google.android.gms"

    .line 4
    .line 5
    const-string v2, "unable to connect to service: "

    .line 6
    .line 7
    const-string v3, "Calling connect() while still connected, missing disconnect() for "

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x4

    .line 12
    if-eq p1, v6, :cond_0

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v7, 0x1

    .line 17
    :goto_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v8, 0x1

    .line 22
    :goto_1
    if-ne v7, v8, :cond_2

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    :cond_2
    if-eqz v4, :cond_d

    .line 26
    .line 27
    iget-object v4, p0, Lp0/g;->f:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v4

    .line 30
    :try_start_0
    iput p1, p0, Lp0/g;->m:I

    .line 31
    .line 32
    iput-object p2, p0, Lp0/g;->j:Landroid/os/IInterface;

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    if-eq p1, v5, :cond_a

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    if-eq p1, v5, :cond_4

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    if-eq p1, v5, :cond_4

    .line 42
    .line 43
    if-eq p1, v6, :cond_3

    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_3
    invoke-static {p2}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_4
    iget-object p1, p0, Lp0/g;->l:Lp0/Q;

    .line 56
    .line 57
    if-eqz p1, :cond_6

    .line 58
    .line 59
    iget-object p2, p0, Lp0/g;->b:Lp0/a0;

    .line 60
    .line 61
    if-eqz p2, :cond_6

    .line 62
    .line 63
    const-string v5, "GmsClient"

    .line 64
    .line 65
    invoke-virtual {p2}, Lp0/a0;->a()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lp0/g;->d:Lp0/m;

    .line 88
    .line 89
    iget-object v1, p0, Lp0/g;->b:Lp0/a0;

    .line 90
    .line 91
    invoke-virtual {v1}, Lp0/a0;->a()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lp0/g;->b:Lp0/a0;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string v3, "com.google.android.gms"

    .line 104
    .line 105
    iget-object v5, p0, Lp0/g;->q:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v5, :cond_5

    .line 108
    .line 109
    iget-object v5, p0, Lp0/g;->c:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    goto :goto_2

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_5
    :goto_2
    iget-object v6, p0, Lp0/g;->b:Lp0/a0;

    .line 124
    .line 125
    invoke-virtual {v6}, Lp0/a0;->b()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    new-instance v8, Lp0/V;

    .line 133
    .line 134
    invoke-direct {v8, v1, v3, v6}, Lp0/V;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v8, p1, v5}, Lp0/m;->c(Lp0/V;Lp0/Q;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lp0/g;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 143
    .line 144
    .line 145
    :cond_6
    new-instance p1, Lp0/Q;

    .line 146
    .line 147
    iget-object p2, p0, Lp0/g;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-direct {p1, p0, p2}, Lp0/Q;-><init>(Lp0/g;I)V

    .line 154
    .line 155
    .line 156
    iput-object p1, p0, Lp0/g;->l:Lp0/Q;

    .line 157
    .line 158
    new-instance p2, Lp0/a0;

    .line 159
    .line 160
    invoke-virtual {p0}, Lp0/g;->A()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lp0/g;->B()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    invoke-direct {p2, v1, v3}, Lp0/a0;-><init>(Ljava/lang/String;Z)V

    .line 169
    .line 170
    .line 171
    iput-object p2, p0, Lp0/g;->b:Lp0/a0;

    .line 172
    .line 173
    invoke-virtual {p2}, Lp0/a0;->b()Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_8

    .line 178
    .line 179
    invoke-virtual {p0}, Lp0/g;->p()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    const v1, 0x1110e58

    .line 184
    .line 185
    .line 186
    if-lt p2, v1, :cond_7

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 190
    .line 191
    iget-object p2, p0, Lp0/g;->b:Lp0/a0;

    .line 192
    .line 193
    invoke-virtual {p2}, Lp0/a0;->a()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    const-string v0, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    .line 198
    .line 199
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p1

    .line 211
    :cond_8
    :goto_3
    iget-object p2, p0, Lp0/g;->d:Lp0/m;

    .line 212
    .line 213
    iget-object v1, p0, Lp0/g;->b:Lp0/a0;

    .line 214
    .line 215
    invoke-virtual {v1}, Lp0/a0;->a()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v1}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    iget-object v3, p0, Lp0/g;->b:Lp0/a0;

    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    const-string v3, "com.google.android.gms"

    .line 228
    .line 229
    iget-object v5, p0, Lp0/g;->q:Ljava/lang/String;

    .line 230
    .line 231
    if-nez v5, :cond_9

    .line 232
    .line 233
    iget-object v5, p0, Lp0/g;->c:Landroid/content/Context;

    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    :cond_9
    iget-object v6, p0, Lp0/g;->b:Lp0/a0;

    .line 244
    .line 245
    invoke-virtual {v6}, Lp0/a0;->b()Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    invoke-virtual {p0}, Lp0/g;->t()V

    .line 250
    .line 251
    .line 252
    new-instance v8, Lp0/V;

    .line 253
    .line 254
    invoke-direct {v8, v1, v3, v6}, Lp0/V;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, v8, p1, v5, v7}, Lp0/m;->d(Lp0/V;Lp0/Q;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-nez p1, :cond_c

    .line 262
    .line 263
    const-string p1, "GmsClient"

    .line 264
    .line 265
    iget-object p2, p0, Lp0/g;->b:Lp0/a0;

    .line 266
    .line 267
    invoke-virtual {p2}, Lp0/a0;->a()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    iget-object v1, p0, Lp0/g;->b:Lp0/a0;

    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lp0/g;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    new-instance p2, Lp0/T;

    .line 301
    .line 302
    const/16 v0, 0x10

    .line 303
    .line 304
    invoke-direct {p2, p0, v0}, Lp0/T;-><init>(Lp0/g;I)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lp0/g;->e:Landroid/os/Handler;

    .line 308
    .line 309
    const/4 v1, 0x7

    .line 310
    const/4 v2, -0x1

    .line 311
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_a
    iget-object p1, p0, Lp0/g;->l:Lp0/Q;

    .line 320
    .line 321
    if-eqz p1, :cond_c

    .line 322
    .line 323
    iget-object p2, p0, Lp0/g;->d:Lp0/m;

    .line 324
    .line 325
    iget-object v0, p0, Lp0/g;->b:Lp0/a0;

    .line 326
    .line 327
    invoke-virtual {v0}, Lp0/a0;->a()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-static {v0}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    iget-object v1, p0, Lp0/g;->b:Lp0/a0;

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    const-string v1, "com.google.android.gms"

    .line 340
    .line 341
    iget-object v2, p0, Lp0/g;->q:Ljava/lang/String;

    .line 342
    .line 343
    if-nez v2, :cond_b

    .line 344
    .line 345
    iget-object v2, p0, Lp0/g;->c:Landroid/content/Context;

    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    :cond_b
    iget-object v3, p0, Lp0/g;->b:Lp0/a0;

    .line 356
    .line 357
    invoke-virtual {v3}, Lp0/a0;->b()Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    new-instance v5, Lp0/V;

    .line 365
    .line 366
    invoke-direct {v5, v0, v1, v3}, Lp0/V;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p2, v5, p1, v2}, Lp0/m;->c(Lp0/V;Lp0/Q;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iput-object v7, p0, Lp0/g;->l:Lp0/Q;

    .line 373
    .line 374
    :cond_c
    :goto_4
    monitor-exit v4

    .line 375
    return-void

    .line 376
    :goto_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    throw p1

    .line 378
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 379
    .line 380
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 381
    .line 382
    .line 383
    throw p1
.end method


# virtual methods
.method protected abstract A()Ljava/lang/String;
.end method

.method protected B()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp0/g;->p()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xc9e4920

    .line 6
    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public final C(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/g;->r:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lp0/g;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lp0/g;->m:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :cond_1
    :goto_0
    monitor-exit v0

    .line 16
    return v3

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public final b()[Lm0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/g;->u:Lp0/U;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lp0/U;->b:[Lm0/c;

    return-object v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/g;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lp0/g;->m:I

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp0/g;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lp0/g;->b:Lp0/a0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "com.google.android.gms"

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v1, "Failed to connect when checking package"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp0/g;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp0/g;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lp0/g;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Lp0/g;->k:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lp0/O;

    .line 25
    .line 26
    invoke-virtual {v3}, Lp0/O;->d()V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lp0/g;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    iget-object v1, p0, Lp0/g;->g:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    const/4 v0, 0x0

    .line 42
    :try_start_1
    iput-object v0, p0, Lp0/g;->h:Lp0/o;

    .line 43
    .line 44
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, v1, v0}, Lp0/g;->Q(ILandroid/os/IInterface;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw v0

    .line 53
    :catchall_1
    move-exception v1

    .line 54
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    throw v1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lp0/g;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final k(Lp0/f;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lp0/f;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final n(Lp0/d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lp0/g;->i:Lp0/d;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lp0/g;->Q(ILandroid/os/IInterface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o(Lp0/n;Ljava/util/Set;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lp0/g;->w()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v15, Lp0/k;

    .line 10
    .line 11
    iget-object v14, v1, Lp0/g;->r:Ljava/lang/String;

    .line 12
    .line 13
    sget v6, Lm0/e;->a:I

    .line 14
    .line 15
    sget-object v9, Lp0/k;->o:[Lcom/google/android/gms/common/api/Scope;

    .line 16
    .line 17
    new-instance v10, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x6

    .line 23
    iget v5, v1, Lp0/g;->p:I

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    sget-object v13, Lp0/k;->p:[Lm0/c;

    .line 29
    .line 30
    const/16 v16, 0x1

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    move-object v3, v15

    .line 37
    move-object v12, v13

    .line 38
    move-object/from16 v19, v14

    .line 39
    .line 40
    move/from16 v14, v16

    .line 41
    .line 42
    move-object/from16 v20, v15

    .line 43
    .line 44
    move/from16 v15, v17

    .line 45
    .line 46
    move/from16 v16, v18

    .line 47
    .line 48
    move-object/from16 v17, v19

    .line 49
    .line 50
    invoke-direct/range {v3 .. v17}, Lp0/k;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lm0/c;[Lm0/c;ZIZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, v1, Lp0/g;->c:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    move-object/from16 v4, v20

    .line 60
    .line 61
    iput-object v3, v4, Lp0/k;->d:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v2, v4, Lp0/k;->g:Landroid/os/Bundle;

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 69
    .line 70
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    .line 75
    .line 76
    iput-object v0, v4, Lp0/k;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 77
    .line 78
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lp0/g;->j()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Lp0/g;->r()Landroid/accounts/Account;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    new-instance v0, Landroid/accounts/Account;

    .line 91
    .line 92
    const-string v2, "<<default account>>"

    .line 93
    .line 94
    const-string v3, "com.google"

    .line 95
    .line 96
    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iput-object v0, v4, Lp0/k;->h:Landroid/accounts/Account;

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, v4, Lp0/k;->e:Landroid/os/IBinder;

    .line 108
    .line 109
    :cond_2
    sget-object v0, Lp0/g;->w:[Lm0/c;

    .line 110
    .line 111
    iput-object v0, v4, Lp0/k;->i:[Lm0/c;

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Lp0/g;->s()[Lm0/c;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, v4, Lp0/k;->j:[Lm0/c;

    .line 118
    .line 119
    :try_start_0
    iget-object v2, v1, Lp0/g;->g:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    iget-object v0, v1, Lp0/g;->h:Lp0/o;

    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    new-instance v3, Lp0/P;

    .line 127
    .line 128
    iget-object v5, v1, Lp0/g;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-direct {v3, v1, v5}, Lp0/P;-><init>(Lp0/g;I)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v0, v3, v4}, Lp0/o;->g(Lp0/P;Lp0/k;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    const-string v0, "GmsClient"

    .line 142
    .line 143
    const-string v3, "mServiceBroker is null, client disconnected"

    .line 144
    .line 145
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :goto_0
    monitor-exit v2

    .line 149
    return-void

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    :goto_1
    const-string v2, "GmsClient"

    .line 157
    .line 158
    const-string v3, "IGmsServiceBroker.getService failed"

    .line 159
    .line 160
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .line 162
    .line 163
    iget-object v0, v1, Lp0/g;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    new-instance v2, Lp0/S;

    .line 170
    .line 171
    const/16 v3, 0x8

    .line 172
    .line 173
    const/4 v4, 0x0

    .line 174
    invoke-direct {v2, v1, v3, v4, v4}, Lp0/S;-><init>(Lp0/g;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 175
    .line 176
    .line 177
    iget-object v3, v1, Lp0/g;->e:Landroid/os/Handler;

    .line 178
    .line 179
    const/4 v4, 0x1

    .line 180
    const/4 v5, -0x1

    .line 181
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :catch_2
    move-exception v0

    .line 190
    throw v0

    .line 191
    :catch_3
    move-exception v0

    .line 192
    const-string v2, "GmsClient"

    .line 193
    .line 194
    const-string v3, "IGmsServiceBroker.getService failed"

    .line 195
    .line 196
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    iget-object v0, v1, Lp0/g;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    iget-object v2, v1, Lp0/g;->e:Landroid/os/Handler;

    .line 206
    .line 207
    const/4 v3, 0x6

    .line 208
    const/4 v4, 0x3

    .line 209
    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    sget v0, Lm0/e;->a:I

    .line 2
    .line 3
    return v0
.end method

.method protected abstract q(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public r()Landroid/accounts/Account;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()[Lm0/c;
    .locals 1

    .line 1
    sget-object v0, Lp0/g;->w:[Lm0/c;

    return-object v0
.end method

.method protected t()V
    .locals 0

    .line 1
    return-void
.end method

.method public final u()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final v()I
    .locals 1

    .line 1
    iget v0, p0, Lp0/g;->p:I

    return v0
.end method

.method protected w()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected x()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final y()Landroid/os/IInterface;
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/g;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lp0/g;->m:I

    .line 5
    .line 6
    const/4 v2, 0x5

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lp0/g;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lp0/g;->j:Landroid/os/IInterface;

    .line 16
    .line 17
    const-string v2, "Client is connected but service is null"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lp0/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v2, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v1
.end method

.method protected abstract z()Ljava/lang/String;
.end method
