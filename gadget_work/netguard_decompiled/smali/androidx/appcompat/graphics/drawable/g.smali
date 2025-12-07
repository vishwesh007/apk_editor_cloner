.class public final Landroidx/appcompat/graphics/drawable/g;
.super Landroidx/appcompat/graphics/drawable/n;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/i;


# instance fields
.field private p:Landroidx/appcompat/graphics/drawable/b;

.field private q:Landroidx/appcompat/graphics/drawable/f;

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/g;-><init>(Landroidx/appcompat/graphics/drawable/b;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/b;Landroid/content/res/Resources;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/n;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/appcompat/graphics/drawable/g;->r:I

    .line 4
    iput v0, p0, Landroidx/appcompat/graphics/drawable/g;->s:I

    .line 5
    new-instance v0, Landroidx/appcompat/graphics/drawable/b;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/b;-><init>(Landroidx/appcompat/graphics/drawable/b;Landroidx/appcompat/graphics/drawable/g;Landroid/content/res/Resources;)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/g;->f(Landroidx/appcompat/graphics/drawable/j;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/g;->onStateChange([I)Z

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/g;->jumpToCurrentState()V

    return-void
.end method

.method public static i(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/appcompat/graphics/drawable/g;
    .locals 17

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
    move-object/from16 v4, p4

    .line 10
    .line 11
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const-string v6, "animated-selector"

    .line 16
    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_16

    .line 22
    .line 23
    new-instance v5, Landroidx/appcompat/graphics/drawable/g;

    .line 24
    .line 25
    invoke-direct {v5}, Landroidx/appcompat/graphics/drawable/g;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v6, Le/d;->a:[I

    .line 29
    .line 30
    invoke-static {v2, v1, v3, v6}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x1

    .line 35
    invoke-virtual {v6, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    invoke-virtual {v5, v8, v7}, Landroidx/appcompat/graphics/drawable/g;->setVisible(ZZ)Z

    .line 40
    .line 41
    .line 42
    iget-object v8, v5, Landroidx/appcompat/graphics/drawable/g;->p:Landroidx/appcompat/graphics/drawable/b;

    .line 43
    .line 44
    iget v9, v8, Landroidx/appcompat/graphics/drawable/j;->d:I

    .line 45
    .line 46
    invoke-static {v6}, Le/c;->b(Landroid/content/res/TypedArray;)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    or-int/2addr v9, v10

    .line 51
    iput v9, v8, Landroidx/appcompat/graphics/drawable/j;->d:I

    .line 52
    .line 53
    iget-boolean v9, v8, Landroidx/appcompat/graphics/drawable/j;->i:Z

    .line 54
    .line 55
    const/4 v10, 0x2

    .line 56
    invoke-virtual {v6, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    iput-boolean v9, v8, Landroidx/appcompat/graphics/drawable/j;->i:Z

    .line 61
    .line 62
    iget-boolean v9, v8, Landroidx/appcompat/graphics/drawable/j;->l:Z

    .line 63
    .line 64
    const/4 v11, 0x3

    .line 65
    invoke-virtual {v6, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    iput-boolean v9, v8, Landroidx/appcompat/graphics/drawable/j;->l:Z

    .line 70
    .line 71
    iget v9, v8, Landroidx/appcompat/graphics/drawable/j;->y:I

    .line 72
    .line 73
    const/4 v12, 0x4

    .line 74
    invoke-virtual {v6, v12, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    iput v9, v8, Landroidx/appcompat/graphics/drawable/j;->y:I

    .line 79
    .line 80
    const/4 v9, 0x5

    .line 81
    iget v13, v8, Landroidx/appcompat/graphics/drawable/j;->z:I

    .line 82
    .line 83
    invoke-virtual {v6, v9, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    iput v9, v8, Landroidx/appcompat/graphics/drawable/j;->z:I

    .line 88
    .line 89
    iget-boolean v8, v8, Landroidx/appcompat/graphics/drawable/j;->w:Z

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    invoke-virtual {v6, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    invoke-virtual {v5, v8}, Landroidx/appcompat/graphics/drawable/k;->setDither(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v2}, Landroidx/appcompat/graphics/drawable/k;->g(Landroid/content/res/Resources;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    .line 104
    .line 105
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    add-int/2addr v6, v7

    .line 110
    :goto_0
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eq v8, v7, :cond_15

    .line 115
    .line 116
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-ge v13, v6, :cond_0

    .line 121
    .line 122
    if-eq v8, v11, :cond_15

    .line 123
    .line 124
    :cond_0
    if-eq v8, v10, :cond_1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    if-le v13, v6, :cond_2

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    const-string v13, "item"

    .line 135
    .line 136
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    const/4 v13, 0x0

    .line 141
    const/4 v14, -0x1

    .line 142
    if-eqz v8, :cond_c

    .line 143
    .line 144
    sget-object v8, Le/d;->b:[I

    .line 145
    .line 146
    invoke-static {v2, v1, v3, v8}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v8, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 151
    .line 152
    .line 153
    move-result v15

    .line 154
    invoke-virtual {v8, v7, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    if-lez v14, :cond_3

    .line 159
    .line 160
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    invoke-virtual {v13, v0, v14}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object v13

    .line 168
    :cond_3
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    .line 170
    .line 171
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    new-array v14, v8, [I

    .line 176
    .line 177
    const/4 v7, 0x0

    .line 178
    const/4 v11, 0x0

    .line 179
    :goto_1
    if-ge v11, v8, :cond_6

    .line 180
    .line 181
    invoke-interface {v3, v11}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-eqz v10, :cond_5

    .line 186
    .line 187
    const v12, 0x10100d0

    .line 188
    .line 189
    .line 190
    if-eq v10, v12, :cond_5

    .line 191
    .line 192
    const v12, 0x1010199

    .line 193
    .line 194
    .line 195
    if-eq v10, v12, :cond_5

    .line 196
    .line 197
    add-int/lit8 v12, v7, 0x1

    .line 198
    .line 199
    invoke-interface {v3, v11, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 200
    .line 201
    .line 202
    move-result v16

    .line 203
    if-eqz v16, :cond_4

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    neg-int v10, v10

    .line 207
    :goto_2
    aput v10, v14, v7

    .line 208
    .line 209
    move v7, v12

    .line 210
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 211
    .line 212
    const/4 v10, 0x2

    .line 213
    const/4 v12, 0x4

    .line 214
    goto :goto_1

    .line 215
    :cond_6
    invoke-static {v14, v7}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 220
    .line 221
    if-nez v13, :cond_a

    .line 222
    .line 223
    :goto_3
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    const/4 v11, 0x4

    .line 228
    if-ne v10, v11, :cond_7

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_7
    const/4 v11, 0x2

    .line 232
    if-ne v10, v11, :cond_9

    .line 233
    .line 234
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    const-string v11, "vector"

    .line 239
    .line 240
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    if-eqz v10, :cond_8

    .line 245
    .line 246
    invoke-static {v2, v4, v3, v1}, Landroidx/vectordrawable/graphics/drawable/r;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/r;

    .line 247
    .line 248
    .line 249
    move-result-object v13

    .line 250
    goto :goto_4

    .line 251
    :cond_8
    invoke-static {v2, v4, v3, v1}, Le/c;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    goto :goto_4

    .line 256
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 257
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_a
    :goto_4
    if-eqz v13, :cond_b

    .line 282
    .line 283
    iget-object v8, v5, Landroidx/appcompat/graphics/drawable/g;->p:Landroidx/appcompat/graphics/drawable/b;

    .line 284
    .line 285
    invoke-virtual {v8, v13}, Landroidx/appcompat/graphics/drawable/j;->a(Landroid/graphics/drawable/Drawable;)I

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    iget-object v11, v8, Landroidx/appcompat/graphics/drawable/m;->H:[[I

    .line 290
    .line 291
    aput-object v7, v11, v10

    .line 292
    .line 293
    iget-object v7, v8, Landroidx/appcompat/graphics/drawable/b;->J:Landroidx/collection/o;

    .line 294
    .line 295
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    invoke-virtual {v7, v10, v8}, Landroidx/collection/o;->f(ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_7

    .line 303
    .line 304
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 305
    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw v0

    .line 329
    :cond_c
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    const-string v8, "transition"

    .line 334
    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    if-eqz v7, :cond_14

    .line 340
    .line 341
    sget-object v7, Le/d;->c:[I

    .line 342
    .line 343
    invoke-static {v2, v1, v3, v7}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    const/4 v8, 0x2

    .line 348
    invoke-virtual {v7, v8, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 349
    .line 350
    .line 351
    move-result v10

    .line 352
    const/4 v8, 0x1

    .line 353
    invoke-virtual {v7, v8, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 354
    .line 355
    .line 356
    move-result v11

    .line 357
    invoke-virtual {v7, v9, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    if-lez v12, :cond_d

    .line 362
    .line 363
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 364
    .line 365
    .line 366
    move-result-object v13

    .line 367
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 368
    .line 369
    .line 370
    move-result-object v13

    .line 371
    :cond_d
    const/4 v12, 0x3

    .line 372
    invoke-virtual {v7, v12, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 373
    .line 374
    .line 375
    move-result v15

    .line 376
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 377
    .line 378
    .line 379
    const-string v7, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 380
    .line 381
    if-nez v13, :cond_11

    .line 382
    .line 383
    :goto_5
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 384
    .line 385
    .line 386
    move-result v13

    .line 387
    const/4 v8, 0x4

    .line 388
    if-ne v13, v8, :cond_e

    .line 389
    .line 390
    const/4 v8, 0x1

    .line 391
    goto :goto_5

    .line 392
    :cond_e
    const/4 v8, 0x2

    .line 393
    if-ne v13, v8, :cond_10

    .line 394
    .line 395
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v13

    .line 399
    const-string v8, "animated-vector"

    .line 400
    .line 401
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    if-eqz v8, :cond_f

    .line 406
    .line 407
    invoke-static/range {p0 .. p4}, Landroidx/vectordrawable/graphics/drawable/e;->a(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/vectordrawable/graphics/drawable/e;

    .line 408
    .line 409
    .line 410
    move-result-object v13

    .line 411
    goto :goto_6

    .line 412
    :cond_f
    invoke-static {v2, v4, v3, v1}, Le/c;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 413
    .line 414
    .line 415
    move-result-object v13

    .line 416
    goto :goto_6

    .line 417
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 418
    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    throw v0

    .line 442
    :cond_11
    :goto_6
    if-eqz v13, :cond_13

    .line 443
    .line 444
    if-eq v10, v14, :cond_12

    .line 445
    .line 446
    if-eq v11, v14, :cond_12

    .line 447
    .line 448
    iget-object v7, v5, Landroidx/appcompat/graphics/drawable/g;->p:Landroidx/appcompat/graphics/drawable/b;

    .line 449
    .line 450
    invoke-virtual {v7, v10, v11, v13, v15}, Landroidx/appcompat/graphics/drawable/b;->k(IILandroid/graphics/drawable/Drawable;Z)I

    .line 451
    .line 452
    .line 453
    goto :goto_8

    .line 454
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 455
    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v2, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    .line 469
    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw v0

    .line 481
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 482
    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw v0

    .line 506
    :cond_14
    :goto_7
    const/4 v12, 0x3

    .line 507
    :goto_8
    const/4 v7, 0x1

    .line 508
    const/4 v10, 0x2

    .line 509
    const/4 v11, 0x3

    .line 510
    const/4 v12, 0x4

    .line 511
    goto/16 :goto_0

    .line 512
    .line 513
    :cond_15
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v5, v0}, Landroidx/appcompat/graphics/drawable/g;->onStateChange([I)Z

    .line 518
    .line 519
    .line 520
    return-object v5

    .line 521
    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 522
    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const-string v2, ": invalid animated-selector tag "

    .line 536
    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    throw v0
.end method


# virtual methods
.method final b()Landroidx/appcompat/graphics/drawable/j;
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/graphics/drawable/b;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/g;->p:Landroidx/appcompat/graphics/drawable/b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/b;-><init>(Landroidx/appcompat/graphics/drawable/b;Landroidx/appcompat/graphics/drawable/g;Landroid/content/res/Resources;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method final f(Landroidx/appcompat/graphics/drawable/j;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/n;->f(Landroidx/appcompat/graphics/drawable/j;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Landroidx/appcompat/graphics/drawable/b;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/g;->p:Landroidx/appcompat/graphics/drawable/b;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method final h()Landroidx/appcompat/graphics/drawable/m;
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/graphics/drawable/b;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/g;->p:Landroidx/appcompat/graphics/drawable/b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/b;-><init>(Landroidx/appcompat/graphics/drawable/b;Landroidx/appcompat/graphics/drawable/g;Landroid/content/res/Resources;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final jumpToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/k;->jumpToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/g;->q:Landroidx/appcompat/graphics/drawable/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/f;->d()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/g;->q:Landroidx/appcompat/graphics/drawable/f;

    .line 13
    .line 14
    iget v0, p0, Landroidx/appcompat/graphics/drawable/g;->r:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/k;->e(I)Z

    .line 17
    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Landroidx/appcompat/graphics/drawable/g;->r:I

    .line 21
    .line 22
    iput v0, p0, Landroidx/appcompat/graphics/drawable/g;->s:I

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/g;->t:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/n;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/g;->p:Landroidx/appcompat/graphics/drawable/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/b;->i()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/g;->t:Z

    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method protected final onStateChange([I)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/g;->p:Landroidx/appcompat/graphics/drawable/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/m;->j([I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/m;->j([I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/k;->c()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eq v1, v0, :cond_c

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/g;->q:Landroidx/appcompat/graphics/drawable/f;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget v4, p0, Landroidx/appcompat/graphics/drawable/g;->r:I

    .line 29
    .line 30
    if-ne v1, v4, :cond_1

    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_1
    iget v4, p0, Landroidx/appcompat/graphics/drawable/g;->s:I

    .line 35
    .line 36
    if-ne v1, v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/f;->a()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/f;->b()V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Landroidx/appcompat/graphics/drawable/g;->s:I

    .line 48
    .line 49
    iput v0, p0, Landroidx/appcompat/graphics/drawable/g;->r:I

    .line 50
    .line 51
    iput v1, p0, Landroidx/appcompat/graphics/drawable/g;->s:I

    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_2
    iget v4, p0, Landroidx/appcompat/graphics/drawable/g;->r:I

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/f;->d()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/k;->c()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    :goto_1
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/g;->q:Landroidx/appcompat/graphics/drawable/f;

    .line 67
    .line 68
    const/4 v0, -0x1

    .line 69
    iput v0, p0, Landroidx/appcompat/graphics/drawable/g;->s:I

    .line 70
    .line 71
    iput v0, p0, Landroidx/appcompat/graphics/drawable/g;->r:I

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/g;->p:Landroidx/appcompat/graphics/drawable/b;

    .line 74
    .line 75
    if-gez v4, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    iget-object v5, v0, Landroidx/appcompat/graphics/drawable/b;->J:Landroidx/collection/o;

    .line 83
    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v5, v4, v6}, Landroidx/collection/o;->d(ILjava/lang/Integer;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    :goto_2
    if-gez v1, :cond_5

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    iget-object v6, v0, Landroidx/appcompat/graphics/drawable/b;->J:Landroidx/collection/o;

    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v6, v1, v7}, Landroidx/collection/o;->d(ILjava/lang/Integer;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    check-cast v6, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    :goto_3
    if-eqz v6, :cond_a

    .line 119
    .line 120
    if-nez v5, :cond_6

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_6
    invoke-virtual {v0, v5, v6}, Landroidx/appcompat/graphics/drawable/b;->l(II)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-gez v7, :cond_7

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_7
    invoke-virtual {v0, v5, v6}, Landroidx/appcompat/graphics/drawable/b;->n(II)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    invoke-virtual {p0, v7}, Landroidx/appcompat/graphics/drawable/k;->e(I)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/k;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    instance-of v9, v7, Landroid/graphics/drawable/AnimationDrawable;

    .line 142
    .line 143
    if-eqz v9, :cond_8

    .line 144
    .line 145
    invoke-virtual {v0, v5, v6}, Landroidx/appcompat/graphics/drawable/b;->m(II)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    new-instance v5, Landroidx/appcompat/graphics/drawable/d;

    .line 150
    .line 151
    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    .line 152
    .line 153
    invoke-direct {v5, v7, v0, v8}, Landroidx/appcompat/graphics/drawable/d;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_8
    instance-of v0, v7, Landroidx/vectordrawable/graphics/drawable/e;

    .line 158
    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    new-instance v5, Landroidx/appcompat/graphics/drawable/c;

    .line 162
    .line 163
    check-cast v7, Landroidx/vectordrawable/graphics/drawable/e;

    .line 164
    .line 165
    invoke-direct {v5, v7}, Landroidx/appcompat/graphics/drawable/c;-><init>(Landroidx/vectordrawable/graphics/drawable/e;)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_9
    instance-of v0, v7, Landroid/graphics/drawable/Animatable;

    .line 170
    .line 171
    if-eqz v0, :cond_a

    .line 172
    .line 173
    new-instance v5, Landroidx/appcompat/graphics/drawable/a;

    .line 174
    .line 175
    check-cast v7, Landroid/graphics/drawable/Animatable;

    .line 176
    .line 177
    invoke-direct {v5, v7}, Landroidx/appcompat/graphics/drawable/a;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 178
    .line 179
    .line 180
    :goto_4
    invoke-virtual {v5}, Landroidx/appcompat/graphics/drawable/f;->c()V

    .line 181
    .line 182
    .line 183
    iput-object v5, p0, Landroidx/appcompat/graphics/drawable/g;->q:Landroidx/appcompat/graphics/drawable/f;

    .line 184
    .line 185
    iput v4, p0, Landroidx/appcompat/graphics/drawable/g;->s:I

    .line 186
    .line 187
    iput v1, p0, Landroidx/appcompat/graphics/drawable/g;->r:I

    .line 188
    .line 189
    :goto_5
    const/4 v0, 0x1

    .line 190
    goto :goto_7

    .line 191
    :cond_a
    :goto_6
    const/4 v0, 0x0

    .line 192
    :goto_7
    if-nez v0, :cond_b

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/k;->e(I)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_c

    .line 199
    .line 200
    :cond_b
    const/4 v2, 0x1

    .line 201
    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/k;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_d

    .line 206
    .line 207
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    or-int/2addr v2, p1

    .line 212
    :cond_d
    return v2
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/k;->setVisible(ZZ)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/g;->q:Landroidx/appcompat/graphics/drawable/f;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/f;->c()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/g;->jumpToCurrentState()V

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    return v0
.end method
