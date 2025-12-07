.class final Landroidx/core/provider/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroidx/core/provider/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/provider/d;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/provider/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/provider/f;->a:Landroidx/core/provider/d;

    .line 7
    .line 8
    return-void
.end method

.method static a(Landroid/content/Context;Landroidx/core/provider/g;)Landroidx/core/provider/n;
    .locals 25

    .line 1
    const/4 v7, 0x0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/g;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v8, 0x0

    .line 15
    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_12

    .line 20
    .line 21
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/g;->d()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_11

    .line 32
    .line 33
    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    const/16 v4, 0x40

    .line 36
    .line 37
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 42
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    array-length v4, v0

    .line 49
    const/4 v5, 0x0

    .line 50
    :goto_0
    if-ge v5, v4, :cond_0

    .line 51
    .line 52
    aget-object v6, v0, v5

    .line 53
    .line 54
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Landroidx/core/provider/f;->a:Landroidx/core/provider/d;

    .line 65
    .line 66
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/g;->a()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/g;->a()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-static {v1, v8}, Landroidx/core/content/res/j;->b(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_1
    const/4 v4, 0x0

    .line 85
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    const/4 v9, 0x1

    .line 90
    const/4 v10, 0x0

    .line 91
    if-ge v4, v5, :cond_6

    .line 92
    .line 93
    new-instance v5, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Ljava/util/Collection;

    .line 100
    .line 101
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-eq v6, v11, :cond_2

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_2
    const/4 v6, 0x0

    .line 119
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-ge v6, v11, :cond_4

    .line 124
    .line 125
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    check-cast v11, [B

    .line 130
    .line 131
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    check-cast v12, [B

    .line 136
    .line 137
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    if-nez v11, :cond_3

    .line 142
    .line 143
    :goto_4
    const/4 v5, 0x0

    .line 144
    goto :goto_5

    .line 145
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_4
    const/4 v5, 0x1

    .line 149
    :goto_5
    if-eqz v5, :cond_5

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    move-object v3, v10

    .line 156
    :goto_6
    if-nez v3, :cond_7

    .line 157
    .line 158
    new-instance v0, Landroidx/core/provider/n;

    .line 159
    .line 160
    invoke-direct {v0, v9, v10}, Landroidx/core/provider/n;-><init>(I[Landroidx/core/provider/o;)V

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_7
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 165
    .line 166
    const-string v11, "result_code"

    .line 167
    .line 168
    const-string v12, "font_italic"

    .line 169
    .line 170
    const-string v13, "font_weight"

    .line 171
    .line 172
    const-string v14, "font_ttc_index"

    .line 173
    .line 174
    const-string v15, "file_id"

    .line 175
    .line 176
    const-string v6, "_id"

    .line 177
    .line 178
    new-instance v16, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v1, Landroid/net/Uri$Builder;

    .line 184
    .line 185
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v2, "content"

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    new-instance v1, Landroid/net/Uri$Builder;

    .line 203
    .line 204
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v1, "file"

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const/4 v1, 0x7

    .line 226
    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    .line 227
    .line 228
    aput-object v6, v3, v8

    .line 229
    .line 230
    aput-object v15, v3, v9

    .line 231
    .line 232
    const/4 v1, 0x2

    .line 233
    aput-object v14, v3, v1

    .line 234
    .line 235
    const-string v1, "font_variation_settings"

    .line 236
    .line 237
    const/4 v2, 0x3

    .line 238
    aput-object v1, v3, v2

    .line 239
    .line 240
    const/4 v1, 0x4

    .line 241
    aput-object v13, v3, v1

    .line 242
    .line 243
    const/4 v1, 0x5

    .line 244
    aput-object v12, v3, v1

    .line 245
    .line 246
    const/4 v1, 0x6

    .line 247
    aput-object v11, v3, v1

    .line 248
    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    const-string v4, "query = ?"

    .line 254
    .line 255
    new-array v2, v9, [Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/g;->e()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v17

    .line 261
    aput-object v17, v2, v8

    .line 262
    .line 263
    const/16 v17, 0x0

    .line 264
    .line 265
    move-object/from16 v18, v2

    .line 266
    .line 267
    move-object v2, v5

    .line 268
    move-object v10, v5

    .line 269
    move-object/from16 v5, v18

    .line 270
    .line 271
    move-object v8, v6

    .line 272
    move-object/from16 v6, v17

    .line 273
    .line 274
    invoke-static/range {v1 .. v7}, Landroidx/core/provider/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    .line 275
    .line 276
    .line 277
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    if-eqz v1, :cond_d

    .line 279
    .line 280
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-lez v2, :cond_d

    .line 285
    .line 286
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    new-instance v3, Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    if-eqz v11, :cond_e

    .line 320
    .line 321
    const/4 v11, -0x1

    .line 322
    if-eq v2, v11, :cond_8

    .line 323
    .line 324
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 325
    .line 326
    .line 327
    move-result v12

    .line 328
    move/from16 v24, v12

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_8
    const/16 v24, 0x0

    .line 332
    .line 333
    :goto_8
    if-eq v6, v11, :cond_9

    .line 334
    .line 335
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 336
    .line 337
    .line 338
    move-result v12

    .line 339
    move/from16 v21, v12

    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_9
    const/16 v21, 0x0

    .line 343
    .line 344
    :goto_9
    if-ne v5, v11, :cond_a

    .line 345
    .line 346
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v12

    .line 350
    invoke-static {v10, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 351
    .line 352
    .line 353
    move-result-object v12

    .line 354
    goto :goto_a

    .line 355
    :cond_a
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 356
    .line 357
    .line 358
    move-result-wide v12

    .line 359
    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 360
    .line 361
    .line 362
    move-result-object v12

    .line 363
    :goto_a
    move-object/from16 v20, v12

    .line 364
    .line 365
    if-eq v7, v11, :cond_b

    .line 366
    .line 367
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 368
    .line 369
    .line 370
    move-result v12

    .line 371
    move/from16 v22, v12

    .line 372
    .line 373
    goto :goto_b

    .line 374
    :cond_b
    const/16 v12, 0x190

    .line 375
    .line 376
    const/16 v22, 0x190

    .line 377
    .line 378
    :goto_b
    if-eq v8, v11, :cond_c

    .line 379
    .line 380
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 381
    .line 382
    .line 383
    move-result v11

    .line 384
    if-ne v11, v9, :cond_c

    .line 385
    .line 386
    const/16 v23, 0x1

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_c
    const/16 v23, 0x0

    .line 390
    .line 391
    :goto_c
    new-instance v11, Landroidx/core/provider/o;

    .line 392
    .line 393
    move-object/from16 v19, v11

    .line 394
    .line 395
    invoke-direct/range {v19 .. v24}, Landroidx/core/provider/o;-><init>(Landroid/net/Uri;IIZI)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .line 400
    .line 401
    goto :goto_7

    .line 402
    :catchall_0
    move-exception v0

    .line 403
    move-object v10, v1

    .line 404
    goto :goto_d

    .line 405
    :cond_d
    move-object/from16 v3, v16

    .line 406
    .line 407
    :cond_e
    if-eqz v1, :cond_f

    .line 408
    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 410
    .line 411
    .line 412
    :cond_f
    const/4 v0, 0x0

    .line 413
    new-array v1, v0, [Landroidx/core/provider/o;

    .line 414
    .line 415
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, [Landroidx/core/provider/o;

    .line 420
    .line 421
    new-instance v2, Landroidx/core/provider/n;

    .line 422
    .line 423
    invoke-direct {v2, v0, v1}, Landroidx/core/provider/n;-><init>(I[Landroidx/core/provider/o;)V

    .line 424
    .line 425
    .line 426
    return-object v2

    .line 427
    :catchall_1
    move-exception v0

    .line 428
    const/4 v10, 0x0

    .line 429
    :goto_d
    if-eqz v10, :cond_10

    .line 430
    .line 431
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 432
    .line 433
    .line 434
    :cond_10
    throw v0

    .line 435
    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 436
    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const-string v3, "Found content provider "

    .line 440
    .line 441
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    const-string v2, ", but package was not "

    .line 448
    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/g;->d()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v0

    .line 467
    :cond_12
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 468
    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v3, "No package found for authority: "

    .line 472
    .line 473
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw v0
.end method
