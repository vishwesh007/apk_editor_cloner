.class final Lcom/android/billingclient/api/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:LB/h;

.field final synthetic b:Lcom/android/billingclient/api/c;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/c;LB/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/v;->a:LB/h;

    return-void
.end method

.method private final c(Lcom/android/billingclient/api/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/billingclient/api/c;->n0(Lcom/android/billingclient/api/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/billingclient/api/c;->y(Lcom/android/billingclient/api/c;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, p0, Lcom/android/billingclient/api/v;->a:LB/h;

    .line 21
    .line 22
    invoke-interface {v0, p1}, LB/h;->onBillingSetupFinished(Lcom/android/billingclient/api/i;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method


# virtual methods
.method final synthetic a()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/billingclient/api/c;->n0(Lcom/android/billingclient/api/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/billingclient/api/c;->y(Lcom/android/billingclient/api/c;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto/16 :goto_1a

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/android/billingclient/api/c;->y(Lcom/android/billingclient/api/c;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    new-instance v3, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "accountName"

    .line 40
    .line 41
    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 45
    .line 46
    invoke-static {v4}, Lcom/android/billingclient/api/c;->q0(Lcom/android/billingclient/api/c;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v4}, Lcom/android/billingclient/api/c;->m0(Lcom/android/billingclient/api/c;)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    invoke-static {v3, v5, v6, v7}, Lcom/google/android/gms/internal/play_billing/L0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v3, v0

    .line 63
    :goto_0
    const/4 v4, 0x6

    .line 64
    const/4 v5, 0x1

    .line 65
    const/4 v6, 0x0

    .line 66
    :try_start_1
    iget-object v7, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 67
    .line 68
    invoke-static {v7}, Lcom/android/billingclient/api/c;->n0(Lcom/android/billingclient/api/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :try_start_2
    iget-object v8, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 74
    .line 75
    invoke-static {v8}, Lcom/android/billingclient/api/c;->k0(Lcom/android/billingclient/api/c;)Lcom/google/android/gms/internal/play_billing/d;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    if-nez v8, :cond_2

    .line 81
    .line 82
    :try_start_3
    iget-object v2, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 83
    .line 84
    invoke-static {v2, v6}, Lcom/android/billingclient/api/c;->x(Lcom/android/billingclient/api/c;I)V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 88
    .line 89
    sget-object v3, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 90
    .line 91
    const/16 v7, 0x77

    .line 92
    .line 93
    invoke-static {v2, v7, v3}, Lcom/android/billingclient/api/c;->S(Lcom/android/billingclient/api/c;ILcom/android/billingclient/api/i;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v3}, Lcom/android/billingclient/api/v;->c(Lcom/android/billingclient/api/i;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_1a

    .line 100
    .line 101
    :cond_2
    iget-object v7, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 102
    .line 103
    invoke-static {v7}, Lcom/android/billingclient/api/c;->a0(Lcom/android/billingclient/api/c;)Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    const/16 v9, 0x17

    .line 112
    .line 113
    const/16 v10, 0x17

    .line 114
    .line 115
    const/4 v11, 0x3

    .line 116
    :goto_1
    if-lt v10, v2, :cond_5

    .line 117
    .line 118
    if-nez v3, :cond_3

    .line 119
    .line 120
    const-string v11, "subs"

    .line 121
    .line 122
    invoke-interface {v8, v10, v7, v11}, Lcom/google/android/gms/internal/play_billing/d;->p(ILjava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    const-string v11, "subs"

    .line 128
    .line 129
    invoke-interface {v8, v10, v7, v11, v3}, Lcom/google/android/gms/internal/play_billing/d;->h(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    :goto_2
    if-nez v11, :cond_4

    .line 134
    .line 135
    const-string v12, "BillingClient"

    .line 136
    .line 137
    new-instance v13, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v14, "highestLevelSupportedForSubs: "

    .line 143
    .line 144
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_4
    add-int/lit8 v10, v10, -0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    const/4 v10, 0x0

    .line 162
    :goto_3
    iget-object v12, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 163
    .line 164
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    iget-object v12, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 168
    .line 169
    if-lt v10, v2, :cond_6

    .line 170
    .line 171
    const/4 v13, 0x1

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    const/4 v13, 0x0

    .line 174
    :goto_4
    invoke-static {v12, v13}, Lcom/android/billingclient/api/c;->w(Lcom/android/billingclient/api/c;Z)V

    .line 175
    .line 176
    .line 177
    const/16 v12, 0x9

    .line 178
    .line 179
    if-ge v10, v2, :cond_7

    .line 180
    .line 181
    const-string v10, "BillingClient"

    .line 182
    .line 183
    const-string v13, "In-app billing API does not support subscription on this device."

    .line 184
    .line 185
    invoke-static {v10, v13}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const/16 v10, 0x9

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_7
    const/4 v10, 0x1

    .line 192
    :goto_5
    if-lt v9, v2, :cond_a

    .line 193
    .line 194
    if-nez v3, :cond_8

    .line 195
    .line 196
    const-string v11, "inapp"

    .line 197
    .line 198
    invoke-interface {v8, v9, v7, v11}, Lcom/google/android/gms/internal/play_billing/d;->p(ILjava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    goto :goto_6

    .line 203
    :cond_8
    const-string v11, "inapp"

    .line 204
    .line 205
    invoke-interface {v8, v9, v7, v11, v3}, Lcom/google/android/gms/internal/play_billing/d;->h(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    :goto_6
    if-nez v11, :cond_9

    .line 210
    .line 211
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 212
    .line 213
    invoke-static {v3, v9}, Lcom/android/billingclient/api/c;->l(Lcom/android/billingclient/api/c;I)V

    .line 214
    .line 215
    .line 216
    const-string v3, "BillingClient"

    .line 217
    .line 218
    iget-object v7, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 219
    .line 220
    invoke-static {v7}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    new-instance v8, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v9, "mHighestLevelSupportedForInApp: "

    .line 230
    .line 231
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_9
    add-int/lit8 v9, v9, -0x1

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_a
    :goto_7
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 249
    .line 250
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 251
    .line 252
    .line 253
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 254
    .line 255
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 256
    .line 257
    .line 258
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 259
    .line 260
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    const/16 v8, 0x15

    .line 265
    .line 266
    if-lt v7, v8, :cond_b

    .line 267
    .line 268
    const/4 v7, 0x1

    .line 269
    goto :goto_8

    .line 270
    :cond_b
    const/4 v7, 0x0

    .line 271
    :goto_8
    invoke-static {v3, v7}, Lcom/android/billingclient/api/c;->s(Lcom/android/billingclient/api/c;Z)V

    .line 272
    .line 273
    .line 274
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 275
    .line 276
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 277
    .line 278
    .line 279
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 280
    .line 281
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    const/16 v8, 0x13

    .line 286
    .line 287
    if-lt v7, v8, :cond_c

    .line 288
    .line 289
    const/4 v7, 0x1

    .line 290
    goto :goto_9

    .line 291
    :cond_c
    const/4 v7, 0x0

    .line 292
    :goto_9
    invoke-static {v3, v7}, Lcom/android/billingclient/api/c;->r(Lcom/android/billingclient/api/c;Z)V

    .line 293
    .line 294
    .line 295
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 296
    .line 297
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 298
    .line 299
    .line 300
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 301
    .line 302
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    const/16 v8, 0x11

    .line 307
    .line 308
    if-lt v7, v8, :cond_d

    .line 309
    .line 310
    const/4 v7, 0x1

    .line 311
    goto :goto_a

    .line 312
    :cond_d
    const/4 v7, 0x0

    .line 313
    :goto_a
    invoke-static {v3, v7}, Lcom/android/billingclient/api/c;->q(Lcom/android/billingclient/api/c;Z)V

    .line 314
    .line 315
    .line 316
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 317
    .line 318
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    const/16 v8, 0x10

    .line 323
    .line 324
    if-lt v7, v8, :cond_e

    .line 325
    .line 326
    const/4 v7, 0x1

    .line 327
    goto :goto_b

    .line 328
    :cond_e
    const/4 v7, 0x0

    .line 329
    :goto_b
    invoke-static {v3, v7}, Lcom/android/billingclient/api/c;->p(Lcom/android/billingclient/api/c;Z)V

    .line 330
    .line 331
    .line 332
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 333
    .line 334
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    const/16 v8, 0xf

    .line 339
    .line 340
    if-lt v7, v8, :cond_f

    .line 341
    .line 342
    const/4 v7, 0x1

    .line 343
    goto :goto_c

    .line 344
    :cond_f
    const/4 v7, 0x0

    .line 345
    :goto_c
    invoke-static {v3, v7}, Lcom/android/billingclient/api/c;->o(Lcom/android/billingclient/api/c;Z)V

    .line 346
    .line 347
    .line 348
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 349
    .line 350
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    const/16 v8, 0xe

    .line 355
    .line 356
    if-lt v7, v8, :cond_10

    .line 357
    .line 358
    const/4 v7, 0x1

    .line 359
    goto :goto_d

    .line 360
    :cond_10
    const/4 v7, 0x0

    .line 361
    :goto_d
    invoke-static {v3, v7}, Lcom/android/billingclient/api/c;->n(Lcom/android/billingclient/api/c;Z)V

    .line 362
    .line 363
    .line 364
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 365
    .line 366
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 367
    .line 368
    .line 369
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 370
    .line 371
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 372
    .line 373
    .line 374
    move-result v7

    .line 375
    const/16 v8, 0xa

    .line 376
    .line 377
    if-lt v7, v8, :cond_11

    .line 378
    .line 379
    const/4 v7, 0x1

    .line 380
    goto :goto_e

    .line 381
    :cond_11
    const/4 v7, 0x0

    .line 382
    :goto_e
    invoke-static {v3, v7}, Lcom/android/billingclient/api/c;->m(Lcom/android/billingclient/api/c;Z)V

    .line 383
    .line 384
    .line 385
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 386
    .line 387
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    if-lt v7, v12, :cond_12

    .line 392
    .line 393
    const/4 v7, 0x1

    .line 394
    goto :goto_f

    .line 395
    :cond_12
    const/4 v7, 0x0

    .line 396
    :goto_f
    invoke-static {v3, v7}, Lcom/android/billingclient/api/c;->u(Lcom/android/billingclient/api/c;Z)V

    .line 397
    .line 398
    .line 399
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 400
    .line 401
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 402
    .line 403
    .line 404
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 405
    .line 406
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 407
    .line 408
    .line 409
    move-result v7

    .line 410
    if-lt v7, v4, :cond_13

    .line 411
    .line 412
    const/4 v7, 0x1

    .line 413
    goto :goto_10

    .line 414
    :cond_13
    const/4 v7, 0x0

    .line 415
    :goto_10
    invoke-static {v3, v7}, Lcom/android/billingclient/api/c;->t(Lcom/android/billingclient/api/c;Z)V

    .line 416
    .line 417
    .line 418
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 419
    .line 420
    invoke-static {v3}, Lcom/android/billingclient/api/c;->X(Lcom/android/billingclient/api/c;)I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    if-ge v3, v2, :cond_14

    .line 425
    .line 426
    const-string v3, "BillingClient"

    .line 427
    .line 428
    const-string v7, "In-app billing API version 3 is not supported on this device."

    .line 429
    .line 430
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    const/16 v10, 0x24

    .line 434
    .line 435
    :cond_14
    if-nez v11, :cond_18

    .line 436
    .line 437
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 438
    .line 439
    invoke-static {v3}, Lcom/android/billingclient/api/c;->n0(Lcom/android/billingclient/api/c;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 444
    :try_start_4
    iget-object v7, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 445
    .line 446
    invoke-static {v7}, Lcom/android/billingclient/api/c;->y(Lcom/android/billingclient/api/c;)I

    .line 447
    .line 448
    .line 449
    move-result v7

    .line 450
    if-ne v7, v2, :cond_15

    .line 451
    .line 452
    monitor-exit v3

    .line 453
    goto/16 :goto_1a

    .line 454
    .line 455
    :cond_15
    if-ne v1, v5, :cond_16

    .line 456
    .line 457
    const/4 v2, 0x0

    .line 458
    goto :goto_11

    .line 459
    :cond_16
    const/4 v2, 0x1

    .line 460
    :goto_11
    iget-object v7, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 461
    .line 462
    const/4 v8, 0x2

    .line 463
    invoke-static {v7, v8}, Lcom/android/billingclient/api/c;->x(Lcom/android/billingclient/api/c;I)V

    .line 464
    .line 465
    .line 466
    iget-object v7, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 467
    .line 468
    invoke-static {v7}, Lcom/android/billingclient/api/c;->e0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/M;

    .line 469
    .line 470
    .line 471
    move-result-object v7

    .line 472
    if-eqz v7, :cond_17

    .line 473
    .line 474
    iget-object v7, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 475
    .line 476
    invoke-static {v7}, Lcom/android/billingclient/api/c;->e0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/M;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    goto :goto_12

    .line 481
    :cond_17
    move-object v7, v0

    .line 482
    :goto_12
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 483
    if-eqz v7, :cond_1a

    .line 484
    .line 485
    :try_start_5
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 486
    .line 487
    invoke-static {v3}, Lcom/android/billingclient/api/c;->P(Lcom/android/billingclient/api/c;)Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    invoke-virtual {v7, v3}, Lcom/android/billingclient/api/M;->e(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 492
    .line 493
    .line 494
    goto :goto_14

    .line 495
    :catchall_0
    move-exception v2

    .line 496
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 497
    :try_start_7
    throw v2

    .line 498
    :cond_18
    if-ne v1, v5, :cond_19

    .line 499
    .line 500
    const/4 v2, 0x0

    .line 501
    goto :goto_13

    .line 502
    :cond_19
    const/4 v2, 0x1

    .line 503
    :goto_13
    iget-object v3, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 504
    .line 505
    invoke-static {v3, v6}, Lcom/android/billingclient/api/c;->x(Lcom/android/billingclient/api/c;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 506
    .line 507
    .line 508
    :cond_1a
    :goto_14
    move v4, v11

    .line 509
    goto :goto_17

    .line 510
    :catchall_1
    move-exception v2

    .line 511
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 512
    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 513
    :catch_0
    move-exception v2

    .line 514
    if-ne v1, v5, :cond_1b

    .line 515
    .line 516
    const/4 v1, 0x0

    .line 517
    goto :goto_15

    .line 518
    :cond_1b
    const/4 v1, 0x1

    .line 519
    :goto_15
    const-string v3, "BillingClient"

    .line 520
    .line 521
    const-string v7, "Exception while checking if billing is supported; try to reconnect"

    .line 522
    .line 523
    invoke-static {v3, v7, v2}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    .line 525
    .line 526
    instance-of v3, v2, Landroid/os/DeadObjectException;

    .line 527
    .line 528
    const/16 v7, 0x2a

    .line 529
    .line 530
    if-eqz v3, :cond_1c

    .line 531
    .line 532
    const/16 v3, 0x65

    .line 533
    .line 534
    const/16 v10, 0x65

    .line 535
    .line 536
    goto :goto_16

    .line 537
    :cond_1c
    instance-of v3, v2, Landroid/os/RemoteException;

    .line 538
    .line 539
    if-eqz v3, :cond_1d

    .line 540
    .line 541
    const/16 v3, 0x64

    .line 542
    .line 543
    const/16 v10, 0x64

    .line 544
    .line 545
    goto :goto_16

    .line 546
    :cond_1d
    instance-of v3, v2, Ljava/lang/SecurityException;

    .line 547
    .line 548
    if-eqz v3, :cond_1e

    .line 549
    .line 550
    const/16 v3, 0x66

    .line 551
    .line 552
    const/16 v10, 0x66

    .line 553
    .line 554
    goto :goto_16

    .line 555
    :cond_1e
    const/16 v10, 0x2a

    .line 556
    .line 557
    :goto_16
    if-ne v10, v7, :cond_1f

    .line 558
    .line 559
    invoke-static {v2}, Lcom/android/billingclient/api/D;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    :cond_1f
    iget-object v2, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 564
    .line 565
    invoke-static {v2, v6}, Lcom/android/billingclient/api/c;->x(Lcom/android/billingclient/api/c;I)V

    .line 566
    .line 567
    .line 568
    move v2, v1

    .line 569
    :goto_17
    if-nez v4, :cond_21

    .line 570
    .line 571
    if-eq v5, v2, :cond_20

    .line 572
    .line 573
    :try_start_a
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 574
    .line 575
    invoke-static {v0}, Lcom/android/billingclient/api/c;->U(Lcom/android/billingclient/api/c;)V

    .line 576
    .line 577
    .line 578
    goto :goto_18

    .line 579
    :cond_20
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 580
    .line 581
    invoke-static {v0}, Lcom/android/billingclient/api/c;->f0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/E;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/E3;->v()Lcom/google/android/gms/internal/play_billing/D3;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j3;->y()Lcom/google/android/gms/internal/play_billing/h3;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/play_billing/h3;->o(I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/D3;->m(Lcom/google/android/gms/internal/play_billing/h3;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    check-cast v1, Lcom/google/android/gms/internal/play_billing/E3;

    .line 604
    .line 605
    check-cast v0, Lcom/android/billingclient/api/k;

    .line 606
    .line 607
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/k;->i(Lcom/google/android/gms/internal/play_billing/E3;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 608
    .line 609
    .line 610
    goto :goto_18

    .line 611
    :catchall_2
    move-exception v0

    .line 612
    const-string v1, "BillingClient"

    .line 613
    .line 614
    const-string v2, "Unable to log."

    .line 615
    .line 616
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    .line 618
    .line 619
    :goto_18
    sget-object v0, Lcom/android/billingclient/api/F;->l:Lcom/android/billingclient/api/i;

    .line 620
    .line 621
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/v;->c(Lcom/android/billingclient/api/i;)V

    .line 622
    .line 623
    .line 624
    goto :goto_1a

    .line 625
    :cond_21
    sget-object v1, Lcom/android/billingclient/api/F;->a:Lcom/android/billingclient/api/i;

    .line 626
    .line 627
    if-eq v5, v2, :cond_22

    .line 628
    .line 629
    :try_start_b
    iget-object v2, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 630
    .line 631
    invoke-static {v2, v10, v1, v0}, Lcom/android/billingclient/api/c;->T(Lcom/android/billingclient/api/c;ILcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    goto :goto_19

    .line 635
    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j3;->y()Lcom/google/android/gms/internal/play_billing/h3;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->b()I

    .line 640
    .line 641
    .line 642
    move-result v3

    .line 643
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/h3;->o(I)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/h3;->n(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/play_billing/h3;->p(I)V

    .line 654
    .line 655
    .line 656
    if-eqz v0, :cond_23

    .line 657
    .line 658
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/h3;->m(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    :cond_23
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 662
    .line 663
    invoke-static {v0}, Lcom/android/billingclient/api/c;->f0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/E;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/E3;->v()Lcom/google/android/gms/internal/play_billing/D3;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    check-cast v2, Lcom/google/android/gms/internal/play_billing/j3;

    .line 676
    .line 677
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/D3;->n(Lcom/google/android/gms/internal/play_billing/j3;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    check-cast v1, Lcom/google/android/gms/internal/play_billing/E3;

    .line 685
    .line 686
    check-cast v0, Lcom/android/billingclient/api/k;

    .line 687
    .line 688
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/k;->i(Lcom/google/android/gms/internal/play_billing/E3;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 689
    .line 690
    .line 691
    goto :goto_19

    .line 692
    :catchall_3
    move-exception v0

    .line 693
    const-string v1, "BillingClient"

    .line 694
    .line 695
    const-string v2, "Unable to log."

    .line 696
    .line 697
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    .line 699
    .line 700
    :goto_19
    sget-object v0, Lcom/android/billingclient/api/F;->a:Lcom/android/billingclient/api/i;

    .line 701
    .line 702
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/v;->c(Lcom/android/billingclient/api/i;)V

    .line 703
    .line 704
    .line 705
    :goto_1a
    return-void

    .line 706
    :catchall_4
    move-exception v1

    .line 707
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 708
    throw v1
.end method

.method final synthetic b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/billingclient/api/c;->x(Lcom/android/billingclient/api/c;I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/android/billingclient/api/F;->n:Lcom/android/billingclient/api/i;

    .line 8
    .line 9
    const/16 v2, 0x18

    .line 10
    .line 11
    invoke-static {v0, v2, v1}, Lcom/android/billingclient/api/c;->S(Lcom/android/billingclient/api/c;ILcom/android/billingclient/api/i;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/v;->c(Lcom/android/billingclient/api/i;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service died."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/billingclient/api/c;->Q(Lcom/android/billingclient/api/c;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/billingclient/api/c;->f0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/E;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/d3;->x()Lcom/google/android/gms/internal/play_billing/c3;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x6

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/c3;->n(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j3;->y()Lcom/google/android/gms/internal/play_billing/h3;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/16 v2, 0x7a

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/h3;->p(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/c3;->m(Lcom/google/android/gms/internal/play_billing/h3;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/play_billing/d3;

    .line 47
    .line 48
    check-cast p1, Lcom/android/billingclient/api/k;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/k;->d(Lcom/google/android/gms/internal/play_billing/d3;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/android/billingclient/api/c;->f0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/E;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/l3;->t()Lcom/google/android/gms/internal/play_billing/l3;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast p1, Lcom/android/billingclient/api/k;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/k;->h(Lcom/google/android/gms/internal/play_billing/l3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    const-string v0, "BillingClient"

    .line 72
    .line 73
    const-string v1, "Unable to log."

    .line 74
    .line 75
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/android/billingclient/api/c;->n0(Lcom/android/billingclient/api/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    monitor-enter p1

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/android/billingclient/api/c;->y(Lcom/android/billingclient/api/c;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v1, 0x3

    .line 92
    if-eq v0, v1, :cond_2

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/android/billingclient/api/c;->y(Lcom/android/billingclient/api/c;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-static {v0, v1}, Lcom/android/billingclient/api/c;->x(Lcom/android/billingclient/api/c;I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/android/billingclient/api/c;->J(Lcom/android/billingclient/api/c;)V

    .line 112
    .line 113
    .line 114
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    iget-object p1, p0, Lcom/android/billingclient/api/v;->a:LB/h;

    .line 116
    .line 117
    invoke-interface {p1}, LB/h;->onBillingServiceDisconnected()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit p1

    .line 122
    return-void

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service connected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/billingclient/api/c;->n0(Lcom/android/billingclient/api/c;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/billingclient/api/c;->y(Lcom/android/billingclient/api/c;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    monitor-exit p1

    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/c;->l(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/d;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {v0, p2}, Lcom/android/billingclient/api/c;->v(Lcom/android/billingclient/api/c;Lcom/google/android/gms/internal/play_billing/d;)V

    .line 33
    .line 34
    .line 35
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 37
    .line 38
    new-instance p2, Lcom/android/billingclient/api/t;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lcom/android/billingclient/api/t;-><init>(Lcom/android/billingclient/api/v;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/android/billingclient/api/u;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/android/billingclient/api/u;-><init>(Lcom/android/billingclient/api/v;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/android/billingclient/api/c;->d0(Lcom/android/billingclient/api/c;)Landroid/os/Handler;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {p1, p2, v0, v1}, Lcom/android/billingclient/api/c;->j(Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/t;Lcom/android/billingclient/api/u;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/android/billingclient/api/c;->h0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/i;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const/16 v0, 0x19

    .line 65
    .line 66
    invoke-static {p1, v0, p2}, Lcom/android/billingclient/api/c;->S(Lcom/android/billingclient/api/c;ILcom/android/billingclient/api/i;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/v;->c(Lcom/android/billingclient/api/i;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void

    .line 73
    :catchall_0
    move-exception p2

    .line 74
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service disconnected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/billingclient/api/c;->Q(Lcom/android/billingclient/api/c;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/billingclient/api/c;->f0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/E;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/d3;->x()Lcom/google/android/gms/internal/play_billing/c3;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x6

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/c3;->n(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j3;->y()Lcom/google/android/gms/internal/play_billing/h3;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/16 v2, 0x79

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/h3;->p(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/c3;->m(Lcom/google/android/gms/internal/play_billing/h3;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/play_billing/d3;

    .line 47
    .line 48
    check-cast p1, Lcom/android/billingclient/api/k;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/k;->d(Lcom/google/android/gms/internal/play_billing/d3;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/android/billingclient/api/c;->f0(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/E;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/G3;->t()Lcom/google/android/gms/internal/play_billing/G3;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast p1, Lcom/android/billingclient/api/k;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/k;->j(Lcom/google/android/gms/internal/play_billing/G3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    const-string v0, "BillingClient"

    .line 72
    .line 73
    const-string v1, "Unable to log."

    .line 74
    .line 75
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object p1, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/android/billingclient/api/c;->n0(Lcom/android/billingclient/api/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    monitor-enter p1

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/android/billingclient/api/c;->y(Lcom/android/billingclient/api/c;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v1, 0x3

    .line 92
    if-ne v0, v1, :cond_1

    .line 93
    .line 94
    monitor-exit p1

    .line 95
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/v;->b:Lcom/android/billingclient/api/c;

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1}, Lcom/android/billingclient/api/c;->x(Lcom/android/billingclient/api/c;I)V

    .line 100
    .line 101
    .line 102
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    iget-object p1, p0, Lcom/android/billingclient/api/v;->a:LB/h;

    .line 104
    .line 105
    invoke-interface {p1}, LB/h;->onBillingServiceDisconnected()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :catchall_1
    move-exception v0

    .line 110
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    throw v0
.end method
