.class Leu/faircode/netguard/AdapterRule$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterRule;

.field final synthetic val$badapter:Leu/faircode/netguard/AdapterAccess;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rule:Leu/faircode/netguard/Rule;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Leu/faircode/netguard/AdapterAccess;Leu/faircode/netguard/Rule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$15;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/AdapterRule$15;->val$badapter:Leu/faircode/netguard/AdapterAccess;

    .line 6
    .line 7
    iput-object p4, p0, Leu/faircode/netguard/AdapterRule$15;->val$rule:Leu/faircode/netguard/Rule;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$15;->val$badapter:Leu/faircode/netguard/AdapterAccess;

    .line 10
    .line 11
    move/from16 v2, p3

    .line 12
    .line 13
    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/database/Cursor;

    .line 18
    .line 19
    const-string v2, "ID"

    .line 20
    .line 21
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    const-string v2, "version"

    .line 30
    .line 31
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v3, "protocol"

    .line 40
    .line 41
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const-string v4, "daddr"

    .line 50
    .line 51
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const-string v4, "dport"

    .line 60
    .line 61
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const-string v9, "time"

    .line 70
    .line 71
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 76
    .line 77
    .line 78
    move-result-wide v9

    .line 79
    const-string v11, "block"

    .line 80
    .line 81
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    new-instance v12, Landroid/widget/PopupMenu;

    .line 90
    .line 91
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 92
    .line 93
    iget-object v13, v8, Leu/faircode/netguard/AdapterRule$15;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 94
    .line 95
    invoke-static {v13}, Leu/faircode/netguard/AdapterRule;->access$300(Leu/faircode/netguard/AdapterRule;)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    invoke-direct {v12, v1, v13}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    const/high16 v1, 0x7f0d0000

    .line 103
    .line 104
    invoke-virtual {v12, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const v13, 0x7f0900d3

    .line 112
    .line 113
    .line 114
    invoke-interface {v1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    new-instance v14, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const/4 v15, 0x0

    .line 124
    invoke-static {v3, v2, v15}, Leu/faircode/netguard/Util;->getProtocolName(IIZ)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, " "

    .line 132
    .line 133
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    if-lez v4, :cond_0

    .line 140
    .line 141
    const-string v2, "/"

    .line 142
    .line 143
    invoke-static {v2, v4}, LB/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    goto :goto_0

    .line 148
    :cond_0
    const-string v2, ""

    .line 149
    .line 150
    :goto_0
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-interface {v1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const/4 v2, 0x0

    .line 173
    :try_start_0
    iget-object v3, v8, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 174
    .line 175
    invoke-static {v3}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3, v7}, Leu/faircode/netguard/DatabaseHelper;->getAlternateQNames(Ljava/lang/String;)Landroid/database/Cursor;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const/4 v3, 0x0

    .line 184
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    if-eqz v13, :cond_1

    .line 189
    .line 190
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-interface {v1, v15, v15, v15, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-interface {v3, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .line 200
    .line 201
    const/4 v3, 0x1

    .line 202
    goto :goto_1

    .line 203
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const v2, 0x7f0900d3

    .line 211
    .line 212
    .line 213
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 218
    .line 219
    .line 220
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$15;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 221
    .line 222
    iget-object v2, v8, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 223
    .line 224
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    const v13, 0x7f0900c4

    .line 229
    .line 230
    .line 231
    invoke-interface {v3, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    const-string v13, "filter"

    .line 236
    .line 237
    invoke-static {v1, v2, v3, v13}, Leu/faircode/netguard/AdapterRule;->access$400(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$15;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 241
    .line 242
    iget-object v2, v8, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 243
    .line 244
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    const v14, 0x7f0900cb

    .line 249
    .line 250
    .line 251
    invoke-interface {v3, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-static {v1, v2, v3, v13}, Leu/faircode/netguard/AdapterRule;->access$400(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance v3, Landroid/content/Intent;

    .line 259
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v2, "https://www.dnslytics.com/whois-lookup/"

    .line 263
    .line 264
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const-string v2, "android.intent.action.VIEW"

    .line 279
    .line 280
    invoke-direct {v3, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v3, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    const v13, 0x7f0900f1

    .line 288
    .line 289
    .line 290
    if-nez v1, :cond_2

    .line 291
    .line 292
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-interface {v1, v13}, Landroid/view/Menu;->removeItem(I)V

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_2
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-interface {v1, v13}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iget-object v13, v8, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 309
    .line 310
    const/4 v14, 0x1

    .line 311
    new-array v14, v14, [Ljava/lang/Object;

    .line 312
    .line 313
    aput-object v7, v14, v15

    .line 314
    .line 315
    const v15, 0x7f100124

    .line 316
    .line 317
    .line 318
    invoke-virtual {v13, v15, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v13

    .line 322
    invoke-interface {v1, v13}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 323
    .line 324
    .line 325
    :goto_2
    new-instance v13, Landroid/content/Intent;

    .line 326
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v14, "https://www.speedguide.net/port.php?port="

    .line 330
    .line 331
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-direct {v13, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 346
    .line 347
    .line 348
    const v1, 0x7f0900e0

    .line 349
    .line 350
    .line 351
    if-lez v4, :cond_4

    .line 352
    .line 353
    const/4 v2, 0x0

    .line 354
    invoke-virtual {v0, v13, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    if-nez v0, :cond_3

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :cond_3
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 370
    .line 371
    const/4 v14, 0x1

    .line 372
    new-array v14, v14, [Ljava/lang/Object;

    .line 373
    .line 374
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    aput-object v4, v14, v2

    .line 379
    .line 380
    const v2, 0x7f100123

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v2, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 388
    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_4
    :goto_3
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 396
    .line 397
    .line 398
    :goto_4
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    const v1, 0x7f0900ee

    .line 403
    .line 404
    .line 405
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 422
    .line 423
    .line 424
    new-instance v0, Leu/faircode/netguard/AdapterRule$15$1;

    .line 425
    .line 426
    move-object v1, v0

    .line 427
    move-object/from16 v2, p0

    .line 428
    .line 429
    move-object v4, v13

    .line 430
    invoke-direct/range {v1 .. v7}, Leu/faircode/netguard/AdapterRule$15$1;-><init>(Leu/faircode/netguard/AdapterRule$15;Landroid/content/Intent;Landroid/content/Intent;JLjava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v12, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 434
    .line 435
    .line 436
    if-nez v11, :cond_5

    .line 437
    .line 438
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    const v1, 0x7f0900c4

    .line 443
    .line 444
    .line 445
    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 446
    .line 447
    .line 448
    goto :goto_5

    .line 449
    :cond_5
    const/4 v0, 0x1

    .line 450
    if-ne v11, v0, :cond_6

    .line 451
    .line 452
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    const v1, 0x7f0900cb

    .line 457
    .line 458
    .line 459
    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 460
    .line 461
    .line 462
    :cond_6
    :goto_5
    invoke-virtual {v12}, Landroid/widget/PopupMenu;->show()V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :catchall_0
    move-exception v0

    .line 467
    if-eqz v2, :cond_7

    .line 468
    .line 469
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 470
    .line 471
    .line 472
    :cond_7
    throw v0
.end method
