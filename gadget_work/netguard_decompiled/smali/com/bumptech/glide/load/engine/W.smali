.class final Lcom/bumptech/glide/load/engine/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/k;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field private final d:Lcom/bumptech/glide/load/engine/j;

.field private final e:Lcom/bumptech/glide/load/engine/l;

.field private f:I

.field private g:I

.field private h:LE/e;

.field private i:Ljava/util/List;

.field private j:I

.field private volatile k:LJ/F;

.field private l:Ljava/io/File;

.field private m:Lcom/bumptech/glide/load/engine/X;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bumptech/glide/load/engine/W;->g:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/W;->d:Lcom/bumptech/glide/load/engine/j;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/l;->c()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l;->m()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/l;->r()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-class v1, Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Failed to find any load path from "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/l;->i()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, " to "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/l;->r()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/W;->i:Ljava/util/List;

    .line 83
    .line 84
    const/4 v4, 0x1

    .line 85
    if-eqz v3, :cond_9

    .line 86
    .line 87
    iget v5, p0, Lcom/bumptech/glide/load/engine/W;->j:I

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-ge v5, v3, :cond_3

    .line 94
    .line 95
    const/4 v3, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const/4 v3, 0x0

    .line 98
    :goto_1
    if-nez v3, :cond_4

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_4
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/W;->k:LJ/F;

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    :cond_5
    :goto_2
    if-nez v0, :cond_8

    .line 106
    .line 107
    iget v1, p0, Lcom/bumptech/glide/load/engine/W;->j:I

    .line 108
    .line 109
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/W;->i:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-ge v1, v3, :cond_6

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    goto :goto_3

    .line 119
    :cond_6
    const/4 v1, 0x0

    .line 120
    :goto_3
    if-eqz v1, :cond_8

    .line 121
    .line 122
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/W;->i:Ljava/util/List;

    .line 123
    .line 124
    iget v3, p0, Lcom/bumptech/glide/load/engine/W;->j:I

    .line 125
    .line 126
    add-int/lit8 v5, v3, 0x1

    .line 127
    .line 128
    iput v5, p0, Lcom/bumptech/glide/load/engine/W;->j:I

    .line 129
    .line 130
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, LJ/G;

    .line 135
    .line 136
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/W;->l:Ljava/io/File;

    .line 137
    .line 138
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 139
    .line 140
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/l;->t()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/l;->f()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    iget-object v7, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 151
    .line 152
    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/l;->k()LE/i;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-interface {v1, v3, v5, v6, v7}, LJ/G;->a(Ljava/lang/Object;IILE/i;)LJ/F;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/W;->k:LJ/F;

    .line 161
    .line 162
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/W;->k:LJ/F;

    .line 163
    .line 164
    if-eqz v1, :cond_5

    .line 165
    .line 166
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 167
    .line 168
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/W;->k:LJ/F;

    .line 169
    .line 170
    iget-object v3, v3, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 171
    .line 172
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->b()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/l;->h(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/T;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    if-eqz v1, :cond_7

    .line 181
    .line 182
    const/4 v1, 0x1

    .line 183
    goto :goto_4

    .line 184
    :cond_7
    const/4 v1, 0x0

    .line 185
    :goto_4
    if-eqz v1, :cond_5

    .line 186
    .line 187
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/W;->k:LJ/F;

    .line 188
    .line 189
    iget-object v0, v0, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 190
    .line 191
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l;->l()Lcom/bumptech/glide/Priority;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/d;)V

    .line 198
    .line 199
    .line 200
    const/4 v0, 0x1

    .line 201
    goto :goto_2

    .line 202
    :cond_8
    return v0

    .line 203
    :cond_9
    :goto_5
    iget v3, p0, Lcom/bumptech/glide/load/engine/W;->g:I

    .line 204
    .line 205
    add-int/2addr v3, v4

    .line 206
    iput v3, p0, Lcom/bumptech/glide/load/engine/W;->g:I

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-lt v3, v5, :cond_b

    .line 213
    .line 214
    iget v3, p0, Lcom/bumptech/glide/load/engine/W;->f:I

    .line 215
    .line 216
    add-int/2addr v3, v4

    .line 217
    iput v3, p0, Lcom/bumptech/glide/load/engine/W;->f:I

    .line 218
    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-lt v3, v4, :cond_a

    .line 224
    .line 225
    return v2

    .line 226
    :cond_a
    iput v2, p0, Lcom/bumptech/glide/load/engine/W;->g:I

    .line 227
    .line 228
    :cond_b
    iget v3, p0, Lcom/bumptech/glide/load/engine/W;->f:I

    .line 229
    .line 230
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, LE/e;

    .line 235
    .line 236
    iget v4, p0, Lcom/bumptech/glide/load/engine/W;->g:I

    .line 237
    .line 238
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    move-object v11, v4

    .line 243
    check-cast v11, Ljava/lang/Class;

    .line 244
    .line 245
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 246
    .line 247
    invoke-virtual {v4, v11}, Lcom/bumptech/glide/load/engine/l;->s(Ljava/lang/Class;)LE/l;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    new-instance v13, Lcom/bumptech/glide/load/engine/X;

    .line 252
    .line 253
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/l;->b()LG/b;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 260
    .line 261
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/l;->p()LE/e;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 266
    .line 267
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/l;->t()I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 272
    .line 273
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/l;->f()I

    .line 274
    .line 275
    .line 276
    move-result v9

    .line 277
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 278
    .line 279
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/l;->k()LE/i;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    move-object v4, v13

    .line 284
    move-object v6, v3

    .line 285
    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/engine/X;-><init>(LG/b;LE/e;LE/e;IILE/l;Ljava/lang/Class;LE/i;)V

    .line 286
    .line 287
    .line 288
    iput-object v13, p0, Lcom/bumptech/glide/load/engine/W;->m:Lcom/bumptech/glide/load/engine/X;

    .line 289
    .line 290
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 291
    .line 292
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/l;->d()LH/b;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/W;->m:Lcom/bumptech/glide/load/engine/X;

    .line 297
    .line 298
    invoke-interface {v4, v5}, LH/b;->b(LE/e;)Ljava/io/File;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    iput-object v4, p0, Lcom/bumptech/glide/load/engine/W;->l:Ljava/io/File;

    .line 303
    .line 304
    if-eqz v4, :cond_2

    .line 305
    .line 306
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/W;->h:LE/e;

    .line 307
    .line 308
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/W;->e:Lcom/bumptech/glide/load/engine/l;

    .line 309
    .line 310
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/l;->j(Ljava/io/File;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/W;->i:Ljava/util/List;

    .line 315
    .line 316
    iput v2, p0, Lcom/bumptech/glide/load/engine/W;->j:I

    .line 317
    .line 318
    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/W;->k:LJ/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/W;->d:Lcom/bumptech/glide/load/engine/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/W;->m:Lcom/bumptech/glide/load/engine/X;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/W;->k:LJ/F;

    .line 6
    .line 7
    iget-object v2, v2, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/j;->g(LE/e;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/W;->d:Lcom/bumptech/glide/load/engine/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/W;->h:LE/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/W;->k:LJ/F;

    .line 6
    .line 7
    iget-object v3, v2, LJ/F;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    sget-object v4, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/W;->m:Lcom/bumptech/glide/load/engine/X;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/j;->h(LE/e;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/DataSource;LE/e;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
