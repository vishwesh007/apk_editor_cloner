.class public final enum La0/C;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:La0/C;

.field private static final f:Landroid/util/SparseArray;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, La0/C;

    .line 2
    .line 3
    const-string v1, "MOBILE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, La0/C;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, La0/C;

    .line 10
    .line 11
    const-string v3, "WIFI"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v4, v4, v3}, La0/C;-><init>(IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, La0/C;

    .line 18
    .line 19
    const-string v5, "MOBILE_MMS"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v6, v6, v5}, La0/C;-><init>(IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v5, La0/C;

    .line 26
    .line 27
    const-string v7, "MOBILE_SUPL"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v8, v8, v7}, La0/C;-><init>(IILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v7, La0/C;

    .line 34
    .line 35
    const-string v9, "MOBILE_DUN"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v10, v10, v9}, La0/C;-><init>(IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v9, La0/C;

    .line 42
    .line 43
    const-string v11, "MOBILE_HIPRI"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v12, v12, v11}, La0/C;-><init>(IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v11, La0/C;

    .line 50
    .line 51
    const-string v13, "WIMAX"

    .line 52
    .line 53
    const/4 v14, 0x6

    .line 54
    invoke-direct {v11, v14, v14, v13}, La0/C;-><init>(IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v13, La0/C;

    .line 58
    .line 59
    const-string v15, "BLUETOOTH"

    .line 60
    .line 61
    const/4 v14, 0x7

    .line 62
    invoke-direct {v13, v14, v14, v15}, La0/C;-><init>(IILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v15, La0/C;

    .line 66
    .line 67
    const-string v14, "DUMMY"

    .line 68
    .line 69
    const/16 v12, 0x8

    .line 70
    .line 71
    invoke-direct {v15, v12, v12, v14}, La0/C;-><init>(IILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v14, La0/C;

    .line 75
    .line 76
    const-string v12, "ETHERNET"

    .line 77
    .line 78
    const/16 v10, 0x9

    .line 79
    .line 80
    invoke-direct {v14, v10, v10, v12}, La0/C;-><init>(IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v12, La0/C;

    .line 84
    .line 85
    const-string v10, "MOBILE_FOTA"

    .line 86
    .line 87
    const/16 v8, 0xa

    .line 88
    .line 89
    invoke-direct {v12, v8, v8, v10}, La0/C;-><init>(IILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v10, La0/C;

    .line 93
    .line 94
    const-string v8, "MOBILE_IMS"

    .line 95
    .line 96
    const/16 v6, 0xb

    .line 97
    .line 98
    invoke-direct {v10, v6, v6, v8}, La0/C;-><init>(IILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v8, La0/C;

    .line 102
    .line 103
    const-string v6, "MOBILE_CBS"

    .line 104
    .line 105
    const/16 v4, 0xc

    .line 106
    .line 107
    invoke-direct {v8, v4, v4, v6}, La0/C;-><init>(IILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v6, La0/C;

    .line 111
    .line 112
    const-string v4, "WIFI_P2P"

    .line 113
    .line 114
    const/16 v2, 0xd

    .line 115
    .line 116
    invoke-direct {v6, v2, v2, v4}, La0/C;-><init>(IILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v4, La0/C;

    .line 120
    .line 121
    const-string v2, "MOBILE_IA"

    .line 122
    .line 123
    move-object/from16 v16, v6

    .line 124
    .line 125
    const/16 v6, 0xe

    .line 126
    .line 127
    invoke-direct {v4, v6, v6, v2}, La0/C;-><init>(IILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, La0/C;

    .line 131
    .line 132
    const-string v6, "MOBILE_EMERGENCY"

    .line 133
    .line 134
    move-object/from16 v17, v4

    .line 135
    .line 136
    const/16 v4, 0xf

    .line 137
    .line 138
    invoke-direct {v2, v4, v4, v6}, La0/C;-><init>(IILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance v6, La0/C;

    .line 142
    .line 143
    const-string v4, "PROXY"

    .line 144
    .line 145
    move-object/from16 v18, v2

    .line 146
    .line 147
    const/16 v2, 0x10

    .line 148
    .line 149
    invoke-direct {v6, v2, v2, v4}, La0/C;-><init>(IILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v4, La0/C;

    .line 153
    .line 154
    const-string v2, "VPN"

    .line 155
    .line 156
    move-object/from16 v19, v6

    .line 157
    .line 158
    const/16 v6, 0x11

    .line 159
    .line 160
    invoke-direct {v4, v6, v6, v2}, La0/C;-><init>(IILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v2, La0/C;

    .line 164
    .line 165
    const-string v6, "NONE"

    .line 166
    .line 167
    move-object/from16 v20, v4

    .line 168
    .line 169
    const/16 v4, 0x12

    .line 170
    .line 171
    move-object/from16 v21, v8

    .line 172
    .line 173
    const/4 v8, -0x1

    .line 174
    invoke-direct {v2, v4, v8, v6}, La0/C;-><init>(IILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sput-object v2, La0/C;->e:La0/C;

    .line 178
    .line 179
    new-instance v4, Landroid/util/SparseArray;

    .line 180
    .line 181
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 182
    .line 183
    .line 184
    sput-object v4, La0/C;->f:Landroid/util/SparseArray;

    .line 185
    .line 186
    const/4 v6, 0x0

    .line 187
    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    const/4 v0, 0x1

    .line 191
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    const/4 v0, 0x2

    .line 195
    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    const/4 v0, 0x3

    .line 199
    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    const/4 v0, 0x4

    .line 203
    invoke-virtual {v4, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    const/4 v0, 0x5

    .line 207
    invoke-virtual {v4, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    const/4 v0, 0x6

    .line 211
    invoke-virtual {v4, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    const/4 v0, 0x7

    .line 215
    invoke-virtual {v4, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    const/16 v0, 0x8

    .line 219
    .line 220
    invoke-virtual {v4, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    const/16 v0, 0x9

    .line 224
    .line 225
    invoke-virtual {v4, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    const/16 v0, 0xa

    .line 229
    .line 230
    invoke-virtual {v4, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    const/16 v0, 0xb

    .line 234
    .line 235
    invoke-virtual {v4, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    move-object/from16 v0, v21

    .line 239
    .line 240
    const/16 v1, 0xc

    .line 241
    .line 242
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    move-object/from16 v0, v16

    .line 246
    .line 247
    const/16 v1, 0xd

    .line 248
    .line 249
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v0, v17

    .line 253
    .line 254
    const/16 v1, 0xe

    .line 255
    .line 256
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    move-object/from16 v0, v18

    .line 260
    .line 261
    const/16 v1, 0xf

    .line 262
    .line 263
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    move-object/from16 v0, v19

    .line 267
    .line 268
    const/16 v1, 0x10

    .line 269
    .line 270
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    move-object/from16 v0, v20

    .line 274
    .line 275
    const/16 v1, 0x11

    .line 276
    .line 277
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, La0/C;->d:I

    .line 5
    .line 6
    return-void
.end method

.method public static f(I)La0/C;
    .locals 1

    .line 1
    sget-object v0, La0/C;->f:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, La0/C;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, La0/C;->d:I

    .line 2
    .line 3
    return v0
.end method
