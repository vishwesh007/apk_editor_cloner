.class public final Landroidx/core/content/res/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 28

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const-string v5, "gradient"

    .line 14
    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_14

    .line 20
    .line 21
    sget-object v4, Li/a;->d:[I

    .line 22
    .line 23
    invoke-static {v0, v3, v2, v4}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v5, "startX"

    .line 28
    .line 29
    const/16 v6, 0x8

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-static {v4, v1, v5, v6, v7}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    const-string v5, "startY"

    .line 37
    .line 38
    const/16 v6, 0x9

    .line 39
    .line 40
    invoke-static {v4, v1, v5, v6, v7}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    const-string v5, "endX"

    .line 45
    .line 46
    const/16 v6, 0xa

    .line 47
    .line 48
    invoke-static {v4, v1, v5, v6, v7}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    const-string v5, "endY"

    .line 53
    .line 54
    const/16 v6, 0xb

    .line 55
    .line 56
    invoke-static {v4, v1, v5, v6, v7}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    const-string v5, "centerX"

    .line 61
    .line 62
    const/4 v6, 0x3

    .line 63
    invoke-static {v4, v1, v5, v6, v7}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    const-string v5, "centerY"

    .line 68
    .line 69
    const/4 v8, 0x4

    .line 70
    invoke-static {v4, v1, v5, v8, v7}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    const-string v5, "type"

    .line 75
    .line 76
    const/4 v8, 0x2

    .line 77
    const/4 v13, 0x0

    .line 78
    invoke-static {v4, v1, v5, v8, v13}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const-string v8, "startColor"

    .line 83
    .line 84
    invoke-static {v1, v8}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-nez v8, :cond_0

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v4, v13, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    :goto_0
    const-string v6, "centerColor"

    .line 97
    .line 98
    invoke-static {v1, v6}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v18

    .line 102
    invoke-static {v1, v6}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-nez v6, :cond_1

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    const/4 v6, 0x7

    .line 111
    invoke-virtual {v4, v6, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    :goto_1
    const-string v7, "endColor"

    .line 116
    .line 117
    invoke-static {v1, v7}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    const/4 v13, 0x1

    .line 122
    if-nez v7, :cond_2

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    const/16 v21, 0x0

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_2
    const/4 v7, 0x0

    .line 129
    invoke-virtual {v4, v13, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 130
    .line 131
    .line 132
    move-result v20

    .line 133
    move/from16 v21, v20

    .line 134
    .line 135
    :goto_2
    const-string v13, "tileMode"

    .line 136
    .line 137
    move/from16 v23, v14

    .line 138
    .line 139
    const/4 v14, 0x6

    .line 140
    invoke-static {v4, v1, v13, v14, v7}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    const-string v7, "gradientRadius"

    .line 145
    .line 146
    const/4 v14, 0x5

    .line 147
    move/from16 v24, v15

    .line 148
    .line 149
    const/4 v15, 0x0

    .line 150
    invoke-static {v4, v1, v7, v14, v15}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    .line 156
    .line 157
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    const/4 v14, 0x1

    .line 162
    add-int/2addr v4, v14

    .line 163
    new-instance v15, Ljava/util/ArrayList;

    .line 164
    .line 165
    const/16 v14, 0x14

    .line 166
    .line 167
    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .line 169
    .line 170
    new-instance v1, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v1, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .line 174
    .line 175
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    move/from16 v25, v7

    .line 180
    .line 181
    const/4 v7, 0x1

    .line 182
    if-eq v14, v7, :cond_8

    .line 183
    .line 184
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    move/from16 v26, v12

    .line 189
    .line 190
    if-ge v7, v4, :cond_3

    .line 191
    .line 192
    const/4 v12, 0x3

    .line 193
    if-eq v14, v12, :cond_9

    .line 194
    .line 195
    :cond_3
    const/4 v12, 0x2

    .line 196
    if-eq v14, v12, :cond_4

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_4
    if-gt v7, v4, :cond_7

    .line 200
    .line 201
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    const-string v12, "item"

    .line 206
    .line 207
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-nez v7, :cond_5

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_5
    sget-object v7, Li/a;->e:[I

    .line 215
    .line 216
    invoke-static {v0, v3, v2, v7}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    const/4 v12, 0x0

    .line 221
    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    const/4 v12, 0x1

    .line 226
    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 227
    .line 228
    .line 229
    move-result v22

    .line 230
    if-eqz v14, :cond_6

    .line 231
    .line 232
    if-eqz v22, :cond_6

    .line 233
    .line 234
    const/4 v14, 0x0

    .line 235
    invoke-virtual {v7, v14, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 236
    .line 237
    .line 238
    move-result v20

    .line 239
    const/4 v14, 0x0

    .line 240
    invoke-virtual {v7, v12, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 241
    .line 242
    .line 243
    move-result v27

    .line 244
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    .line 246
    .line 247
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 263
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 277
    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v0

    .line 289
    :cond_7
    :goto_4
    move/from16 v7, v25

    .line 290
    .line 291
    move/from16 v12, v26

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_8
    move/from16 v26, v12

    .line 295
    .line 296
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-lez v0, :cond_a

    .line 301
    .line 302
    new-instance v0, Landroidx/core/content/res/k;

    .line 303
    .line 304
    invoke-direct {v0, v1, v15}, Landroidx/core/content/res/k;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_a
    const/4 v0, 0x0

    .line 309
    :goto_5
    if-eqz v0, :cond_b

    .line 310
    .line 311
    :goto_6
    const/4 v1, 0x1

    .line 312
    goto :goto_7

    .line 313
    :cond_b
    if-eqz v18, :cond_c

    .line 314
    .line 315
    new-instance v0, Landroidx/core/content/res/k;

    .line 316
    .line 317
    move/from16 v1, v21

    .line 318
    .line 319
    invoke-direct {v0, v8, v6, v1}, Landroidx/core/content/res/k;-><init>(III)V

    .line 320
    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_c
    move/from16 v1, v21

    .line 324
    .line 325
    new-instance v0, Landroidx/core/content/res/k;

    .line 326
    .line 327
    invoke-direct {v0, v8, v1}, Landroidx/core/content/res/k;-><init>(II)V

    .line 328
    .line 329
    .line 330
    goto :goto_6

    .line 331
    :goto_7
    if-eq v5, v1, :cond_10

    .line 332
    .line 333
    const/4 v2, 0x2

    .line 334
    if-eq v5, v2, :cond_f

    .line 335
    .line 336
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 337
    .line 338
    iget-object v4, v0, Landroidx/core/content/res/k;->a:[I

    .line 339
    .line 340
    iget-object v14, v0, Landroidx/core/content/res/k;->b:[F

    .line 341
    .line 342
    if-eq v13, v1, :cond_e

    .line 343
    .line 344
    if-eq v13, v2, :cond_d

    .line 345
    .line 346
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_d
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_e
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 353
    .line 354
    :goto_8
    move-object v15, v0

    .line 355
    move-object v8, v3

    .line 356
    move/from16 v12, v26

    .line 357
    .line 358
    move-object v13, v4

    .line 359
    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 360
    .line 361
    .line 362
    return-object v3

    .line 363
    :cond_f
    new-instance v1, Landroid/graphics/SweepGradient;

    .line 364
    .line 365
    iget-object v2, v0, Landroidx/core/content/res/k;->b:[F

    .line 366
    .line 367
    iget-object v0, v0, Landroidx/core/content/res/k;->a:[I

    .line 368
    .line 369
    move/from16 v3, v23

    .line 370
    .line 371
    move/from16 v4, v24

    .line 372
    .line 373
    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 374
    .line 375
    .line 376
    return-object v1

    .line 377
    :cond_10
    move/from16 v3, v23

    .line 378
    .line 379
    move/from16 v4, v24

    .line 380
    .line 381
    const/4 v1, 0x0

    .line 382
    cmpg-float v1, v25, v1

    .line 383
    .line 384
    if-lez v1, :cond_13

    .line 385
    .line 386
    new-instance v1, Landroid/graphics/RadialGradient;

    .line 387
    .line 388
    iget-object v2, v0, Landroidx/core/content/res/k;->a:[I

    .line 389
    .line 390
    iget-object v0, v0, Landroidx/core/content/res/k;->b:[F

    .line 391
    .line 392
    const/4 v5, 0x1

    .line 393
    if-eq v13, v5, :cond_12

    .line 394
    .line 395
    const/4 v5, 0x2

    .line 396
    if-eq v13, v5, :cond_11

    .line 397
    .line 398
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_11
    sget-object v5, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_12
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 405
    .line 406
    :goto_9
    move-object/from16 v19, v5

    .line 407
    .line 408
    move-object v13, v1

    .line 409
    move v14, v3

    .line 410
    move v15, v4

    .line 411
    move/from16 v16, v25

    .line 412
    .line 413
    move-object/from16 v17, v2

    .line 414
    .line 415
    move-object/from16 v18, v0

    .line 416
    .line 417
    invoke-direct/range {v13 .. v19}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 418
    .line 419
    .line 420
    return-object v1

    .line 421
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 422
    .line 423
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 424
    .line 425
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v0

    .line 429
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 430
    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v2, ": invalid gradient color tag "

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw v0
.end method

.method public static b(Landroid/content/Context;II)I
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    .line 13
    .line 14
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    return p1

    .line 19
    :cond_0
    return p2
.end method

.method public static c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/core/content/res/d;
    .locals 2

    .line 1
    invoke-static {p1, p3}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    new-instance p1, Landroid/util/TypedValue;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p4, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 14
    .line 15
    .line 16
    iget v0, p1, Landroid/util/TypedValue;->type:I

    .line 17
    .line 18
    const/16 v1, 0x1c

    .line 19
    .line 20
    if-lt v0, v1, :cond_0

    .line 21
    .line 22
    const/16 v1, 0x1f

    .line 23
    .line 24
    if-gt v0, v1, :cond_0

    .line 25
    .line 26
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 27
    .line 28
    invoke-static {p0}, Landroidx/core/content/res/d;->b(I)Landroidx/core/content/res/d;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {p1, p0, p2}, Landroidx/core/content/res/d;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/d;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_1
    invoke-static {p3}, Landroidx/core/content/res/d;->b(I)Landroidx/core/content/res/d;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return p4

    .line 8
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return p4

    .line 8
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static f(Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static g(Landroid/content/res/TypedArray;II)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    return-object p1
.end method

.method public static h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 2
    .line 3
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
