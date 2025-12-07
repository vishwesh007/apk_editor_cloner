.class final Lcom/google/android/gms/internal/play_billing/r0;
.super Lcom/google/android/gms/internal/play_billing/W;
.source "SourceFile"


# static fields
.field static final j:Lcom/google/android/gms/internal/play_billing/W;


# instance fields
.field private final transient g:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final transient h:[Ljava/lang/Object;

.field private final transient i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/r0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/play_billing/r0;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/r0;->j:Lcom/google/android/gms/internal/play_billing/W;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/W;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/r0;->g:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/r0;->h:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/r0;->i:I

    return-void
.end method

.method static e(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/V;)Lcom/google/android/gms/internal/play_billing/r0;
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/play_billing/r0;->j:Lcom/google/android/gms/internal/play_billing/W;

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/gms/internal/play_billing/r0;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-ne v0, v4, :cond_1

    .line 18
    .line 19
    aget-object v0, v1, v3

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    aget-object v0, v1, v4

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/play_billing/r0;

    .line 30
    .line 31
    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/r0;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    array-length v6, v1

    .line 36
    shr-int/2addr v6, v4

    .line 37
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_billing/r;->k(II)V

    .line 38
    .line 39
    .line 40
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/play_billing/a0;->k(I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ne v0, v4, :cond_2

    .line 45
    .line 46
    aget-object v0, v1, v3

    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    aget-object v0, v1, v4

    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto/16 :goto_b

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v8, v6, -0x1

    .line 60
    .line 61
    const/4 v9, -0x1

    .line 62
    const/16 v10, 0x80

    .line 63
    .line 64
    const/4 v11, 0x3

    .line 65
    if-gt v6, v10, :cond_8

    .line 66
    .line 67
    new-array v6, v6, [B

    .line 68
    .line 69
    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 70
    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v10, 0x0

    .line 74
    :goto_0
    if-ge v9, v0, :cond_6

    .line 75
    .line 76
    add-int v12, v10, v10

    .line 77
    .line 78
    add-int v13, v9, v9

    .line 79
    .line 80
    aget-object v14, v1, v13

    .line 81
    .line 82
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    xor-int/2addr v13, v4

    .line 86
    aget-object v13, v1, v13

    .line 87
    .line 88
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/q;->a(I)I

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    :goto_1
    and-int/2addr v15, v8

    .line 100
    aget-byte v7, v6, v15

    .line 101
    .line 102
    const/16 v4, 0xff

    .line 103
    .line 104
    and-int/2addr v7, v4

    .line 105
    if-ne v7, v4, :cond_4

    .line 106
    .line 107
    int-to-byte v4, v12

    .line 108
    aput-byte v4, v6, v15

    .line 109
    .line 110
    if-ge v10, v9, :cond_3

    .line 111
    .line 112
    aput-object v14, v1, v12

    .line 113
    .line 114
    xor-int/lit8 v4, v12, 0x1

    .line 115
    .line 116
    aput-object v13, v1, v4

    .line 117
    .line 118
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    aget-object v4, v1, v7

    .line 122
    .line 123
    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_5

    .line 128
    .line 129
    xor-int/lit8 v4, v7, 0x1

    .line 130
    .line 131
    new-instance v5, Lcom/google/android/gms/internal/play_billing/U;

    .line 132
    .line 133
    aget-object v7, v1, v4

    .line 134
    .line 135
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-direct {v5, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    aput-object v13, v1, v4

    .line 142
    .line 143
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 144
    .line 145
    const/4 v4, 0x1

    .line 146
    goto :goto_0

    .line 147
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 148
    .line 149
    const/4 v4, 0x1

    .line 150
    goto :goto_1

    .line 151
    :cond_6
    if-ne v10, v0, :cond_7

    .line 152
    .line 153
    move-object v5, v6

    .line 154
    goto/16 :goto_b

    .line 155
    .line 156
    :cond_7
    new-array v4, v11, [Ljava/lang/Object;

    .line 157
    .line 158
    aput-object v6, v4, v3

    .line 159
    .line 160
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const/4 v7, 0x1

    .line 165
    aput-object v6, v4, v7

    .line 166
    .line 167
    const/4 v6, 0x2

    .line 168
    aput-object v5, v4, v6

    .line 169
    .line 170
    :goto_3
    move-object v5, v4

    .line 171
    goto/16 :goto_b

    .line 172
    .line 173
    :cond_8
    const v4, 0x8000

    .line 174
    .line 175
    .line 176
    if-gt v6, v4, :cond_e

    .line 177
    .line 178
    new-array v4, v6, [S

    .line 179
    .line 180
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([SS)V

    .line 181
    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    const/4 v7, 0x0

    .line 185
    :goto_4
    if-ge v6, v0, :cond_c

    .line 186
    .line 187
    add-int v9, v7, v7

    .line 188
    .line 189
    add-int v10, v6, v6

    .line 190
    .line 191
    aget-object v12, v1, v10

    .line 192
    .line 193
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    const/4 v13, 0x1

    .line 197
    xor-int/2addr v10, v13

    .line 198
    aget-object v10, v1, v10

    .line 199
    .line 200
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/q;->a(I)I

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    :goto_5
    and-int/2addr v13, v8

    .line 212
    aget-short v14, v4, v13

    .line 213
    .line 214
    int-to-char v14, v14

    .line 215
    const v15, 0xffff

    .line 216
    .line 217
    .line 218
    if-ne v14, v15, :cond_a

    .line 219
    .line 220
    int-to-short v14, v9

    .line 221
    aput-short v14, v4, v13

    .line 222
    .line 223
    if-ge v7, v6, :cond_9

    .line 224
    .line 225
    aput-object v12, v1, v9

    .line 226
    .line 227
    xor-int/lit8 v9, v9, 0x1

    .line 228
    .line 229
    aput-object v10, v1, v9

    .line 230
    .line 231
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_a
    aget-object v15, v1, v14

    .line 235
    .line 236
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v15

    .line 240
    if-eqz v15, :cond_b

    .line 241
    .line 242
    xor-int/lit8 v5, v14, 0x1

    .line 243
    .line 244
    new-instance v9, Lcom/google/android/gms/internal/play_billing/U;

    .line 245
    .line 246
    aget-object v13, v1, v5

    .line 247
    .line 248
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    invoke-direct {v9, v12, v10, v13}, Lcom/google/android/gms/internal/play_billing/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    aput-object v10, v1, v5

    .line 255
    .line 256
    move-object v5, v9

    .line 257
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_c
    if-ne v7, v0, :cond_d

    .line 264
    .line 265
    goto :goto_a

    .line 266
    :cond_d
    new-array v6, v11, [Ljava/lang/Object;

    .line 267
    .line 268
    aput-object v4, v6, v3

    .line 269
    .line 270
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    const/4 v7, 0x1

    .line 275
    aput-object v4, v6, v7

    .line 276
    .line 277
    const/4 v4, 0x2

    .line 278
    aput-object v5, v6, v4

    .line 279
    .line 280
    goto :goto_c

    .line 281
    :cond_e
    const/4 v7, 0x1

    .line 282
    new-array v4, v6, [I

    .line 283
    .line 284
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([II)V

    .line 285
    .line 286
    .line 287
    const/4 v6, 0x0

    .line 288
    const/4 v10, 0x0

    .line 289
    :goto_7
    if-ge v6, v0, :cond_12

    .line 290
    .line 291
    add-int v12, v10, v10

    .line 292
    .line 293
    add-int v13, v6, v6

    .line 294
    .line 295
    aget-object v14, v1, v13

    .line 296
    .line 297
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    xor-int/2addr v13, v7

    .line 301
    aget-object v7, v1, v13

    .line 302
    .line 303
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/q;->a(I)I

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    :goto_8
    and-int/2addr v13, v8

    .line 315
    aget v15, v4, v13

    .line 316
    .line 317
    if-ne v15, v9, :cond_10

    .line 318
    .line 319
    aput v12, v4, v13

    .line 320
    .line 321
    if-ge v10, v6, :cond_f

    .line 322
    .line 323
    aput-object v14, v1, v12

    .line 324
    .line 325
    xor-int/lit8 v12, v12, 0x1

    .line 326
    .line 327
    aput-object v7, v1, v12

    .line 328
    .line 329
    :cond_f
    add-int/lit8 v10, v10, 0x1

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_10
    aget-object v9, v1, v15

    .line 333
    .line 334
    invoke-virtual {v14, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v9

    .line 338
    if-eqz v9, :cond_11

    .line 339
    .line 340
    xor-int/lit8 v5, v15, 0x1

    .line 341
    .line 342
    new-instance v9, Lcom/google/android/gms/internal/play_billing/U;

    .line 343
    .line 344
    aget-object v12, v1, v5

    .line 345
    .line 346
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    invoke-direct {v9, v14, v7, v12}, Lcom/google/android/gms/internal/play_billing/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    aput-object v7, v1, v5

    .line 353
    .line 354
    move-object v5, v9

    .line 355
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 356
    .line 357
    const/4 v7, 0x1

    .line 358
    const/4 v9, -0x1

    .line 359
    goto :goto_7

    .line 360
    :cond_11
    add-int/lit8 v13, v13, 0x1

    .line 361
    .line 362
    const/4 v9, -0x1

    .line 363
    goto :goto_8

    .line 364
    :cond_12
    if-ne v10, v0, :cond_13

    .line 365
    .line 366
    :goto_a
    goto/16 :goto_3

    .line 367
    .line 368
    :goto_b
    const/4 v4, 0x2

    .line 369
    goto :goto_d

    .line 370
    :cond_13
    new-array v6, v11, [Ljava/lang/Object;

    .line 371
    .line 372
    aput-object v4, v6, v3

    .line 373
    .line 374
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    const/4 v7, 0x1

    .line 379
    aput-object v4, v6, v7

    .line 380
    .line 381
    const/4 v4, 0x2

    .line 382
    aput-object v5, v6, v4

    .line 383
    .line 384
    :goto_c
    move-object v5, v6

    .line 385
    :goto_d
    nop

    .line 386
    instance-of v6, v5, [Ljava/lang/Object;

    .line 387
    .line 388
    if-eqz v6, :cond_15

    .line 389
    .line 390
    check-cast v5, [Ljava/lang/Object;

    .line 391
    .line 392
    aget-object v0, v5, v4

    .line 393
    .line 394
    check-cast v0, Lcom/google/android/gms/internal/play_billing/U;

    .line 395
    .line 396
    if-eqz v2, :cond_14

    .line 397
    .line 398
    iput-object v0, v2, Lcom/google/android/gms/internal/play_billing/V;->c:Lcom/google/android/gms/internal/play_billing/U;

    .line 399
    .line 400
    aget-object v0, v5, v3

    .line 401
    .line 402
    const/4 v2, 0x1

    .line 403
    aget-object v2, v5, v2

    .line 404
    .line 405
    check-cast v2, Ljava/lang/Integer;

    .line 406
    .line 407
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    add-int v3, v2, v2

    .line 412
    .line 413
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    move-object v5, v0

    .line 418
    move v0, v2

    .line 419
    goto :goto_e

    .line 420
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/U;->a()Ljava/lang/IllegalArgumentException;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    throw v0

    .line 425
    :cond_15
    :goto_e
    new-instance v2, Lcom/google/android/gms/internal/play_billing/r0;

    .line 426
    .line 427
    invoke-direct {v2, v0, v5, v1}, Lcom/google/android/gms/internal/play_billing/r0;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    return-object v2
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/play_billing/N;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/q0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/r0;->h:[Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, p0, Lcom/google/android/gms/internal/play_billing/r0;->i:I

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/q0;-><init>(II[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/play_billing/a0;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/o0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/r0;->h:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/r0;->i:I

    .line 6
    .line 7
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/play_billing/o0;-><init>(Lcom/google/android/gms/internal/play_billing/W;[Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method final d()Lcom/google/android/gms/internal/play_billing/a0;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/q0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/r0;->h:[Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, p0, Lcom/google/android/gms/internal/play_billing/r0;->i:I

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/q0;-><init>(II[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/play_billing/p0;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/p0;-><init>(Lcom/google/android/gms/internal/play_billing/W;Lcom/google/android/gms/internal/play_billing/T;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    :cond_0
    :goto_0
    move-object p1, v0

    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_1
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/r0;->i:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/r0;->h:[Ljava/lang/Object;

    .line 11
    .line 12
    if-ne v2, v1, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget-object v2, v3, v2

    .line 16
    .line 17
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    aget-object p1, v3, v1

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/r0;->g:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of v4, v2, [B

    .line 39
    .line 40
    const/4 v5, -0x1

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    move-object v4, v2

    .line 44
    check-cast v4, [B

    .line 45
    .line 46
    array-length v2, v4

    .line 47
    add-int/lit8 v6, v2, -0x1

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/q;->a(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :goto_1
    and-int/2addr v2, v6

    .line 58
    aget-byte v5, v4, v2

    .line 59
    .line 60
    const/16 v7, 0xff

    .line 61
    .line 62
    and-int/2addr v5, v7

    .line 63
    if-ne v5, v7, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    aget-object v7, v3, v5

    .line 67
    .line 68
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    xor-int/lit8 p1, v5, 0x1

    .line 75
    .line 76
    aget-object p1, v3, p1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    instance-of v4, v2, [S

    .line 83
    .line 84
    if-eqz v4, :cond_9

    .line 85
    .line 86
    move-object v4, v2

    .line 87
    check-cast v4, [S

    .line 88
    .line 89
    array-length v2, v4

    .line 90
    add-int/lit8 v6, v2, -0x1

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/q;->a(I)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :goto_2
    and-int/2addr v2, v6

    .line 101
    aget-short v5, v4, v2

    .line 102
    .line 103
    int-to-char v5, v5

    .line 104
    const v7, 0xffff

    .line 105
    .line 106
    .line 107
    if-ne v5, v7, :cond_7

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    aget-object v7, v3, v5

    .line 111
    .line 112
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_8

    .line 117
    .line 118
    xor-int/lit8 p1, v5, 0x1

    .line 119
    .line 120
    aget-object p1, v3, p1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_9
    check-cast v2, [I

    .line 127
    .line 128
    array-length v4, v2

    .line 129
    add-int/2addr v4, v5

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/q;->a(I)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    :goto_3
    and-int/2addr v6, v4

    .line 139
    aget v7, v2, v6

    .line 140
    .line 141
    if-ne v7, v5, :cond_a

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    aget-object v8, v3, v7

    .line 146
    .line 147
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_c

    .line 152
    .line 153
    xor-int/lit8 p1, v7, 0x1

    .line 154
    .line 155
    aget-object p1, v3, p1

    .line 156
    .line 157
    :goto_4
    if-nez p1, :cond_b

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_b
    return-object p1

    .line 161
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_3
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/r0;->i:I

    return v0
.end method
