.class final Landroidx/core/app/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/s;


# instance fields
.field private final a:Landroid/app/Notification$Builder;

.field private final b:Landroidx/core/app/w;

.field private final c:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/core/app/w;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/core/app/A;->c:Landroid/os/Bundle;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/core/app/A;->b:Landroidx/core/app/w;

    .line 17
    .line 18
    iget-object v0, p1, Landroidx/core/app/w;->a:Landroid/content/Context;

    .line 19
    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v1, 0x1a

    .line 23
    .line 24
    if-lt v0, v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, LB/g;->f()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Landroidx/core/app/w;->a:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v2, p1, Landroidx/core/app/w;->t:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v2}, LB/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    .line 41
    .line 42
    iget-object v2, p1, Landroidx/core/app/w;->a:Landroid/content/Context;

    .line 43
    .line 44
    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 48
    .line 49
    :goto_0
    iget-object v0, p1, Landroidx/core/app/w;->v:Landroid/app/Notification;

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 52
    .line 53
    iget-wide v3, v0, Landroid/app/Notification;->when:J

    .line 54
    .line 55
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget v3, v0, Landroid/app/Notification;->icon:I

    .line 60
    .line 61
    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    .line 62
    .line 63
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    .line 87
    .line 88
    iget v5, v0, Landroid/app/Notification;->ledOnMS:I

    .line 89
    .line 90
    iget v6, v0, Landroid/app/Notification;->ledOffMS:I

    .line 91
    .line 92
    invoke-virtual {v2, v3, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 97
    .line 98
    and-int/lit8 v3, v3, 0x2

    .line 99
    .line 100
    const/4 v5, 0x1

    .line 101
    const/4 v6, 0x0

    .line 102
    if-eqz v3, :cond_1

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const/4 v3, 0x0

    .line 107
    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 112
    .line 113
    and-int/lit8 v3, v3, 0x8

    .line 114
    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    const/4 v3, 0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    const/4 v3, 0x0

    .line 120
    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 125
    .line 126
    and-int/lit8 v3, v3, 0x10

    .line 127
    .line 128
    if-eqz v3, :cond_3

    .line 129
    .line 130
    const/4 v3, 0x1

    .line 131
    goto :goto_3

    .line 132
    :cond_3
    const/4 v3, 0x0

    .line 133
    :goto_3
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iget v3, v0, Landroid/app/Notification;->defaults:I

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iget-object v3, p1, Landroidx/core/app/w;->e:Ljava/lang/CharSequence;

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-object v3, p1, Landroidx/core/app/w;->f:Ljava/lang/CharSequence;

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v3, p1, Landroidx/core/app/w;->g:Landroid/app/PendingIntent;

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 172
    .line 173
    and-int/lit16 v3, v3, 0x80

    .line 174
    .line 175
    if-eqz v3, :cond_4

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_4
    const/4 v5, 0x0

    .line 179
    :goto_4
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iget v3, p1, Landroidx/core/app/w;->k:I

    .line 192
    .line 193
    iget v5, p1, Landroidx/core/app/w;->l:I

    .line 194
    .line 195
    iget-boolean v7, p1, Landroidx/core/app/w;->m:Z

    .line 196
    .line 197
    invoke-virtual {v2, v3, v5, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 198
    .line 199
    .line 200
    iget-object v2, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 201
    .line 202
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    iget v3, p1, Landroidx/core/app/w;->h:I

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 213
    .line 214
    .line 215
    iget-object v2, p1, Landroidx/core/app/w;->b:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    const/16 v5, 0x1d

    .line 226
    .line 227
    const/16 v7, 0x18

    .line 228
    .line 229
    const/16 v8, 0x1c

    .line 230
    .line 231
    if-eqz v3, :cond_10

    .line 232
    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    check-cast v3, Landroidx/core/app/u;

    .line 238
    .line 239
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 240
    .line 241
    invoke-virtual {v3}, Landroidx/core/app/u;->b()Landroidx/core/graphics/drawable/IconCompat;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    const/16 v11, 0x17

    .line 246
    .line 247
    if-lt v9, v11, :cond_6

    .line 248
    .line 249
    invoke-static {}, LB/i;->c()V

    .line 250
    .line 251
    .line 252
    if-eqz v10, :cond_5

    .line 253
    .line 254
    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->g()Landroid/graphics/drawable/Icon;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    goto :goto_6

    .line 259
    :cond_5
    move-object v9, v4

    .line 260
    :goto_6
    iget-object v10, v3, Landroidx/core/app/u;->i:Ljava/lang/CharSequence;

    .line 261
    .line 262
    iget-object v11, v3, Landroidx/core/app/u;->j:Landroid/app/PendingIntent;

    .line 263
    .line 264
    invoke-static {v9, v10, v11}, LE0/b;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    goto :goto_8

    .line 269
    :cond_6
    new-instance v9, Landroid/app/Notification$Action$Builder;

    .line 270
    .line 271
    if-eqz v10, :cond_7

    .line 272
    .line 273
    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->d()I

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    goto :goto_7

    .line 278
    :cond_7
    const/4 v10, 0x0

    .line 279
    :goto_7
    iget-object v11, v3, Landroidx/core/app/u;->i:Ljava/lang/CharSequence;

    .line 280
    .line 281
    iget-object v12, v3, Landroidx/core/app/u;->j:Landroid/app/PendingIntent;

    .line 282
    .line 283
    invoke-direct {v9, v10, v11, v12}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 284
    .line 285
    .line 286
    :goto_8
    invoke-virtual {v3}, Landroidx/core/app/u;->c()[Landroidx/core/app/M;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    if-eqz v10, :cond_a

    .line 291
    .line 292
    invoke-virtual {v3}, Landroidx/core/app/u;->c()[Landroidx/core/app/M;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    if-nez v10, :cond_8

    .line 297
    .line 298
    move-object v11, v4

    .line 299
    goto :goto_a

    .line 300
    :cond_8
    array-length v11, v10

    .line 301
    new-array v11, v11, [Landroid/app/RemoteInput;

    .line 302
    .line 303
    const/4 v12, 0x0

    .line 304
    :goto_9
    array-length v13, v10

    .line 305
    if-ge v12, v13, :cond_9

    .line 306
    .line 307
    aget-object v13, v10, v12

    .line 308
    .line 309
    invoke-static {v13}, Landroidx/core/app/M;->a(Landroidx/core/app/M;)Landroid/app/RemoteInput;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    aput-object v13, v11, v12

    .line 314
    .line 315
    add-int/lit8 v12, v12, 0x1

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_9
    :goto_a
    array-length v10, v11

    .line 319
    const/4 v12, 0x0

    .line 320
    :goto_b
    if-ge v12, v10, :cond_a

    .line 321
    .line 322
    aget-object v13, v11, v12

    .line 323
    .line 324
    invoke-virtual {v9, v13}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 325
    .line 326
    .line 327
    add-int/lit8 v12, v12, 0x1

    .line 328
    .line 329
    goto :goto_b

    .line 330
    :cond_a
    iget-object v10, v3, Landroidx/core/app/u;->a:Landroid/os/Bundle;

    .line 331
    .line 332
    if-eqz v10, :cond_b

    .line 333
    .line 334
    new-instance v11, Landroid/os/Bundle;

    .line 335
    .line 336
    invoke-direct {v11, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 337
    .line 338
    .line 339
    goto :goto_c

    .line 340
    :cond_b
    new-instance v11, Landroid/os/Bundle;

    .line 341
    .line 342
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 343
    .line 344
    .line 345
    :goto_c
    const-string v10, "android.support.allowGeneratedReplies"

    .line 346
    .line 347
    invoke-virtual {v3}, Landroidx/core/app/u;->a()Z

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    invoke-virtual {v11, v10, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    .line 353
    .line 354
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 355
    .line 356
    if-lt v10, v7, :cond_c

    .line 357
    .line 358
    invoke-virtual {v3}, Landroidx/core/app/u;->a()Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    invoke-static {v9, v7}, LB/d;->j(Landroid/app/Notification$Action$Builder;Z)V

    .line 363
    .line 364
    .line 365
    :cond_c
    const-string v7, "android.support.action.semanticAction"

    .line 366
    .line 367
    invoke-virtual {v3}, Landroidx/core/app/u;->d()I

    .line 368
    .line 369
    .line 370
    move-result v12

    .line 371
    invoke-virtual {v11, v7, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 372
    .line 373
    .line 374
    if-lt v10, v8, :cond_d

    .line 375
    .line 376
    invoke-virtual {v3}, Landroidx/core/app/u;->d()I

    .line 377
    .line 378
    .line 379
    move-result v7

    .line 380
    invoke-static {v9, v7}, LL/c;->i(Landroid/app/Notification$Action$Builder;I)V

    .line 381
    .line 382
    .line 383
    :cond_d
    if-lt v10, v5, :cond_e

    .line 384
    .line 385
    invoke-virtual {v3}, Landroidx/core/app/u;->f()Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    invoke-static {v9, v5}, Landroidx/appcompat/widget/a;->g(Landroid/app/Notification$Action$Builder;Z)V

    .line 390
    .line 391
    .line 392
    :cond_e
    const/16 v5, 0x1f

    .line 393
    .line 394
    if-lt v10, v5, :cond_f

    .line 395
    .line 396
    invoke-virtual {v3}, Landroidx/core/app/u;->e()Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    invoke-static {v9, v5}, Landroidx/core/app/z;->e(Landroid/app/Notification$Action$Builder;Z)V

    .line 401
    .line 402
    .line 403
    :cond_f
    iget-boolean v3, v3, Landroidx/core/app/u;->e:Z

    .line 404
    .line 405
    const-string v5, "android.support.action.showsUserInterface"

    .line 406
    .line 407
    invoke-virtual {v11, v5, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v9, v11}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 411
    .line 412
    .line 413
    iget-object v3, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 414
    .line 415
    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 420
    .line 421
    .line 422
    goto/16 :goto_5

    .line 423
    .line 424
    :cond_10
    iget-object v2, p1, Landroidx/core/app/w;->q:Landroid/os/Bundle;

    .line 425
    .line 426
    if-eqz v2, :cond_11

    .line 427
    .line 428
    iget-object v3, p0, Landroidx/core/app/A;->c:Landroid/os/Bundle;

    .line 429
    .line 430
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 431
    .line 432
    .line 433
    :cond_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 434
    .line 435
    iget-object v3, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 436
    .line 437
    iget-boolean v9, p1, Landroidx/core/app/w;->i:Z

    .line 438
    .line 439
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 440
    .line 441
    .line 442
    iget-object v3, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 443
    .line 444
    iget-boolean v9, p1, Landroidx/core/app/w;->o:Z

    .line 445
    .line 446
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    iget-object v9, p1, Landroidx/core/app/w;->n:Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 461
    .line 462
    .line 463
    iget-object v3, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 464
    .line 465
    iget-object v9, p1, Landroidx/core/app/w;->p:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    iget v9, p1, Landroidx/core/app/w;->r:I

    .line 472
    .line 473
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iget v9, p1, Landroidx/core/app/w;->s:I

    .line 478
    .line 479
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    iget-object v9, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 488
    .line 489
    iget-object v0, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 490
    .line 491
    invoke-virtual {v3, v9, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 492
    .line 493
    .line 494
    if-ge v2, v8, :cond_18

    .line 495
    .line 496
    iget-object v0, p1, Landroidx/core/app/w;->c:Ljava/util/ArrayList;

    .line 497
    .line 498
    if-nez v0, :cond_12

    .line 499
    .line 500
    move-object v2, v4

    .line 501
    goto :goto_f

    .line 502
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    if-eqz v3, :cond_15

    .line 520
    .line 521
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    check-cast v3, Landroidx/core/app/K;

    .line 526
    .line 527
    iget-object v9, v3, Landroidx/core/app/K;->c:Ljava/lang/String;

    .line 528
    .line 529
    if-eqz v9, :cond_13

    .line 530
    .line 531
    goto :goto_e

    .line 532
    :cond_13
    iget-object v9, v3, Landroidx/core/app/K;->a:Ljava/lang/CharSequence;

    .line 533
    .line 534
    if-eqz v9, :cond_14

    .line 535
    .line 536
    new-instance v9, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string v10, "name:"

    .line 539
    .line 540
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget-object v3, v3, Landroidx/core/app/K;->a:Ljava/lang/CharSequence;

    .line 544
    .line 545
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    goto :goto_e

    .line 553
    :cond_14
    const-string v9, ""

    .line 554
    .line 555
    :goto_e
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    goto :goto_d

    .line 559
    :cond_15
    :goto_f
    iget-object v0, p1, Landroidx/core/app/w;->w:Ljava/util/ArrayList;

    .line 560
    .line 561
    if-nez v2, :cond_16

    .line 562
    .line 563
    move-object v2, v0

    .line 564
    goto :goto_10

    .line 565
    :cond_16
    if-nez v0, :cond_17

    .line 566
    .line 567
    goto :goto_10

    .line 568
    :cond_17
    new-instance v3, Landroidx/collection/d;

    .line 569
    .line 570
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 571
    .line 572
    .line 573
    move-result v9

    .line 574
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 575
    .line 576
    .line 577
    move-result v10

    .line 578
    add-int/2addr v10, v9

    .line 579
    invoke-direct {v3, v10}, Landroidx/collection/d;-><init>(I)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v3, v2}, Landroidx/collection/d;->addAll(Ljava/util/Collection;)Z

    .line 583
    .line 584
    .line 585
    invoke-virtual {v3, v0}, Landroidx/collection/d;->addAll(Ljava/util/Collection;)Z

    .line 586
    .line 587
    .line 588
    new-instance v2, Ljava/util/ArrayList;

    .line 589
    .line 590
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 591
    .line 592
    .line 593
    goto :goto_10

    .line 594
    :cond_18
    iget-object v2, p1, Landroidx/core/app/w;->w:Ljava/util/ArrayList;

    .line 595
    .line 596
    :goto_10
    if-eqz v2, :cond_19

    .line 597
    .line 598
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-nez v0, :cond_19

    .line 603
    .line 604
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    if-eqz v2, :cond_19

    .line 613
    .line 614
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    check-cast v2, Ljava/lang/String;

    .line 619
    .line 620
    iget-object v3, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 621
    .line 622
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 623
    .line 624
    .line 625
    goto :goto_11

    .line 626
    :cond_19
    iget-object v0, p1, Landroidx/core/app/w;->d:Ljava/util/ArrayList;

    .line 627
    .line 628
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 629
    .line 630
    .line 631
    move-result v0

    .line 632
    if-lez v0, :cond_1e

    .line 633
    .line 634
    iget-object v0, p1, Landroidx/core/app/w;->q:Landroid/os/Bundle;

    .line 635
    .line 636
    if-nez v0, :cond_1a

    .line 637
    .line 638
    new-instance v0, Landroid/os/Bundle;

    .line 639
    .line 640
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 641
    .line 642
    .line 643
    iput-object v0, p1, Landroidx/core/app/w;->q:Landroid/os/Bundle;

    .line 644
    .line 645
    :cond_1a
    iget-object v0, p1, Landroidx/core/app/w;->q:Landroid/os/Bundle;

    .line 646
    .line 647
    const-string v2, "android.car.EXTENSIONS"

    .line 648
    .line 649
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    if-nez v0, :cond_1b

    .line 654
    .line 655
    new-instance v0, Landroid/os/Bundle;

    .line 656
    .line 657
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 658
    .line 659
    .line 660
    :cond_1b
    new-instance v3, Landroid/os/Bundle;

    .line 661
    .line 662
    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 663
    .line 664
    .line 665
    new-instance v9, Landroid/os/Bundle;

    .line 666
    .line 667
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 668
    .line 669
    .line 670
    const/4 v10, 0x0

    .line 671
    :goto_12
    iget-object v11, p1, Landroidx/core/app/w;->d:Ljava/util/ArrayList;

    .line 672
    .line 673
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 674
    .line 675
    .line 676
    move-result v11

    .line 677
    if-ge v10, v11, :cond_1c

    .line 678
    .line 679
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v11

    .line 683
    iget-object v12, p1, Landroidx/core/app/w;->d:Ljava/util/ArrayList;

    .line 684
    .line 685
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v12

    .line 689
    check-cast v12, Landroidx/core/app/u;

    .line 690
    .line 691
    invoke-static {v12}, Landroidx/core/app/B;->a(Landroidx/core/app/u;)Landroid/os/Bundle;

    .line 692
    .line 693
    .line 694
    move-result-object v12

    .line 695
    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 696
    .line 697
    .line 698
    add-int/lit8 v10, v10, 0x1

    .line 699
    .line 700
    goto :goto_12

    .line 701
    :cond_1c
    const-string v10, "invisible_actions"

    .line 702
    .line 703
    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 707
    .line 708
    .line 709
    iget-object v9, p1, Landroidx/core/app/w;->q:Landroid/os/Bundle;

    .line 710
    .line 711
    if-nez v9, :cond_1d

    .line 712
    .line 713
    new-instance v9, Landroid/os/Bundle;

    .line 714
    .line 715
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 716
    .line 717
    .line 718
    iput-object v9, p1, Landroidx/core/app/w;->q:Landroid/os/Bundle;

    .line 719
    .line 720
    :cond_1d
    iget-object v9, p1, Landroidx/core/app/w;->q:Landroid/os/Bundle;

    .line 721
    .line 722
    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 723
    .line 724
    .line 725
    iget-object v0, p0, Landroidx/core/app/A;->c:Landroid/os/Bundle;

    .line 726
    .line 727
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 728
    .line 729
    .line 730
    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 731
    .line 732
    if-lt v0, v7, :cond_1f

    .line 733
    .line 734
    iget-object v2, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 735
    .line 736
    iget-object v3, p1, Landroidx/core/app/w;->q:Landroid/os/Bundle;

    .line 737
    .line 738
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-static {v2}, LB/d;->k(Landroid/app/Notification$Builder;)V

    .line 743
    .line 744
    .line 745
    :cond_1f
    if-lt v0, v1, :cond_20

    .line 746
    .line 747
    iget-object v1, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 748
    .line 749
    invoke-static {v1}, LB/x;->b(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    invoke-static {v1}, LC/a;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-static {v1}, LB/w;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-static {v1}, LB/x;->q(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    invoke-static {v1}, LC/a;->g(Landroid/app/Notification$Builder;)V

    .line 766
    .line 767
    .line 768
    iget-object v1, p1, Landroidx/core/app/w;->t:Ljava/lang/String;

    .line 769
    .line 770
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 771
    .line 772
    .line 773
    move-result v1

    .line 774
    if-nez v1, :cond_20

    .line 775
    .line 776
    iget-object v1, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 777
    .line 778
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    invoke-virtual {v1, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 791
    .line 792
    .line 793
    :cond_20
    if-lt v0, v8, :cond_21

    .line 794
    .line 795
    iget-object v0, p1, Landroidx/core/app/w;->c:Ljava/util/ArrayList;

    .line 796
    .line 797
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    if-eqz v1, :cond_21

    .line 806
    .line 807
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    check-cast v1, Landroidx/core/app/K;

    .line 812
    .line 813
    iget-object v2, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 814
    .line 815
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    .line 817
    .line 818
    invoke-static {v1}, Landroidx/core/app/I;->b(Landroidx/core/app/K;)Landroid/app/Person;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    invoke-static {v2, v1}, LL/b;->h(Landroid/app/Notification$Builder;Landroid/app/Person;)V

    .line 823
    .line 824
    .line 825
    goto :goto_13

    .line 826
    :cond_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 827
    .line 828
    if-lt v0, v5, :cond_22

    .line 829
    .line 830
    iget-object v0, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 831
    .line 832
    iget-boolean p1, p1, Landroidx/core/app/w;->u:Z

    .line 833
    .line 834
    invoke-static {v0, p1}, LE0/g;->e(Landroid/app/Notification$Builder;Z)V

    .line 835
    .line 836
    .line 837
    iget-object p1, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 838
    .line 839
    invoke-static {p1}, Landroidx/appcompat/widget/a;->h(Landroid/app/Notification$Builder;)V

    .line 840
    .line 841
    .line 842
    :cond_22
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/core/app/A;->b:Landroidx/core/app/w;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/core/app/w;->j:Landroidx/core/app/y;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Landroidx/core/app/y;->b(Landroidx/core/app/s;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 13
    .line 14
    const/16 v4, 0x1a

    .line 15
    .line 16
    if-lt v2, v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/16 v4, 0x18

    .line 24
    .line 25
    if-lt v2, v4, :cond_2

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v2, p0, Landroidx/core/app/A;->c:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/core/app/w;->j:Landroidx/core/app/y;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :cond_3
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/core/app/y;->a(Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    return-object v2
.end method

.method public final b()Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/A;->a:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    return-object v0
.end method
