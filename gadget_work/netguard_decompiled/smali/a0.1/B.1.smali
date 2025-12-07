.class public final enum La0/B;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:La0/B;

.field public static final enum f:La0/B;

.field private static final g:Landroid/util/SparseArray;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, La0/B;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_MOBILE_SUBTYPE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, La0/B;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, La0/B;->e:La0/B;

    .line 10
    .line 11
    new-instance v1, La0/B;

    .line 12
    .line 13
    const-string v3, "GPRS"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v4, v4, v3}, La0/B;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, La0/B;

    .line 20
    .line 21
    const-string v5, "EDGE"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v6, v6, v5}, La0/B;-><init>(IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v5, La0/B;

    .line 28
    .line 29
    const-string v7, "UMTS"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v8, v8, v7}, La0/B;-><init>(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v7, La0/B;

    .line 36
    .line 37
    const-string v9, "CDMA"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v10, v10, v9}, La0/B;-><init>(IILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v9, La0/B;

    .line 44
    .line 45
    const-string v11, "EVDO_0"

    .line 46
    .line 47
    const/4 v12, 0x5

    .line 48
    invoke-direct {v9, v12, v12, v11}, La0/B;-><init>(IILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v11, La0/B;

    .line 52
    .line 53
    const-string v13, "EVDO_A"

    .line 54
    .line 55
    const/4 v14, 0x6

    .line 56
    invoke-direct {v11, v14, v14, v13}, La0/B;-><init>(IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v13, La0/B;

    .line 60
    .line 61
    const-string v15, "RTT"

    .line 62
    .line 63
    const/4 v14, 0x7

    .line 64
    invoke-direct {v13, v14, v14, v15}, La0/B;-><init>(IILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v15, La0/B;

    .line 68
    .line 69
    const-string v14, "HSDPA"

    .line 70
    .line 71
    const/16 v12, 0x8

    .line 72
    .line 73
    invoke-direct {v15, v12, v12, v14}, La0/B;-><init>(IILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v14, La0/B;

    .line 77
    .line 78
    const-string v12, "HSUPA"

    .line 79
    .line 80
    const/16 v10, 0x9

    .line 81
    .line 82
    invoke-direct {v14, v10, v10, v12}, La0/B;-><init>(IILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v12, La0/B;

    .line 86
    .line 87
    const-string v10, "HSPA"

    .line 88
    .line 89
    const/16 v8, 0xa

    .line 90
    .line 91
    invoke-direct {v12, v8, v8, v10}, La0/B;-><init>(IILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v10, La0/B;

    .line 95
    .line 96
    const-string v8, "IDEN"

    .line 97
    .line 98
    const/16 v6, 0xb

    .line 99
    .line 100
    invoke-direct {v10, v6, v6, v8}, La0/B;-><init>(IILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v8, La0/B;

    .line 104
    .line 105
    const-string v6, "EVDO_B"

    .line 106
    .line 107
    const/16 v4, 0xc

    .line 108
    .line 109
    invoke-direct {v8, v4, v4, v6}, La0/B;-><init>(IILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v6, La0/B;

    .line 113
    .line 114
    const-string v4, "LTE"

    .line 115
    .line 116
    const/16 v2, 0xd

    .line 117
    .line 118
    invoke-direct {v6, v2, v2, v4}, La0/B;-><init>(IILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v4, La0/B;

    .line 122
    .line 123
    const-string v2, "EHRPD"

    .line 124
    .line 125
    move-object/from16 v16, v6

    .line 126
    .line 127
    const/16 v6, 0xe

    .line 128
    .line 129
    invoke-direct {v4, v6, v6, v2}, La0/B;-><init>(IILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v2, La0/B;

    .line 133
    .line 134
    const-string v6, "HSPAP"

    .line 135
    .line 136
    move-object/from16 v17, v4

    .line 137
    .line 138
    const/16 v4, 0xf

    .line 139
    .line 140
    invoke-direct {v2, v4, v4, v6}, La0/B;-><init>(IILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v6, La0/B;

    .line 144
    .line 145
    const-string v4, "GSM"

    .line 146
    .line 147
    move-object/from16 v18, v2

    .line 148
    .line 149
    const/16 v2, 0x10

    .line 150
    .line 151
    invoke-direct {v6, v2, v2, v4}, La0/B;-><init>(IILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v4, La0/B;

    .line 155
    .line 156
    const-string v2, "TD_SCDMA"

    .line 157
    .line 158
    move-object/from16 v19, v6

    .line 159
    .line 160
    const/16 v6, 0x11

    .line 161
    .line 162
    invoke-direct {v4, v6, v6, v2}, La0/B;-><init>(IILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v2, La0/B;

    .line 166
    .line 167
    const-string v6, "IWLAN"

    .line 168
    .line 169
    move-object/from16 v20, v4

    .line 170
    .line 171
    const/16 v4, 0x12

    .line 172
    .line 173
    invoke-direct {v2, v4, v4, v6}, La0/B;-><init>(IILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v6, La0/B;

    .line 177
    .line 178
    const-string v4, "LTE_CA"

    .line 179
    .line 180
    move-object/from16 v21, v2

    .line 181
    .line 182
    const/16 v2, 0x13

    .line 183
    .line 184
    invoke-direct {v6, v2, v2, v4}, La0/B;-><init>(IILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance v4, La0/B;

    .line 188
    .line 189
    const/16 v2, 0x64

    .line 190
    .line 191
    move-object/from16 v22, v6

    .line 192
    .line 193
    const-string v6, "COMBINED"

    .line 194
    .line 195
    move-object/from16 v23, v8

    .line 196
    .line 197
    const/16 v8, 0x14

    .line 198
    .line 199
    invoke-direct {v4, v8, v2, v6}, La0/B;-><init>(IILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    sput-object v4, La0/B;->f:La0/B;

    .line 203
    .line 204
    new-instance v2, Landroid/util/SparseArray;

    .line 205
    .line 206
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 207
    .line 208
    .line 209
    sput-object v2, La0/B;->g:Landroid/util/SparseArray;

    .line 210
    .line 211
    const/4 v4, 0x0

    .line 212
    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    const/4 v0, 0x1

    .line 216
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    const/4 v0, 0x2

    .line 220
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    const/4 v0, 0x3

    .line 224
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    const/4 v0, 0x4

    .line 228
    invoke-virtual {v2, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    const/4 v0, 0x5

    .line 232
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    const/4 v0, 0x6

    .line 236
    invoke-virtual {v2, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    const/4 v0, 0x7

    .line 240
    invoke-virtual {v2, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    const/16 v0, 0x8

    .line 244
    .line 245
    invoke-virtual {v2, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    const/16 v0, 0x9

    .line 249
    .line 250
    invoke-virtual {v2, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    const/16 v0, 0xa

    .line 254
    .line 255
    invoke-virtual {v2, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    const/16 v0, 0xb

    .line 259
    .line 260
    invoke-virtual {v2, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    move-object/from16 v0, v23

    .line 264
    .line 265
    const/16 v1, 0xc

    .line 266
    .line 267
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v0, v16

    .line 271
    .line 272
    const/16 v1, 0xd

    .line 273
    .line 274
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    move-object/from16 v0, v17

    .line 278
    .line 279
    const/16 v1, 0xe

    .line 280
    .line 281
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    move-object/from16 v0, v18

    .line 285
    .line 286
    const/16 v1, 0xf

    .line 287
    .line 288
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    move-object/from16 v0, v19

    .line 292
    .line 293
    const/16 v1, 0x10

    .line 294
    .line 295
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    move-object/from16 v0, v20

    .line 299
    .line 300
    const/16 v1, 0x11

    .line 301
    .line 302
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    move-object/from16 v0, v21

    .line 306
    .line 307
    const/16 v1, 0x12

    .line 308
    .line 309
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    move-object/from16 v0, v22

    .line 313
    .line 314
    const/16 v1, 0x13

    .line 315
    .line 316
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, La0/B;->d:I

    .line 5
    .line 6
    return-void
.end method

.method public static f(I)La0/B;
    .locals 1

    .line 1
    sget-object v0, La0/B;->g:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, La0/B;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, La0/B;->d:I

    .line 2
    .line 3
    return v0
.end method
