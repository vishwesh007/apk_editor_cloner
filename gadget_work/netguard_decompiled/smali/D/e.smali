.class public final LD/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD/a;


# instance fields
.field private a:[I

.field private final b:[I

.field private final c:LQ/d;

.field private d:Ljava/nio/ByteBuffer;

.field private e:[B

.field private f:[S

.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[I

.field private k:I

.field private l:LD/c;

.field private m:Landroid/graphics/Bitmap;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/Boolean;

.field private t:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(LQ/d;LD/c;Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, LD/e;->b:[I

    .line 9
    .line 10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    iput-object v0, p0, LD/e;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-object p1, p0, LD/e;->c:LQ/d;

    .line 15
    .line 16
    new-instance p1, LD/c;

    .line 17
    .line 18
    invoke-direct {p1}, LD/c;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, LD/e;->l:LD/c;

    .line 22
    .line 23
    const-string p1, "Sample size must be >=0, not: "

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    if-lez p4, :cond_2

    .line 27
    .line 28
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p4, 0x0

    .line 33
    iput p4, p0, LD/e;->o:I

    .line 34
    .line 35
    iput-object p2, p0, LD/e;->l:LD/c;

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, p0, LD/e;->k:I

    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iput-object p3, p0, LD/e;->d:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    iget-object p3, p0, LD/e;->d:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    iput-boolean p4, p0, LD/e;->n:Z

    .line 57
    .line 58
    iget-object p3, p2, LD/c;->e:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    if-eqz p4, :cond_1

    .line 69
    .line 70
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    check-cast p4, LD/b;

    .line 75
    .line 76
    iget p4, p4, LD/b;->g:I

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    if-ne p4, v0, :cond_0

    .line 80
    .line 81
    const/4 p3, 0x1

    .line 82
    iput-boolean p3, p0, LD/e;->n:Z

    .line 83
    .line 84
    :cond_1
    iput p1, p0, LD/e;->p:I

    .line 85
    .line 86
    iget p3, p2, LD/c;->f:I

    .line 87
    .line 88
    div-int p4, p3, p1

    .line 89
    .line 90
    iput p4, p0, LD/e;->r:I

    .line 91
    .line 92
    iget p2, p2, LD/c;->g:I

    .line 93
    .line 94
    div-int p1, p2, p1

    .line 95
    .line 96
    iput p1, p0, LD/e;->q:I

    .line 97
    .line 98
    iget-object p1, p0, LD/e;->c:LQ/d;

    .line 99
    .line 100
    mul-int p3, p3, p2

    .line 101
    .line 102
    invoke-virtual {p1, p3}, LQ/d;->c(I)[B

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, LD/e;->i:[B

    .line 107
    .line 108
    iget-object p1, p0, LD/e;->c:LQ/d;

    .line 109
    .line 110
    iget p2, p0, LD/e;->r:I

    .line 111
    .line 112
    iget p3, p0, LD/e;->q:I

    .line 113
    .line 114
    mul-int p2, p2, p3

    .line 115
    .line 116
    invoke-virtual {p1, p2}, LQ/d;->d(I)[I

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, p0, LD/e;->j:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    monitor-exit p0

    .line 123
    return-void

    .line 124
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    monitor-exit p0

    .line 144
    throw p1
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, LD/e;->s:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, LD/e;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    :goto_1
    iget v1, p0, LD/e;->r:I

    .line 18
    .line 19
    iget v2, p0, LD/e;->q:I

    .line 20
    .line 21
    iget-object v3, p0, LD/e;->c:LQ/d;

    .line 22
    .line 23
    invoke-virtual {v3, v1, v2, v0}, LQ/d;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private j(LD/b;LD/b;)Landroid/graphics/Bitmap;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v10, v0, LD/e;->j:[I

    .line 8
    .line 9
    iget-object v11, v0, LD/e;->c:LQ/d;

    .line 10
    .line 11
    const/4 v12, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, LD/e;->m:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v11, v3}, LQ/d;->f(Landroid/graphics/Bitmap;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    iput-object v3, v0, LD/e;->m:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([II)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v13, 0x3

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget v3, v2, LD/b;->g:I

    .line 31
    .line 32
    if-ne v3, v13, :cond_2

    .line 33
    .line 34
    iget-object v3, v0, LD/e;->m:Landroid/graphics/Bitmap;

    .line 35
    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([II)V

    .line 39
    .line 40
    .line 41
    :cond_2
    const/4 v14, 0x2

    .line 42
    if-eqz v2, :cond_7

    .line 43
    .line 44
    iget v3, v2, LD/b;->g:I

    .line 45
    .line 46
    if-lez v3, :cond_7

    .line 47
    .line 48
    if-ne v3, v14, :cond_6

    .line 49
    .line 50
    iget-boolean v3, v1, LD/b;->f:Z

    .line 51
    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    iget-object v3, v0, LD/e;->l:LD/c;

    .line 55
    .line 56
    iget v4, v3, LD/c;->k:I

    .line 57
    .line 58
    iget-object v5, v1, LD/b;->k:[I

    .line 59
    .line 60
    if-eqz v5, :cond_4

    .line 61
    .line 62
    iget v3, v3, LD/c;->j:I

    .line 63
    .line 64
    iget v5, v1, LD/b;->h:I

    .line 65
    .line 66
    if-ne v3, v5, :cond_4

    .line 67
    .line 68
    :cond_3
    const/4 v4, 0x0

    .line 69
    :cond_4
    iget v3, v2, LD/b;->d:I

    .line 70
    .line 71
    iget v5, v0, LD/e;->p:I

    .line 72
    .line 73
    div-int/2addr v3, v5

    .line 74
    iget v6, v2, LD/b;->b:I

    .line 75
    .line 76
    div-int/2addr v6, v5

    .line 77
    iget v7, v2, LD/b;->c:I

    .line 78
    .line 79
    div-int/2addr v7, v5

    .line 80
    iget v2, v2, LD/b;->a:I

    .line 81
    .line 82
    div-int/2addr v2, v5

    .line 83
    iget v5, v0, LD/e;->r:I

    .line 84
    .line 85
    mul-int v6, v6, v5

    .line 86
    .line 87
    add-int/2addr v6, v2

    .line 88
    mul-int v3, v3, v5

    .line 89
    .line 90
    add-int/2addr v3, v6

    .line 91
    :goto_0
    if-ge v6, v3, :cond_7

    .line 92
    .line 93
    add-int v2, v6, v7

    .line 94
    .line 95
    move v5, v6

    .line 96
    :goto_1
    if-ge v5, v2, :cond_5

    .line 97
    .line 98
    aput v4, v10, v5

    .line 99
    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    iget v2, v0, LD/e;->r:I

    .line 104
    .line 105
    add-int/2addr v6, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    if-ne v3, v13, :cond_7

    .line 108
    .line 109
    iget-object v2, v0, LD/e;->m:Landroid/graphics/Bitmap;

    .line 110
    .line 111
    if-eqz v2, :cond_7

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    iget v8, v0, LD/e;->r:I

    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    const/4 v7, 0x0

    .line 118
    iget v9, v0, LD/e;->q:I

    .line 119
    .line 120
    move-object v3, v10

    .line 121
    move v5, v8

    .line 122
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 123
    .line 124
    .line 125
    :cond_7
    iget-object v2, v0, LD/e;->d:Ljava/nio/ByteBuffer;

    .line 126
    .line 127
    iget v3, v1, LD/b;->j:I

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    .line 131
    .line 132
    iget v2, v1, LD/b;->c:I

    .line 133
    .line 134
    iget v3, v1, LD/b;->d:I

    .line 135
    .line 136
    mul-int v2, v2, v3

    .line 137
    .line 138
    iget-object v3, v0, LD/e;->i:[B

    .line 139
    .line 140
    if-eqz v3, :cond_8

    .line 141
    .line 142
    array-length v3, v3

    .line 143
    if-ge v3, v2, :cond_9

    .line 144
    .line 145
    :cond_8
    invoke-virtual {v11, v2}, LQ/d;->c(I)[B

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    iput-object v3, v0, LD/e;->i:[B

    .line 150
    .line 151
    :cond_9
    iget-object v3, v0, LD/e;->i:[B

    .line 152
    .line 153
    iget-object v4, v0, LD/e;->f:[S

    .line 154
    .line 155
    const/16 v5, 0x1000

    .line 156
    .line 157
    if-nez v4, :cond_a

    .line 158
    .line 159
    new-array v4, v5, [S

    .line 160
    .line 161
    iput-object v4, v0, LD/e;->f:[S

    .line 162
    .line 163
    :cond_a
    iget-object v4, v0, LD/e;->f:[S

    .line 164
    .line 165
    iget-object v6, v0, LD/e;->g:[B

    .line 166
    .line 167
    if-nez v6, :cond_b

    .line 168
    .line 169
    new-array v6, v5, [B

    .line 170
    .line 171
    iput-object v6, v0, LD/e;->g:[B

    .line 172
    .line 173
    :cond_b
    iget-object v6, v0, LD/e;->g:[B

    .line 174
    .line 175
    iget-object v7, v0, LD/e;->h:[B

    .line 176
    .line 177
    if-nez v7, :cond_c

    .line 178
    .line 179
    const/16 v7, 0x1001

    .line 180
    .line 181
    new-array v7, v7, [B

    .line 182
    .line 183
    iput-object v7, v0, LD/e;->h:[B

    .line 184
    .line 185
    :cond_c
    iget-object v7, v0, LD/e;->h:[B

    .line 186
    .line 187
    iget-object v8, v0, LD/e;->d:Ljava/nio/ByteBuffer;

    .line 188
    .line 189
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    and-int/lit16 v8, v8, 0xff

    .line 194
    .line 195
    const/4 v9, 0x1

    .line 196
    shl-int v11, v9, v8

    .line 197
    .line 198
    add-int/lit8 v15, v11, 0x1

    .line 199
    .line 200
    add-int/lit8 v16, v11, 0x2

    .line 201
    .line 202
    add-int/2addr v8, v9

    .line 203
    shl-int v17, v9, v8

    .line 204
    .line 205
    const/4 v14, -0x1

    .line 206
    add-int/lit8 v17, v17, -0x1

    .line 207
    .line 208
    const/4 v5, 0x0

    .line 209
    :goto_2
    if-ge v5, v11, :cond_d

    .line 210
    .line 211
    aput-short v12, v4, v5

    .line 212
    .line 213
    int-to-byte v14, v5

    .line 214
    aput-byte v14, v6, v5

    .line 215
    .line 216
    add-int/lit8 v5, v5, 0x1

    .line 217
    .line 218
    const/4 v14, -0x1

    .line 219
    goto :goto_2

    .line 220
    :cond_d
    iget-object v5, v0, LD/e;->e:[B

    .line 221
    .line 222
    move-object v13, v0

    .line 223
    move/from16 v25, v8

    .line 224
    .line 225
    move/from16 v24, v16

    .line 226
    .line 227
    move/from16 v28, v17

    .line 228
    .line 229
    const/4 v9, 0x0

    .line 230
    const/4 v14, -0x1

    .line 231
    const/16 v20, 0x0

    .line 232
    .line 233
    const/16 v21, 0x0

    .line 234
    .line 235
    const/16 v22, 0x0

    .line 236
    .line 237
    const/16 v23, 0x0

    .line 238
    .line 239
    const/16 v26, 0x0

    .line 240
    .line 241
    const/16 v27, 0x0

    .line 242
    .line 243
    const/16 v29, 0x0

    .line 244
    .line 245
    :goto_3
    const/16 v30, 0x8

    .line 246
    .line 247
    if-ge v9, v2, :cond_19

    .line 248
    .line 249
    if-nez v20, :cond_10

    .line 250
    .line 251
    iget-object v12, v0, LD/e;->d:Ljava/nio/ByteBuffer;

    .line 252
    .line 253
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->get()B

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    and-int/lit16 v12, v12, 0xff

    .line 258
    .line 259
    if-gtz v12, :cond_e

    .line 260
    .line 261
    move/from16 v31, v8

    .line 262
    .line 263
    move/from16 v32, v9

    .line 264
    .line 265
    move-object/from16 v34, v10

    .line 266
    .line 267
    move/from16 v33, v14

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_e
    move/from16 v31, v8

    .line 271
    .line 272
    iget-object v8, v13, LD/e;->d:Ljava/nio/ByteBuffer;

    .line 273
    .line 274
    move/from16 v32, v9

    .line 275
    .line 276
    iget-object v9, v13, LD/e;->e:[B

    .line 277
    .line 278
    move/from16 v33, v14

    .line 279
    .line 280
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    .line 285
    .line 286
    .line 287
    move-result v14

    .line 288
    move-object/from16 v34, v10

    .line 289
    .line 290
    const/4 v10, 0x0

    .line 291
    invoke-virtual {v8, v9, v10, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 292
    .line 293
    .line 294
    :goto_4
    if-gtz v12, :cond_f

    .line 295
    .line 296
    const/4 v8, 0x3

    .line 297
    iput v8, v13, LD/e;->o:I

    .line 298
    .line 299
    goto/16 :goto_c

    .line 300
    .line 301
    :cond_f
    move/from16 v20, v12

    .line 302
    .line 303
    const/16 v21, 0x0

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_10
    move/from16 v31, v8

    .line 307
    .line 308
    move/from16 v32, v9

    .line 309
    .line 310
    move-object/from16 v34, v10

    .line 311
    .line 312
    move/from16 v33, v14

    .line 313
    .line 314
    :goto_5
    aget-byte v8, v5, v21

    .line 315
    .line 316
    and-int/lit16 v8, v8, 0xff

    .line 317
    .line 318
    shl-int v8, v8, v22

    .line 319
    .line 320
    add-int v23, v23, v8

    .line 321
    .line 322
    add-int/lit8 v22, v22, 0x8

    .line 323
    .line 324
    const/4 v8, 0x1

    .line 325
    add-int/lit8 v21, v21, 0x1

    .line 326
    .line 327
    const/4 v8, -0x1

    .line 328
    add-int/lit8 v20, v20, -0x1

    .line 329
    .line 330
    move/from16 v10, v22

    .line 331
    .line 332
    move/from16 v12, v24

    .line 333
    .line 334
    move/from16 v8, v25

    .line 335
    .line 336
    move/from16 v9, v32

    .line 337
    .line 338
    move/from16 v14, v33

    .line 339
    .line 340
    move-object/from16 v22, v5

    .line 341
    .line 342
    move/from16 v5, v26

    .line 343
    .line 344
    :goto_6
    if-lt v10, v8, :cond_18

    .line 345
    .line 346
    move-object/from16 v24, v13

    .line 347
    .line 348
    and-int v13, v23, v28

    .line 349
    .line 350
    shr-int v23, v23, v8

    .line 351
    .line 352
    sub-int/2addr v10, v8

    .line 353
    if-ne v13, v11, :cond_11

    .line 354
    .line 355
    move/from16 v25, v10

    .line 356
    .line 357
    move/from16 v12, v16

    .line 358
    .line 359
    move/from16 v28, v17

    .line 360
    .line 361
    move-object/from16 v13, v24

    .line 362
    .line 363
    move/from16 v8, v31

    .line 364
    .line 365
    const/4 v14, -0x1

    .line 366
    move/from16 v24, v5

    .line 367
    .line 368
    const/16 v5, 0x1000

    .line 369
    .line 370
    goto/16 :goto_a

    .line 371
    .line 372
    :cond_11
    if-ne v13, v15, :cond_12

    .line 373
    .line 374
    move-object/from16 v13, v24

    .line 375
    .line 376
    move/from16 v24, v5

    .line 377
    .line 378
    const/16 v5, 0x1000

    .line 379
    .line 380
    goto/16 :goto_b

    .line 381
    .line 382
    :cond_12
    move/from16 v25, v10

    .line 383
    .line 384
    const/4 v10, -0x1

    .line 385
    if-ne v14, v10, :cond_13

    .line 386
    .line 387
    aget-byte v5, v6, v13

    .line 388
    .line 389
    aput-byte v5, v3, v27

    .line 390
    .line 391
    add-int/lit8 v27, v27, 0x1

    .line 392
    .line 393
    add-int/lit8 v9, v9, 0x1

    .line 394
    .line 395
    move/from16 v24, v13

    .line 396
    .line 397
    const/16 v5, 0x1000

    .line 398
    .line 399
    goto :goto_9

    .line 400
    :cond_13
    if-lt v13, v12, :cond_14

    .line 401
    .line 402
    int-to-byte v5, v5

    .line 403
    aput-byte v5, v7, v29

    .line 404
    .line 405
    add-int/lit8 v29, v29, 0x1

    .line 406
    .line 407
    move v5, v14

    .line 408
    goto :goto_7

    .line 409
    :cond_14
    move v5, v13

    .line 410
    :goto_7
    if-lt v5, v11, :cond_15

    .line 411
    .line 412
    aget-byte v10, v6, v5

    .line 413
    .line 414
    aput-byte v10, v7, v29

    .line 415
    .line 416
    add-int/lit8 v29, v29, 0x1

    .line 417
    .line 418
    aget-short v5, v4, v5

    .line 419
    .line 420
    goto :goto_7

    .line 421
    :cond_15
    aget-byte v5, v6, v5

    .line 422
    .line 423
    and-int/lit16 v5, v5, 0xff

    .line 424
    .line 425
    int-to-byte v10, v5

    .line 426
    aput-byte v10, v3, v27

    .line 427
    .line 428
    :goto_8
    const/16 v19, 0x1

    .line 429
    .line 430
    add-int/lit8 v27, v27, 0x1

    .line 431
    .line 432
    add-int/lit8 v9, v9, 0x1

    .line 433
    .line 434
    if-lez v29, :cond_16

    .line 435
    .line 436
    add-int/lit8 v29, v29, -0x1

    .line 437
    .line 438
    aget-byte v24, v7, v29

    .line 439
    .line 440
    aput-byte v24, v3, v27

    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_16
    move/from16 v24, v5

    .line 444
    .line 445
    const/16 v5, 0x1000

    .line 446
    .line 447
    if-ge v12, v5, :cond_17

    .line 448
    .line 449
    int-to-short v14, v14

    .line 450
    aput-short v14, v4, v12

    .line 451
    .line 452
    aput-byte v10, v6, v12

    .line 453
    .line 454
    add-int/lit8 v12, v12, 0x1

    .line 455
    .line 456
    and-int v10, v12, v28

    .line 457
    .line 458
    if-nez v10, :cond_17

    .line 459
    .line 460
    if-ge v12, v5, :cond_17

    .line 461
    .line 462
    add-int/lit8 v8, v8, 0x1

    .line 463
    .line 464
    add-int v28, v28, v12

    .line 465
    .line 466
    :cond_17
    :goto_9
    move v14, v13

    .line 467
    move-object v13, v0

    .line 468
    :goto_a
    move/from16 v5, v24

    .line 469
    .line 470
    move/from16 v10, v25

    .line 471
    .line 472
    goto/16 :goto_6

    .line 473
    .line 474
    :cond_18
    move/from16 v24, v5

    .line 475
    .line 476
    const/16 v5, 0x1000

    .line 477
    .line 478
    move-object v13, v0

    .line 479
    :goto_b
    move/from16 v25, v8

    .line 480
    .line 481
    move-object/from16 v5, v22

    .line 482
    .line 483
    move/from16 v26, v24

    .line 484
    .line 485
    move/from16 v8, v31

    .line 486
    .line 487
    move/from16 v22, v10

    .line 488
    .line 489
    move/from16 v24, v12

    .line 490
    .line 491
    move-object/from16 v10, v34

    .line 492
    .line 493
    const/4 v12, 0x0

    .line 494
    goto/16 :goto_3

    .line 495
    .line 496
    :cond_19
    move-object/from16 v34, v10

    .line 497
    .line 498
    :goto_c
    move/from16 v12, v27

    .line 499
    .line 500
    const/4 v10, 0x0

    .line 501
    invoke-static {v3, v12, v2, v10}, Ljava/util/Arrays;->fill([BIIB)V

    .line 502
    .line 503
    .line 504
    iget-boolean v2, v1, LD/b;->e:Z

    .line 505
    .line 506
    if-nez v2, :cond_24

    .line 507
    .line 508
    iget v2, v0, LD/e;->p:I

    .line 509
    .line 510
    const/4 v3, 0x1

    .line 511
    if-eq v2, v3, :cond_1a

    .line 512
    .line 513
    goto/16 :goto_12

    .line 514
    .line 515
    :cond_1a
    iget-object v2, v0, LD/e;->j:[I

    .line 516
    .line 517
    iget v3, v1, LD/b;->d:I

    .line 518
    .line 519
    iget v4, v1, LD/b;->b:I

    .line 520
    .line 521
    iget v5, v1, LD/b;->c:I

    .line 522
    .line 523
    iget v6, v1, LD/b;->a:I

    .line 524
    .line 525
    iget v7, v0, LD/e;->k:I

    .line 526
    .line 527
    if-nez v7, :cond_1b

    .line 528
    .line 529
    const/4 v7, 0x1

    .line 530
    goto :goto_d

    .line 531
    :cond_1b
    const/4 v7, 0x0

    .line 532
    :goto_d
    iget v8, v0, LD/e;->r:I

    .line 533
    .line 534
    iget-object v9, v0, LD/e;->i:[B

    .line 535
    .line 536
    iget-object v11, v0, LD/e;->a:[I

    .line 537
    .line 538
    const/4 v12, -0x1

    .line 539
    const/4 v13, 0x0

    .line 540
    :goto_e
    if-ge v13, v3, :cond_20

    .line 541
    .line 542
    add-int v14, v13, v4

    .line 543
    .line 544
    mul-int v14, v14, v8

    .line 545
    .line 546
    add-int v15, v14, v6

    .line 547
    .line 548
    add-int v10, v15, v5

    .line 549
    .line 550
    add-int/2addr v14, v8

    .line 551
    if-ge v14, v10, :cond_1c

    .line 552
    .line 553
    move v10, v14

    .line 554
    :cond_1c
    iget v14, v1, LD/b;->c:I

    .line 555
    .line 556
    mul-int v14, v14, v13

    .line 557
    .line 558
    :goto_f
    if-ge v15, v10, :cond_1f

    .line 559
    .line 560
    move/from16 v16, v3

    .line 561
    .line 562
    aget-byte v3, v9, v14

    .line 563
    .line 564
    move/from16 v17, v4

    .line 565
    .line 566
    and-int/lit16 v4, v3, 0xff

    .line 567
    .line 568
    if-eq v4, v12, :cond_1e

    .line 569
    .line 570
    aget v4, v11, v4

    .line 571
    .line 572
    if-eqz v4, :cond_1d

    .line 573
    .line 574
    aput v4, v2, v15

    .line 575
    .line 576
    goto :goto_10

    .line 577
    :cond_1d
    move v12, v3

    .line 578
    :cond_1e
    :goto_10
    add-int/lit8 v14, v14, 0x1

    .line 579
    .line 580
    add-int/lit8 v15, v15, 0x1

    .line 581
    .line 582
    move/from16 v3, v16

    .line 583
    .line 584
    move/from16 v4, v17

    .line 585
    .line 586
    goto :goto_f

    .line 587
    :cond_1f
    move/from16 v16, v3

    .line 588
    .line 589
    move/from16 v17, v4

    .line 590
    .line 591
    add-int/lit8 v13, v13, 0x1

    .line 592
    .line 593
    const/4 v10, 0x0

    .line 594
    goto :goto_e

    .line 595
    :cond_20
    iget-object v2, v0, LD/e;->s:Ljava/lang/Boolean;

    .line 596
    .line 597
    if-eqz v2, :cond_21

    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    if-nez v2, :cond_22

    .line 604
    .line 605
    :cond_21
    iget-object v2, v0, LD/e;->s:Ljava/lang/Boolean;

    .line 606
    .line 607
    if-nez v2, :cond_23

    .line 608
    .line 609
    if-eqz v7, :cond_23

    .line 610
    .line 611
    const/4 v2, -0x1

    .line 612
    if-eq v12, v2, :cond_23

    .line 613
    .line 614
    :cond_22
    const/4 v12, 0x1

    .line 615
    goto :goto_11

    .line 616
    :cond_23
    const/4 v12, 0x0

    .line 617
    :goto_11
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    iput-object v2, v0, LD/e;->s:Ljava/lang/Boolean;

    .line 622
    .line 623
    goto/16 :goto_21

    .line 624
    .line 625
    :cond_24
    :goto_12
    iget-object v2, v0, LD/e;->j:[I

    .line 626
    .line 627
    iget v3, v1, LD/b;->d:I

    .line 628
    .line 629
    iget v4, v0, LD/e;->p:I

    .line 630
    .line 631
    div-int/2addr v3, v4

    .line 632
    iget v5, v1, LD/b;->b:I

    .line 633
    .line 634
    div-int/2addr v5, v4

    .line 635
    iget v6, v1, LD/b;->c:I

    .line 636
    .line 637
    div-int/2addr v6, v4

    .line 638
    iget v7, v1, LD/b;->a:I

    .line 639
    .line 640
    div-int/2addr v7, v4

    .line 641
    iget v8, v0, LD/e;->k:I

    .line 642
    .line 643
    if-nez v8, :cond_25

    .line 644
    .line 645
    const/4 v10, 0x1

    .line 646
    goto :goto_13

    .line 647
    :cond_25
    const/4 v10, 0x0

    .line 648
    :goto_13
    iget v8, v0, LD/e;->r:I

    .line 649
    .line 650
    iget v9, v0, LD/e;->q:I

    .line 651
    .line 652
    iget-object v11, v0, LD/e;->i:[B

    .line 653
    .line 654
    iget-object v12, v0, LD/e;->a:[I

    .line 655
    .line 656
    iget-object v13, v0, LD/e;->s:Ljava/lang/Boolean;

    .line 657
    .line 658
    move-object v14, v13

    .line 659
    const/4 v13, 0x0

    .line 660
    const/4 v15, 0x0

    .line 661
    const/16 v16, 0x1

    .line 662
    .line 663
    const/16 v17, 0x8

    .line 664
    .line 665
    :goto_14
    if-ge v13, v3, :cond_3a

    .line 666
    .line 667
    move-object/from16 p2, v14

    .line 668
    .line 669
    iget-boolean v14, v1, LD/b;->e:Z

    .line 670
    .line 671
    if-eqz v14, :cond_2a

    .line 672
    .line 673
    if-lt v15, v3, :cond_29

    .line 674
    .line 675
    add-int/lit8 v14, v16, 0x1

    .line 676
    .line 677
    move/from16 v18, v3

    .line 678
    .line 679
    const/4 v3, 0x2

    .line 680
    if-eq v14, v3, :cond_28

    .line 681
    .line 682
    const/4 v3, 0x3

    .line 683
    if-eq v14, v3, :cond_27

    .line 684
    .line 685
    const/4 v3, 0x4

    .line 686
    move/from16 v16, v14

    .line 687
    .line 688
    if-eq v14, v3, :cond_26

    .line 689
    .line 690
    goto :goto_15

    .line 691
    :cond_26
    const/4 v15, 0x1

    .line 692
    const/16 v17, 0x2

    .line 693
    .line 694
    goto :goto_15

    .line 695
    :cond_27
    const/4 v3, 0x4

    .line 696
    move/from16 v16, v14

    .line 697
    .line 698
    const/4 v15, 0x2

    .line 699
    const/16 v17, 0x4

    .line 700
    .line 701
    goto :goto_15

    .line 702
    :cond_28
    const/4 v3, 0x4

    .line 703
    move/from16 v16, v14

    .line 704
    .line 705
    const/4 v15, 0x4

    .line 706
    goto :goto_15

    .line 707
    :cond_29
    move/from16 v18, v3

    .line 708
    .line 709
    :goto_15
    add-int v3, v15, v17

    .line 710
    .line 711
    goto :goto_16

    .line 712
    :cond_2a
    move/from16 v18, v3

    .line 713
    .line 714
    move v3, v15

    .line 715
    move v15, v13

    .line 716
    :goto_16
    add-int/2addr v15, v5

    .line 717
    const/4 v14, 0x1

    .line 718
    if-ne v4, v14, :cond_2b

    .line 719
    .line 720
    const/4 v14, 0x1

    .line 721
    goto :goto_17

    .line 722
    :cond_2b
    const/4 v14, 0x0

    .line 723
    :goto_17
    if-ge v15, v9, :cond_39

    .line 724
    .line 725
    mul-int v15, v15, v8

    .line 726
    .line 727
    add-int v20, v15, v7

    .line 728
    .line 729
    move/from16 v21, v3

    .line 730
    .line 731
    add-int v3, v20, v6

    .line 732
    .line 733
    add-int/2addr v15, v8

    .line 734
    if-ge v15, v3, :cond_2c

    .line 735
    .line 736
    move v3, v15

    .line 737
    :cond_2c
    mul-int v15, v13, v4

    .line 738
    .line 739
    move/from16 v22, v5

    .line 740
    .line 741
    iget v5, v1, LD/b;->c:I

    .line 742
    .line 743
    mul-int v15, v15, v5

    .line 744
    .line 745
    if-eqz v14, :cond_2f

    .line 746
    .line 747
    move-object/from16 v14, p2

    .line 748
    .line 749
    move/from16 v5, v20

    .line 750
    .line 751
    :goto_18
    move/from16 v23, v6

    .line 752
    .line 753
    if-ge v5, v3, :cond_38

    .line 754
    .line 755
    aget-byte v6, v11, v15

    .line 756
    .line 757
    and-int/lit16 v6, v6, 0xff

    .line 758
    .line 759
    aget v6, v12, v6

    .line 760
    .line 761
    if-eqz v6, :cond_2d

    .line 762
    .line 763
    aput v6, v2, v5

    .line 764
    .line 765
    goto :goto_19

    .line 766
    :cond_2d
    if-eqz v10, :cond_2e

    .line 767
    .line 768
    if-nez v14, :cond_2e

    .line 769
    .line 770
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 771
    .line 772
    move-object v14, v6

    .line 773
    :cond_2e
    :goto_19
    add-int/2addr v15, v4

    .line 774
    add-int/lit8 v5, v5, 0x1

    .line 775
    .line 776
    move/from16 v6, v23

    .line 777
    .line 778
    goto :goto_18

    .line 779
    :cond_2f
    move/from16 v23, v6

    .line 780
    .line 781
    sub-int v5, v3, v20

    .line 782
    .line 783
    mul-int v5, v5, v4

    .line 784
    .line 785
    add-int/2addr v5, v15

    .line 786
    move-object/from16 v14, p2

    .line 787
    .line 788
    move/from16 v6, v20

    .line 789
    .line 790
    :goto_1a
    if-ge v6, v3, :cond_38

    .line 791
    .line 792
    move/from16 v20, v3

    .line 793
    .line 794
    iget v3, v1, LD/b;->c:I

    .line 795
    .line 796
    move/from16 v29, v7

    .line 797
    .line 798
    move/from16 v31, v8

    .line 799
    .line 800
    move v7, v15

    .line 801
    const/16 v24, 0x0

    .line 802
    .line 803
    const/16 v25, 0x0

    .line 804
    .line 805
    const/16 v26, 0x0

    .line 806
    .line 807
    const/16 v27, 0x0

    .line 808
    .line 809
    const/16 v28, 0x0

    .line 810
    .line 811
    :goto_1b
    iget v8, v0, LD/e;->p:I

    .line 812
    .line 813
    add-int/2addr v8, v15

    .line 814
    if-ge v7, v8, :cond_31

    .line 815
    .line 816
    iget-object v8, v0, LD/e;->i:[B

    .line 817
    .line 818
    move/from16 v32, v9

    .line 819
    .line 820
    array-length v9, v8

    .line 821
    if-ge v7, v9, :cond_32

    .line 822
    .line 823
    if-ge v7, v5, :cond_32

    .line 824
    .line 825
    aget-byte v8, v8, v7

    .line 826
    .line 827
    and-int/lit16 v8, v8, 0xff

    .line 828
    .line 829
    iget-object v9, v0, LD/e;->a:[I

    .line 830
    .line 831
    aget v8, v9, v8

    .line 832
    .line 833
    if-eqz v8, :cond_30

    .line 834
    .line 835
    shr-int/lit8 v9, v8, 0x18

    .line 836
    .line 837
    and-int/lit16 v9, v9, 0xff

    .line 838
    .line 839
    add-int v24, v24, v9

    .line 840
    .line 841
    shr-int/lit8 v9, v8, 0x10

    .line 842
    .line 843
    and-int/lit16 v9, v9, 0xff

    .line 844
    .line 845
    add-int v25, v25, v9

    .line 846
    .line 847
    shr-int/lit8 v9, v8, 0x8

    .line 848
    .line 849
    and-int/lit16 v9, v9, 0xff

    .line 850
    .line 851
    add-int v26, v26, v9

    .line 852
    .line 853
    and-int/lit16 v8, v8, 0xff

    .line 854
    .line 855
    add-int v27, v27, v8

    .line 856
    .line 857
    add-int/lit8 v28, v28, 0x1

    .line 858
    .line 859
    :cond_30
    add-int/lit8 v7, v7, 0x1

    .line 860
    .line 861
    move/from16 v9, v32

    .line 862
    .line 863
    goto :goto_1b

    .line 864
    :cond_31
    move/from16 v32, v9

    .line 865
    .line 866
    :cond_32
    add-int/2addr v3, v15

    .line 867
    move v7, v3

    .line 868
    :goto_1c
    iget v8, v0, LD/e;->p:I

    .line 869
    .line 870
    add-int/2addr v8, v3

    .line 871
    if-ge v7, v8, :cond_34

    .line 872
    .line 873
    iget-object v8, v0, LD/e;->i:[B

    .line 874
    .line 875
    array-length v9, v8

    .line 876
    if-ge v7, v9, :cond_34

    .line 877
    .line 878
    if-ge v7, v5, :cond_34

    .line 879
    .line 880
    aget-byte v8, v8, v7

    .line 881
    .line 882
    and-int/lit16 v8, v8, 0xff

    .line 883
    .line 884
    iget-object v9, v0, LD/e;->a:[I

    .line 885
    .line 886
    aget v8, v9, v8

    .line 887
    .line 888
    if-eqz v8, :cond_33

    .line 889
    .line 890
    shr-int/lit8 v9, v8, 0x18

    .line 891
    .line 892
    and-int/lit16 v9, v9, 0xff

    .line 893
    .line 894
    add-int v24, v24, v9

    .line 895
    .line 896
    shr-int/lit8 v9, v8, 0x10

    .line 897
    .line 898
    and-int/lit16 v9, v9, 0xff

    .line 899
    .line 900
    add-int v25, v25, v9

    .line 901
    .line 902
    shr-int/lit8 v9, v8, 0x8

    .line 903
    .line 904
    and-int/lit16 v9, v9, 0xff

    .line 905
    .line 906
    add-int v26, v26, v9

    .line 907
    .line 908
    and-int/lit16 v8, v8, 0xff

    .line 909
    .line 910
    add-int v27, v27, v8

    .line 911
    .line 912
    add-int/lit8 v28, v28, 0x1

    .line 913
    .line 914
    :cond_33
    add-int/lit8 v7, v7, 0x1

    .line 915
    .line 916
    goto :goto_1c

    .line 917
    :cond_34
    if-nez v28, :cond_35

    .line 918
    .line 919
    const/4 v3, 0x0

    .line 920
    goto :goto_1d

    .line 921
    :cond_35
    div-int v24, v24, v28

    .line 922
    .line 923
    shl-int/lit8 v3, v24, 0x18

    .line 924
    .line 925
    div-int v25, v25, v28

    .line 926
    .line 927
    shl-int/lit8 v7, v25, 0x10

    .line 928
    .line 929
    or-int/2addr v3, v7

    .line 930
    div-int v26, v26, v28

    .line 931
    .line 932
    shl-int/lit8 v7, v26, 0x8

    .line 933
    .line 934
    or-int/2addr v3, v7

    .line 935
    div-int v27, v27, v28

    .line 936
    .line 937
    or-int v3, v3, v27

    .line 938
    .line 939
    :goto_1d
    if-eqz v3, :cond_36

    .line 940
    .line 941
    aput v3, v2, v6

    .line 942
    .line 943
    goto :goto_1e

    .line 944
    :cond_36
    if-eqz v10, :cond_37

    .line 945
    .line 946
    if-nez v14, :cond_37

    .line 947
    .line 948
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 949
    .line 950
    move-object v14, v3

    .line 951
    :cond_37
    :goto_1e
    add-int/2addr v15, v4

    .line 952
    add-int/lit8 v6, v6, 0x1

    .line 953
    .line 954
    move/from16 v3, v20

    .line 955
    .line 956
    move/from16 v7, v29

    .line 957
    .line 958
    move/from16 v8, v31

    .line 959
    .line 960
    move/from16 v9, v32

    .line 961
    .line 962
    goto/16 :goto_1a

    .line 963
    .line 964
    :cond_38
    move/from16 v29, v7

    .line 965
    .line 966
    move/from16 v31, v8

    .line 967
    .line 968
    move/from16 v32, v9

    .line 969
    .line 970
    goto :goto_1f

    .line 971
    :cond_39
    move/from16 v21, v3

    .line 972
    .line 973
    move/from16 v22, v5

    .line 974
    .line 975
    move/from16 v23, v6

    .line 976
    .line 977
    move/from16 v29, v7

    .line 978
    .line 979
    move/from16 v31, v8

    .line 980
    .line 981
    move/from16 v32, v9

    .line 982
    .line 983
    move-object/from16 v14, p2

    .line 984
    .line 985
    :goto_1f
    add-int/lit8 v13, v13, 0x1

    .line 986
    .line 987
    move/from16 v3, v18

    .line 988
    .line 989
    move/from16 v15, v21

    .line 990
    .line 991
    move/from16 v5, v22

    .line 992
    .line 993
    move/from16 v6, v23

    .line 994
    .line 995
    move/from16 v7, v29

    .line 996
    .line 997
    move/from16 v8, v31

    .line 998
    .line 999
    move/from16 v9, v32

    .line 1000
    .line 1001
    goto/16 :goto_14

    .line 1002
    .line 1003
    :cond_3a
    move-object/from16 p2, v14

    .line 1004
    .line 1005
    iget-object v2, v0, LD/e;->s:Ljava/lang/Boolean;

    .line 1006
    .line 1007
    if-nez v2, :cond_3c

    .line 1008
    .line 1009
    if-nez p2, :cond_3b

    .line 1010
    .line 1011
    const/4 v12, 0x0

    .line 1012
    goto :goto_20

    .line 1013
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1014
    .line 1015
    .line 1016
    move-result v12

    .line 1017
    :goto_20
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    iput-object v2, v0, LD/e;->s:Ljava/lang/Boolean;

    .line 1022
    .line 1023
    :cond_3c
    :goto_21
    iget-boolean v2, v0, LD/e;->n:Z

    .line 1024
    .line 1025
    if-eqz v2, :cond_3f

    .line 1026
    .line 1027
    iget v1, v1, LD/b;->g:I

    .line 1028
    .line 1029
    if-eqz v1, :cond_3d

    .line 1030
    .line 1031
    const/4 v2, 0x1

    .line 1032
    if-ne v1, v2, :cond_3f

    .line 1033
    .line 1034
    :cond_3d
    iget-object v1, v0, LD/e;->m:Landroid/graphics/Bitmap;

    .line 1035
    .line 1036
    if-nez v1, :cond_3e

    .line 1037
    .line 1038
    invoke-direct/range {p0 .. p0}, LD/e;->h()Landroid/graphics/Bitmap;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v1

    .line 1042
    iput-object v1, v0, LD/e;->m:Landroid/graphics/Bitmap;

    .line 1043
    .line 1044
    :cond_3e
    iget-object v1, v0, LD/e;->m:Landroid/graphics/Bitmap;

    .line 1045
    .line 1046
    const/4 v3, 0x0

    .line 1047
    iget v7, v0, LD/e;->r:I

    .line 1048
    .line 1049
    const/4 v5, 0x0

    .line 1050
    const/4 v6, 0x0

    .line 1051
    iget v8, v0, LD/e;->q:I

    .line 1052
    .line 1053
    move-object/from16 v2, v34

    .line 1054
    .line 1055
    move v4, v7

    .line 1056
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1057
    .line 1058
    .line 1059
    :cond_3f
    invoke-direct/range {p0 .. p0}, LD/e;->h()Landroid/graphics/Bitmap;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v9

    .line 1063
    const/4 v3, 0x0

    .line 1064
    iget v7, v0, LD/e;->r:I

    .line 1065
    .line 1066
    const/4 v5, 0x0

    .line 1067
    const/4 v6, 0x0

    .line 1068
    iget v8, v0, LD/e;->q:I

    .line 1069
    .line 1070
    move-object v1, v9

    .line 1071
    move-object/from16 v2, v34

    .line 1072
    .line 1073
    move v4, v7

    .line 1074
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1075
    .line 1076
    .line 1077
    return-object v9
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LD/e;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, LD/e;->d:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, LD/e;->i:[B

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    add-int/2addr v0, v1

    .line 11
    iget-object v1, p0, LD/e;->j:[I

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    mul-int/lit8 v1, v1, 0x4

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    return v1
.end method

.method public final declared-synchronized c()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-string v0, "No valid color table found for frame #"

    .line 2
    .line 3
    const-string v1, "Unable to decode frame, status="

    .line 4
    .line 5
    const-string v2, "Unable to decode frame, frameCount="

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, LD/e;->l:LD/c;

    .line 9
    .line 10
    iget v3, v3, LD/c;->c:I

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x1

    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    iget v3, p0, LD/e;->k:I

    .line 17
    .line 18
    if-gez v3, :cond_2

    .line 19
    .line 20
    :cond_0
    const-string v3, "e"

    .line 21
    .line 22
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    const-string v3, "e"

    .line 29
    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, LD/e;->l:LD/c;

    .line 36
    .line 37
    iget v2, v2, LD/c;->c:I

    .line 38
    .line 39
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ", framePointer="

    .line 43
    .line 44
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v2, p0, LD/e;->k:I

    .line 48
    .line 49
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    iput v5, p0, LD/e;->o:I

    .line 60
    .line 61
    :cond_2
    iget v2, p0, LD/e;->o:I

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    if-eq v2, v5, :cond_a

    .line 65
    .line 66
    const/4 v6, 0x2

    .line 67
    if-ne v2, v6, :cond_3

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_3
    const/4 v1, 0x0

    .line 72
    iput v1, p0, LD/e;->o:I

    .line 73
    .line 74
    iget-object v2, p0, LD/e;->e:[B

    .line 75
    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    iget-object v2, p0, LD/e;->c:LQ/d;

    .line 79
    .line 80
    const/16 v7, 0xff

    .line 81
    .line 82
    invoke-virtual {v2, v7}, LQ/d;->c(I)[B

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iput-object v2, p0, LD/e;->e:[B

    .line 87
    .line 88
    :cond_4
    iget-object v2, p0, LD/e;->l:LD/c;

    .line 89
    .line 90
    iget-object v2, v2, LD/c;->e:Ljava/util/ArrayList;

    .line 91
    .line 92
    iget v7, p0, LD/e;->k:I

    .line 93
    .line 94
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, LD/b;

    .line 99
    .line 100
    iget v7, p0, LD/e;->k:I

    .line 101
    .line 102
    sub-int/2addr v7, v5

    .line 103
    if-ltz v7, :cond_5

    .line 104
    .line 105
    iget-object v8, p0, LD/e;->l:LD/c;

    .line 106
    .line 107
    iget-object v8, v8, LD/c;->e:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, LD/b;

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    move-object v7, v3

    .line 117
    :goto_0
    iget-object v8, v2, LD/b;->k:[I

    .line 118
    .line 119
    if-eqz v8, :cond_6

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    iget-object v8, p0, LD/e;->l:LD/c;

    .line 123
    .line 124
    iget-object v8, v8, LD/c;->a:[I

    .line 125
    .line 126
    :goto_1
    iput-object v8, p0, LD/e;->a:[I

    .line 127
    .line 128
    if-nez v8, :cond_8

    .line 129
    .line 130
    const-string v1, "e"

    .line 131
    .line 132
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    const-string v1, "e"

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget v0, p0, LD/e;->k:I

    .line 146
    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :cond_7
    iput v5, p0, LD/e;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    monitor-exit p0

    .line 160
    return-object v3

    .line 161
    :cond_8
    :try_start_1
    iget-boolean v0, v2, LD/b;->f:Z

    .line 162
    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    iget-object v0, p0, LD/e;->b:[I

    .line 166
    .line 167
    array-length v3, v8

    .line 168
    invoke-static {v8, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, LD/e;->b:[I

    .line 172
    .line 173
    iput-object v0, p0, LD/e;->a:[I

    .line 174
    .line 175
    iget v3, v2, LD/b;->h:I

    .line 176
    .line 177
    aput v1, v0, v3

    .line 178
    .line 179
    iget v0, v2, LD/b;->g:I

    .line 180
    .line 181
    if-ne v0, v6, :cond_9

    .line 182
    .line 183
    iget v0, p0, LD/e;->k:I

    .line 184
    .line 185
    if-nez v0, :cond_9

    .line 186
    .line 187
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 188
    .line 189
    iput-object v0, p0, LD/e;->s:Ljava/lang/Boolean;

    .line 190
    .line 191
    :cond_9
    invoke-direct {p0, v2, v7}, LD/e;->j(LD/b;LD/b;)Landroid/graphics/Bitmap;

    .line 192
    .line 193
    .line 194
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    monitor-exit p0

    .line 196
    return-object v0

    .line 197
    :cond_a
    :goto_2
    :try_start_2
    const-string v0, "e"

    .line 198
    .line 199
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_b

    .line 204
    .line 205
    const-string v0, "e"

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget v1, p0, LD/e;->o:I

    .line 213
    .line 214
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    .line 223
    .line 224
    :cond_b
    monitor-exit p0

    .line 225
    return-object v3

    .line 226
    :catchall_0
    move-exception v0

    .line 227
    monitor-exit p0

    .line 228
    throw v0
.end method

.method public final clear()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LD/e;->l:LD/c;

    .line 3
    .line 4
    iget-object v1, p0, LD/e;->i:[B

    .line 5
    .line 6
    iget-object v2, p0, LD/e;->c:LQ/d;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2, v1}, LQ/d;->g([B)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, LD/e;->j:[I

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2, v1}, LQ/d;->h([I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, LD/e;->m:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2, v1}, LQ/d;->f(Landroid/graphics/Bitmap;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iput-object v0, p0, LD/e;->m:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    iput-object v0, p0, LD/e;->d:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    iput-object v0, p0, LD/e;->s:Ljava/lang/Boolean;

    .line 32
    .line 33
    iget-object v0, p0, LD/e;->e:[B

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v2, v0}, LQ/d;->g([B)V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget v0, p0, LD/e;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, LD/e;->l:LD/c;

    .line 6
    .line 7
    iget v1, v1, LD/c;->c:I

    .line 8
    .line 9
    rem-int/2addr v0, v1

    .line 10
    iput v0, p0, LD/e;->k:I

    .line 11
    .line 12
    return-void
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, LD/e;->l:LD/c;

    .line 2
    .line 3
    iget v0, v0, LD/c;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public final f()I
    .locals 3

    .line 1
    iget-object v0, p0, LD/e;->l:LD/c;

    .line 2
    .line 3
    iget v1, v0, LD/c;->c:I

    .line 4
    .line 5
    if-lez v1, :cond_2

    .line 6
    .line 7
    iget v2, p0, LD/e;->k:I

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-ltz v2, :cond_1

    .line 13
    .line 14
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, LD/c;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, LD/b;

    .line 23
    .line 24
    iget v0, v0, LD/b;->i:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, -0x1

    .line 28
    :goto_0
    return v0

    .line 29
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public final g()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, LD/e;->d:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Landroid/graphics/Bitmap$Config;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Unsupported format: "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ", must be one of "

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, " or "

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    iput-object p1, p0, LD/e;->t:Landroid/graphics/Bitmap$Config;

    .line 51
    .line 52
    return-void
.end method
