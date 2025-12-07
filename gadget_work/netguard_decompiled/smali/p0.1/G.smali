.class public final Lp0/G;
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
    iput p1, p0, Lp0/G;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static a(Lp0/k;Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lt0/a;->f(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lp0/k;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p1, v2, v1}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    iget v2, p0, Lp0/k;->b:I

    .line 13
    .line 14
    invoke-static {p1, v1, v2}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    iget v2, p0, Lp0/k;->c:I

    .line 19
    .line 20
    invoke-static {p1, v1, v2}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lp0/k;->d:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    invoke-static {p1, v2, v1}, Lt0/a;->T(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    iget-object v2, p0, Lp0/k;->e:Landroid/os/IBinder;

    .line 31
    .line 32
    invoke-static {p1, v1, v2}, Lt0/a;->P(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    iget-object v2, p0, Lp0/k;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 37
    .line 38
    invoke-static {p1, v1, v2, p2}, Lt0/a;->V(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    iget-object v2, p0, Lp0/k;->g:Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-static {p1, v1, v2}, Lt0/a;->O(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x8

    .line 48
    .line 49
    iget-object v2, p0, Lp0/k;->h:Landroid/accounts/Account;

    .line 50
    .line 51
    invoke-static {p1, v1, v2, p2}, Lt0/a;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0xa

    .line 55
    .line 56
    iget-object v2, p0, Lp0/k;->i:[Lm0/c;

    .line 57
    .line 58
    invoke-static {p1, v1, v2, p2}, Lt0/a;->V(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 59
    .line 60
    .line 61
    const/16 v1, 0xb

    .line 62
    .line 63
    iget-object v2, p0, Lp0/k;->j:[Lm0/c;

    .line 64
    .line 65
    invoke-static {p1, v1, v2, p2}, Lt0/a;->V(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 66
    .line 67
    .line 68
    const/16 p2, 0xc

    .line 69
    .line 70
    iget-boolean v1, p0, Lp0/k;->k:Z

    .line 71
    .line 72
    invoke-static {p1, p2, v1}, Lt0/a;->N(Landroid/os/Parcel;IZ)V

    .line 73
    .line 74
    .line 75
    const/16 p2, 0xd

    .line 76
    .line 77
    iget v1, p0, Lp0/k;->l:I

    .line 78
    .line 79
    invoke-static {p1, p2, v1}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 80
    .line 81
    .line 82
    const/16 p2, 0xe

    .line 83
    .line 84
    iget-boolean v1, p0, Lp0/k;->m:Z

    .line 85
    .line 86
    invoke-static {p1, p2, v1}, Lt0/a;->N(Landroid/os/Parcel;IZ)V

    .line 87
    .line 88
    .line 89
    const/16 p2, 0xf

    .line 90
    .line 91
    invoke-virtual {p0}, Lp0/k;->b()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p1, p2, p0}, Lt0/a;->T(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0}, Lt0/a;->p(Landroid/os/Parcel;I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lp0/G;->a:I

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
    goto/16 :goto_2

    .line 15
    .line 16
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sget-object v3, Lp0/k;->o:[Lcom/google/android/gms/common/api/Scope;

    .line 21
    .line 22
    new-instance v4, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v7, Lp0/k;->p:[Lm0/c;

    .line 28
    .line 29
    move-object v14, v3

    .line 30
    move-object v15, v4

    .line 31
    move-object v12, v5

    .line 32
    move-object v13, v12

    .line 33
    move-object/from16 v16, v13

    .line 34
    .line 35
    move-object/from16 v22, v16

    .line 36
    .line 37
    move-object/from16 v17, v7

    .line 38
    .line 39
    move-object/from16 v18, v17

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    const/16 v19, 0x0

    .line 45
    .line 46
    const/16 v20, 0x0

    .line 47
    .line 48
    const/16 v21, 0x0

    .line 49
    .line 50
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ge v3, v2, :cond_2

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    int-to-char v4, v3

    .line 61
    packed-switch v4, :pswitch_data_1

    .line 62
    .line 63
    .line 64
    :pswitch_1
    invoke-static {v1, v3}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_2
    invoke-static {v1, v3}, Lt0/a;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v22

    .line 72
    goto :goto_0

    .line 73
    :pswitch_3
    invoke-static {v1, v3}, Lt0/a;->G(Landroid/os/Parcel;I)Z

    .line 74
    .line 75
    .line 76
    move-result v21

    .line 77
    goto :goto_0

    .line 78
    :pswitch_4
    invoke-static {v1, v3}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 79
    .line 80
    .line 81
    move-result v20

    .line 82
    goto :goto_0

    .line 83
    :pswitch_5
    invoke-static {v1, v3}, Lt0/a;->G(Landroid/os/Parcel;I)Z

    .line 84
    .line 85
    .line 86
    move-result v19

    .line 87
    goto :goto_0

    .line 88
    :pswitch_6
    sget-object v4, Lm0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 89
    .line 90
    invoke-static {v1, v3, v4}, Lt0/a;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    move-object/from16 v18, v3

    .line 95
    .line 96
    check-cast v18, [Lm0/c;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_7
    sget-object v4, Lm0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 100
    .line 101
    invoke-static {v1, v3, v4}, Lt0/a;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object/from16 v17, v3

    .line 106
    .line 107
    check-cast v17, [Lm0/c;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_8
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 111
    .line 112
    invoke-static {v1, v3, v4}, Lt0/a;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object/from16 v16, v3

    .line 117
    .line 118
    check-cast v16, Landroid/accounts/Account;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_9
    invoke-static {v1, v3}, Lt0/a;->J(Landroid/os/Parcel;I)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v3, :cond_0

    .line 130
    .line 131
    move-object v15, v5

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    add-int/2addr v4, v3

    .line 138
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 139
    .line 140
    .line 141
    move-object v15, v6

    .line 142
    goto :goto_0

    .line 143
    :pswitch_a
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    .line 145
    invoke-static {v1, v3, v4}, Lt0/a;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    move-object v14, v3

    .line 150
    check-cast v14, [Lcom/google/android/gms/common/api/Scope;

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :pswitch_b
    invoke-static {v1, v3}, Lt0/a;->J(Landroid/os/Parcel;I)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-nez v3, :cond_1

    .line 162
    .line 163
    move-object v13, v5

    .line 164
    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    add-int/2addr v4, v3

    .line 170
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 171
    .line 172
    .line 173
    move-object v13, v6

    .line 174
    goto :goto_0

    .line 175
    :pswitch_c
    invoke-static {v1, v3}, Lt0/a;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_d
    invoke-static {v1, v3}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :pswitch_e
    invoke-static {v1, v3}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :pswitch_f
    invoke-static {v1, v3}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_2
    invoke-static {v1, v2}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 200
    .line 201
    .line 202
    new-instance v1, Lp0/k;

    .line 203
    .line 204
    move-object v8, v1

    .line 205
    invoke-direct/range {v8 .. v22}, Lp0/k;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lm0/c;[Lm0/c;ZIZLjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-object v1

    .line 209
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    move-object v6, v5

    .line 214
    const/4 v7, 0x0

    .line 215
    const/4 v8, 0x0

    .line 216
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-ge v9, v2, :cond_7

    .line 221
    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    int-to-char v10, v9

    .line 227
    if-eq v10, v4, :cond_6

    .line 228
    .line 229
    if-eq v10, v3, :cond_5

    .line 230
    .line 231
    const/4 v11, 0x3

    .line 232
    if-eq v10, v11, :cond_4

    .line 233
    .line 234
    const/4 v11, 0x4

    .line 235
    if-eq v10, v11, :cond_3

    .line 236
    .line 237
    invoke-static {v1, v9}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_3
    sget-object v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 242
    .line 243
    invoke-static {v1, v9, v6}, Lt0/a;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    check-cast v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_4
    invoke-static {v1, v9}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    goto :goto_1

    .line 255
    :cond_5
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 256
    .line 257
    invoke-static {v1, v9, v5}, Lt0/a;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    check-cast v5, Landroid/accounts/Account;

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_6
    invoke-static {v1, v9}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    goto :goto_1

    .line 269
    :cond_7
    invoke-static {v1, v2}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 270
    .line 271
    .line 272
    new-instance v1, Lp0/F;

    .line 273
    .line 274
    invoke-direct {v1, v7, v5, v8, v6}, Lp0/F;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 275
    .line 276
    .line 277
    return-object v1

    .line 278
    :goto_2
    invoke-static/range {p1 .. p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    :goto_3
    move-object v7, v5

    .line 283
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    if-ge v8, v2, :cond_b

    .line 288
    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    int-to-char v9, v8

    .line 294
    if-eq v9, v4, :cond_a

    .line 295
    .line 296
    if-eq v9, v3, :cond_8

    .line 297
    .line 298
    invoke-static {v1, v8}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_8
    sget-object v7, Lp0/p;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 303
    .line 304
    invoke-static {v1, v8}, Lt0/a;->J(Landroid/os/Parcel;I)I

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    if-nez v8, :cond_9

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_9
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    add-int/2addr v9, v8

    .line 320
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_a
    invoke-static {v1, v8}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    goto :goto_4

    .line 329
    :cond_b
    invoke-static {v1, v2}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 330
    .line 331
    .line 332
    new-instance v1, Lp0/v;

    .line 333
    .line 334
    invoke-direct {v1, v7, v6}, Lp0/v;-><init>(Ljava/util/List;I)V

    .line 335
    .line 336
    .line 337
    return-object v1

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_0
    .end packed-switch

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lp0/G;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-array p1, p1, [Lp0/k;

    .line 8
    .line 9
    return-object p1

    .line 10
    :pswitch_1
    new-array p1, p1, [Lp0/F;

    .line 11
    .line 12
    return-object p1

    .line 13
    :goto_0
    new-array p1, p1, [Lp0/v;

    .line 14
    .line 15
    return-object p1

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
