.class final Lcom/android/billingclient/api/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/android/billingclient/api/i;

.field static final b:Lcom/android/billingclient/api/i;

.field static final c:Lcom/android/billingclient/api/i;

.field static final d:Lcom/android/billingclient/api/i;

.field static final e:Lcom/android/billingclient/api/i;

.field static final f:Lcom/android/billingclient/api/i;

.field static final g:Lcom/android/billingclient/api/i;

.field static final h:Lcom/android/billingclient/api/i;

.field static final i:Lcom/android/billingclient/api/i;

.field static final j:Lcom/android/billingclient/api/i;

.field static final k:Lcom/android/billingclient/api/i;

.field static final l:Lcom/android/billingclient/api/i;

.field static final m:Lcom/android/billingclient/api/i;

.field static final n:Lcom/android/billingclient/api/i;

.field static final o:Lcom/android/billingclient/api/i;

.field static final p:Lcom/android/billingclient/api/i;

.field static final q:Lcom/android/billingclient/api/i;

.field static final r:Lcom/android/billingclient/api/i;

.field static final s:Lcom/android/billingclient/api/i;

.field static final t:Lcom/android/billingclient/api/i;

.field static final u:Lcom/android/billingclient/api/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const-string v2, "Google Play In-app Billing API version is less than 3"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/billingclient/api/F;->a:Lcom/android/billingclient/api/i;

    .line 14
    .line 15
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Google Play In-app Billing API version is less than 9"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/billingclient/api/F;->b:Lcom/android/billingclient/api/i;

    .line 27
    .line 28
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "Billing service unavailable on device."

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/billingclient/api/F;->c:Lcom/android/billingclient/api/i;

    .line 40
    .line 41
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    invoke-static {v0, v1, v2}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/android/billingclient/api/F;->d:Lcom/android/billingclient/api/i;

    .line 52
    .line 53
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x5

    .line 59
    const-string v3, "Client is already in the process of connecting to billing service."

    .line 60
    .line 61
    invoke-static {v0, v2, v3}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/billingclient/api/F;->e:Lcom/android/billingclient/api/i;

    .line 66
    .line 67
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "The list of SKUs can\'t be empty."

    .line 73
    .line 74
    invoke-static {v0, v2, v3}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/android/billingclient/api/F;->f:Lcom/android/billingclient/api/i;

    .line 79
    .line 80
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 81
    .line 82
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "SKU type can\'t be empty."

    .line 86
    .line 87
    invoke-static {v0, v2, v3}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/android/billingclient/api/F;->g:Lcom/android/billingclient/api/i;

    .line 92
    .line 93
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 94
    .line 95
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "Product type can\'t be empty."

    .line 99
    .line 100
    invoke-static {v0, v2, v3}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lcom/android/billingclient/api/F;->h:Lcom/android/billingclient/api/i;

    .line 105
    .line 106
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 107
    .line 108
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 109
    .line 110
    .line 111
    const/4 v3, -0x2

    .line 112
    const-string v4, "Client does not support extra params."

    .line 113
    .line 114
    invoke-static {v0, v3, v4}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/android/billingclient/api/F;->i:Lcom/android/billingclient/api/i;

    .line 119
    .line 120
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 121
    .line 122
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v4, "Invalid purchase token."

    .line 126
    .line 127
    invoke-static {v0, v2, v4}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lcom/android/billingclient/api/F;->j:Lcom/android/billingclient/api/i;

    .line 132
    .line 133
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 134
    .line 135
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 136
    .line 137
    .line 138
    const/4 v4, 0x6

    .line 139
    const-string v5, "An internal error occurred."

    .line 140
    .line 141
    invoke-static {v0, v4, v5}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sput-object v0, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 146
    .line 147
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 148
    .line 149
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/h;->c(I)V

    .line 153
    .line 154
    .line 155
    const-string v5, "SKU can\'t be null."

    .line 156
    .line 157
    invoke-virtual {v0, v5}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 164
    .line 165
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 166
    .line 167
    .line 168
    const/4 v5, 0x0

    .line 169
    invoke-virtual {v0, v5}, Lcom/android/billingclient/api/h;->c(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    sput-object v0, Lcom/android/billingclient/api/F;->l:Lcom/android/billingclient/api/i;

    .line 177
    .line 178
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 179
    .line 180
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 181
    .line 182
    .line 183
    const/4 v5, -0x1

    .line 184
    const-string v6, "Service connection is disconnected."

    .line 185
    .line 186
    invoke-static {v0, v5, v6}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sput-object v0, Lcom/android/billingclient/api/F;->m:Lcom/android/billingclient/api/i;

    .line 191
    .line 192
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 193
    .line 194
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v5, "Timeout communicating with service."

    .line 198
    .line 199
    invoke-static {v0, v1, v5}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    sput-object v0, Lcom/android/billingclient/api/F;->n:Lcom/android/billingclient/api/i;

    .line 204
    .line 205
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 206
    .line 207
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v1, "Client does not support subscriptions."

    .line 211
    .line 212
    invoke-static {v0, v3, v1}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sput-object v0, Lcom/android/billingclient/api/F;->o:Lcom/android/billingclient/api/i;

    .line 217
    .line 218
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 219
    .line 220
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 224
    .line 225
    .line 226
    const-string v1, "Client does not support subscriptions update."

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 232
    .line 233
    .line 234
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 235
    .line 236
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 240
    .line 241
    .line 242
    const-string v1, "Client does not support get purchase history."

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 248
    .line 249
    .line 250
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 251
    .line 252
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 256
    .line 257
    .line 258
    const-string v1, "Client does not support price change confirmation."

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 264
    .line 265
    .line 266
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 267
    .line 268
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 272
    .line 273
    .line 274
    const-string v1, "Play Store version installed does not support cross selling products."

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 280
    .line 281
    .line 282
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 283
    .line 284
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v1, "Client does not support multi-item purchases."

    .line 288
    .line 289
    invoke-static {v0, v3, v1}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sput-object v0, Lcom/android/billingclient/api/F;->p:Lcom/android/billingclient/api/i;

    .line 294
    .line 295
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 296
    .line 297
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v1, "Client does not support offer_id_token."

    .line 301
    .line 302
    invoke-static {v0, v3, v1}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    sput-object v0, Lcom/android/billingclient/api/F;->q:Lcom/android/billingclient/api/i;

    .line 307
    .line 308
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 309
    .line 310
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v1, "Client does not support ProductDetails."

    .line 314
    .line 315
    invoke-static {v0, v3, v1}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    sput-object v0, Lcom/android/billingclient/api/F;->r:Lcom/android/billingclient/api/i;

    .line 320
    .line 321
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 322
    .line 323
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 327
    .line 328
    .line 329
    const-string v1, "Client does not support in-app messages."

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 335
    .line 336
    .line 337
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 338
    .line 339
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 343
    .line 344
    .line 345
    const-string v1, "Client does not support user choice billing."

    .line 346
    .line 347
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 351
    .line 352
    .line 353
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 354
    .line 355
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 359
    .line 360
    .line 361
    const-string v1, "Play Store version installed does not support external offer."

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 367
    .line 368
    .line 369
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 370
    .line 371
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 375
    .line 376
    .line 377
    const-string v1, "Play Store version installed does not support multi-item purchases with season pass in one cart."

    .line 378
    .line 379
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 383
    .line 384
    .line 385
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 386
    .line 387
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/h;->c(I)V

    .line 391
    .line 392
    .line 393
    const-string v1, "Unknown feature"

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 399
    .line 400
    .line 401
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 402
    .line 403
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 407
    .line 408
    .line 409
    const-string v1, "Play Store version installed does not support get billing config."

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 415
    .line 416
    .line 417
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 418
    .line 419
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 423
    .line 424
    .line 425
    const-string v1, "Query product details with serialized docid is not supported."

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 431
    .line 432
    .line 433
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 434
    .line 435
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 436
    .line 437
    .line 438
    const/4 v1, 0x4

    .line 439
    const-string v5, "Item is unavailable for purchase."

    .line 440
    .line 441
    invoke-static {v0, v1, v5}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    sput-object v0, Lcom/android/billingclient/api/F;->s:Lcom/android/billingclient/api/i;

    .line 446
    .line 447
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 448
    .line 449
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 453
    .line 454
    .line 455
    const-string v1, "Query product details with developer specified account is not supported."

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 461
    .line 462
    .line 463
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 464
    .line 465
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/h;->c(I)V

    .line 469
    .line 470
    .line 471
    const-string v1, "Play Store version installed does not support alternative billing only."

    .line 472
    .line 473
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->b(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Lcom/android/billingclient/api/i;

    .line 477
    .line 478
    .line 479
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 480
    .line 481
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 482
    .line 483
    .line 484
    const-string v1, "To use this API you must specify a PurchasesUpdateListener when initializing a BillingClient."

    .line 485
    .line 486
    invoke-static {v0, v2, v1}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    sput-object v0, Lcom/android/billingclient/api/F;->t:Lcom/android/billingclient/api/i;

    .line 491
    .line 492
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 493
    .line 494
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string v1, "An error occurred while retrieving billing override."

    .line 498
    .line 499
    invoke-static {v0, v4, v1}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    sput-object v0, Lcom/android/billingclient/api/F;->u:Lcom/android/billingclient/api/i;

    .line 504
    .line 505
    return-void
.end method

.method static a(ILjava/lang/String;)Lcom/android/billingclient/api/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0, p1}, LB/g;->a(Lcom/android/billingclient/api/h;ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
