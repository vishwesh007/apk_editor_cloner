.class public final Lkotlinx/coroutines/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    const-string v1, "UNDEFINED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/coroutines/internal/e;->a:Lkotlinx/coroutines/internal/t;

    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/e;->a:Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(LI0/e;Ljava/lang/Object;LO0/l;)V
    .locals 6

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/d;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    check-cast p0, Lkotlinx/coroutines/internal/d;

    .line 6
    .line 7
    invoke-static {p1}, LG0/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    new-instance v0, LW0/k;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, LW0/k;-><init>(Ljava/lang/Object;LO0/l;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance p2, LW0/j;

    .line 24
    .line 25
    invoke-direct {p2, v0}, LW0/j;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    move-object v0, p2

    .line 29
    :goto_0
    iget-object p2, p0, Lkotlinx/coroutines/internal/d;->h:LI0/e;

    .line 30
    .line 31
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/d;->getContext()LI0/l;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lkotlinx/coroutines/internal/d;->g:LW0/o;

    .line 35
    .line 36
    invoke-virtual {v1}, LW0/o;->u()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iput-object v0, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    .line 44
    .line 45
    iput v3, p0, LW0/y;->f:I

    .line 46
    .line 47
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/d;->getContext()LI0/l;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1, p0}, LW0/o;->t(LI0/l;Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_2
    invoke-static {}, LW0/f0;->a()LW0/C;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, LW0/C;->z()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iput-object v0, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    .line 67
    .line 68
    iput v3, p0, LW0/y;->f:I

    .line 69
    .line 70
    invoke-virtual {v1, p0}, LW0/C;->w(LW0/y;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :cond_3
    invoke-virtual {v1, v3}, LW0/C;->y(Z)V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/d;->getContext()LI0/l;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    sget-object v5, LW0/Q;->c:LW0/P;

    .line 84
    .line 85
    invoke-interface {v4, v5}, LI0/l;->get(LI0/j;)LI0/i;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, LW0/Q;

    .line 90
    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    invoke-interface {v4}, LW0/Q;->a()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_4

    .line 98
    .line 99
    invoke-interface {v4}, LW0/Q;->g()Ljava/util/concurrent/CancellationException;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {p0, v0, v4}, Lkotlinx/coroutines/internal/d;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v4}, LG0/a;->b(Ljava/lang/Throwable;)LG0/e;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/d;->e(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    goto :goto_4

    .line 116
    :cond_4
    const/4 v3, 0x0

    .line 117
    :goto_1
    if-nez v3, :cond_8

    .line 118
    .line 119
    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->j:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-interface {p2}, LI0/e;->getContext()LI0/l;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v3, v0}, Lkotlinx/coroutines/internal/y;->b(LI0/l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sget-object v4, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/t;

    .line 130
    .line 131
    if-eq v0, v4, :cond_5

    .line 132
    .line 133
    invoke-static {p2, v3}, LW0/s;->d(LI0/e;LI0/l;)LW0/h0;

    .line 134
    .line 135
    .line 136
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    move-object v4, v2

    .line 139
    :goto_2
    :try_start_1
    invoke-interface {p2, p1}, LI0/e;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    .line 141
    .line 142
    if-nez v4, :cond_6

    .line 143
    .line 144
    :try_start_2
    invoke-static {v3, v0}, Lkotlinx/coroutines/internal/y;->a(LI0/l;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_6
    throw v2

    .line 149
    :catchall_1
    move-exception p1

    .line 150
    if-eqz v4, :cond_7

    .line 151
    .line 152
    throw v2

    .line 153
    :cond_7
    invoke-static {v3, v0}, Lkotlinx/coroutines/internal/y;->a(LI0/l;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_8
    :goto_3
    invoke-virtual {v1}, LW0/C;->B()Z

    .line 158
    .line 159
    .line 160
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    if-nez p1, :cond_8

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :goto_4
    :try_start_3
    invoke-virtual {p0, p1, v2}, LW0/y;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 165
    .line 166
    .line 167
    :goto_5
    invoke-virtual {v1}, LW0/C;->v()V

    .line 168
    .line 169
    .line 170
    goto :goto_6

    .line 171
    :catchall_2
    move-exception p0

    .line 172
    invoke-virtual {v1}, LW0/C;->v()V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :cond_9
    invoke-interface {p0, p1}, LI0/e;->e(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :goto_6
    return-void
.end method

.method public static synthetic c(LI0/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/internal/e;->b(LI0/e;Ljava/lang/Object;LO0/l;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
