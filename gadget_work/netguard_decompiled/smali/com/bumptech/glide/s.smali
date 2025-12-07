.class final Lcom/bumptech/glide/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/bumptech/glide/d;Ljava/util/List;LS/a;)Lcom/bumptech/glide/q;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/bumptech/glide/d;->d()LG/g;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/bumptech/glide/d;->c()LG/b;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/k;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/k;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Lcom/bumptech/glide/k;->g()Lcom/bumptech/glide/m;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    new-instance v6, Lcom/bumptech/glide/q;

    .line 30
    .line 31
    invoke-direct {v6}, Lcom/bumptech/glide/q;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v7, LM/o;

    .line 35
    .line 36
    invoke-direct {v7}, LM/o;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/q;->m(LE/c;)V

    .line 40
    .line 41
    .line 42
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 v8, 0x1b

    .line 45
    .line 46
    if-lt v7, v8, :cond_0

    .line 47
    .line 48
    new-instance v8, LM/z;

    .line 49
    .line 50
    invoke-direct {v8}, LM/z;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v8}, Lcom/bumptech/glide/q;->m(LE/c;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v6}, Lcom/bumptech/glide/q;->e()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    new-instance v10, LQ/c;

    .line 65
    .line 66
    invoke-direct {v10, v4, v9, v2, v3}, LQ/c;-><init>(Landroid/content/Context;Ljava/util/List;LG/g;LG/b;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, LM/Y;->f(LG/g;)LM/Y;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    new-instance v12, LM/v;

    .line 74
    .line 75
    invoke-virtual {v6}, Lcom/bumptech/glide/q;->e()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    invoke-direct {v12, v13, v14, v2, v3}, LM/v;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;LG/g;LG/b;)V

    .line 84
    .line 85
    .line 86
    const/16 v13, 0x1c

    .line 87
    .line 88
    const/4 v14, 0x0

    .line 89
    const/4 v15, 0x1

    .line 90
    if-lt v7, v13, :cond_1

    .line 91
    .line 92
    const-class v13, Lcom/bumptech/glide/f;

    .line 93
    .line 94
    invoke-virtual {v5, v13}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_1

    .line 99
    .line 100
    new-instance v5, LM/g;

    .line 101
    .line 102
    invoke-direct {v5, v15}, LM/g;-><init>(I)V

    .line 103
    .line 104
    .line 105
    new-instance v13, LM/g;

    .line 106
    .line 107
    invoke-direct {v13, v14}, LM/g;-><init>(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    new-instance v13, LM/f;

    .line 112
    .line 113
    invoke-direct {v13, v12}, LM/f;-><init>(LM/v;)V

    .line 114
    .line 115
    .line 116
    new-instance v5, LM/L;

    .line 117
    .line 118
    invoke-direct {v5, v12, v3}, LM/L;-><init>(LM/v;LG/b;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    const-class v14, Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    const-string v15, "Animation"

    .line 124
    .line 125
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    const-class v0, Ljava/io/InputStream;

    .line 128
    .line 129
    move-object/from16 v18, v10

    .line 130
    .line 131
    const/16 v10, 0x1c

    .line 132
    .line 133
    if-lt v7, v10, :cond_2

    .line 134
    .line 135
    invoke-static {v9, v3}, LO/d;->e(Ljava/util/List;LG/b;)LE/j;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-virtual {v6, v10, v0, v1, v15}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v9, v3}, LO/d;->a(Ljava/util/List;LG/b;)LE/j;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    invoke-virtual {v6, v10, v14, v1, v15}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    new-instance v10, LO/g;

    .line 150
    .line 151
    invoke-direct {v10, v4}, LO/g;-><init>(Landroid/content/Context;)V

    .line 152
    .line 153
    .line 154
    move/from16 v16, v7

    .line 155
    .line 156
    new-instance v7, LJ/E;

    .line 157
    .line 158
    move-object/from16 v19, v1

    .line 159
    .line 160
    const/4 v1, 0x3

    .line 161
    invoke-direct {v7, v1, v8}, LJ/E;-><init>(ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance v1, LJ/Q;

    .line 165
    .line 166
    move-object/from16 v20, v7

    .line 167
    .line 168
    const/4 v7, 0x1

    .line 169
    invoke-direct {v1, v8, v7}, LJ/Q;-><init>(Landroid/content/res/Resources;I)V

    .line 170
    .line 171
    .line 172
    move-object/from16 v21, v1

    .line 173
    .line 174
    new-instance v1, LJ/o;

    .line 175
    .line 176
    invoke-direct {v1, v7, v8}, LJ/o;-><init>(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    new-instance v7, LJ/Q;

    .line 180
    .line 181
    move-object/from16 v22, v1

    .line 182
    .line 183
    const/4 v1, 0x0

    .line 184
    invoke-direct {v7, v8, v1}, LJ/Q;-><init>(Landroid/content/res/Resources;I)V

    .line 185
    .line 186
    .line 187
    new-instance v1, LM/b;

    .line 188
    .line 189
    invoke-direct {v1, v3}, LM/b;-><init>(LG/b;)V

    .line 190
    .line 191
    .line 192
    move-object/from16 v23, v7

    .line 193
    .line 194
    new-instance v7, LR/a;

    .line 195
    .line 196
    invoke-direct {v7}, LR/a;-><init>()V

    .line 197
    .line 198
    .line 199
    move-object/from16 v24, v7

    .line 200
    .line 201
    new-instance v7, Landroidx/emoji2/text/d;

    .line 202
    .line 203
    move-object/from16 v25, v10

    .line 204
    .line 205
    const/4 v10, 0x4

    .line 206
    invoke-direct {v7, v10}, Landroidx/emoji2/text/d;-><init>(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    move-object/from16 v26, v7

    .line 214
    .line 215
    new-instance v7, LJ/i;

    .line 216
    .line 217
    invoke-direct {v7}, LJ/i;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v14, v7}, Lcom/bumptech/glide/q;->b(Ljava/lang/Class;LE/a;)V

    .line 221
    .line 222
    .line 223
    new-instance v7, LJ/E;

    .line 224
    .line 225
    move-object/from16 v27, v10

    .line 226
    .line 227
    const/4 v10, 0x4

    .line 228
    invoke-direct {v7, v10, v3}, LJ/E;-><init>(ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v0, v7}, Lcom/bumptech/glide/q;->b(Ljava/lang/Class;LE/a;)V

    .line 232
    .line 233
    .line 234
    const-class v7, Landroid/graphics/Bitmap;

    .line 235
    .line 236
    const-string v10, "Bitmap"

    .line 237
    .line 238
    invoke-virtual {v6, v13, v14, v7, v10}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v5, v0, v7, v10}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    move-object/from16 v28, v4

    .line 245
    .line 246
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 247
    .line 248
    move-object/from16 v29, v15

    .line 249
    .line 250
    const-string v15, "robolectric"

    .line 251
    .line 252
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v30

    .line 256
    const/16 v17, 0x1

    .line 257
    .line 258
    xor-int/lit8 v30, v30, 0x1

    .line 259
    .line 260
    move-object/from16 v31, v4

    .line 261
    .line 262
    const-class v4, Landroid/os/ParcelFileDescriptor;

    .line 263
    .line 264
    if-eqz v30, :cond_3

    .line 265
    .line 266
    move-object/from16 v30, v15

    .line 267
    .line 268
    new-instance v15, LM/c;

    .line 269
    .line 270
    invoke-direct {v15, v12}, LM/c;-><init>(LM/v;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6, v15, v4, v7, v10}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_3
    move-object/from16 v30, v15

    .line 278
    .line 279
    :goto_1
    invoke-virtual {v6, v11, v4, v7, v10}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-static {v2}, LM/Y;->c(LG/g;)LM/Y;

    .line 283
    .line 284
    .line 285
    move-result-object v12

    .line 286
    const-class v15, Landroid/content/res/AssetFileDescriptor;

    .line 287
    .line 288
    invoke-virtual {v6, v12, v15, v7, v10}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {}, LJ/T;->a()LJ/T;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    invoke-virtual {v6, v7, v7, v12}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 296
    .line 297
    .line 298
    new-instance v12, LM/P;

    .line 299
    .line 300
    invoke-direct {v12}, LM/P;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6, v12, v7, v7, v10}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v7, v1}, Lcom/bumptech/glide/q;->c(Ljava/lang/Class;LE/k;)V

    .line 307
    .line 308
    .line 309
    new-instance v12, LM/L;

    .line 310
    .line 311
    invoke-direct {v12, v8, v13}, LM/L;-><init>(Landroid/content/res/Resources;LE/j;)V

    .line 312
    .line 313
    .line 314
    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 315
    .line 316
    move-object/from16 v32, v15

    .line 317
    .line 318
    const-string v15, "BitmapDrawable"

    .line 319
    .line 320
    invoke-virtual {v6, v12, v14, v13, v15}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    new-instance v12, LM/L;

    .line 324
    .line 325
    invoke-direct {v12, v8, v5}, LM/L;-><init>(Landroid/content/res/Resources;LE/j;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6, v12, v0, v13, v15}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    new-instance v5, LM/L;

    .line 332
    .line 333
    invoke-direct {v5, v8, v11}, LM/L;-><init>(Landroid/content/res/Resources;LE/j;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v5, v4, v13, v15}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    new-instance v5, LM/a;

    .line 340
    .line 341
    invoke-direct {v5, v2, v1}, LM/a;-><init>(LG/g;LM/b;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v13, v5}, Lcom/bumptech/glide/q;->c(Ljava/lang/Class;LE/k;)V

    .line 345
    .line 346
    .line 347
    new-instance v1, LQ/o;

    .line 348
    .line 349
    move-object/from16 v5, v18

    .line 350
    .line 351
    invoke-direct {v1, v9, v5, v3}, LQ/o;-><init>(Ljava/util/List;LQ/c;LG/b;)V

    .line 352
    .line 353
    .line 354
    const-class v9, LQ/f;

    .line 355
    .line 356
    move-object/from16 v11, v29

    .line 357
    .line 358
    invoke-virtual {v6, v1, v0, v9, v11}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v5, v14, v9, v11}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    new-instance v1, LE/d;

    .line 365
    .line 366
    invoke-direct {v1}, LE/d;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v9, v1}, Lcom/bumptech/glide/q;->c(Ljava/lang/Class;LE/k;)V

    .line 370
    .line 371
    .line 372
    invoke-static {}, LJ/T;->a()LJ/T;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    const-class v5, LD/a;

    .line 377
    .line 378
    invoke-virtual {v6, v5, v5, v1}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 379
    .line 380
    .line 381
    new-instance v1, LQ/m;

    .line 382
    .line 383
    invoke-direct {v1, v2}, LQ/m;-><init>(LG/g;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v6, v1, v5, v7, v10}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    const-class v1, Landroid/net/Uri;

    .line 390
    .line 391
    const-string v5, "legacy_append"

    .line 392
    .line 393
    move-object/from16 v11, v19

    .line 394
    .line 395
    move-object/from16 v10, v25

    .line 396
    .line 397
    invoke-virtual {v6, v10, v1, v11, v5}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    new-instance v12, LM/J;

    .line 401
    .line 402
    invoke-direct {v12, v10, v2}, LM/J;-><init>(LO/g;LG/g;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v6, v12, v1, v7, v5}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    new-instance v10, LN/a;

    .line 409
    .line 410
    invoke-direct {v10}, LN/a;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v6, v10}, Lcom/bumptech/glide/q;->n(Lcom/bumptech/glide/load/data/f;)V

    .line 414
    .line 415
    .line 416
    new-instance v10, Landroidx/emoji2/text/d;

    .line 417
    .line 418
    const/4 v12, 0x2

    .line 419
    invoke-direct {v10, v12}, Landroidx/emoji2/text/d;-><init>(I)V

    .line 420
    .line 421
    .line 422
    const-class v15, Ljava/io/File;

    .line 423
    .line 424
    invoke-virtual {v6, v15, v14, v10}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 425
    .line 426
    .line 427
    new-instance v10, LJ/r;

    .line 428
    .line 429
    const/4 v12, 0x1

    .line 430
    invoke-direct {v10, v12}, LJ/r;-><init>(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v6, v15, v0, v10}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 434
    .line 435
    .line 436
    new-instance v10, LP/a;

    .line 437
    .line 438
    invoke-direct {v10}, LP/a;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v6, v10, v15, v15, v5}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    new-instance v10, LJ/r;

    .line 445
    .line 446
    const/4 v12, 0x0

    .line 447
    invoke-direct {v10, v12}, LJ/r;-><init>(I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v6, v15, v4, v10}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 451
    .line 452
    .line 453
    invoke-static {}, LJ/T;->a()LJ/T;

    .line 454
    .line 455
    .line 456
    move-result-object v10

    .line 457
    invoke-virtual {v6, v15, v15, v10}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 458
    .line 459
    .line 460
    new-instance v10, Lcom/bumptech/glide/load/data/p;

    .line 461
    .line 462
    invoke-direct {v10, v3}, Lcom/bumptech/glide/load/data/p;-><init>(LG/b;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v6, v10}, Lcom/bumptech/glide/q;->n(Lcom/bumptech/glide/load/data/f;)V

    .line 466
    .line 467
    .line 468
    move-object/from16 v10, v30

    .line 469
    .line 470
    move-object/from16 v3, v31

    .line 471
    .line 472
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    const/4 v10, 0x1

    .line 477
    xor-int/2addr v3, v10

    .line 478
    if-eqz v3, :cond_4

    .line 479
    .line 480
    new-instance v3, Lcom/bumptech/glide/load/data/r;

    .line 481
    .line 482
    invoke-direct {v3}, Lcom/bumptech/glide/load/data/r;-><init>()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v6, v3}, Lcom/bumptech/glide/q;->n(Lcom/bumptech/glide/load/data/f;)V

    .line 486
    .line 487
    .line 488
    :cond_4
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 489
    .line 490
    move-object/from16 v10, v20

    .line 491
    .line 492
    invoke-virtual {v6, v3, v0, v10}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 493
    .line 494
    .line 495
    move-object/from16 v12, v22

    .line 496
    .line 497
    invoke-virtual {v6, v3, v4, v12}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 498
    .line 499
    .line 500
    move-object/from16 v19, v9

    .line 501
    .line 502
    const-class v9, Ljava/lang/Integer;

    .line 503
    .line 504
    invoke-virtual {v6, v9, v0, v10}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v6, v9, v4, v12}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 508
    .line 509
    .line 510
    move-object/from16 v10, v21

    .line 511
    .line 512
    invoke-virtual {v6, v9, v1, v10}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 513
    .line 514
    .line 515
    move-object/from16 v20, v2

    .line 516
    .line 517
    move-object/from16 v12, v23

    .line 518
    .line 519
    move-object/from16 v2, v32

    .line 520
    .line 521
    invoke-virtual {v6, v3, v2, v12}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v6, v9, v2, v12}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v6, v3, v1, v10}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 528
    .line 529
    .line 530
    new-instance v3, LJ/o;

    .line 531
    .line 532
    invoke-direct {v3}, LJ/o;-><init>()V

    .line 533
    .line 534
    .line 535
    const-class v9, Ljava/lang/String;

    .line 536
    .line 537
    invoke-virtual {v6, v9, v0, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 538
    .line 539
    .line 540
    new-instance v3, LJ/o;

    .line 541
    .line 542
    invoke-direct {v3}, LJ/o;-><init>()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v6, v1, v0, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 546
    .line 547
    .line 548
    new-instance v3, LJ/e;

    .line 549
    .line 550
    const/4 v10, 0x2

    .line 551
    invoke-direct {v3, v10}, LJ/e;-><init>(I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v6, v9, v0, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 555
    .line 556
    .line 557
    new-instance v3, LJ/i;

    .line 558
    .line 559
    invoke-direct {v3}, LJ/i;-><init>()V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v6, v9, v4, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 563
    .line 564
    .line 565
    new-instance v3, Landroidx/emoji2/text/d;

    .line 566
    .line 567
    const/4 v10, 0x3

    .line 568
    invoke-direct {v3, v10}, Landroidx/emoji2/text/d;-><init>(I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v6, v9, v2, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 572
    .line 573
    .line 574
    new-instance v3, LJ/b;

    .line 575
    .line 576
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 577
    .line 578
    .line 579
    move-result-object v9

    .line 580
    const/4 v10, 0x0

    .line 581
    invoke-direct {v3, v10, v9}, LJ/b;-><init>(ILjava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v6, v1, v0, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 585
    .line 586
    .line 587
    new-instance v3, LJ/E;

    .line 588
    .line 589
    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 590
    .line 591
    .line 592
    move-result-object v9

    .line 593
    const/4 v10, 0x1

    .line 594
    invoke-direct {v3, v10, v9}, LJ/E;-><init>(ILjava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v6, v1, v2, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 598
    .line 599
    .line 600
    new-instance v3, Lc/a;

    .line 601
    .line 602
    move-object/from16 v9, v28

    .line 603
    .line 604
    invoke-direct {v3, v9}, Lc/a;-><init>(Ljava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v6, v1, v0, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 608
    .line 609
    .line 610
    new-instance v3, Landroidx/core/view/accessibility/l;

    .line 611
    .line 612
    const/4 v10, 0x4

    .line 613
    invoke-direct {v3, v10, v9}, Landroidx/core/view/accessibility/l;-><init>(ILjava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v6, v1, v0, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 617
    .line 618
    .line 619
    const/16 v3, 0x1d

    .line 620
    .line 621
    move/from16 v10, v16

    .line 622
    .line 623
    if-lt v10, v3, :cond_5

    .line 624
    .line 625
    new-instance v3, LK/f;

    .line 626
    .line 627
    invoke-direct {v3, v9}, LK/f;-><init>(Landroid/content/Context;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v6, v1, v0, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 631
    .line 632
    .line 633
    new-instance v3, LK/e;

    .line 634
    .line 635
    invoke-direct {v3, v9}, LK/e;-><init>(Landroid/content/Context;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v6, v1, v4, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 639
    .line 640
    .line 641
    :cond_5
    new-instance v3, LJ/o;

    .line 642
    .line 643
    move/from16 v16, v10

    .line 644
    .line 645
    move-object/from16 v12, v27

    .line 646
    .line 647
    const/4 v10, 0x2

    .line 648
    invoke-direct {v3, v10, v12}, LJ/o;-><init>(ILjava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v6, v1, v0, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 652
    .line 653
    .line 654
    new-instance v3, LJ/b;

    .line 655
    .line 656
    const/4 v10, 0x3

    .line 657
    invoke-direct {v3, v10, v12}, LJ/b;-><init>(ILjava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v6, v1, v4, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 661
    .line 662
    .line 663
    new-instance v3, LJ/E;

    .line 664
    .line 665
    const/4 v4, 0x5

    .line 666
    invoke-direct {v3, v4, v12}, LJ/E;-><init>(ILjava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v6, v1, v2, v3}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 670
    .line 671
    .line 672
    new-instance v2, LJ/e;

    .line 673
    .line 674
    invoke-direct {v2, v10}, LJ/e;-><init>(I)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v6, v1, v0, v2}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 678
    .line 679
    .line 680
    new-instance v2, Lm/d;

    .line 681
    .line 682
    const/4 v3, 0x0

    .line 683
    invoke-direct {v2, v3}, Lm/d;-><init>(I)V

    .line 684
    .line 685
    .line 686
    const-class v4, Ljava/net/URL;

    .line 687
    .line 688
    invoke-virtual {v6, v4, v0, v2}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 689
    .line 690
    .line 691
    new-instance v2, LJ/E;

    .line 692
    .line 693
    const/4 v4, 0x2

    .line 694
    invoke-direct {v2, v4, v9}, LJ/E;-><init>(ILjava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v6, v1, v15, v2}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 698
    .line 699
    .line 700
    new-instance v2, Landroidx/core/view/accessibility/l;

    .line 701
    .line 702
    invoke-direct {v2, v10}, Landroidx/core/view/accessibility/l;-><init>(I)V

    .line 703
    .line 704
    .line 705
    const-class v4, LJ/u;

    .line 706
    .line 707
    invoke-virtual {v6, v4, v0, v2}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 708
    .line 709
    .line 710
    new-instance v2, LJ/e;

    .line 711
    .line 712
    invoke-direct {v2, v3}, LJ/e;-><init>(I)V

    .line 713
    .line 714
    .line 715
    const-class v3, [B

    .line 716
    .line 717
    invoke-virtual {v6, v3, v14, v2}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 718
    .line 719
    .line 720
    new-instance v2, LJ/e;

    .line 721
    .line 722
    const/4 v4, 0x1

    .line 723
    invoke-direct {v2, v4}, LJ/e;-><init>(I)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v6, v3, v0, v2}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 727
    .line 728
    .line 729
    invoke-static {}, LJ/T;->a()LJ/T;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v6, v1, v1, v0}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 734
    .line 735
    .line 736
    invoke-static {}, LJ/T;->a()LJ/T;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-virtual {v6, v11, v11, v0}, Lcom/bumptech/glide/q;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V

    .line 741
    .line 742
    .line 743
    new-instance v0, LO/h;

    .line 744
    .line 745
    invoke-direct {v0}, LO/h;-><init>()V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v6, v0, v11, v11, v5}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    new-instance v0, LR/e;

    .line 752
    .line 753
    invoke-direct {v0, v8}, LR/e;-><init>(Landroid/content/res/Resources;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v6, v7, v13, v0}, Lcom/bumptech/glide/q;->o(Ljava/lang/Class;Ljava/lang/Class;LR/c;)V

    .line 757
    .line 758
    .line 759
    move-object/from16 v0, v24

    .line 760
    .line 761
    invoke-virtual {v6, v7, v3, v0}, Lcom/bumptech/glide/q;->o(Ljava/lang/Class;Ljava/lang/Class;LR/c;)V

    .line 762
    .line 763
    .line 764
    new-instance v1, LR/b;

    .line 765
    .line 766
    move-object/from16 v2, v20

    .line 767
    .line 768
    move-object/from16 v4, v26

    .line 769
    .line 770
    invoke-direct {v1, v2, v0, v4}, LR/b;-><init>(LG/g;LR/a;Landroidx/emoji2/text/d;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v6, v11, v3, v1}, Lcom/bumptech/glide/q;->o(Ljava/lang/Class;Ljava/lang/Class;LR/c;)V

    .line 774
    .line 775
    .line 776
    move-object/from16 v0, v19

    .line 777
    .line 778
    invoke-virtual {v6, v0, v3, v4}, Lcom/bumptech/glide/q;->o(Ljava/lang/Class;Ljava/lang/Class;LR/c;)V

    .line 779
    .line 780
    .line 781
    const/16 v0, 0x17

    .line 782
    .line 783
    move/from16 v1, v16

    .line 784
    .line 785
    if-lt v1, v0, :cond_6

    .line 786
    .line 787
    invoke-static {v2}, LM/Y;->d(LG/g;)LM/Y;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    invoke-virtual {v6, v0, v14, v7, v5}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    new-instance v1, LM/L;

    .line 795
    .line 796
    invoke-direct {v1, v8, v0}, LM/L;-><init>(Landroid/content/res/Resources;LE/j;)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v6, v1, v14, v13, v5}, Lcom/bumptech/glide/q;->a(LE/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 807
    .line 808
    .line 809
    move-result v1

    .line 810
    if-eqz v1, :cond_7

    .line 811
    .line 812
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    check-cast v1, LS/b;

    .line 817
    .line 818
    move-object/from16 v2, p0

    .line 819
    .line 820
    :try_start_0
    invoke-interface {v1, v9, v2, v6}, LS/b;->a(Landroid/content/Context;Lcom/bumptech/glide/d;Lcom/bumptech/glide/q;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .line 822
    .line 823
    goto :goto_2

    .line 824
    :catch_0
    move-exception v0

    .line 825
    move-object v2, v0

    .line 826
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 827
    .line 828
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    const-string v3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    .line 837
    .line 838
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    .line 844
    .line 845
    throw v0

    .line 846
    :cond_7
    move-object/from16 v2, p0

    .line 847
    .line 848
    move-object/from16 v0, p2

    .line 849
    .line 850
    if-eqz v0, :cond_8

    .line 851
    .line 852
    invoke-virtual {v0, v9, v2, v6}, LS/c;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/d;Lcom/bumptech/glide/q;)V

    .line 853
    .line 854
    .line 855
    :cond_8
    return-object v6
.end method
