.class public abstract LW0/y;
.super Lkotlinx/coroutines/scheduling/h;
.source "SourceFile"


# instance fields
.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/h;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, LW0/y;->f:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract b()LI0/e;
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, LW0/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, LW0/j;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, p1, LW0/j;->a:Ljava/lang/Throwable;

    .line 14
    .line 15
    :goto_1
    return-object v1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-static {p1, p2}, LG0/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    if-nez p1, :cond_2

    .line 14
    .line 15
    move-object p1, p2

    .line 16
    :cond_2
    new-instance p2, LW0/r;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Fatal exception in coroutines machinery for "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1}, LP0/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0, p1}, LW0/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, LW0/y;->b()LI0/e;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, LI0/e;->getContext()LI0/l;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1, p2}, LW0/s;->b(LI0/l;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 13

    .line 1
    sget-object v0, LG0/j;->a:LG0/j;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/h;->e:Lkotlinx/coroutines/scheduling/i;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, LW0/y;->b()LI0/e;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lkotlinx/coroutines/internal/d;

    .line 10
    .line 11
    iget-object v3, v2, Lkotlinx/coroutines/internal/d;->h:LI0/e;

    .line 12
    .line 13
    iget-object v2, v2, Lkotlinx/coroutines/internal/d;->j:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-interface {v3}, LI0/e;->getContext()LI0/l;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/y;->b(LI0/l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v5, Lkotlinx/coroutines/internal/y;->a:Lkotlinx/coroutines/internal/t;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    if-eq v2, v5, :cond_0

    .line 27
    .line 28
    invoke-static {v3, v4}, LW0/s;->d(LI0/e;LI0/l;)LW0/h0;

    .line 29
    .line 30
    .line 31
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v5, v6

    .line 34
    :goto_0
    :try_start_1
    invoke-interface {v3}, LI0/e;->getContext()LI0/l;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {p0}, LW0/y;->h()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {p0, v8}, LW0/y;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    if-nez v9, :cond_3

    .line 47
    .line 48
    iget v10, p0, LW0/y;->f:I

    .line 49
    .line 50
    const/4 v11, 0x1

    .line 51
    if-eq v10, v11, :cond_2

    .line 52
    .line 53
    const/4 v12, 0x2

    .line 54
    if-ne v10, v12, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v11, 0x0

    .line 58
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    .line 59
    .line 60
    sget-object v10, LW0/Q;->c:LW0/P;

    .line 61
    .line 62
    sget-object v10, LW0/P;->d:LW0/P;

    .line 63
    .line 64
    invoke-interface {v7, v10}, LI0/l;->get(LI0/j;)LI0/i;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, LW0/Q;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move-object v7, v6

    .line 72
    :goto_2
    if-eqz v7, :cond_4

    .line 73
    .line 74
    invoke-interface {v7}, LW0/Q;->a()Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-nez v10, :cond_4

    .line 79
    .line 80
    invoke-interface {v7}, LW0/Q;->g()Ljava/util/concurrent/CancellationException;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {p0, v8, v7}, LW0/y;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v7}, LG0/a;->b(Ljava/lang/Throwable;)LG0/e;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-interface {v3, v7}, LI0/e;->e(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :catchall_0
    move-exception v3

    .line 96
    goto :goto_5

    .line 97
    :cond_4
    if-eqz v9, :cond_5

    .line 98
    .line 99
    invoke-static {v9}, LG0/a;->b(Ljava/lang/Throwable;)LG0/e;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-interface {v3, v7}, LI0/e;->e(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    invoke-virtual {p0, v8}, LW0/y;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-interface {v3, v7}, LI0/e;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    :goto_3
    if-nez v5, :cond_6

    .line 115
    .line 116
    :try_start_2
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/y;->a(LI0/l;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    .line 118
    .line 119
    :try_start_3
    invoke-interface {v1}, Lkotlinx/coroutines/scheduling/i;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    invoke-static {v0}, LG0/a;->b(Ljava/lang/Throwable;)LG0/e;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :goto_4
    invoke-static {v0}, LG0/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p0, v6, v0}, LW0/y;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_6
    :try_start_4
    throw v6

    .line 137
    :goto_5
    if-eqz v5, :cond_7

    .line 138
    .line 139
    throw v6

    .line 140
    :cond_7
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/y;->a(LI0/l;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 144
    :catchall_2
    move-exception v2

    .line 145
    :try_start_5
    invoke-interface {v1}, Lkotlinx/coroutines/scheduling/i;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 146
    .line 147
    .line 148
    goto :goto_6

    .line 149
    :catchall_3
    move-exception v0

    .line 150
    invoke-static {v0}, LG0/a;->b(Ljava/lang/Throwable;)LG0/e;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :goto_6
    invoke-static {v0}, LG0/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p0, v2, v0}, LW0/y;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    :goto_7
    return-void
.end method
