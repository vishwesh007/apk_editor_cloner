.class final enum Lcom/google/android/gms/internal/play_billing/e0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:Lcom/google/android/gms/internal/play_billing/e0;

.field private static final f:Lcom/google/android/gms/internal/play_billing/W;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/e0;

    .line 2
    .line 3
    const-string v1, "RESPONSE_CODE_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, -0x3e7

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/internal/play_billing/e0;->e:Lcom/google/android/gms/internal/play_billing/e0;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/play_billing/e0;

    .line 14
    .line 15
    const-string v3, "SERVICE_TIMEOUT"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, -0x3

    .line 19
    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/google/android/gms/internal/play_billing/e0;

    .line 23
    .line 24
    const-string v5, "FEATURE_NOT_SUPPORTED"

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, -0x2

    .line 28
    invoke-direct {v3, v6, v7, v5}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lcom/google/android/gms/internal/play_billing/e0;

    .line 32
    .line 33
    const-string v7, "SERVICE_DISCONNECTED"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    const/4 v9, -0x1

    .line 37
    invoke-direct {v5, v8, v9, v7}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v7, Lcom/google/android/gms/internal/play_billing/e0;

    .line 41
    .line 42
    const-string v9, "OK"

    .line 43
    .line 44
    const/4 v10, 0x4

    .line 45
    invoke-direct {v7, v10, v2, v9}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v9, Lcom/google/android/gms/internal/play_billing/e0;

    .line 49
    .line 50
    const-string v11, "USER_CANCELED"

    .line 51
    .line 52
    const/4 v12, 0x5

    .line 53
    invoke-direct {v9, v12, v4, v11}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v11, Lcom/google/android/gms/internal/play_billing/e0;

    .line 57
    .line 58
    const-string v13, "SERVICE_UNAVAILABLE"

    .line 59
    .line 60
    const/4 v14, 0x6

    .line 61
    invoke-direct {v11, v14, v6, v13}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v13, Lcom/google/android/gms/internal/play_billing/e0;

    .line 65
    .line 66
    const-string v15, "BILLING_UNAVAILABLE"

    .line 67
    .line 68
    const/4 v6, 0x7

    .line 69
    invoke-direct {v13, v6, v8, v15}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v15, Lcom/google/android/gms/internal/play_billing/e0;

    .line 73
    .line 74
    const-string v8, "ITEM_UNAVAILABLE"

    .line 75
    .line 76
    const/16 v4, 0x8

    .line 77
    .line 78
    invoke-direct {v15, v4, v10, v8}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v8, Lcom/google/android/gms/internal/play_billing/e0;

    .line 82
    .line 83
    const-string v10, "DEVELOPER_ERROR"

    .line 84
    .line 85
    const/16 v2, 0x9

    .line 86
    .line 87
    invoke-direct {v8, v2, v12, v10}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v10, Lcom/google/android/gms/internal/play_billing/e0;

    .line 91
    .line 92
    const-string v2, "ERROR"

    .line 93
    .line 94
    const/16 v12, 0xa

    .line 95
    .line 96
    invoke-direct {v10, v12, v14, v2}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Lcom/google/android/gms/internal/play_billing/e0;

    .line 100
    .line 101
    const-string v12, "ITEM_ALREADY_OWNED"

    .line 102
    .line 103
    const/16 v14, 0xb

    .line 104
    .line 105
    invoke-direct {v2, v14, v6, v12}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v12, Lcom/google/android/gms/internal/play_billing/e0;

    .line 109
    .line 110
    const-string v6, "ITEM_NOT_OWNED"

    .line 111
    .line 112
    const/16 v14, 0xc

    .line 113
    .line 114
    invoke-direct {v12, v14, v4, v6}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v6, Lcom/google/android/gms/internal/play_billing/e0;

    .line 118
    .line 119
    const-string v4, "EXPIRED_OFFER_TOKEN"

    .line 120
    .line 121
    const/16 v14, 0xd

    .line 122
    .line 123
    move-object/from16 v16, v12

    .line 124
    .line 125
    const/16 v12, 0xb

    .line 126
    .line 127
    invoke-direct {v6, v14, v12, v4}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v4, Lcom/google/android/gms/internal/play_billing/e0;

    .line 131
    .line 132
    const-string v12, "NETWORK_ERROR"

    .line 133
    .line 134
    const/16 v14, 0xe

    .line 135
    .line 136
    move-object/from16 v17, v6

    .line 137
    .line 138
    const/16 v6, 0xc

    .line 139
    .line 140
    invoke-direct {v4, v14, v6, v12}, Lcom/google/android/gms/internal/play_billing/e0;-><init>(IILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const/16 v6, 0xf

    .line 144
    .line 145
    new-array v6, v6, [Lcom/google/android/gms/internal/play_billing/e0;

    .line 146
    .line 147
    const/4 v12, 0x0

    .line 148
    aput-object v0, v6, v12

    .line 149
    .line 150
    const/4 v0, 0x1

    .line 151
    aput-object v1, v6, v0

    .line 152
    .line 153
    const/4 v0, 0x2

    .line 154
    aput-object v3, v6, v0

    .line 155
    .line 156
    const/4 v0, 0x3

    .line 157
    aput-object v5, v6, v0

    .line 158
    .line 159
    const/4 v0, 0x4

    .line 160
    aput-object v7, v6, v0

    .line 161
    .line 162
    const/4 v0, 0x5

    .line 163
    aput-object v9, v6, v0

    .line 164
    .line 165
    const/4 v0, 0x6

    .line 166
    aput-object v11, v6, v0

    .line 167
    .line 168
    const/4 v0, 0x7

    .line 169
    aput-object v13, v6, v0

    .line 170
    .line 171
    const/16 v0, 0x8

    .line 172
    .line 173
    aput-object v15, v6, v0

    .line 174
    .line 175
    const/16 v0, 0x9

    .line 176
    .line 177
    aput-object v8, v6, v0

    .line 178
    .line 179
    const/16 v0, 0xa

    .line 180
    .line 181
    aput-object v10, v6, v0

    .line 182
    .line 183
    const/16 v0, 0xb

    .line 184
    .line 185
    aput-object v2, v6, v0

    .line 186
    .line 187
    const/16 v0, 0xc

    .line 188
    .line 189
    aput-object v16, v6, v0

    .line 190
    .line 191
    const/16 v0, 0xd

    .line 192
    .line 193
    aput-object v17, v6, v0

    .line 194
    .line 195
    aput-object v4, v6, v14

    .line 196
    .line 197
    new-instance v0, Lcom/google/android/gms/internal/play_billing/V;

    .line 198
    .line 199
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/V;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6}, [Lcom/google/android/gms/internal/play_billing/e0;->clone()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, [Lcom/google/android/gms/internal/play_billing/e0;

    .line 207
    .line 208
    array-length v2, v1

    .line 209
    :goto_0
    if-ge v12, v2, :cond_1

    .line 210
    .line 211
    aget-object v3, v1, v12

    .line 212
    .line 213
    iget v4, v3, Lcom/google/android/gms/internal/play_billing/e0;->d:I

    .line 214
    .line 215
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    iget v5, v0, Lcom/google/android/gms/internal/play_billing/V;->b:I

    .line 220
    .line 221
    const/4 v6, 0x1

    .line 222
    add-int/2addr v5, v6

    .line 223
    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/V;->a:[Ljava/lang/Object;

    .line 224
    .line 225
    array-length v7, v6

    .line 226
    add-int/2addr v5, v5

    .line 227
    if-le v5, v7, :cond_0

    .line 228
    .line 229
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/q;->i(II)I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    iput-object v5, v0, Lcom/google/android/gms/internal/play_billing/V;->a:[Ljava/lang/Object;

    .line 238
    .line 239
    :cond_0
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/play_billing/r;->l(Ljava/lang/Object;Ljava/lang/Enum;)V

    .line 240
    .line 241
    .line 242
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/V;->a:[Ljava/lang/Object;

    .line 243
    .line 244
    iget v6, v0, Lcom/google/android/gms/internal/play_billing/V;->b:I

    .line 245
    .line 246
    add-int v7, v6, v6

    .line 247
    .line 248
    aput-object v4, v5, v7

    .line 249
    .line 250
    const/4 v4, 0x1

    .line 251
    add-int/2addr v7, v4

    .line 252
    aput-object v3, v5, v7

    .line 253
    .line 254
    add-int/2addr v6, v4

    .line 255
    iput v6, v0, Lcom/google/android/gms/internal/play_billing/V;->b:I

    .line 256
    .line 257
    add-int/lit8 v12, v12, 0x1

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/V;->c:Lcom/google/android/gms/internal/play_billing/U;

    .line 261
    .line 262
    if-nez v1, :cond_3

    .line 263
    .line 264
    iget v1, v0, Lcom/google/android/gms/internal/play_billing/V;->b:I

    .line 265
    .line 266
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/V;->a:[Ljava/lang/Object;

    .line 267
    .line 268
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/r0;->e(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/V;)Lcom/google/android/gms/internal/play_billing/r0;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/V;->c:Lcom/google/android/gms/internal/play_billing/U;

    .line 273
    .line 274
    if-nez v0, :cond_2

    .line 275
    .line 276
    sput-object v1, Lcom/google/android/gms/internal/play_billing/e0;->f:Lcom/google/android/gms/internal/play_billing/W;

    .line 277
    .line 278
    return-void

    .line 279
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/U;->a()Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    throw v0

    .line 284
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/U;->a()Ljava/lang/IllegalArgumentException;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    throw v0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/play_billing/e0;->d:I

    .line 5
    .line 6
    return-void
.end method

.method static f(I)Lcom/google/android/gms/internal/play_billing/e0;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/e0;->f:Lcom/google/android/gms/internal/play_billing/W;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/W;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/google/android/gms/internal/play_billing/e0;->e:Lcom/google/android/gms/internal/play_billing/e0;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/W;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/google/android/gms/internal/play_billing/e0;

    .line 21
    .line 22
    return-object p0
.end method
