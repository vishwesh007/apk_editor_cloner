.class public final Landroidx/core/content/res/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/content/res/c;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/c;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    .line 25
    const-string p1, "No start tag found"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "selector"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_17

    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/2addr v3, v4

    .line 25
    const/16 v5, 0x14

    .line 26
    .line 27
    new-array v6, v5, [[I

    .line 28
    .line 29
    new-array v5, v5, [I

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-eq v9, v4, :cond_16

    .line 38
    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    const/4 v11, 0x3

    .line 44
    if-ge v10, v3, :cond_0

    .line 45
    .line 46
    if-eq v9, v11, :cond_16

    .line 47
    .line 48
    :cond_0
    const/4 v12, 0x2

    .line 49
    if-ne v9, v12, :cond_15

    .line 50
    .line 51
    if-gt v10, v3, :cond_15

    .line 52
    .line 53
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-string v10, "item"

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_1

    .line 64
    .line 65
    goto/16 :goto_e

    .line 66
    .line 67
    :cond_1
    sget-object v9, Li/a;->a:[I

    .line 68
    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    :goto_1
    const/4 v10, -0x1

    .line 81
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    const/16 v14, 0x1f

    .line 86
    .line 87
    const v15, -0xff01

    .line 88
    .line 89
    .line 90
    if-eq v13, v10, :cond_5

    .line 91
    .line 92
    sget-object v10, Landroidx/core/content/res/c;->a:Ljava/lang/ThreadLocal;

    .line 93
    .line 94
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v16

    .line 98
    check-cast v16, Landroid/util/TypedValue;

    .line 99
    .line 100
    if-nez v16, :cond_3

    .line 101
    .line 102
    new-instance v12, Landroid/util/TypedValue;

    .line 103
    .line 104
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    move-object/from16 v12, v16

    .line 112
    .line 113
    :goto_2
    invoke-virtual {v0, v13, v12, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 114
    .line 115
    .line 116
    iget v10, v12, Landroid/util/TypedValue;->type:I

    .line 117
    .line 118
    const/16 v12, 0x1c

    .line 119
    .line 120
    if-lt v10, v12, :cond_4

    .line 121
    .line 122
    if-gt v10, v14, :cond_4

    .line 123
    .line 124
    const/4 v10, 0x1

    .line 125
    goto :goto_3

    .line 126
    :cond_4
    const/4 v10, 0x0

    .line 127
    :goto_3
    if-nez v10, :cond_5

    .line 128
    .line 129
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v0, v10, v2}, Landroidx/core/content/res/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 138
    .line 139
    .line 140
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_4

    .line 142
    :catch_0
    invoke-virtual {v9, v7, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    goto :goto_4

    .line 147
    :cond_5
    invoke-virtual {v9, v7, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    :goto_4
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    const/high16 v13, 0x3f800000    # 1.0f

    .line 156
    .line 157
    if-eqz v12, :cond_6

    .line 158
    .line 159
    invoke-virtual {v9, v4, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    goto :goto_5

    .line 164
    :cond_6
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-eqz v12, :cond_7

    .line 169
    .line 170
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    goto :goto_5

    .line 175
    :cond_7
    const/high16 v11, 0x3f800000    # 1.0f

    .line 176
    .line 177
    :goto_5
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 178
    .line 179
    const/4 v15, 0x4

    .line 180
    const/high16 v4, -0x40800000    # -1.0f

    .line 181
    .line 182
    if-lt v12, v14, :cond_8

    .line 183
    .line 184
    const/4 v12, 0x2

    .line 185
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    if-eqz v14, :cond_8

    .line 190
    .line 191
    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    goto :goto_6

    .line 196
    :cond_8
    invoke-virtual {v9, v15, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    :goto_6
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    .line 202
    .line 203
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    new-array v12, v9, [I

    .line 208
    .line 209
    const/4 v14, 0x0

    .line 210
    const/4 v15, 0x0

    .line 211
    :goto_7
    if-ge v14, v9, :cond_b

    .line 212
    .line 213
    invoke-interface {v1, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    const v7, 0x10101a5

    .line 218
    .line 219
    .line 220
    if-eq v13, v7, :cond_a

    .line 221
    .line 222
    const v7, 0x101031f

    .line 223
    .line 224
    .line 225
    if-eq v13, v7, :cond_a

    .line 226
    .line 227
    const v7, 0x7f04002f

    .line 228
    .line 229
    .line 230
    if-eq v13, v7, :cond_a

    .line 231
    .line 232
    const v7, 0x7f0400cf

    .line 233
    .line 234
    .line 235
    if-eq v13, v7, :cond_a

    .line 236
    .line 237
    add-int/lit8 v7, v15, 0x1

    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-interface {v1, v14, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 241
    .line 242
    .line 243
    move-result v17

    .line 244
    if-eqz v17, :cond_9

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_9
    neg-int v13, v13

    .line 248
    :goto_8
    aput v13, v12, v15

    .line 249
    .line 250
    move v15, v7

    .line 251
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 252
    .line 253
    move-object/from16 v0, p0

    .line 254
    .line 255
    const/4 v7, 0x0

    .line 256
    const/high16 v13, 0x3f800000    # 1.0f

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_b
    invoke-static {v12, v15}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const/4 v7, 0x0

    .line 264
    cmpl-float v7, v4, v7

    .line 265
    .line 266
    if-ltz v7, :cond_c

    .line 267
    .line 268
    const/high16 v7, 0x42c80000    # 100.0f

    .line 269
    .line 270
    cmpg-float v7, v4, v7

    .line 271
    .line 272
    if-gtz v7, :cond_c

    .line 273
    .line 274
    const/4 v7, 0x1

    .line 275
    goto :goto_9

    .line 276
    :cond_c
    const/4 v7, 0x0

    .line 277
    :goto_9
    const/high16 v9, 0x3f800000    # 1.0f

    .line 278
    .line 279
    cmpl-float v9, v11, v9

    .line 280
    .line 281
    if-nez v9, :cond_d

    .line 282
    .line 283
    if-nez v7, :cond_d

    .line 284
    .line 285
    goto :goto_b

    .line 286
    :cond_d
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    int-to-float v9, v9

    .line 291
    mul-float v9, v9, v11

    .line 292
    .line 293
    const/high16 v11, 0x3f000000    # 0.5f

    .line 294
    .line 295
    add-float/2addr v9, v11

    .line 296
    float-to-int v9, v9

    .line 297
    if-gez v9, :cond_e

    .line 298
    .line 299
    const/4 v9, 0x0

    .line 300
    goto :goto_a

    .line 301
    :cond_e
    const/16 v11, 0xff

    .line 302
    .line 303
    if-le v9, v11, :cond_f

    .line 304
    .line 305
    const/16 v9, 0xff

    .line 306
    .line 307
    :cond_f
    :goto_a
    if-eqz v7, :cond_10

    .line 308
    .line 309
    invoke-static {v10}, Landroidx/core/content/res/a;->a(I)Landroidx/core/content/res/a;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-virtual {v7}, Landroidx/core/content/res/a;->d()F

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    invoke-virtual {v7}, Landroidx/core/content/res/a;->c()F

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    invoke-static {v10, v7, v4}, Landroidx/core/content/res/a;->e(FFF)I

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    :cond_10
    const v4, 0xffffff

    .line 326
    .line 327
    .line 328
    and-int/2addr v4, v10

    .line 329
    shl-int/lit8 v7, v9, 0x18

    .line 330
    .line 331
    or-int v10, v4, v7

    .line 332
    .line 333
    :goto_b
    add-int/lit8 v4, v8, 0x1

    .line 334
    .line 335
    array-length v7, v5

    .line 336
    const/16 v9, 0x8

    .line 337
    .line 338
    if-le v4, v7, :cond_12

    .line 339
    .line 340
    const/4 v7, 0x4

    .line 341
    if-gt v8, v7, :cond_11

    .line 342
    .line 343
    const/16 v7, 0x8

    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_11
    mul-int/lit8 v7, v8, 0x2

    .line 347
    .line 348
    :goto_c
    new-array v7, v7, [I

    .line 349
    .line 350
    const/4 v11, 0x0

    .line 351
    invoke-static {v5, v11, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    .line 353
    .line 354
    move-object v5, v7

    .line 355
    :cond_12
    aput v10, v5, v8

    .line 356
    .line 357
    array-length v7, v6

    .line 358
    if-le v4, v7, :cond_14

    .line 359
    .line 360
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    move-result-object v7

    .line 364
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    const/4 v10, 0x4

    .line 369
    if-gt v8, v10, :cond_13

    .line 370
    .line 371
    goto :goto_d

    .line 372
    :cond_13
    mul-int/lit8 v9, v8, 0x2

    .line 373
    .line 374
    :goto_d
    invoke-static {v7, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    check-cast v7, [Ljava/lang/Object;

    .line 379
    .line 380
    const/4 v9, 0x0

    .line 381
    invoke-static {v6, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    .line 383
    .line 384
    move-object v6, v7

    .line 385
    :cond_14
    aput-object v0, v6, v8

    .line 386
    .line 387
    check-cast v6, [[I

    .line 388
    .line 389
    move v8, v4

    .line 390
    :cond_15
    :goto_e
    move-object/from16 v0, p0

    .line 391
    .line 392
    const/4 v4, 0x1

    .line 393
    const/4 v7, 0x0

    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_16
    new-array v0, v8, [I

    .line 397
    .line 398
    new-array v1, v8, [[I

    .line 399
    .line 400
    const/4 v2, 0x0

    .line 401
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    .line 403
    .line 404
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    .line 406
    .line 407
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 408
    .line 409
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 410
    .line 411
    .line 412
    return-object v2

    .line 413
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 414
    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v2, ": invalid color state list tag "

    .line 428
    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v0
.end method
