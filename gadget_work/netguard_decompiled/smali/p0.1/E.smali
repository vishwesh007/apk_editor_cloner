.class public final Lp0/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lp0/E;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lp0/E;->a:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-wide/16 v7, -0x1

    .line 21
    .line 22
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    if-ge v9, v2, :cond_3

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    int-to-char v10, v9

    .line 33
    if-eq v10, v4, :cond_2

    .line 34
    .line 35
    if-eq v10, v3, :cond_1

    .line 36
    .line 37
    const/4 v11, 0x3

    .line 38
    if-eq v10, v11, :cond_0

    .line 39
    .line 40
    invoke-static {v1, v9}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v1, v9}, Lt0/a;->I(Landroid/os/Parcel;I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v1, v9}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v1, v9}, Lt0/a;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-static {v1, v2}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lm0/c;

    .line 63
    .line 64
    invoke-direct {v1, v5, v6, v7, v8}, Lm0/c;-><init>(Ljava/lang/String;IJ)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    move-object v8, v5

    .line 73
    move-object v11, v8

    .line 74
    move-object v13, v11

    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    const/4 v12, 0x0

    .line 78
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ge v3, v2, :cond_6

    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    int-to-char v4, v3

    .line 89
    packed-switch v4, :pswitch_data_1

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v3}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :pswitch_2
    invoke-static {v1, v3}, Lt0/a;->J(Landroid/os/Parcel;I)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v3, :cond_4

    .line 105
    .line 106
    move-object v13, v5

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    add-int/2addr v4, v3

    .line 113
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    .line 115
    .line 116
    move-object v13, v6

    .line 117
    goto :goto_1

    .line 118
    :pswitch_3
    invoke-static {v1, v3}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    goto :goto_1

    .line 123
    :pswitch_4
    invoke-static {v1, v3}, Lt0/a;->J(Landroid/os/Parcel;I)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-nez v3, :cond_5

    .line 132
    .line 133
    move-object v11, v5

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    add-int/2addr v4, v3

    .line 140
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 141
    .line 142
    .line 143
    move-object v11, v6

    .line 144
    goto :goto_1

    .line 145
    :pswitch_5
    invoke-static {v1, v3}, Lt0/a;->G(Landroid/os/Parcel;I)Z

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    goto :goto_1

    .line 150
    :pswitch_6
    invoke-static {v1, v3}, Lt0/a;->G(Landroid/os/Parcel;I)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    goto :goto_1

    .line 155
    :pswitch_7
    sget-object v4, Lp0/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 156
    .line 157
    invoke-static {v1, v3, v4}, Lt0/a;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    move-object v8, v3

    .line 162
    check-cast v8, Lp0/u;

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    invoke-static {v1, v2}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 166
    .line 167
    .line 168
    new-instance v1, Lp0/j;

    .line 169
    .line 170
    move-object v7, v1

    .line 171
    invoke-direct/range {v7 .. v13}, Lp0/j;-><init>(Lp0/u;ZZ[II[I)V

    .line 172
    .line 173
    .line 174
    return-object v1

    .line 175
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    const-wide/16 v3, 0x0

    .line 180
    .line 181
    const/4 v7, -0x1

    .line 182
    move-wide v12, v3

    .line 183
    move-wide v14, v12

    .line 184
    move-object/from16 v16, v5

    .line 185
    .line 186
    move-object/from16 v17, v16

    .line 187
    .line 188
    const/4 v9, 0x0

    .line 189
    const/4 v10, 0x0

    .line 190
    const/4 v11, 0x0

    .line 191
    const/16 v18, 0x0

    .line 192
    .line 193
    const/16 v19, -0x1

    .line 194
    .line 195
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-ge v3, v2, :cond_7

    .line 200
    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    int-to-char v4, v3

    .line 206
    packed-switch v4, :pswitch_data_2

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v3}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :pswitch_9
    invoke-static {v1, v3}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 214
    .line 215
    .line 216
    move-result v19

    .line 217
    goto :goto_2

    .line 218
    :pswitch_a
    invoke-static {v1, v3}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 219
    .line 220
    .line 221
    move-result v18

    .line 222
    goto :goto_2

    .line 223
    :pswitch_b
    invoke-static {v1, v3}, Lt0/a;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v17

    .line 227
    goto :goto_2

    .line 228
    :pswitch_c
    invoke-static {v1, v3}, Lt0/a;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v16

    .line 232
    goto :goto_2

    .line 233
    :pswitch_d
    invoke-static {v1, v3}, Lt0/a;->I(Landroid/os/Parcel;I)J

    .line 234
    .line 235
    .line 236
    move-result-wide v14

    .line 237
    goto :goto_2

    .line 238
    :pswitch_e
    invoke-static {v1, v3}, Lt0/a;->I(Landroid/os/Parcel;I)J

    .line 239
    .line 240
    .line 241
    move-result-wide v12

    .line 242
    goto :goto_2

    .line 243
    :pswitch_f
    invoke-static {v1, v3}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    goto :goto_2

    .line 248
    :pswitch_10
    invoke-static {v1, v3}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    goto :goto_2

    .line 253
    :pswitch_11
    invoke-static {v1, v3}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    goto :goto_2

    .line 258
    :cond_7
    invoke-static {v1, v2}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 259
    .line 260
    .line 261
    new-instance v1, Lp0/p;

    .line 262
    .line 263
    move-object v8, v1

    .line 264
    invoke-direct/range {v8 .. v19}, Lp0/p;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 265
    .line 266
    .line 267
    return-object v1

    .line 268
    :goto_3
    invoke-static/range {p1 .. p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    move-object v6, v5

    .line 273
    move-object v7, v6

    .line 274
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-ge v8, v2, :cond_b

    .line 279
    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    int-to-char v9, v8

    .line 285
    if-eq v9, v4, :cond_9

    .line 286
    .line 287
    if-eq v9, v3, :cond_8

    .line 288
    .line 289
    invoke-static {v1, v8}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_8
    invoke-static {v1, v8}, Lt0/a;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    goto :goto_4

    .line 298
    :cond_9
    invoke-static {v1, v8}, Lt0/a;->J(Landroid/os/Parcel;I)I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    if-nez v7, :cond_a

    .line 307
    .line 308
    move-object v7, v5

    .line 309
    goto :goto_4

    .line 310
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    add-int/2addr v8, v7

    .line 315
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 316
    .line 317
    .line 318
    move-object v7, v9

    .line 319
    goto :goto_4

    .line 320
    :cond_b
    invoke-static {v1, v2}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 321
    .line 322
    .line 323
    new-instance v1, Ly0/g;

    .line 324
    .line 325
    invoke-direct {v1, v6, v7}, Ly0/g;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 326
    .line 327
    .line 328
    return-object v1

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lp0/E;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-array p1, p1, [Lm0/c;

    .line 8
    .line 9
    return-object p1

    .line 10
    :pswitch_1
    new-array p1, p1, [Lp0/j;

    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_2
    new-array p1, p1, [Lp0/p;

    .line 14
    .line 15
    return-object p1

    .line 16
    :goto_0
    new-array p1, p1, [Ly0/g;

    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
