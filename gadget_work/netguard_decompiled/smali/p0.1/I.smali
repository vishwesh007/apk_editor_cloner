.class public final Lp0/I;
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
    iput p1, p0, Lp0/I;->a:I

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
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lp0/I;->a:I

    .line 3
    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :pswitch_0
    invoke-static {p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    move-object v2, v3

    .line 20
    move-object v8, v2

    .line 21
    move-object v9, v8

    .line 22
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    if-ge v10, v1, :cond_5

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v10

    .line 32
    int-to-char v11, v10

    .line 33
    if-eq v11, v7, :cond_3

    .line 34
    .line 35
    if-eq v11, v6, :cond_2

    .line 36
    .line 37
    if-eq v11, v5, :cond_1

    .line 38
    .line 39
    if-eq v11, v4, :cond_0

    .line 40
    .line 41
    invoke-static {p1, v10}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object v9, Lp0/j;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    .line 47
    invoke-static {p1, v10, v9}, Lt0/a;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    check-cast v9, Lp0/j;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p1, v10}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget-object v8, Lm0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    .line 61
    invoke-static {p1, v10, v8}, Lt0/a;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    check-cast v8, [Lm0/c;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-static {p1, v10}, Lt0/a;->J(Landroid/os/Parcel;I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    move-object v2, v3

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    add-int/2addr v10, v2

    .line 85
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    .line 87
    .line 88
    move-object v2, v11

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    invoke-static {p1, v1}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Lp0/U;

    .line 94
    .line 95
    invoke-direct {p1, v2, v8, v0, v9}, Lp0/U;-><init>(Landroid/os/Bundle;[Lm0/c;ILp0/j;)V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :pswitch_1
    invoke-static {p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    move-object v10, v3

    .line 104
    move-object v11, v10

    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v12, 0x0

    .line 107
    const/4 v13, 0x0

    .line 108
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-ge v0, v1, :cond_c

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    int-to-char v8, v0

    .line 119
    if-eq v8, v7, :cond_b

    .line 120
    .line 121
    if-eq v8, v6, :cond_9

    .line 122
    .line 123
    if-eq v8, v5, :cond_8

    .line 124
    .line 125
    if-eq v8, v4, :cond_7

    .line 126
    .line 127
    if-eq v8, v2, :cond_6

    .line 128
    .line 129
    invoke-static {p1, v0}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    invoke-static {p1, v0}, Lt0/a;->G(Landroid/os/Parcel;I)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    goto :goto_1

    .line 138
    :cond_7
    invoke-static {p1, v0}, Lt0/a;->G(Landroid/os/Parcel;I)Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    goto :goto_1

    .line 143
    :cond_8
    sget-object v8, Lm0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    .line 145
    invoke-static {p1, v0, v8}, Lt0/a;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    move-object v11, v0

    .line 150
    check-cast v11, Lm0/a;

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_9
    invoke-static {p1, v0}, Lt0/a;->J(Landroid/os/Parcel;I)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-nez v0, :cond_a

    .line 162
    .line 163
    move-object v10, v3

    .line 164
    goto :goto_1

    .line 165
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    add-int/2addr v8, v0

    .line 170
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_b
    invoke-static {p1, v0}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    goto :goto_1

    .line 179
    :cond_c
    invoke-static {p1, v1}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 180
    .line 181
    .line 182
    new-instance p1, Lp0/H;

    .line 183
    .line 184
    move-object v8, p1

    .line 185
    invoke-direct/range {v8 .. v13}, Lp0/H;-><init>(ILandroid/os/IBinder;Lm0/a;ZZ)V

    .line 186
    .line 187
    .line 188
    return-object p1

    .line 189
    :goto_2
    invoke-static {p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    const/4 v9, 0x0

    .line 194
    const/4 v10, 0x0

    .line 195
    const/4 v11, 0x0

    .line 196
    const/4 v12, 0x0

    .line 197
    const/4 v13, 0x0

    .line 198
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-ge v0, v1, :cond_12

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    int-to-char v3, v0

    .line 209
    if-eq v3, v7, :cond_11

    .line 210
    .line 211
    if-eq v3, v6, :cond_10

    .line 212
    .line 213
    if-eq v3, v5, :cond_f

    .line 214
    .line 215
    if-eq v3, v4, :cond_e

    .line 216
    .line 217
    if-eq v3, v2, :cond_d

    .line 218
    .line 219
    invoke-static {p1, v0}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_d
    invoke-static {p1, v0}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    goto :goto_3

    .line 228
    :cond_e
    invoke-static {p1, v0}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    goto :goto_3

    .line 233
    :cond_f
    invoke-static {p1, v0}, Lt0/a;->G(Landroid/os/Parcel;I)Z

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    goto :goto_3

    .line 238
    :cond_10
    invoke-static {p1, v0}, Lt0/a;->G(Landroid/os/Parcel;I)Z

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    goto :goto_3

    .line 243
    :cond_11
    invoke-static {p1, v0}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    goto :goto_3

    .line 248
    :cond_12
    invoke-static {p1, v1}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 249
    .line 250
    .line 251
    new-instance p1, Lp0/u;

    .line 252
    .line 253
    move-object v8, p1

    .line 254
    invoke-direct/range {v8 .. v13}, Lp0/u;-><init>(IZZII)V

    .line 255
    .line 256
    .line 257
    return-object p1

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lp0/I;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-array p1, p1, [Lp0/U;

    .line 8
    .line 9
    return-object p1

    .line 10
    :pswitch_1
    new-array p1, p1, [Lp0/H;

    .line 11
    .line 12
    return-object p1

    .line 13
    :goto_0
    new-array p1, p1, [Lp0/u;

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
