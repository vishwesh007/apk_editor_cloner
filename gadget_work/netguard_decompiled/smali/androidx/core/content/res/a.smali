.class final Landroidx/core/content/res/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F


# direct methods
.method constructor <init>(FFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/core/content/res/a;->a:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/content/res/a;->b:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/core/content/res/a;->c:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/core/content/res/a;->d:F

    .line 11
    .line 12
    iput p5, p0, Landroidx/core/content/res/a;->e:F

    .line 13
    .line 14
    iput p6, p0, Landroidx/core/content/res/a;->f:F

    .line 15
    .line 16
    return-void
.end method

.method static a(I)Landroidx/core/content/res/a;
    .locals 21

    .line 1
    sget-object v0, Landroidx/core/content/res/w;->k:Landroidx/core/content/res/w;

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Landroidx/core/content/res/b;->b(I)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Landroidx/core/content/res/b;->b(I)F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Landroidx/core/content/res/b;->b(I)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sget-object v4, Landroidx/core/content/res/b;->d:[[F

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    aget-object v6, v4, v5

    .line 31
    .line 32
    aget v7, v6, v5

    .line 33
    .line 34
    mul-float v7, v7, v1

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    aget v9, v6, v8

    .line 38
    .line 39
    mul-float v9, v9, v2

    .line 40
    .line 41
    add-float/2addr v9, v7

    .line 42
    const/4 v7, 0x2

    .line 43
    aget v6, v6, v7

    .line 44
    .line 45
    mul-float v6, v6, v3

    .line 46
    .line 47
    add-float/2addr v6, v9

    .line 48
    aget-object v9, v4, v8

    .line 49
    .line 50
    aget v10, v9, v5

    .line 51
    .line 52
    mul-float v10, v10, v1

    .line 53
    .line 54
    aget v11, v9, v8

    .line 55
    .line 56
    mul-float v11, v11, v2

    .line 57
    .line 58
    add-float/2addr v11, v10

    .line 59
    aget v9, v9, v7

    .line 60
    .line 61
    mul-float v9, v9, v3

    .line 62
    .line 63
    add-float/2addr v9, v11

    .line 64
    aget-object v4, v4, v7

    .line 65
    .line 66
    aget v10, v4, v5

    .line 67
    .line 68
    mul-float v1, v1, v10

    .line 69
    .line 70
    aget v10, v4, v8

    .line 71
    .line 72
    mul-float v2, v2, v10

    .line 73
    .line 74
    add-float/2addr v2, v1

    .line 75
    aget v1, v4, v7

    .line 76
    .line 77
    mul-float v3, v3, v1

    .line 78
    .line 79
    add-float/2addr v3, v2

    .line 80
    sget-object v1, Landroidx/core/content/res/b;->a:[[F

    .line 81
    .line 82
    aget-object v2, v1, v5

    .line 83
    .line 84
    aget v4, v2, v5

    .line 85
    .line 86
    mul-float v4, v4, v6

    .line 87
    .line 88
    aget v10, v2, v8

    .line 89
    .line 90
    mul-float v10, v10, v9

    .line 91
    .line 92
    add-float/2addr v10, v4

    .line 93
    aget v2, v2, v7

    .line 94
    .line 95
    mul-float v2, v2, v3

    .line 96
    .line 97
    add-float/2addr v2, v10

    .line 98
    aget-object v4, v1, v8

    .line 99
    .line 100
    aget v10, v4, v5

    .line 101
    .line 102
    mul-float v10, v10, v6

    .line 103
    .line 104
    aget v11, v4, v8

    .line 105
    .line 106
    mul-float v11, v11, v9

    .line 107
    .line 108
    add-float/2addr v11, v10

    .line 109
    aget v4, v4, v7

    .line 110
    .line 111
    mul-float v4, v4, v3

    .line 112
    .line 113
    add-float/2addr v4, v11

    .line 114
    aget-object v1, v1, v7

    .line 115
    .line 116
    aget v10, v1, v5

    .line 117
    .line 118
    mul-float v6, v6, v10

    .line 119
    .line 120
    aget v10, v1, v8

    .line 121
    .line 122
    mul-float v9, v9, v10

    .line 123
    .line 124
    add-float/2addr v9, v6

    .line 125
    aget v1, v1, v7

    .line 126
    .line 127
    mul-float v3, v3, v1

    .line 128
    .line 129
    add-float/2addr v3, v9

    .line 130
    invoke-virtual {v0}, Landroidx/core/content/res/w;->i()[F

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    aget v1, v1, v5

    .line 135
    .line 136
    mul-float v1, v1, v2

    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/core/content/res/w;->i()[F

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    aget v2, v2, v8

    .line 143
    .line 144
    mul-float v2, v2, v4

    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/core/content/res/w;->i()[F

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    aget v4, v4, v7

    .line 151
    .line 152
    mul-float v4, v4, v3

    .line 153
    .line 154
    invoke-virtual {v0}, Landroidx/core/content/res/w;->c()F

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    mul-float v5, v5, v3

    .line 163
    .line 164
    float-to-double v5, v5

    .line 165
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 166
    .line 167
    div-double/2addr v5, v7

    .line 168
    const-wide v9, 0x3fdae147ae147ae1L    # 0.42

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 174
    .line 175
    .line 176
    move-result-wide v5

    .line 177
    double-to-float v3, v5

    .line 178
    invoke-virtual {v0}, Landroidx/core/content/res/w;->c()F

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    mul-float v6, v6, v5

    .line 187
    .line 188
    float-to-double v5, v6

    .line 189
    div-double/2addr v5, v7

    .line 190
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 191
    .line 192
    .line 193
    move-result-wide v5

    .line 194
    double-to-float v5, v5

    .line 195
    invoke-virtual {v0}, Landroidx/core/content/res/w;->c()F

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    mul-float v11, v11, v6

    .line 204
    .line 205
    float-to-double v11, v11

    .line 206
    div-double/2addr v11, v7

    .line 207
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 208
    .line 209
    .line 210
    move-result-wide v9

    .line 211
    double-to-float v6, v9

    .line 212
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    const/high16 v9, 0x43c80000    # 400.0f

    .line 217
    .line 218
    mul-float v1, v1, v9

    .line 219
    .line 220
    mul-float v1, v1, v3

    .line 221
    .line 222
    const v10, 0x41d90a3d    # 27.13f

    .line 223
    .line 224
    .line 225
    add-float/2addr v3, v10

    .line 226
    div-float/2addr v1, v3

    .line 227
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    mul-float v2, v2, v9

    .line 232
    .line 233
    mul-float v2, v2, v5

    .line 234
    .line 235
    add-float/2addr v5, v10

    .line 236
    div-float/2addr v2, v5

    .line 237
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    mul-float v3, v3, v9

    .line 242
    .line 243
    mul-float v3, v3, v6

    .line 244
    .line 245
    add-float/2addr v6, v10

    .line 246
    div-float/2addr v3, v6

    .line 247
    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    .line 248
    .line 249
    float-to-double v9, v1

    .line 250
    mul-double v9, v9, v4

    .line 251
    .line 252
    const-wide/high16 v4, -0x3fd8000000000000L    # -12.0

    .line 253
    .line 254
    float-to-double v11, v2

    .line 255
    mul-double v11, v11, v4

    .line 256
    .line 257
    add-double/2addr v11, v9

    .line 258
    float-to-double v4, v3

    .line 259
    add-double/2addr v11, v4

    .line 260
    double-to-float v6, v11

    .line 261
    const/high16 v9, 0x41300000    # 11.0f

    .line 262
    .line 263
    div-float/2addr v6, v9

    .line 264
    add-float v9, v1, v2

    .line 265
    .line 266
    float-to-double v9, v9

    .line 267
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 268
    .line 269
    mul-double v4, v4, v11

    .line 270
    .line 271
    sub-double/2addr v9, v4

    .line 272
    double-to-float v4, v9

    .line 273
    const/high16 v5, 0x41100000    # 9.0f

    .line 274
    .line 275
    div-float/2addr v4, v5

    .line 276
    const/high16 v5, 0x41a00000    # 20.0f

    .line 277
    .line 278
    mul-float v9, v1, v5

    .line 279
    .line 280
    mul-float v2, v2, v5

    .line 281
    .line 282
    add-float/2addr v9, v2

    .line 283
    const/high16 v10, 0x41a80000    # 21.0f

    .line 284
    .line 285
    mul-float v10, v10, v3

    .line 286
    .line 287
    add-float/2addr v10, v9

    .line 288
    div-float/2addr v10, v5

    .line 289
    const/high16 v9, 0x42200000    # 40.0f

    .line 290
    .line 291
    mul-float v1, v1, v9

    .line 292
    .line 293
    add-float/2addr v1, v2

    .line 294
    add-float/2addr v1, v3

    .line 295
    div-float/2addr v1, v5

    .line 296
    float-to-double v2, v4

    .line 297
    float-to-double v13, v6

    .line 298
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 299
    .line 300
    .line 301
    move-result-wide v2

    .line 302
    double-to-float v2, v2

    .line 303
    const/high16 v3, 0x43340000    # 180.0f

    .line 304
    .line 305
    mul-float v2, v2, v3

    .line 306
    .line 307
    const v5, 0x40490fdb    # (float)Math.PI

    .line 308
    .line 309
    .line 310
    div-float/2addr v2, v5

    .line 311
    const/4 v9, 0x0

    .line 312
    const/high16 v13, 0x43b40000    # 360.0f

    .line 313
    .line 314
    cmpg-float v9, v2, v9

    .line 315
    .line 316
    if-gez v9, :cond_0

    .line 317
    .line 318
    add-float/2addr v2, v13

    .line 319
    goto :goto_0

    .line 320
    :cond_0
    cmpl-float v9, v2, v13

    .line 321
    .line 322
    if-ltz v9, :cond_1

    .line 323
    .line 324
    sub-float/2addr v2, v13

    .line 325
    :cond_1
    :goto_0
    move v15, v2

    .line 326
    mul-float v5, v5, v15

    .line 327
    .line 328
    div-float/2addr v5, v3

    .line 329
    invoke-virtual {v0}, Landroidx/core/content/res/w;->f()F

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    mul-float v1, v1, v2

    .line 334
    .line 335
    invoke-virtual {v0}, Landroidx/core/content/res/w;->a()F

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    div-float/2addr v1, v2

    .line 340
    float-to-double v1, v1

    .line 341
    invoke-virtual {v0}, Landroidx/core/content/res/w;->b()F

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    invoke-virtual {v0}, Landroidx/core/content/res/w;->j()F

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    mul-float v3, v3, v9

    .line 350
    .line 351
    float-to-double v7, v3

    .line 352
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 353
    .line 354
    .line 355
    move-result-wide v1

    .line 356
    double-to-float v1, v1

    .line 357
    const/high16 v2, 0x42c80000    # 100.0f

    .line 358
    .line 359
    mul-float v1, v1, v2

    .line 360
    .line 361
    div-float v2, v1, v2

    .line 362
    .line 363
    float-to-double v2, v2

    .line 364
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 365
    .line 366
    .line 367
    float-to-double v2, v15

    .line 368
    const-wide v7, 0x403423d70a3d70a4L    # 20.14

    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    cmpg-double v9, v2, v7

    .line 374
    .line 375
    if-gez v9, :cond_2

    .line 376
    .line 377
    add-float/2addr v13, v15

    .line 378
    goto :goto_1

    .line 379
    :cond_2
    move v13, v15

    .line 380
    :goto_1
    float-to-double v2, v13

    .line 381
    const-wide v7, 0x400921fb54442d18L    # Math.PI

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    mul-double v2, v2, v7

    .line 387
    .line 388
    const-wide v7, 0x4066800000000000L    # 180.0

    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    div-double/2addr v2, v7

    .line 394
    add-double/2addr v2, v11

    .line 395
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 396
    .line 397
    .line 398
    move-result-wide v2

    .line 399
    const-wide v7, 0x400e666666666666L    # 3.8

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    add-double/2addr v2, v7

    .line 405
    double-to-float v2, v2

    .line 406
    const/high16 v3, 0x3e800000    # 0.25f

    .line 407
    .line 408
    mul-float v2, v2, v3

    .line 409
    .line 410
    const v3, 0x45706276

    .line 411
    .line 412
    .line 413
    mul-float v2, v2, v3

    .line 414
    .line 415
    invoke-virtual {v0}, Landroidx/core/content/res/w;->g()F

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    mul-float v2, v2, v3

    .line 420
    .line 421
    invoke-virtual {v0}, Landroidx/core/content/res/w;->h()F

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    mul-float v2, v2, v3

    .line 426
    .line 427
    mul-float v6, v6, v6

    .line 428
    .line 429
    mul-float v4, v4, v4

    .line 430
    .line 431
    add-float/2addr v4, v6

    .line 432
    float-to-double v3, v4

    .line 433
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 434
    .line 435
    .line 436
    move-result-wide v3

    .line 437
    double-to-float v3, v3

    .line 438
    mul-float v2, v2, v3

    .line 439
    .line 440
    const v3, 0x3e9c28f6    # 0.305f

    .line 441
    .line 442
    .line 443
    add-float/2addr v10, v3

    .line 444
    div-float/2addr v2, v10

    .line 445
    invoke-virtual {v0}, Landroidx/core/content/res/w;->e()F

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    float-to-double v3, v3

    .line 450
    const-wide v6, 0x3fd28f5c28f5c28fL    # 0.29

    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 456
    .line 457
    .line 458
    move-result-wide v3

    .line 459
    const-wide v6, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    sub-double/2addr v6, v3

    .line 465
    const-wide v3, 0x3fe75c28f5c28f5cL    # 0.73

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 471
    .line 472
    .line 473
    move-result-wide v3

    .line 474
    double-to-float v3, v3

    .line 475
    float-to-double v6, v2

    .line 476
    const-wide v8, 0x3feccccccccccccdL    # 0.9

    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 482
    .line 483
    .line 484
    move-result-wide v6

    .line 485
    double-to-float v2, v6

    .line 486
    mul-float v3, v3, v2

    .line 487
    .line 488
    float-to-double v6, v1

    .line 489
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 490
    .line 491
    div-double/2addr v6, v8

    .line 492
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 493
    .line 494
    .line 495
    move-result-wide v6

    .line 496
    double-to-float v2, v6

    .line 497
    mul-float v16, v3, v2

    .line 498
    .line 499
    invoke-virtual {v0}, Landroidx/core/content/res/w;->d()F

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    mul-float v2, v2, v16

    .line 504
    .line 505
    invoke-virtual {v0}, Landroidx/core/content/res/w;->b()F

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    mul-float v3, v3, v4

    .line 510
    .line 511
    invoke-virtual {v0}, Landroidx/core/content/res/w;->a()F

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    const/high16 v4, 0x40800000    # 4.0f

    .line 516
    .line 517
    add-float/2addr v0, v4

    .line 518
    div-float/2addr v3, v0

    .line 519
    float-to-double v3, v3

    .line 520
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 521
    .line 522
    .line 523
    const v0, 0x3fd9999a    # 1.7f

    .line 524
    .line 525
    .line 526
    mul-float v0, v0, v1

    .line 527
    .line 528
    const v3, 0x3be56042    # 0.007f

    .line 529
    .line 530
    .line 531
    mul-float v3, v3, v1

    .line 532
    .line 533
    const/high16 v4, 0x3f800000    # 1.0f

    .line 534
    .line 535
    add-float/2addr v3, v4

    .line 536
    div-float v18, v0, v3

    .line 537
    .line 538
    const v0, 0x3cbac711    # 0.0228f

    .line 539
    .line 540
    .line 541
    mul-float v2, v2, v0

    .line 542
    .line 543
    add-float/2addr v2, v4

    .line 544
    float-to-double v2, v2

    .line 545
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 546
    .line 547
    .line 548
    move-result-wide v2

    .line 549
    double-to-float v0, v2

    .line 550
    const v2, 0x422f7048

    .line 551
    .line 552
    .line 553
    mul-float v0, v0, v2

    .line 554
    .line 555
    float-to-double v2, v5

    .line 556
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 557
    .line 558
    .line 559
    move-result-wide v4

    .line 560
    double-to-float v4, v4

    .line 561
    mul-float v19, v0, v4

    .line 562
    .line 563
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 564
    .line 565
    .line 566
    move-result-wide v2

    .line 567
    double-to-float v2, v2

    .line 568
    mul-float v20, v0, v2

    .line 569
    .line 570
    new-instance v0, Landroidx/core/content/res/a;

    .line 571
    .line 572
    move-object v14, v0

    .line 573
    move/from16 v17, v1

    .line 574
    .line 575
    invoke-direct/range {v14 .. v20}, Landroidx/core/content/res/a;-><init>(FFFFFF)V

    .line 576
    .line 577
    .line 578
    return-object v0
.end method

.method private static b(FFF)Landroidx/core/content/res/a;
    .locals 11

    .line 1
    sget-object v0, Landroidx/core/content/res/w;->k:Landroidx/core/content/res/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/content/res/w;->b()F

    .line 4
    .line 5
    .line 6
    float-to-double v1, p0

    .line 7
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 8
    .line 9
    div-double/2addr v1, v3

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/core/content/res/w;->d()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    mul-float v3, v3, p1

    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    double-to-float v1, v1

    .line 24
    div-float v1, p1, v1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/core/content/res/w;->b()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    mul-float v1, v1, v2

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/core/content/res/w;->a()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/high16 v2, 0x40800000    # 4.0f

    .line 37
    .line 38
    add-float/2addr v0, v2

    .line 39
    div-float/2addr v1, v0

    .line 40
    float-to-double v0, v1

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    .line 43
    .line 44
    const v0, 0x40490fdb    # (float)Math.PI

    .line 45
    .line 46
    .line 47
    mul-float v0, v0, p2

    .line 48
    .line 49
    const/high16 v1, 0x43340000    # 180.0f

    .line 50
    .line 51
    div-float/2addr v0, v1

    .line 52
    const v1, 0x3fd9999a    # 1.7f

    .line 53
    .line 54
    .line 55
    mul-float v1, v1, p0

    .line 56
    .line 57
    const v2, 0x3be56042    # 0.007f

    .line 58
    .line 59
    .line 60
    mul-float v2, v2, p0

    .line 61
    .line 62
    const/high16 v4, 0x3f800000    # 1.0f

    .line 63
    .line 64
    add-float/2addr v2, v4

    .line 65
    div-float v8, v1, v2

    .line 66
    .line 67
    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    float-to-double v3, v3

    .line 73
    mul-double v3, v3, v1

    .line 74
    .line 75
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 76
    .line 77
    add-double/2addr v3, v1

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    double-to-float v1, v1

    .line 83
    const v2, 0x422f7048

    .line 84
    .line 85
    .line 86
    mul-float v1, v1, v2

    .line 87
    .line 88
    float-to-double v2, v0

    .line 89
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    double-to-float v0, v4

    .line 94
    mul-float v9, v1, v0

    .line 95
    .line 96
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    double-to-float v0, v2

    .line 101
    mul-float v10, v1, v0

    .line 102
    .line 103
    new-instance v0, Landroidx/core/content/res/a;

    .line 104
    .line 105
    move-object v4, v0

    .line 106
    move v5, p2

    .line 107
    move v6, p1

    .line 108
    move v7, p0

    .line 109
    invoke-direct/range {v4 .. v10}, Landroidx/core/content/res/a;-><init>(FFFFFF)V

    .line 110
    .line 111
    .line 112
    return-object v0
.end method

.method static e(FFF)I
    .locals 24

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Landroidx/core/content/res/w;->k:Landroidx/core/content/res/w;

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    float-to-double v3, v2

    .line 8
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    cmpg-double v7, v3, v5

    .line 11
    .line 12
    if-ltz v7, :cond_d

    .line 13
    .line 14
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    int-to-double v3, v3

    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmpg-double v7, v3, v5

    .line 22
    .line 23
    if-lez v7, :cond_d

    .line 24
    .line 25
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-double v3, v3

    .line 30
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 31
    .line 32
    cmpl-double v7, v3, v5

    .line 33
    .line 34
    if-ltz v7, :cond_0

    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 39
    cmpg-float v4, v0, v3

    .line 40
    .line 41
    if-gez v4, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/high16 v4, 0x43b40000    # 360.0f

    .line 46
    .line 47
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :goto_0
    const/4 v4, 0x1

    .line 52
    move v6, v2

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v9, 0x1

    .line 56
    :goto_1
    sub-float v10, v7, v2

    .line 57
    .line 58
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    const v11, 0x3ecccccd    # 0.4f

    .line 63
    .line 64
    .line 65
    cmpl-float v10, v10, v11

    .line 66
    .line 67
    if-ltz v10, :cond_b

    .line 68
    .line 69
    const/high16 v11, 0x447a0000    # 1000.0f

    .line 70
    .line 71
    const/high16 v12, 0x447a0000    # 1000.0f

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    const/high16 v14, 0x42c80000    # 100.0f

    .line 75
    .line 76
    const/4 v15, 0x0

    .line 77
    :goto_2
    sub-float v16, v13, v14

    .line 78
    .line 79
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    .line 80
    .line 81
    .line 82
    move-result v16

    .line 83
    const/16 v17, 0x0

    .line 84
    .line 85
    const v18, 0x3c23d70a    # 0.01f

    .line 86
    .line 87
    .line 88
    const/high16 v19, 0x40000000    # 2.0f

    .line 89
    .line 90
    cmpl-float v16, v16, v18

    .line 91
    .line 92
    if-lez v16, :cond_7

    .line 93
    .line 94
    sub-float v16, v14, v13

    .line 95
    .line 96
    div-float v16, v16, v19

    .line 97
    .line 98
    add-float v5, v16, v13

    .line 99
    .line 100
    invoke-static {v5, v6, v0}, Landroidx/core/content/res/a;->b(FFF)Landroidx/core/content/res/a;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    sget-object v10, Landroidx/core/content/res/w;->k:Landroidx/core/content/res/w;

    .line 105
    .line 106
    invoke-virtual {v3, v10}, Landroidx/core/content/res/a;->f(Landroidx/core/content/res/w;)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    invoke-static {v10}, Landroidx/core/content/res/b;->b(I)F

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 119
    .line 120
    .line 121
    move-result v18

    .line 122
    invoke-static/range {v18 .. v18}, Landroidx/core/content/res/b;->b(I)F

    .line 123
    .line 124
    .line 125
    move-result v18

    .line 126
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 127
    .line 128
    .line 129
    move-result v20

    .line 130
    invoke-static/range {v20 .. v20}, Landroidx/core/content/res/b;->b(I)F

    .line 131
    .line 132
    .line 133
    move-result v20

    .line 134
    sget-object v21, Landroidx/core/content/res/b;->d:[[F

    .line 135
    .line 136
    aget-object v21, v21, v4

    .line 137
    .line 138
    aget v22, v21, v17

    .line 139
    .line 140
    mul-float v10, v10, v22

    .line 141
    .line 142
    aget v22, v21, v4

    .line 143
    .line 144
    mul-float v18, v18, v22

    .line 145
    .line 146
    add-float v18, v18, v10

    .line 147
    .line 148
    const/4 v10, 0x2

    .line 149
    aget v10, v21, v10

    .line 150
    .line 151
    mul-float v20, v20, v10

    .line 152
    .line 153
    add-float v20, v20, v18

    .line 154
    .line 155
    const/high16 v10, 0x42c80000    # 100.0f

    .line 156
    .line 157
    div-float v4, v20, v10

    .line 158
    .line 159
    const v20, 0x3c111aa7

    .line 160
    .line 161
    .line 162
    cmpg-float v20, v4, v20

    .line 163
    .line 164
    if-gtz v20, :cond_2

    .line 165
    .line 166
    const v20, 0x4461d2f7

    .line 167
    .line 168
    .line 169
    mul-float v4, v4, v20

    .line 170
    .line 171
    move/from16 p1, v11

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_2
    move/from16 p1, v11

    .line 175
    .line 176
    float-to-double v10, v4

    .line 177
    invoke-static {v10, v11}, Ljava/lang/Math;->cbrt(D)D

    .line 178
    .line 179
    .line 180
    move-result-wide v10

    .line 181
    double-to-float v4, v10

    .line 182
    const/high16 v10, 0x42e80000    # 116.0f

    .line 183
    .line 184
    mul-float v4, v4, v10

    .line 185
    .line 186
    const/high16 v10, 0x41800000    # 16.0f

    .line 187
    .line 188
    sub-float/2addr v4, v10

    .line 189
    :goto_3
    sub-float v10, p2, v4

    .line 190
    .line 191
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    const v11, 0x3e4ccccd    # 0.2f

    .line 196
    .line 197
    .line 198
    cmpg-float v11, v10, v11

    .line 199
    .line 200
    if-gez v11, :cond_3

    .line 201
    .line 202
    invoke-static {v3}, Landroidx/core/content/res/a;->a(I)Landroidx/core/content/res/a;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    iget v11, v3, Landroidx/core/content/res/a;->c:F

    .line 207
    .line 208
    move/from16 v21, v5

    .line 209
    .line 210
    iget v5, v3, Landroidx/core/content/res/a;->b:F

    .line 211
    .line 212
    invoke-static {v11, v5, v0}, Landroidx/core/content/res/a;->b(FFF)Landroidx/core/content/res/a;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    iget v11, v5, Landroidx/core/content/res/a;->d:F

    .line 217
    .line 218
    move/from16 v22, v0

    .line 219
    .line 220
    iget v0, v3, Landroidx/core/content/res/a;->d:F

    .line 221
    .line 222
    sub-float/2addr v0, v11

    .line 223
    iget v11, v3, Landroidx/core/content/res/a;->e:F

    .line 224
    .line 225
    move/from16 v23, v6

    .line 226
    .line 227
    iget v6, v5, Landroidx/core/content/res/a;->e:F

    .line 228
    .line 229
    sub-float/2addr v11, v6

    .line 230
    iget v6, v3, Landroidx/core/content/res/a;->f:F

    .line 231
    .line 232
    iget v5, v5, Landroidx/core/content/res/a;->f:F

    .line 233
    .line 234
    sub-float/2addr v6, v5

    .line 235
    mul-float v0, v0, v0

    .line 236
    .line 237
    mul-float v11, v11, v11

    .line 238
    .line 239
    add-float/2addr v11, v0

    .line 240
    mul-float v6, v6, v6

    .line 241
    .line 242
    add-float/2addr v6, v11

    .line 243
    float-to-double v5, v6

    .line 244
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 245
    .line 246
    .line 247
    move-result-wide v5

    .line 248
    move v0, v10

    .line 249
    const-wide v10, 0x3fe428f5c28f5c29L    # 0.63

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 255
    .line 256
    .line 257
    move-result-wide v5

    .line 258
    const-wide v10, 0x3ff68f5c28f5c28fL    # 1.41

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    mul-double v5, v5, v10

    .line 264
    .line 265
    double-to-float v5, v5

    .line 266
    const/high16 v6, 0x3f800000    # 1.0f

    .line 267
    .line 268
    cmpg-float v6, v5, v6

    .line 269
    .line 270
    if-gtz v6, :cond_4

    .line 271
    .line 272
    move v11, v0

    .line 273
    move-object v15, v3

    .line 274
    move v12, v5

    .line 275
    goto :goto_4

    .line 276
    :cond_3
    move/from16 v22, v0

    .line 277
    .line 278
    move/from16 v21, v5

    .line 279
    .line 280
    move/from16 v23, v6

    .line 281
    .line 282
    :cond_4
    move/from16 v11, p1

    .line 283
    .line 284
    :goto_4
    const/4 v0, 0x0

    .line 285
    cmpl-float v3, v11, v0

    .line 286
    .line 287
    if-nez v3, :cond_5

    .line 288
    .line 289
    cmpl-float v3, v12, v0

    .line 290
    .line 291
    if-nez v3, :cond_5

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_5
    cmpg-float v3, v4, p2

    .line 295
    .line 296
    if-gez v3, :cond_6

    .line 297
    .line 298
    move/from16 v13, v21

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_6
    move/from16 v14, v21

    .line 302
    .line 303
    :goto_5
    move/from16 v0, v22

    .line 304
    .line 305
    move/from16 v6, v23

    .line 306
    .line 307
    const/4 v3, 0x0

    .line 308
    const/4 v4, 0x1

    .line 309
    goto/16 :goto_2

    .line 310
    .line 311
    :cond_7
    move/from16 v22, v0

    .line 312
    .line 313
    move/from16 v23, v6

    .line 314
    .line 315
    const/4 v0, 0x0

    .line 316
    :goto_6
    if-eqz v9, :cond_9

    .line 317
    .line 318
    if-eqz v15, :cond_8

    .line 319
    .line 320
    invoke-virtual {v15, v1}, Landroidx/core/content/res/a;->f(Landroidx/core/content/res/w;)I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    goto :goto_9

    .line 325
    :cond_8
    sub-float v3, v2, v7

    .line 326
    .line 327
    div-float v3, v3, v19

    .line 328
    .line 329
    add-float v6, v3, v7

    .line 330
    .line 331
    move/from16 v0, v22

    .line 332
    .line 333
    const/4 v3, 0x0

    .line 334
    const/4 v4, 0x1

    .line 335
    const/4 v9, 0x0

    .line 336
    goto/16 :goto_1

    .line 337
    .line 338
    :cond_9
    if-nez v15, :cond_a

    .line 339
    .line 340
    move/from16 v2, v23

    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_a
    move-object v8, v15

    .line 344
    move/from16 v7, v23

    .line 345
    .line 346
    :goto_7
    sub-float v3, v2, v7

    .line 347
    .line 348
    div-float v3, v3, v19

    .line 349
    .line 350
    add-float v6, v3, v7

    .line 351
    .line 352
    move/from16 v0, v22

    .line 353
    .line 354
    const/4 v3, 0x0

    .line 355
    const/4 v4, 0x1

    .line 356
    goto/16 :goto_1

    .line 357
    .line 358
    :cond_b
    if-nez v8, :cond_c

    .line 359
    .line 360
    invoke-static/range {p2 .. p2}, Landroidx/core/content/res/b;->a(F)I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    goto :goto_9

    .line 365
    :cond_c
    invoke-virtual {v8, v1}, Landroidx/core/content/res/a;->f(Landroidx/core/content/res/w;)I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    goto :goto_9

    .line 370
    :cond_d
    :goto_8
    invoke-static/range {p2 .. p2}, Landroidx/core/content/res/b;->a(F)I

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    :goto_9
    return v0
.end method


# virtual methods
.method final c()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/a;->b:F

    .line 2
    .line 3
    return v0
.end method

.method final d()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/a;->a:F

    .line 2
    .line 3
    return v0
.end method

.method final f(Landroidx/core/content/res/w;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/core/content/res/a;->b:F

    .line 4
    .line 5
    float-to-double v2, v1

    .line 6
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 7
    .line 8
    iget v6, v0, Landroidx/core/content/res/a;->c:F

    .line 9
    .line 10
    const-wide/16 v7, 0x0

    .line 11
    .line 12
    cmpl-double v9, v2, v7

    .line 13
    .line 14
    if-eqz v9, :cond_1

    .line 15
    .line 16
    float-to-double v2, v6

    .line 17
    cmpl-double v9, v2, v7

    .line 18
    .line 19
    if-nez v9, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    div-double/2addr v2, v4

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    double-to-float v2, v2

    .line 28
    div-float/2addr v1, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 31
    :goto_1
    float-to-double v1, v1

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->e()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    float-to-double v9, v3

    .line 37
    const-wide v11, 0x3fd28f5c28f5c28fL    # 0.29

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 43
    .line 44
    .line 45
    move-result-wide v9

    .line 46
    const-wide v11, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    sub-double/2addr v11, v9

    .line 52
    const-wide v9, 0x3fe75c28f5c28f5cL    # 0.73

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 58
    .line 59
    .line 60
    move-result-wide v9

    .line 61
    div-double/2addr v1, v9

    .line 62
    const-wide v9, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    double-to-float v1, v1

    .line 72
    const v2, 0x40490fdb    # (float)Math.PI

    .line 73
    .line 74
    .line 75
    iget v3, v0, Landroidx/core/content/res/a;->a:F

    .line 76
    .line 77
    mul-float v3, v3, v2

    .line 78
    .line 79
    const/high16 v2, 0x43340000    # 180.0f

    .line 80
    .line 81
    div-float/2addr v3, v2

    .line 82
    float-to-double v2, v3

    .line 83
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 84
    .line 85
    add-double/2addr v9, v2

    .line 86
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v9

    .line 90
    const-wide v11, 0x400e666666666666L    # 3.8

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    add-double/2addr v9, v11

    .line 96
    double-to-float v9, v9

    .line 97
    const/high16 v10, 0x3e800000    # 0.25f

    .line 98
    .line 99
    mul-float v9, v9, v10

    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->a()F

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    float-to-double v11, v6

    .line 106
    div-double/2addr v11, v4

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->b()F

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    float-to-double v4, v4

    .line 112
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 113
    .line 114
    div-double/2addr v13, v4

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->j()F

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    float-to-double v4, v4

    .line 120
    div-double/2addr v13, v4

    .line 121
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    double-to-float v4, v4

    .line 126
    mul-float v10, v10, v4

    .line 127
    .line 128
    const v4, 0x45706276

    .line 129
    .line 130
    .line 131
    mul-float v9, v9, v4

    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->g()F

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    mul-float v9, v9, v4

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->h()F

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    mul-float v9, v9, v4

    .line 144
    .line 145
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->f()F

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    div-float/2addr v10, v4

    .line 150
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 151
    .line 152
    .line 153
    move-result-wide v4

    .line 154
    double-to-float v4, v4

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    double-to-float v2, v2

    .line 160
    const v3, 0x3e9c28f6    # 0.305f

    .line 161
    .line 162
    .line 163
    add-float/2addr v3, v10

    .line 164
    const/high16 v5, 0x41b80000    # 23.0f

    .line 165
    .line 166
    mul-float v3, v3, v5

    .line 167
    .line 168
    mul-float v3, v3, v1

    .line 169
    .line 170
    mul-float v9, v9, v5

    .line 171
    .line 172
    const/high16 v5, 0x41300000    # 11.0f

    .line 173
    .line 174
    mul-float v5, v5, v1

    .line 175
    .line 176
    mul-float v5, v5, v2

    .line 177
    .line 178
    add-float/2addr v5, v9

    .line 179
    const/high16 v6, 0x42d80000    # 108.0f

    .line 180
    .line 181
    mul-float v1, v1, v6

    .line 182
    .line 183
    mul-float v1, v1, v4

    .line 184
    .line 185
    add-float/2addr v1, v5

    .line 186
    div-float/2addr v3, v1

    .line 187
    mul-float v2, v2, v3

    .line 188
    .line 189
    mul-float v3, v3, v4

    .line 190
    .line 191
    const/high16 v1, 0x43e60000    # 460.0f

    .line 192
    .line 193
    mul-float v10, v10, v1

    .line 194
    .line 195
    const v1, 0x43e18000    # 451.0f

    .line 196
    .line 197
    .line 198
    mul-float v1, v1, v2

    .line 199
    .line 200
    add-float/2addr v1, v10

    .line 201
    const/high16 v4, 0x43900000    # 288.0f

    .line 202
    .line 203
    mul-float v4, v4, v3

    .line 204
    .line 205
    add-float/2addr v4, v1

    .line 206
    const v1, 0x44af6000    # 1403.0f

    .line 207
    .line 208
    .line 209
    div-float/2addr v4, v1

    .line 210
    const v5, 0x445ec000    # 891.0f

    .line 211
    .line 212
    .line 213
    mul-float v5, v5, v2

    .line 214
    .line 215
    sub-float v5, v10, v5

    .line 216
    .line 217
    const v6, 0x43828000    # 261.0f

    .line 218
    .line 219
    .line 220
    mul-float v6, v6, v3

    .line 221
    .line 222
    sub-float/2addr v5, v6

    .line 223
    div-float/2addr v5, v1

    .line 224
    const/high16 v6, 0x435c0000    # 220.0f

    .line 225
    .line 226
    mul-float v2, v2, v6

    .line 227
    .line 228
    sub-float/2addr v10, v2

    .line 229
    const v2, 0x45c4e000    # 6300.0f

    .line 230
    .line 231
    .line 232
    mul-float v3, v3, v2

    .line 233
    .line 234
    sub-float/2addr v10, v3

    .line 235
    div-float/2addr v10, v1

    .line 236
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    float-to-double v1, v1

    .line 241
    const-wide v11, 0x403b2147ae147ae1L    # 27.13

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    mul-double v1, v1, v11

    .line 247
    .line 248
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    float-to-double v13, v3

    .line 253
    const-wide/high16 v15, 0x4079000000000000L    # 400.0

    .line 254
    .line 255
    sub-double v13, v15, v13

    .line 256
    .line 257
    div-double/2addr v1, v13

    .line 258
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 259
    .line 260
    .line 261
    move-result-wide v1

    .line 262
    double-to-float v1, v1

    .line 263
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->c()F

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    const/high16 v4, 0x42c80000    # 100.0f

    .line 272
    .line 273
    div-float v3, v4, v3

    .line 274
    .line 275
    mul-float v3, v3, v2

    .line 276
    .line 277
    float-to-double v1, v1

    .line 278
    const-wide v13, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 284
    .line 285
    .line 286
    move-result-wide v1

    .line 287
    double-to-float v1, v1

    .line 288
    mul-float v3, v3, v1

    .line 289
    .line 290
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    float-to-double v1, v1

    .line 295
    mul-double v1, v1, v11

    .line 296
    .line 297
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    float-to-double v11, v6

    .line 302
    sub-double v11, v15, v11

    .line 303
    .line 304
    div-double/2addr v1, v11

    .line 305
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 306
    .line 307
    .line 308
    move-result-wide v1

    .line 309
    double-to-float v1, v1

    .line 310
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->c()F

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    div-float v5, v4, v5

    .line 319
    .line 320
    mul-float v5, v5, v2

    .line 321
    .line 322
    float-to-double v1, v1

    .line 323
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 324
    .line 325
    .line 326
    move-result-wide v1

    .line 327
    double-to-float v1, v1

    .line 328
    mul-float v5, v5, v1

    .line 329
    .line 330
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    float-to-double v1, v1

    .line 335
    const-wide v11, 0x403b2147ae147ae1L    # 27.13

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    mul-double v1, v1, v11

    .line 341
    .line 342
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    float-to-double v11, v6

    .line 347
    sub-double/2addr v15, v11

    .line 348
    div-double/2addr v1, v15

    .line 349
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 350
    .line 351
    .line 352
    move-result-wide v1

    .line 353
    double-to-float v1, v1

    .line 354
    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->c()F

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    div-float/2addr v4, v6

    .line 363
    mul-float v4, v4, v2

    .line 364
    .line 365
    float-to-double v1, v1

    .line 366
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 367
    .line 368
    .line 369
    move-result-wide v1

    .line 370
    double-to-float v1, v1

    .line 371
    mul-float v4, v4, v1

    .line 372
    .line 373
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->i()[F

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    const/4 v2, 0x0

    .line 378
    aget v1, v1, v2

    .line 379
    .line 380
    div-float/2addr v3, v1

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->i()[F

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    const/4 v6, 0x1

    .line 386
    aget v1, v1, v6

    .line 387
    .line 388
    div-float/2addr v5, v1

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/w;->i()[F

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    const/4 v7, 0x2

    .line 394
    aget v1, v1, v7

    .line 395
    .line 396
    div-float/2addr v4, v1

    .line 397
    sget-object v1, Landroidx/core/content/res/b;->b:[[F

    .line 398
    .line 399
    aget-object v8, v1, v2

    .line 400
    .line 401
    aget v9, v8, v2

    .line 402
    .line 403
    mul-float v9, v9, v3

    .line 404
    .line 405
    aget v10, v8, v6

    .line 406
    .line 407
    mul-float v10, v10, v5

    .line 408
    .line 409
    add-float/2addr v10, v9

    .line 410
    aget v8, v8, v7

    .line 411
    .line 412
    mul-float v8, v8, v4

    .line 413
    .line 414
    add-float/2addr v8, v10

    .line 415
    aget-object v9, v1, v6

    .line 416
    .line 417
    aget v10, v9, v2

    .line 418
    .line 419
    mul-float v10, v10, v3

    .line 420
    .line 421
    aget v11, v9, v6

    .line 422
    .line 423
    mul-float v11, v11, v5

    .line 424
    .line 425
    add-float/2addr v11, v10

    .line 426
    aget v9, v9, v7

    .line 427
    .line 428
    mul-float v9, v9, v4

    .line 429
    .line 430
    add-float/2addr v9, v11

    .line 431
    aget-object v1, v1, v7

    .line 432
    .line 433
    aget v2, v1, v2

    .line 434
    .line 435
    mul-float v3, v3, v2

    .line 436
    .line 437
    aget v2, v1, v6

    .line 438
    .line 439
    mul-float v5, v5, v2

    .line 440
    .line 441
    add-float/2addr v5, v3

    .line 442
    aget v1, v1, v7

    .line 443
    .line 444
    mul-float v4, v4, v1

    .line 445
    .line 446
    add-float/2addr v4, v5

    .line 447
    float-to-double v10, v8

    .line 448
    float-to-double v12, v9

    .line 449
    float-to-double v14, v4

    .line 450
    invoke-static/range {v10 .. v15}, Landroidx/core/graphics/a;->a(DDD)I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    return v1
.end method
