.class public final Landroidx/lifecycle/u;
.super Landroidx/lifecycle/m;
.source "SourceFile"


# instance fields
.field private a:Lh/a;

.field private b:Landroidx/lifecycle/l;

.field private final c:Ljava/lang/ref/WeakReference;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;

.field private final h:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/m;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lh/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/lifecycle/u;->d:I

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/lifecycle/u;->e:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/lifecycle/u;->f:Z

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/lifecycle/u;->g:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/lifecycle/u;->c:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    sget-object p1, Landroidx/lifecycle/l;->e:Landroidx/lifecycle/l;

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Landroidx/lifecycle/u;->h:Z

    .line 38
    .line 39
    return-void
.end method

.method private d(Landroidx/lifecycle/r;)Landroidx/lifecycle/l;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lh/a;->l(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/lifecycle/t;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v0

    .line 20
    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/u;->g:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/lifecycle/u;->g:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/lifecycle/l;

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-gez v2, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object p1, v1

    .line 54
    :goto_1
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-gez v1, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move-object v0, p1

    .line 64
    :goto_2
    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/u;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lg/a;->t()Lg/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lg/a;->u()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Method "

    .line 19
    .line 20
    const-string v2, " must be called on the main thread"

    .line 21
    .line 22
    invoke-static {v1, p1, v2}, LB/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private h(Landroidx/lifecycle/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Landroidx/lifecycle/l;->e:Landroidx/lifecycle/l;

    .line 7
    .line 8
    sget-object v2, Landroidx/lifecycle/l;->d:Landroidx/lifecycle/l;

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    if-eq p1, v2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "no event down from "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 38
    .line 39
    iget-boolean p1, p0, Landroidx/lifecycle/u;->e:Z

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-nez p1, :cond_5

    .line 43
    .line 44
    iget p1, p0, Landroidx/lifecycle/u;->d:I

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/u;->e:Z

    .line 50
    .line 51
    invoke-direct {p0}, Landroidx/lifecycle/u;->j()V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Landroidx/lifecycle/u;->e:Z

    .line 56
    .line 57
    iget-object p1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 58
    .line 59
    if-ne p1, v2, :cond_4

    .line 60
    .line 61
    new-instance p1, Lh/a;

    .line 62
    .line 63
    invoke-direct {p1}, Lh/a;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 67
    .line 68
    :cond_4
    return-void

    .line 69
    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/u;->f:Z

    .line 70
    .line 71
    return-void
.end method

.method private j()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/u;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/s;

    .line 8
    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 12
    .line 13
    invoke-virtual {v1}, Lh/h;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lh/h;->e()Ljava/util/Map$Entry;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/lifecycle/t;

    .line 33
    .line 34
    iget-object v1, v1, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 37
    .line 38
    invoke-virtual {v4}, Lh/h;->h()Ljava/util/Map$Entry;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroidx/lifecycle/t;

    .line 47
    .line 48
    iget-object v4, v4, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 49
    .line 50
    if-ne v1, v4, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 53
    .line 54
    if-ne v1, v4, :cond_2

    .line 55
    .line 56
    :goto_0
    const/4 v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v1, 0x0

    .line 59
    :goto_1
    if-nez v1, :cond_e

    .line 60
    .line 61
    iput-boolean v3, p0, Landroidx/lifecycle/u;->f:Z

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 64
    .line 65
    iget-object v3, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 66
    .line 67
    invoke-virtual {v3}, Lh/h;->e()Ljava/util/Map$Entry;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroidx/lifecycle/t;

    .line 76
    .line 77
    iget-object v3, v3, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x3

    .line 85
    const/4 v5, 0x2

    .line 86
    if-gez v1, :cond_8

    .line 87
    .line 88
    iget-object v1, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 89
    .line 90
    invoke-virtual {v1}, Lh/h;->descendingIterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_8

    .line 99
    .line 100
    iget-boolean v6, p0, Landroidx/lifecycle/u;->f:Z

    .line 101
    .line 102
    if-nez v6, :cond_8

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Ljava/util/Map$Entry;

    .line 109
    .line 110
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    check-cast v7, Landroidx/lifecycle/t;

    .line 115
    .line 116
    :goto_2
    iget-object v8, v7, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 117
    .line 118
    iget-object v9, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 119
    .line 120
    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-lez v8, :cond_3

    .line 125
    .line 126
    iget-boolean v8, p0, Landroidx/lifecycle/u;->f:Z

    .line 127
    .line 128
    if-nez v8, :cond_3

    .line 129
    .line 130
    iget-object v8, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 131
    .line 132
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    check-cast v9, Landroidx/lifecycle/r;

    .line 137
    .line 138
    invoke-virtual {v8, v9}, Lh/a;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_3

    .line 143
    .line 144
    iget-object v8, v7, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-eq v8, v5, :cond_6

    .line 151
    .line 152
    if-eq v8, v4, :cond_5

    .line 153
    .line 154
    const/4 v9, 0x4

    .line 155
    if-eq v8, v9, :cond_4

    .line 156
    .line 157
    move-object v8, v3

    .line 158
    goto :goto_3

    .line 159
    :cond_4
    sget-object v8, Landroidx/lifecycle/k;->ON_PAUSE:Landroidx/lifecycle/k;

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    sget-object v8, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    sget-object v8, Landroidx/lifecycle/k;->ON_DESTROY:Landroidx/lifecycle/k;

    .line 166
    .line 167
    :goto_3
    if-eqz v8, :cond_7

    .line 168
    .line 169
    invoke-virtual {v8}, Landroidx/lifecycle/k;->f()Landroidx/lifecycle/l;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    iget-object v10, p0, Landroidx/lifecycle/u;->g:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v0, v8}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/s;Landroidx/lifecycle/k;)V

    .line 179
    .line 180
    .line 181
    iget-object v8, p0, Landroidx/lifecycle/u;->g:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    add-int/lit8 v9, v9, -0x1

    .line 188
    .line 189
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v2, "no event down from "

    .line 198
    .line 199
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v2, v7, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v0

    .line 215
    :cond_8
    iget-object v1, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 216
    .line 217
    invoke-virtual {v1}, Lh/h;->h()Ljava/util/Map$Entry;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iget-boolean v6, p0, Landroidx/lifecycle/u;->f:Z

    .line 222
    .line 223
    if-nez v6, :cond_0

    .line 224
    .line 225
    if-eqz v1, :cond_0

    .line 226
    .line 227
    iget-object v6, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 228
    .line 229
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Landroidx/lifecycle/t;

    .line 234
    .line 235
    iget-object v1, v1, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 236
    .line 237
    invoke-virtual {v6, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-lez v1, :cond_0

    .line 242
    .line 243
    iget-object v1, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 244
    .line 245
    invoke-virtual {v1}, Lh/h;->g()Lh/e;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    if-eqz v6, :cond_0

    .line 254
    .line 255
    iget-boolean v6, p0, Landroidx/lifecycle/u;->f:Z

    .line 256
    .line 257
    if-nez v6, :cond_0

    .line 258
    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    check-cast v6, Ljava/util/Map$Entry;

    .line 264
    .line 265
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    check-cast v7, Landroidx/lifecycle/t;

    .line 270
    .line 271
    :goto_4
    iget-object v8, v7, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 272
    .line 273
    iget-object v9, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 274
    .line 275
    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 276
    .line 277
    .line 278
    move-result v8

    .line 279
    if-gez v8, :cond_9

    .line 280
    .line 281
    iget-boolean v8, p0, Landroidx/lifecycle/u;->f:Z

    .line 282
    .line 283
    if-nez v8, :cond_9

    .line 284
    .line 285
    iget-object v8, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 286
    .line 287
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    check-cast v9, Landroidx/lifecycle/r;

    .line 292
    .line 293
    invoke-virtual {v8, v9}, Lh/a;->contains(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-eqz v8, :cond_9

    .line 298
    .line 299
    iget-object v8, v7, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 300
    .line 301
    iget-object v9, p0, Landroidx/lifecycle/u;->g:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    iget-object v8, v7, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 307
    .line 308
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    if-eq v8, v2, :cond_c

    .line 313
    .line 314
    if-eq v8, v5, :cond_b

    .line 315
    .line 316
    if-eq v8, v4, :cond_a

    .line 317
    .line 318
    move-object v8, v3

    .line 319
    goto :goto_5

    .line 320
    :cond_a
    sget-object v8, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_b
    sget-object v8, Landroidx/lifecycle/k;->ON_START:Landroidx/lifecycle/k;

    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_c
    sget-object v8, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    .line 327
    .line 328
    :goto_5
    if-eqz v8, :cond_d

    .line 329
    .line 330
    invoke-virtual {v7, v0, v8}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/s;Landroidx/lifecycle/k;)V

    .line 331
    .line 332
    .line 333
    iget-object v8, p0, Landroidx/lifecycle/u;->g:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    add-int/lit8 v9, v9, -0x1

    .line 340
    .line 341
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 346
    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v2, "no event up from "

    .line 350
    .line 351
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object v2, v7, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 355
    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :cond_e
    iput-boolean v3, p0, Landroidx/lifecycle/u;->f:Z

    .line 368
    .line 369
    return-void

    .line 370
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 371
    .line 372
    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    .line 373
    .line 374
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v0
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/r;)V
    .locals 6

    .line 1
    const-string v0, "addObserver"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/lifecycle/u;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 7
    .line 8
    sget-object v1, Landroidx/lifecycle/l;->d:Landroidx/lifecycle/l;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Landroidx/lifecycle/l;->e:Landroidx/lifecycle/l;

    .line 14
    .line 15
    :goto_0
    new-instance v0, Landroidx/lifecycle/t;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/t;-><init>(Landroidx/lifecycle/r;Landroidx/lifecycle/l;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 21
    .line 22
    invoke-virtual {v1, p1, v0}, Lh/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/lifecycle/t;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/u;->c:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/lifecycle/s;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget v2, p0, Landroidx/lifecycle/u;->d:I

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    if-nez v2, :cond_4

    .line 46
    .line 47
    iget-boolean v2, p0, Landroidx/lifecycle/u;->e:Z

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 v2, 0x0

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 55
    :goto_2
    invoke-direct {p0, p1}, Landroidx/lifecycle/u;->d(Landroidx/lifecycle/r;)Landroidx/lifecycle/l;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget v5, p0, Landroidx/lifecycle/u;->d:I

    .line 60
    .line 61
    add-int/2addr v5, v3

    .line 62
    iput v5, p0, Landroidx/lifecycle/u;->d:I

    .line 63
    .line 64
    :goto_3
    iget-object v5, v0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-gez v4, :cond_9

    .line 71
    .line 72
    iget-object v4, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 73
    .line 74
    invoke-virtual {v4, p1}, Lh/a;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_9

    .line 79
    .line 80
    iget-object v4, v0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 81
    .line 82
    iget-object v5, p0, Landroidx/lifecycle/u;->g:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object v4, v0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eq v4, v3, :cond_7

    .line 94
    .line 95
    const/4 v5, 0x2

    .line 96
    if-eq v4, v5, :cond_6

    .line 97
    .line 98
    const/4 v5, 0x3

    .line 99
    if-eq v4, v5, :cond_5

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    sget-object v4, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    sget-object v4, Landroidx/lifecycle/k;->ON_START:Landroidx/lifecycle/k;

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_7
    sget-object v4, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    .line 110
    .line 111
    :goto_4
    if-eqz v4, :cond_8

    .line 112
    .line 113
    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/s;Landroidx/lifecycle/k;)V

    .line 114
    .line 115
    .line 116
    iget-object v4, p0, Landroidx/lifecycle/u;->g:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    add-int/lit8 v5, v5, -0x1

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, p1}, Landroidx/lifecycle/u;->d(Landroidx/lifecycle/r;)Landroidx/lifecycle/l;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    goto :goto_3

    .line 132
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v2, "no event up from "

    .line 137
    .line 138
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_9
    if-nez v2, :cond_a

    .line 155
    .line 156
    invoke-direct {p0}, Landroidx/lifecycle/u;->j()V

    .line 157
    .line 158
    .line 159
    :cond_a
    iget p1, p0, Landroidx/lifecycle/u;->d:I

    .line 160
    .line 161
    sub-int/2addr p1, v3

    .line 162
    iput p1, p0, Landroidx/lifecycle/u;->d:I

    .line 163
    .line 164
    return-void
.end method

.method public final b()Landroidx/lifecycle/l;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Landroidx/lifecycle/r;)V
    .locals 1

    .line 1
    const-string v0, "removeObserver"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/lifecycle/u;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Lh/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lh/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(Landroidx/lifecycle/k;)V
    .locals 1

    .line 1
    const-string v0, "handleLifecycleEvent"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/lifecycle/u;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/lifecycle/k;->f()Landroidx/lifecycle/l;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Landroidx/lifecycle/u;->h(Landroidx/lifecycle/l;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final g()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/lifecycle/l;->f:Landroidx/lifecycle/l;

    .line 2
    .line 3
    const-string v1, "markState"

    .line 4
    .line 5
    invoke-direct {p0, v1}, Landroidx/lifecycle/u;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final i(Landroidx/lifecycle/l;)V
    .locals 1

    .line 1
    const-string v0, "setCurrentState"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/lifecycle/u;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/u;->h(Landroidx/lifecycle/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
