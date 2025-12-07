.class public final Lkotlinx/coroutines/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/t;

.field private static final b:Lkotlinx/coroutines/internal/t;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    const-string v1, "NO_DECISION"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/coroutines/internal/b;->a:Lkotlinx/coroutines/internal/t;

    .line 9
    .line 10
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 11
    .line 12
    const-string v1, "CONDITION_FALSE"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lkotlinx/coroutines/internal/b;->b:Lkotlinx/coroutines/internal/t;

    .line 18
    .line 19
    return-void
.end method

.method static a(Ljava/lang/Throwable;I)V
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    if-nez p0, :cond_1

    .line 7
    .line 8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string p1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :cond_1
    throw p0
.end method

.method public static final b()I
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/internal/u;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final c()Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/b;->b:Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final d(Ljava/lang/String;JJJ)J
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    move-wide/from16 v3, p5

    .line 6
    .line 7
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/internal/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    if-nez v5, :cond_0

    .line 12
    .line 13
    move-wide/from16 v8, p1

    .line 14
    .line 15
    goto/16 :goto_9

    .line 16
    .line 17
    :cond_0
    new-instance v6, LS0/c;

    .line 18
    .line 19
    const/4 v7, 0x2

    .line 20
    const/16 v8, 0x24

    .line 21
    .line 22
    invoke-direct {v6, v7, v8}, LS0/c;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6}, LS0/a;->e()I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x1

    .line 31
    const/16 v12, 0xa

    .line 32
    .line 33
    if-gt v9, v12, :cond_1

    .line 34
    .line 35
    invoke-virtual {v6}, LS0/a;->f()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-gt v12, v6, :cond_1

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v6, 0x0

    .line 44
    :goto_0
    if-eqz v6, :cond_12

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_3

    .line 51
    .line 52
    :cond_2
    :goto_1
    move-object v15, v5

    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_3
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/16 v8, 0x30

    .line 60
    .line 61
    if-ge v7, v8, :cond_4

    .line 62
    .line 63
    const/4 v8, -0x1

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    if-ne v7, v8, :cond_5

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    goto :goto_2

    .line 69
    :cond_5
    const/4 v8, 0x1

    .line 70
    :goto_2
    if-gez v8, :cond_8

    .line 71
    .line 72
    if-ne v6, v11, :cond_6

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    const/16 v8, 0x2d

    .line 76
    .line 77
    if-ne v7, v8, :cond_7

    .line 78
    .line 79
    const-wide/high16 v7, -0x8000000000000000L

    .line 80
    .line 81
    move-wide v8, v7

    .line 82
    const/4 v7, 0x1

    .line 83
    const/4 v13, 0x1

    .line 84
    goto :goto_4

    .line 85
    :cond_7
    const/16 v8, 0x2b

    .line 86
    .line 87
    if-ne v7, v8, :cond_2

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    goto :goto_3

    .line 91
    :cond_8
    const/4 v7, 0x0

    .line 92
    :goto_3
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    const/4 v13, 0x0

    .line 98
    :goto_4
    const-wide/16 v16, 0x0

    .line 99
    .line 100
    move-wide/from16 v10, v16

    .line 101
    .line 102
    const-wide v16, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :goto_5
    if-ge v7, v6, :cond_d

    .line 108
    .line 109
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    invoke-static {v14, v12}, Ljava/lang/Character;->digit(II)I

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    if-gez v14, :cond_9

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_9
    cmp-long v15, v10, v16

    .line 121
    .line 122
    if-gez v15, :cond_a

    .line 123
    .line 124
    const-wide v18, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    cmp-long v15, v16, v18

    .line 130
    .line 131
    if-nez v15, :cond_2

    .line 132
    .line 133
    move-object v15, v5

    .line 134
    move/from16 v20, v6

    .line 135
    .line 136
    int-to-long v5, v12

    .line 137
    div-long v16, v8, v5

    .line 138
    .line 139
    cmp-long v5, v10, v16

    .line 140
    .line 141
    if-gez v5, :cond_b

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_a
    move-object v15, v5

    .line 145
    move/from16 v20, v6

    .line 146
    .line 147
    const-wide v18, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    :cond_b
    int-to-long v5, v12

    .line 153
    mul-long v10, v10, v5

    .line 154
    .line 155
    int-to-long v5, v14

    .line 156
    add-long v21, v8, v5

    .line 157
    .line 158
    cmp-long v14, v10, v21

    .line 159
    .line 160
    if-gez v14, :cond_c

    .line 161
    .line 162
    :goto_6
    const/4 v5, 0x0

    .line 163
    goto :goto_7

    .line 164
    :cond_c
    sub-long/2addr v10, v5

    .line 165
    add-int/lit8 v7, v7, 0x1

    .line 166
    .line 167
    move-object v5, v15

    .line 168
    move/from16 v6, v20

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_d
    move-object v15, v5

    .line 172
    if-eqz v13, :cond_e

    .line 173
    .line 174
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    goto :goto_7

    .line 179
    :cond_e
    neg-long v5, v10

    .line 180
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    :goto_7
    const/16 v6, 0x27

    .line 185
    .line 186
    const-string v7, "System property \'"

    .line 187
    .line 188
    if-eqz v5, :cond_11

    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 191
    .line 192
    .line 193
    move-result-wide v8

    .line 194
    cmp-long v5, v1, v8

    .line 195
    .line 196
    if-gtz v5, :cond_f

    .line 197
    .line 198
    cmp-long v5, v8, v3

    .line 199
    .line 200
    if-gtz v5, :cond_f

    .line 201
    .line 202
    const/4 v10, 0x1

    .line 203
    goto :goto_8

    .line 204
    :cond_f
    const/4 v10, 0x0

    .line 205
    :goto_8
    if-eqz v10, :cond_10

    .line 206
    .line 207
    :goto_9
    return-wide v8

    .line 208
    :cond_10
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 209
    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v0, "\' should be in range "

    .line 219
    .line 220
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v0, ".."

    .line 227
    .line 228
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v0, ", but is \'"

    .line 235
    .line 236
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v5

    .line 257
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 258
    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v0, "\' has unrecognized value \'"

    .line 268
    .line 269
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    move-object v0, v15

    .line 273
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v1

    .line 291
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 292
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v2, "radix 10 was not in valid range "

    .line 296
    .line 297
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    new-instance v2, LS0/c;

    .line 301
    .line 302
    invoke-direct {v2, v7, v8}, LS0/c;-><init>(II)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw v0
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/internal/u;->b:I

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method

.method public static f(Ljava/lang/String;IIII)I
    .locals 7

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const p3, 0x7fffffff

    .line 11
    .line 12
    .line 13
    :cond_1
    int-to-long v1, p1

    .line 14
    int-to-long v3, p2

    .line 15
    int-to-long v5, p3

    .line 16
    move-object v0, p0

    .line 17
    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/b;->d(Ljava/lang/String;JJJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    long-to-int p1, p0

    .line 22
    return p1
.end method
