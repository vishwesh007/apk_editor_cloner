.class final Landroidx/core/content/res/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final k:Landroidx/core/content/res/w;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:[F

.field private final h:F

.field private final i:F

.field private final j:F


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    sget-object v0, Landroidx/core/content/res/b;->c:[F

    .line 2
    .line 3
    invoke-static {}, Landroidx/core/content/res/b;->c()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-double v1, v1

    .line 8
    const-wide v3, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-double v1, v1, v3

    .line 14
    .line 15
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    div-double/2addr v1, v3

    .line 18
    double-to-float v1, v1

    .line 19
    sget-object v2, Landroidx/core/content/res/b;->a:[[F

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    aget v6, v0, v5

    .line 23
    .line 24
    aget-object v7, v2, v5

    .line 25
    .line 26
    aget v8, v7, v5

    .line 27
    .line 28
    mul-float v8, v8, v6

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    aget v10, v0, v9

    .line 32
    .line 33
    aget v11, v7, v9

    .line 34
    .line 35
    mul-float v11, v11, v10

    .line 36
    .line 37
    add-float/2addr v11, v8

    .line 38
    const/4 v8, 0x2

    .line 39
    aget v12, v0, v8

    .line 40
    .line 41
    aget v7, v7, v8

    .line 42
    .line 43
    mul-float v7, v7, v12

    .line 44
    .line 45
    add-float/2addr v7, v11

    .line 46
    aget-object v11, v2, v9

    .line 47
    .line 48
    aget v13, v11, v5

    .line 49
    .line 50
    mul-float v13, v13, v6

    .line 51
    .line 52
    aget v14, v11, v9

    .line 53
    .line 54
    mul-float v14, v14, v10

    .line 55
    .line 56
    add-float/2addr v14, v13

    .line 57
    aget v11, v11, v8

    .line 58
    .line 59
    mul-float v11, v11, v12

    .line 60
    .line 61
    add-float/2addr v11, v14

    .line 62
    aget-object v2, v2, v8

    .line 63
    .line 64
    aget v13, v2, v5

    .line 65
    .line 66
    mul-float v6, v6, v13

    .line 67
    .line 68
    aget v13, v2, v9

    .line 69
    .line 70
    mul-float v10, v10, v13

    .line 71
    .line 72
    add-float/2addr v10, v6

    .line 73
    aget v2, v2, v8

    .line 74
    .line 75
    mul-float v12, v12, v2

    .line 76
    .line 77
    add-float/2addr v12, v10

    .line 78
    const/high16 v2, 0x3f800000    # 1.0f

    .line 79
    .line 80
    float-to-double v13, v2

    .line 81
    const-wide v15, 0x3feccccccccccccdL    # 0.9

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    cmpl-double v6, v13, v15

    .line 87
    .line 88
    if-ltz v6, :cond_0

    .line 89
    .line 90
    const v6, 0x3dccccd3    # 0.100000046f

    .line 91
    .line 92
    .line 93
    const v10, 0x3f170a3d    # 0.59f

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const v6, 0x3e051eb7    # 0.12999998f

    .line 98
    .line 99
    .line 100
    const v10, 0x3f066666    # 0.525f

    .line 101
    .line 102
    .line 103
    :goto_0
    add-float v18, v6, v10

    .line 104
    .line 105
    neg-float v6, v1

    .line 106
    const/high16 v10, 0x42280000    # 42.0f

    .line 107
    .line 108
    sub-float/2addr v6, v10

    .line 109
    const/high16 v10, 0x42b80000    # 92.0f

    .line 110
    .line 111
    div-float/2addr v6, v10

    .line 112
    float-to-double v13, v6

    .line 113
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v13

    .line 117
    double-to-float v6, v13

    .line 118
    const v10, 0x3e8e38e4

    .line 119
    .line 120
    .line 121
    mul-float v6, v6, v10

    .line 122
    .line 123
    sub-float v6, v2, v6

    .line 124
    .line 125
    mul-float v6, v6, v2

    .line 126
    .line 127
    float-to-double v13, v6

    .line 128
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 129
    .line 130
    cmpl-double v10, v13, v15

    .line 131
    .line 132
    if-lez v10, :cond_1

    .line 133
    .line 134
    const/high16 v6, 0x3f800000    # 1.0f

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    const-wide/16 v15, 0x0

    .line 138
    .line 139
    cmpg-double v10, v13, v15

    .line 140
    .line 141
    if-gez v10, :cond_2

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    :cond_2
    :goto_1
    const/4 v10, 0x3

    .line 145
    new-array v15, v10, [F

    .line 146
    .line 147
    const/high16 v13, 0x42c80000    # 100.0f

    .line 148
    .line 149
    div-float v14, v13, v7

    .line 150
    .line 151
    mul-float v14, v14, v6

    .line 152
    .line 153
    add-float/2addr v14, v2

    .line 154
    sub-float/2addr v14, v6

    .line 155
    aput v14, v15, v5

    .line 156
    .line 157
    div-float v14, v13, v11

    .line 158
    .line 159
    mul-float v14, v14, v6

    .line 160
    .line 161
    add-float/2addr v14, v2

    .line 162
    sub-float/2addr v14, v6

    .line 163
    aput v14, v15, v9

    .line 164
    .line 165
    div-float/2addr v13, v12

    .line 166
    mul-float v13, v13, v6

    .line 167
    .line 168
    add-float/2addr v13, v2

    .line 169
    sub-float/2addr v13, v6

    .line 170
    aput v13, v15, v8

    .line 171
    .line 172
    const/high16 v6, 0x40a00000    # 5.0f

    .line 173
    .line 174
    mul-float v6, v6, v1

    .line 175
    .line 176
    add-float/2addr v6, v2

    .line 177
    div-float v6, v2, v6

    .line 178
    .line 179
    mul-float v13, v6, v6

    .line 180
    .line 181
    mul-float v13, v13, v6

    .line 182
    .line 183
    mul-float v13, v13, v6

    .line 184
    .line 185
    sub-float/2addr v2, v13

    .line 186
    mul-float v13, v13, v1

    .line 187
    .line 188
    const v6, 0x3dcccccd    # 0.1f

    .line 189
    .line 190
    .line 191
    mul-float v6, v6, v2

    .line 192
    .line 193
    mul-float v6, v6, v2

    .line 194
    .line 195
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    .line 196
    .line 197
    float-to-double v1, v1

    .line 198
    mul-double v1, v1, v16

    .line 199
    .line 200
    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    .line 201
    .line 202
    .line 203
    move-result-wide v1

    .line 204
    double-to-float v1, v1

    .line 205
    mul-float v6, v6, v1

    .line 206
    .line 207
    add-float v1, v6, v13

    .line 208
    .line 209
    invoke-static {}, Landroidx/core/content/res/b;->c()F

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    aget v0, v0, v9

    .line 214
    .line 215
    div-float v14, v2, v0

    .line 216
    .line 217
    float-to-double v8, v14

    .line 218
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 219
    .line 220
    .line 221
    move-result-wide v2

    .line 222
    double-to-float v2, v2

    .line 223
    const v3, 0x3fbd70a4    # 1.48f

    .line 224
    .line 225
    .line 226
    add-float v23, v2, v3

    .line 227
    .line 228
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    double-to-float v2, v2

    .line 238
    const v3, 0x3f39999a    # 0.725f

    .line 239
    .line 240
    .line 241
    div-float v2, v3, v2

    .line 242
    .line 243
    new-array v3, v10, [F

    .line 244
    .line 245
    aget v6, v15, v5

    .line 246
    .line 247
    mul-float v6, v6, v1

    .line 248
    .line 249
    mul-float v6, v6, v7

    .line 250
    .line 251
    float-to-double v6, v6

    .line 252
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 253
    .line 254
    div-double/2addr v6, v8

    .line 255
    const-wide v8, 0x3fdae147ae147ae1L    # 0.42

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 261
    .line 262
    .line 263
    move-result-wide v6

    .line 264
    double-to-float v6, v6

    .line 265
    aput v6, v3, v5

    .line 266
    .line 267
    const/4 v0, 0x1

    .line 268
    aget v6, v15, v0

    .line 269
    .line 270
    mul-float v6, v6, v1

    .line 271
    .line 272
    mul-float v6, v6, v11

    .line 273
    .line 274
    float-to-double v6, v6

    .line 275
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 276
    .line 277
    div-double/2addr v6, v10

    .line 278
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 279
    .line 280
    .line 281
    move-result-wide v6

    .line 282
    double-to-float v6, v6

    .line 283
    aput v6, v3, v0

    .line 284
    .line 285
    const/4 v4, 0x2

    .line 286
    aget v6, v15, v4

    .line 287
    .line 288
    mul-float v6, v6, v1

    .line 289
    .line 290
    mul-float v6, v6, v12

    .line 291
    .line 292
    float-to-double v6, v6

    .line 293
    div-double/2addr v6, v10

    .line 294
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 295
    .line 296
    .line 297
    move-result-wide v6

    .line 298
    double-to-float v6, v6

    .line 299
    aput v6, v3, v4

    .line 300
    .line 301
    aget v4, v3, v5

    .line 302
    .line 303
    const/high16 v5, 0x43c80000    # 400.0f

    .line 304
    .line 305
    mul-float v7, v4, v5

    .line 306
    .line 307
    const v8, 0x41d90a3d    # 27.13f

    .line 308
    .line 309
    .line 310
    add-float/2addr v4, v8

    .line 311
    div-float/2addr v7, v4

    .line 312
    const/4 v0, 0x1

    .line 313
    aget v0, v3, v0

    .line 314
    .line 315
    mul-float v3, v0, v5

    .line 316
    .line 317
    add-float/2addr v0, v8

    .line 318
    div-float/2addr v3, v0

    .line 319
    mul-float v5, v5, v6

    .line 320
    .line 321
    add-float/2addr v6, v8

    .line 322
    div-float/2addr v5, v6

    .line 323
    const/high16 v0, 0x40000000    # 2.0f

    .line 324
    .line 325
    mul-float v7, v7, v0

    .line 326
    .line 327
    add-float/2addr v7, v3

    .line 328
    const v0, 0x3d4ccccd    # 0.05f

    .line 329
    .line 330
    .line 331
    mul-float v5, v5, v0

    .line 332
    .line 333
    add-float/2addr v5, v7

    .line 334
    mul-float v0, v5, v2

    .line 335
    .line 336
    new-instance v3, Landroidx/core/content/res/w;

    .line 337
    .line 338
    float-to-double v4, v1

    .line 339
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 340
    .line 341
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 342
    .line 343
    .line 344
    move-result-wide v4

    .line 345
    double-to-float v4, v4

    .line 346
    const/high16 v19, 0x3f800000    # 1.0f

    .line 347
    .line 348
    move-object v13, v3

    .line 349
    move-object v5, v15

    .line 350
    move v15, v0

    .line 351
    move/from16 v16, v2

    .line 352
    .line 353
    move/from16 v17, v2

    .line 354
    .line 355
    move-object/from16 v20, v5

    .line 356
    .line 357
    move/from16 v21, v1

    .line 358
    .line 359
    move/from16 v22, v4

    .line 360
    .line 361
    invoke-direct/range {v13 .. v23}, Landroidx/core/content/res/w;-><init>(FFFFFF[FFFF)V

    .line 362
    .line 363
    .line 364
    sput-object v3, Landroidx/core/content/res/w;->k:Landroidx/core/content/res/w;

    .line 365
    .line 366
    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/core/content/res/w;->f:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/content/res/w;->a:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/core/content/res/w;->b:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/core/content/res/w;->c:F

    .line 11
    .line 12
    iput p5, p0, Landroidx/core/content/res/w;->d:F

    .line 13
    .line 14
    iput p6, p0, Landroidx/core/content/res/w;->e:F

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/core/content/res/w;->g:[F

    .line 17
    .line 18
    iput p8, p0, Landroidx/core/content/res/w;->h:F

    .line 19
    .line 20
    iput p9, p0, Landroidx/core/content/res/w;->i:F

    .line 21
    .line 22
    iput p10, p0, Landroidx/core/content/res/w;->j:F

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method final a()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/w;->a:F

    .line 2
    .line 3
    return v0
.end method

.method final b()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/w;->d:F

    .line 2
    .line 3
    return v0
.end method

.method final c()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/w;->h:F

    .line 2
    .line 3
    return v0
.end method

.method final d()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/w;->i:F

    .line 2
    .line 3
    return v0
.end method

.method final e()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/w;->f:F

    .line 2
    .line 3
    return v0
.end method

.method final f()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/w;->b:F

    .line 2
    .line 3
    return v0
.end method

.method final g()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/w;->e:F

    .line 2
    .line 3
    return v0
.end method

.method final h()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/w;->c:F

    .line 2
    .line 3
    return v0
.end method

.method final i()[F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/w;->g:[F

    .line 2
    .line 3
    return-object v0
.end method

.method final j()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/w;->j:F

    .line 2
    .line 3
    return v0
.end method
