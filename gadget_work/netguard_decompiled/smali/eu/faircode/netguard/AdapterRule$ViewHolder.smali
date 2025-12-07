.class public Leu/faircode/netguard/AdapterRule$ViewHolder;
.super Landroidx/recyclerview/widget/P;
.source "SourceFile"


# instance fields
.field public btnClear:Landroid/widget/ImageButton;

.field public btnClearAccess:Landroid/widget/ImageButton;

.field public btnLogging:Landroid/widget/Button;

.field public btnRelated:Landroid/widget/Button;

.field public cbApply:Landroid/widget/CheckBox;

.field public cbLockdown:Landroid/widget/CheckBox;

.field public cbNotify:Landroid/widget/CheckBox;

.field public cbOther:Landroid/widget/CheckBox;

.field public cbRoaming:Landroid/widget/CheckBox;

.field public cbScreenOther:Landroid/widget/CheckBox;

.field public cbScreenWifi:Landroid/widget/CheckBox;

.field public cbWifi:Landroid/widget/CheckBox;

.field public ibLaunch:Landroid/widget/ImageButton;

.field public ibSettings:Landroid/widget/ImageButton;

.field public ivExpander:Landroid/widget/ImageView;

.field public ivIcon:Landroid/widget/ImageView;

.field public ivLive:Landroid/widget/ImageView;

.field public ivLockdown:Landroid/widget/ImageView;

.field public ivLockdownLegend:Landroid/widget/ImageView;

.field public ivOtherLegend:Landroid/widget/ImageView;

.field public ivScreenOther:Landroid/widget/ImageView;

.field public ivScreenWifi:Landroid/widget/ImageView;

.field public ivWifiLegend:Landroid/widget/ImageView;

.field public llApplication:Landroid/widget/LinearLayout;

.field public llConfiguration:Landroid/widget/LinearLayout;

.field public llFilter:Landroid/widget/LinearLayout;

.field public llScreenOther:Landroid/widget/LinearLayout;

.field public llScreenWifi:Landroid/widget/LinearLayout;

.field public lvAccess:Landroid/widget/ListView;

.field public rlLockdown:Landroid/widget/RelativeLayout;

.field public tvDisabled:Landroid/widget/TextView;

.field public tvHosts:Landroid/widget/TextView;

.field public tvInternet:Landroid/widget/TextView;

.field public tvLogging:Landroid/widget/TextView;

.field public tvName:Landroid/widget/TextView;

.field public tvPackage:Landroid/widget/TextView;

.field public tvRemarkDownload:Landroid/widget/TextView;

.field public tvRemarkMessaging:Landroid/widget/TextView;

.field public tvRoaming:Landroid/widget/TextView;

.field public tvUid:Landroid/widget/TextView;

.field public tvVersion:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/P;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->view:Landroid/view/View;

    .line 5
    .line 6
    const v0, 0x7f0900af

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->llApplication:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const v0, 0x7f090098

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 27
    .line 28
    const v0, 0x7f090095

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivExpander:Landroid/widget/ImageView;

    .line 38
    .line 39
    const v0, 0x7f090172

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 49
    .line 50
    const v0, 0x7f09016b

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvHosts:Landroid/widget/TextView;

    .line 60
    .line 61
    const v0, 0x7f09010a

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->rlLockdown:Landroid/widget/RelativeLayout;

    .line 71
    .line 72
    const v0, 0x7f09009b

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .line 81
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivLockdown:Landroid/widget/ImageView;

    .line 82
    .line 83
    const v0, 0x7f090064

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/CheckBox;

    .line 91
    .line 92
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbWifi:Landroid/widget/CheckBox;

    .line 93
    .line 94
    const v0, 0x7f0900a5

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/ImageView;

    .line 102
    .line 103
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivScreenWifi:Landroid/widget/ImageView;

    .line 104
    .line 105
    const v0, 0x7f090060

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/CheckBox;

    .line 113
    .line 114
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbOther:Landroid/widget/CheckBox;

    .line 115
    .line 116
    const v0, 0x7f0900a4

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Landroid/widget/ImageView;

    .line 124
    .line 125
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivScreenOther:Landroid/widget/ImageView;

    .line 126
    .line 127
    const v0, 0x7f090181

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvRoaming:Landroid/widget/TextView;

    .line 137
    .line 138
    const v0, 0x7f09017f

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/TextView;

    .line 146
    .line 147
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvRemarkMessaging:Landroid/widget/TextView;

    .line 148
    .line 149
    const v0, 0x7f09017e

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/TextView;

    .line 157
    .line 158
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvRemarkDownload:Landroid/widget/TextView;

    .line 159
    .line 160
    const v0, 0x7f0900b1

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroid/widget/LinearLayout;

    .line 168
    .line 169
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->llConfiguration:Landroid/widget/LinearLayout;

    .line 170
    .line 171
    const v0, 0x7f090190

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvUid:Landroid/widget/TextView;

    .line 181
    .line 182
    const v0, 0x7f090177

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/widget/TextView;

    .line 190
    .line 191
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvPackage:Landroid/widget/TextView;

    .line 192
    .line 193
    const v0, 0x7f090191

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Landroid/widget/TextView;

    .line 201
    .line 202
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvVersion:Landroid/widget/TextView;

    .line 203
    .line 204
    const v0, 0x7f09016c

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/widget/TextView;

    .line 212
    .line 213
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvInternet:Landroid/widget/TextView;

    .line 214
    .line 215
    const v0, 0x7f09015e

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Landroid/widget/TextView;

    .line 223
    .line 224
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvDisabled:Landroid/widget/TextView;

    .line 225
    .line 226
    const v0, 0x7f090053

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Landroid/widget/Button;

    .line 234
    .line 235
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->btnRelated:Landroid/widget/Button;

    .line 236
    .line 237
    const v0, 0x7f090087

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Landroid/widget/ImageButton;

    .line 245
    .line 246
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ibSettings:Landroid/widget/ImageButton;

    .line 247
    .line 248
    const v0, 0x7f090085

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Landroid/widget/ImageButton;

    .line 256
    .line 257
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ibLaunch:Landroid/widget/ImageButton;

    .line 258
    .line 259
    const v0, 0x7f09005a

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Landroid/widget/CheckBox;

    .line 267
    .line 268
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbApply:Landroid/widget/CheckBox;

    .line 269
    .line 270
    const v0, 0x7f0900b6

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Landroid/widget/LinearLayout;

    .line 278
    .line 279
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->llScreenWifi:Landroid/widget/LinearLayout;

    .line 280
    .line 281
    const v0, 0x7f0900a7

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    check-cast v0, Landroid/widget/ImageView;

    .line 289
    .line 290
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivWifiLegend:Landroid/widget/ImageView;

    .line 291
    .line 292
    const v0, 0x7f090063

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Landroid/widget/CheckBox;

    .line 300
    .line 301
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenWifi:Landroid/widget/CheckBox;

    .line 302
    .line 303
    const v0, 0x7f0900b5

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Landroid/widget/LinearLayout;

    .line 311
    .line 312
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->llScreenOther:Landroid/widget/LinearLayout;

    .line 313
    .line 314
    const v0, 0x7f09009f

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Landroid/widget/ImageView;

    .line 322
    .line 323
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivOtherLegend:Landroid/widget/ImageView;

    .line 324
    .line 325
    const v0, 0x7f090062

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Landroid/widget/CheckBox;

    .line 333
    .line 334
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenOther:Landroid/widget/CheckBox;

    .line 335
    .line 336
    const v0, 0x7f090061

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    check-cast v0, Landroid/widget/CheckBox;

    .line 344
    .line 345
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbRoaming:Landroid/widget/CheckBox;

    .line 346
    .line 347
    const v0, 0x7f09005d

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Landroid/widget/CheckBox;

    .line 355
    .line 356
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbLockdown:Landroid/widget/CheckBox;

    .line 357
    .line 358
    const v0, 0x7f09009c

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Landroid/widget/ImageView;

    .line 366
    .line 367
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivLockdownLegend:Landroid/widget/ImageView;

    .line 368
    .line 369
    const v0, 0x7f090047

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Landroid/widget/ImageButton;

    .line 377
    .line 378
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->btnClear:Landroid/widget/ImageButton;

    .line 379
    .line 380
    const v0, 0x7f0900b3

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Landroid/widget/LinearLayout;

    .line 388
    .line 389
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->llFilter:Landroid/widget/LinearLayout;

    .line 390
    .line 391
    const v0, 0x7f09009a

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    check-cast v0, Landroid/widget/ImageView;

    .line 399
    .line 400
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivLive:Landroid/widget/ImageView;

    .line 401
    .line 402
    const v0, 0x7f090170

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    check-cast v0, Landroid/widget/TextView;

    .line 410
    .line 411
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvLogging:Landroid/widget/TextView;

    .line 412
    .line 413
    const v0, 0x7f09004e

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    check-cast v0, Landroid/widget/Button;

    .line 421
    .line 422
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->btnLogging:Landroid/widget/Button;

    .line 423
    .line 424
    const v0, 0x7f0900be

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    check-cast v0, Landroid/widget/ListView;

    .line 432
    .line 433
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->lvAccess:Landroid/widget/ListView;

    .line 434
    .line 435
    const v0, 0x7f090048

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    check-cast v0, Landroid/widget/ImageButton;

    .line 443
    .line 444
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->btnClearAccess:Landroid/widget/ImageButton;

    .line 445
    .line 446
    const v0, 0x7f09005f

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    check-cast p1, Landroid/widget/CheckBox;

    .line 454
    .line 455
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbNotify:Landroid/widget/CheckBox;

    .line 456
    .line 457
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbWifi:Landroid/widget/CheckBox;

    .line 458
    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    check-cast p1, Landroid/view/View;

    .line 464
    .line 465
    new-instance v0, Leu/faircode/netguard/AdapterRule$ViewHolder$1;

    .line 466
    .line 467
    invoke-direct {v0, p0, p1}, Leu/faircode/netguard/AdapterRule$ViewHolder$1;-><init>(Leu/faircode/netguard/AdapterRule$ViewHolder;Landroid/view/View;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 471
    .line 472
    .line 473
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbOther:Landroid/widget/CheckBox;

    .line 474
    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    check-cast p1, Landroid/view/View;

    .line 480
    .line 481
    new-instance v0, Leu/faircode/netguard/AdapterRule$ViewHolder$2;

    .line 482
    .line 483
    invoke-direct {v0, p0, p1}, Leu/faircode/netguard/AdapterRule$ViewHolder$2;-><init>(Leu/faircode/netguard/AdapterRule$ViewHolder;Landroid/view/View;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 487
    .line 488
    .line 489
    return-void
.end method
