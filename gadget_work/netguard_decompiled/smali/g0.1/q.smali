.class public final Lg0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lc0/f;

.field private final c:Lh0/e;

.field private final d:Lg0/v;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Li0/c;

.field private final g:Lj0/a;

.field private final h:Lj0/a;

.field private final i:Lh0/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc0/f;Lh0/e;Lg0/v;Ljava/util/concurrent/Executor;Li0/c;Lj0/a;Lj0/a;Lh0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/q;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/q;->b:Lc0/f;

    .line 7
    .line 8
    iput-object p3, p0, Lg0/q;->c:Lh0/e;

    .line 9
    .line 10
    iput-object p4, p0, Lg0/q;->d:Lg0/v;

    .line 11
    .line 12
    iput-object p5, p0, Lg0/q;->e:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p6, p0, Lg0/q;->f:Li0/c;

    .line 15
    .line 16
    iput-object p7, p0, Lg0/q;->g:Lj0/a;

    .line 17
    .line 18
    iput-object p8, p0, Lg0/q;->h:Lj0/a;

    .line 19
    .line 20
    iput-object p9, p0, Lg0/q;->i:Lh0/d;

    .line 21
    .line 22
    return-void
.end method

.method public static a(Lg0/q;Lb0/z;ILjava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg0/q;->f:Li0/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lg0/q;->c:Lh0/e;

    .line 5
    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    new-instance v3, Lk/e;

    .line 10
    .line 11
    invoke-direct {v3, v1, v2}, Lk/e;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v3}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lg0/q;->a:Landroid/content/Context;

    .line 18
    .line 19
    const-string v3, "connectivity"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    :goto_0
    if-nez v2, :cond_1

    .line 43
    .line 44
    new-instance v2, Lg0/k;

    .line 45
    .line 46
    invoke-direct {v2, p0, p1, p2}, Lg0/k;-><init>(Lg0/q;Lb0/z;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v2}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0, p1, p2}, Lg0/q;->j(Lb0/z;I)V
    :try_end_0
    .catch Li0/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    :try_start_1
    iget-object p0, p0, Lg0/q;->d:Lg0/v;

    .line 60
    .line 61
    add-int/2addr p2, v1

    .line 62
    invoke-interface {p0, p1, p2}, Lg0/v;->a(Lb0/z;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public static synthetic b(Lg0/q;Lb0/z;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lg0/q;->c:Lh0/e;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lh0/e;->m(Lb0/z;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic c(Lg0/q;Ljava/util/Map;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-long v1, v1

    .line 35
    sget-object v3, Le0/f;->j:Le0/f;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    iget-object v4, p0, Lg0/q;->i:Lh0/d;

    .line 44
    .line 45
    invoke-interface {v4, v1, v2, v3, v0}, Lh0/d;->a(JLe0/f;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public static synthetic d(Lg0/q;Lb0/z;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg0/q;->c:Lh0/e;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lh0/e;->j(Lb0/z;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic e(Lg0/q;Ljava/lang/Iterable;Lb0/z;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/q;->c:Lh0/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lh0/e;->l(Ljava/lang/Iterable;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lg0/q;->g:Lj0/a;

    .line 7
    .line 8
    invoke-interface {p0}, Lj0/a;->a()J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    add-long/2addr p0, p3

    .line 13
    invoke-interface {v0, p0, p1, p2}, Lh0/e;->o(JLb0/z;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic f(Lg0/q;Lb0/z;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/q;->g:Lj0/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lj0/a;->a()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    add-long/2addr v0, p2

    .line 8
    iget-object p0, p0, Lg0/q;->c:Lh0/e;

    .line 9
    .line 10
    invoke-interface {p0, v0, v1, p1}, Lh0/e;->o(JLb0/z;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic g(Lg0/q;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lg0/q;->c:Lh0/e;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lh0/e;->e(Ljava/lang/Iterable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic h(Lg0/q;Lb0/z;I)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Lg0/q;->d:Lg0/v;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Lg0/v;->a(Lb0/z;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic i(Lg0/q;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lg0/q;->i:Lh0/d;

    .line 2
    .line 3
    invoke-interface {p0}, Lh0/d;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final j(Lb0/z;I)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lb0/z;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lg0/q;->b:Lc0/f;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lc0/f;->a(Ljava/lang/String;)Lc0/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    invoke-static {v1, v2}, Lc0/h;->e(J)Lc0/h;

    .line 14
    .line 15
    .line 16
    move-wide v7, v1

    .line 17
    :cond_0
    :goto_0
    new-instance v1, Lg0/l;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p0, p1, v2}, Lg0/l;-><init>(Lg0/q;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    iget-object v9, p0, Lg0/q;->f:Li0/c;

    .line 24
    .line 25
    invoke-interface {v9, v1}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_b

    .line 36
    .line 37
    new-instance v1, Lg0/m;

    .line 38
    .line 39
    invoke-direct {v1, p0, p1}, Lg0/m;-><init>(Lg0/q;Lb0/z;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v9, v1}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v5, v1

    .line 47
    check-cast v5, Ljava/lang/Iterable;

    .line 48
    .line 49
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    const/4 v1, 0x1

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    const-string v3, "Uploader"

    .line 64
    .line 65
    const-string v4, "Unknown backend for %s, deleting event batch for it..."

    .line 66
    .line 67
    invoke-static {v3, v4, p1}, Lt0/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lc0/h;->a()Lc0/h;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Lh0/l;

    .line 96
    .line 97
    invoke-virtual {v6}, Lh0/l;->a()Lb0/s;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {p1}, Lb0/z;->c()[B

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    const/4 v4, 0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const/4 v4, 0x0

    .line 114
    :goto_2
    if-eqz v4, :cond_5

    .line 115
    .line 116
    iget-object v4, p0, Lg0/q;->i:Lh0/d;

    .line 117
    .line 118
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    new-instance v6, Lk/e;

    .line 122
    .line 123
    const/4 v10, 0x3

    .line 124
    invoke-direct {v6, v10, v4}, Lk/e;-><init>(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v9, v6}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Le0/b;

    .line 132
    .line 133
    invoke-static {}, Lb0/s;->a()Lb0/r;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iget-object v10, p0, Lg0/q;->g:Lj0/a;

    .line 138
    .line 139
    invoke-interface {v10}, Lj0/a;->a()J

    .line 140
    .line 141
    .line 142
    move-result-wide v10

    .line 143
    invoke-virtual {v6, v10, v11}, Lb0/r;->j(J)Lb0/r;

    .line 144
    .line 145
    .line 146
    iget-object v10, p0, Lg0/q;->h:Lj0/a;

    .line 147
    .line 148
    invoke-interface {v10}, Lj0/a;->a()J

    .line 149
    .line 150
    .line 151
    move-result-wide v10

    .line 152
    invoke-virtual {v6, v10, v11}, Lb0/r;->n(J)Lb0/r;

    .line 153
    .line 154
    .line 155
    const-string v10, "GDT_CLIENT_METRICS"

    .line 156
    .line 157
    invoke-virtual {v6, v10}, Lb0/r;->m(Ljava/lang/String;)Lb0/r;

    .line 158
    .line 159
    .line 160
    new-instance v10, Lb0/q;

    .line 161
    .line 162
    const-string v11, "proto"

    .line 163
    .line 164
    invoke-static {v11}, LZ/b;->b(Ljava/lang/String;)LZ/b;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {v4}, Lb0/v;->a(Le0/b;)[B

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-direct {v10, v11, v4}, Lb0/q;-><init>(LZ/b;[B)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v10}, Lb0/r;->i(Lb0/q;)Lb0/r;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6}, Lb0/r;->d()Lb0/s;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-interface {v0, v4}, Lc0/o;->b(Lb0/s;)Lb0/s;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_5
    invoke-static {}, Lc0/g;->a()Landroidx/core/view/accessibility/n;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v4, v3}, Landroidx/core/view/accessibility/n;->p(Ljava/util/ArrayList;)Landroidx/core/view/accessibility/n;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lb0/z;->c()[B

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v4, v3}, Landroidx/core/view/accessibility/n;->q([B)Landroidx/core/view/accessibility/n;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Landroidx/core/view/accessibility/n;->d()Lc0/g;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-interface {v0, v3}, Lc0/o;->a(Lc0/g;)Lc0/h;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    :goto_3
    invoke-virtual {v3}, Lc0/h;->c()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    const/4 v6, 0x2

    .line 219
    if-ne v4, v6, :cond_6

    .line 220
    .line 221
    new-instance v0, Lg0/n;

    .line 222
    .line 223
    move-object v3, v0

    .line 224
    move-object v4, p0

    .line 225
    move-object v6, p1

    .line 226
    invoke-direct/range {v3 .. v8}, Lg0/n;-><init>(Lg0/q;Ljava/lang/Iterable;Lb0/z;J)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v9, v0}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lg0/q;->d:Lg0/v;

    .line 233
    .line 234
    add-int/2addr p2, v1

    .line 235
    invoke-interface {v0, p1, p2, v1}, Lg0/v;->b(Lb0/z;IZ)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_6
    new-instance v4, Lg0/l;

    .line 240
    .line 241
    invoke-direct {v4, p0, v5, v1}, Lg0/l;-><init>(Lg0/q;Ljava/lang/Object;I)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v9, v4}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Lc0/h;->c()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-ne v4, v1, :cond_8

    .line 252
    .line 253
    invoke-virtual {v3}, Lc0/h;->b()J

    .line 254
    .line 255
    .line 256
    move-result-wide v3

    .line 257
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 258
    .line 259
    .line 260
    move-result-wide v7

    .line 261
    invoke-virtual {p1}, Lb0/z;->c()[B

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    if-eqz v3, :cond_7

    .line 266
    .line 267
    const/4 v2, 0x1

    .line 268
    :cond_7
    if-eqz v2, :cond_0

    .line 269
    .line 270
    new-instance v1, Lk/e;

    .line 271
    .line 272
    invoke-direct {v1, v6, p0}, Lk/e;-><init>(ILjava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {v9, v1}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_8
    invoke-virtual {v3}, Lc0/h;->c()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    const/4 v3, 0x4

    .line 285
    if-ne v2, v3, :cond_0

    .line 286
    .line 287
    new-instance v2, Ljava/util/HashMap;

    .line 288
    .line 289
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-eqz v4, :cond_a

    .line 301
    .line 302
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    check-cast v4, Lh0/l;

    .line 307
    .line 308
    invoke-virtual {v4}, Lh0/l;->a()Lb0/s;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {v4}, Lb0/s;->j()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    if-nez v5, :cond_9

    .line 321
    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_9
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    check-cast v5, Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    add-int/2addr v5, v1

    .line 341
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_a
    new-instance v1, Lg0/o;

    .line 350
    .line 351
    invoke-direct {v1, p0, v2}, Lg0/o;-><init>(Lg0/q;Ljava/util/HashMap;)V

    .line 352
    .line 353
    .line 354
    invoke-interface {v9, v1}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_b
    new-instance p2, Lg0/p;

    .line 360
    .line 361
    invoke-direct {p2, p0, p1, v7, v8}, Lg0/p;-><init>(Lg0/q;Lb0/z;J)V

    .line 362
    .line 363
    .line 364
    invoke-interface {v9, p2}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    return-void
.end method

.method public final k(Lb0/z;ILjava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lg0/j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lg0/j;-><init>(Lg0/q;Lb0/z;ILjava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lg0/q;->e:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
