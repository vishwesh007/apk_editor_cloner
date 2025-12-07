.class public final Landroidx/core/graphics/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:C

.field public b:[F


# direct methods
.method constructor <init>(C[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-char p1, p0, Landroidx/core/graphics/f;->a:C

    .line 3
    iput-object p2, p0, Landroidx/core/graphics/f;->b:[F

    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/f;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-char v0, p1, Landroidx/core/graphics/f;->a:C

    iput-char v0, p0, Landroidx/core/graphics/f;->a:C

    .line 6
    iget-object p1, p1, Landroidx/core/graphics/f;->b:[F

    array-length v0, p1

    invoke-static {p1, v0}, Landroidx/core/graphics/g;->d([FI)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/core/graphics/f;->b:[F

    return-void
.end method

.method private static a(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 51

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v0, p5

    move/from16 v2, p6

    move/from16 v7, p7

    move/from16 v9, p9

    float-to-double v4, v7

    .line 1
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v14, v1

    mul-double v16, v14, v10

    move/from16 v6, p2

    float-to-double v7, v6

    mul-double v18, v7, v12

    add-double v18, v18, v16

    move-wide/from16 v16, v14

    float-to-double v14, v0

    div-double v18, v18, v14

    neg-float v6, v1

    move-wide/from16 v20, v4

    float-to-double v4, v6

    mul-double v4, v4, v12

    mul-double v22, v7, v10

    add-double v22, v22, v4

    float-to-double v4, v2

    div-double v22, v22, v4

    move-wide/from16 v24, v7

    float-to-double v6, v3

    mul-double v6, v6, v10

    move/from16 v8, p4

    float-to-double v1, v8

    mul-double v26, v1, v12

    add-double v26, v26, v6

    div-double v26, v26, v14

    neg-float v6, v3

    float-to-double v6, v6

    mul-double v6, v6, v12

    mul-double v1, v1, v10

    add-double/2addr v1, v6

    div-double/2addr v1, v4

    sub-double v6, v18, v26

    sub-double v28, v22, v1

    add-double v30, v18, v26

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    add-double v34, v22, v1

    div-double v34, v34, v32

    mul-double v36, v6, v6

    mul-double v38, v28, v28

    move-wide/from16 v40, v12

    add-double v12, v38, v36

    const-string v3, "PathParser"

    const-wide/16 v36, 0x0

    cmpl-double v38, v12, v36

    if-nez v38, :cond_0

    const-string v0, " Points are coincident"

    .line 4
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    div-double v42, v38, v12

    const-wide/high16 v44, 0x3fd0000000000000L    # 0.25

    sub-double v42, v42, v44

    cmpg-double v44, v42, v36

    if-gez v44, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Points are too far apart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v1, v3

    double-to-float v1, v1

    mul-float v5, v0, v1

    mul-float v6, p6, v1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 7
    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/f;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    return-void

    .line 8
    :cond_1
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v6, v6, v12

    mul-double v12, v12, v28

    move/from16 v0, p8

    if-ne v0, v9, :cond_2

    sub-double v30, v30, v12

    add-double v34, v34, v6

    goto :goto_0

    :cond_2
    add-double v30, v30, v12

    sub-double v34, v34, v6

    :goto_0
    sub-double v6, v22, v34

    sub-double v12, v18, v30

    .line 9
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v1, v1, v34

    sub-double v12, v26, v30

    .line 10
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double/2addr v0, v6

    const/4 v2, 0x0

    cmpl-double v3, v0, v36

    if-ltz v3, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-eq v9, v8, :cond_5

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v3, :cond_4

    sub-double/2addr v0, v8

    goto :goto_2

    :cond_4
    add-double/2addr v0, v8

    :cond_5
    :goto_2
    mul-double v30, v30, v14

    mul-double v34, v34, v4

    mul-double v8, v30, v10

    mul-double v12, v34, v40

    sub-double/2addr v8, v12

    mul-double v30, v30, v40

    mul-double v34, v34, v10

    add-double v34, v34, v30

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double v12, v0, v10

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    div-double v12, v12, v18

    .line 11
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v3, v12

    .line 12
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 13
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 14
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 15
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    neg-double v10, v14

    mul-double v26, v10, v12

    mul-double v28, v26, v22

    mul-double v30, v4, v18

    mul-double v36, v30, v20

    sub-double v28, v28, v36

    mul-double v10, v10, v18

    mul-double v22, v22, v10

    mul-double v4, v4, v12

    mul-double v20, v20, v4

    add-double v20, v20, v22

    move-wide/from16 p3, v6

    int-to-double v6, v3

    div-double/2addr v0, v6

    move-wide/from16 v6, p3

    :goto_3
    if-ge v2, v3, :cond_6

    add-double v22, v6, v0

    .line 16
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    .line 17
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v42, v14, v12

    mul-double v42, v42, v40

    add-double v42, v42, v8

    mul-double v44, v30, v36

    move-wide/from16 p3, v0

    sub-double v0, v42, v44

    mul-double v42, v14, v18

    mul-double v42, v42, v40

    add-double v42, v42, v34

    mul-double v44, v4, v36

    move-wide/from16 p5, v8

    add-double v8, v44, v42

    mul-double v42, v26, v36

    mul-double v44, v30, v40

    sub-double v42, v42, v44

    mul-double v36, v36, v10

    mul-double v40, v40, v4

    add-double v36, v40, v36

    sub-double v6, v22, v6

    div-double v40, v6, v32

    .line 18
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->tan(D)D

    move-result-wide v40

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v44, 0x4008000000000000L    # 3.0

    mul-double v46, v40, v44

    mul-double v46, v46, v40

    const-wide/high16 v40, 0x4010000000000000L    # 4.0

    add-double v46, v46, v40

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    sub-double v46, v46, v38

    mul-double v46, v46, v6

    div-double v46, v46, v44

    mul-double v28, v28, v46

    add-double v6, v28, v16

    mul-double v20, v20, v46

    move/from16 v16, v3

    move-wide/from16 p1, v4

    add-double v3, v20, v24

    mul-double v20, v46, v42

    move-wide/from16 p7, v10

    sub-double v10, v0, v20

    mul-double v46, v46, v36

    move-wide/from16 v20, v12

    sub-double v12, v8, v46

    const/4 v5, 0x0

    move-wide/from16 v24, v14

    move-object/from16 v14, p0

    .line 20
    invoke-virtual {v14, v5, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v5, v6

    double-to-float v3, v3

    double-to-float v4, v10

    double-to-float v6, v12

    double-to-float v7, v0

    double-to-float v10, v8

    move-object/from16 v44, p0

    move/from16 v45, v5

    move/from16 v46, v3

    move/from16 v47, v4

    move/from16 v48, v6

    move/from16 v49, v7

    move/from16 v50, v10

    .line 21
    invoke-virtual/range {v44 .. v50}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v10, p7

    move/from16 v3, v16

    move-wide/from16 v12, v20

    move-wide/from16 v6, v22

    move-wide/from16 v14, v24

    move-wide/from16 v20, v36

    move-wide/from16 v28, v42

    move-wide/from16 v16, v0

    move-wide/from16 v24, v8

    move-wide/from16 v0, p3

    move-wide/from16 v8, p5

    goto/16 :goto_3

    :cond_6
    return-void
.end method

.method public static b([Landroidx/core/graphics/f;Landroid/graphics/Path;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    const/4 v12, 0x6

    .line 6
    new-array v13, v12, [F

    .line 7
    .line 8
    const/16 v14, 0x6d

    .line 9
    .line 10
    const/4 v15, 0x0

    .line 11
    const/16 v1, 0x6d

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    :goto_0
    array-length v2, v0

    .line 15
    if-ge v10, v2, :cond_21

    .line 16
    .line 17
    aget-object v2, v0, v10

    .line 18
    .line 19
    iget-char v9, v2, Landroidx/core/graphics/f;->a:C

    .line 20
    .line 21
    iget-object v8, v2, Landroidx/core/graphics/f;->b:[F

    .line 22
    .line 23
    aget v2, v13, v15

    .line 24
    .line 25
    const/16 v16, 0x1

    .line 26
    .line 27
    aget v3, v13, v16

    .line 28
    .line 29
    const/16 v17, 0x2

    .line 30
    .line 31
    aget v4, v13, v17

    .line 32
    .line 33
    const/16 v18, 0x3

    .line 34
    .line 35
    aget v5, v13, v18

    .line 36
    .line 37
    const/16 v19, 0x4

    .line 38
    .line 39
    aget v6, v13, v19

    .line 40
    .line 41
    const/16 v20, 0x5

    .line 42
    .line 43
    aget v7, v13, v20

    .line 44
    .line 45
    sparse-switch v9, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v11, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 53
    .line 54
    .line 55
    move v2, v6

    .line 56
    move v4, v2

    .line 57
    move v3, v7

    .line 58
    move v5, v3

    .line 59
    goto :goto_1

    .line 60
    :sswitch_1
    const/16 v21, 0x4

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :sswitch_2
    const/16 v21, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :sswitch_3
    const/16 v21, 0x6

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :sswitch_4
    const/16 v21, 0x7

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :goto_1
    const/16 v21, 0x2

    .line 73
    .line 74
    :goto_2
    move/from16 v22, v6

    .line 75
    .line 76
    move/from16 v23, v7

    .line 77
    .line 78
    move v7, v2

    .line 79
    move v6, v3

    .line 80
    const/4 v3, 0x0

    .line 81
    :goto_3
    array-length v2, v8

    .line 82
    if-ge v3, v2, :cond_20

    .line 83
    .line 84
    const/16 v2, 0x41

    .line 85
    .line 86
    if-eq v9, v2, :cond_1d

    .line 87
    .line 88
    const/16 v2, 0x43

    .line 89
    .line 90
    if-eq v9, v2, :cond_1c

    .line 91
    .line 92
    const/16 v15, 0x48

    .line 93
    .line 94
    if-eq v9, v15, :cond_1b

    .line 95
    .line 96
    const/16 v15, 0x51

    .line 97
    .line 98
    if-eq v9, v15, :cond_1a

    .line 99
    .line 100
    const/16 v12, 0x56

    .line 101
    .line 102
    if-eq v9, v12, :cond_19

    .line 103
    .line 104
    const/16 v12, 0x61

    .line 105
    .line 106
    if-eq v9, v12, :cond_16

    .line 107
    .line 108
    const/16 v12, 0x63

    .line 109
    .line 110
    if-eq v9, v12, :cond_15

    .line 111
    .line 112
    const/16 v2, 0x68

    .line 113
    .line 114
    if-eq v9, v2, :cond_14

    .line 115
    .line 116
    const/16 v2, 0x71

    .line 117
    .line 118
    if-eq v9, v2, :cond_13

    .line 119
    .line 120
    const/16 v12, 0x76

    .line 121
    .line 122
    if-eq v9, v12, :cond_12

    .line 123
    .line 124
    const/16 v12, 0x4c

    .line 125
    .line 126
    if-eq v9, v12, :cond_11

    .line 127
    .line 128
    const/16 v12, 0x4d

    .line 129
    .line 130
    if-eq v9, v12, :cond_f

    .line 131
    .line 132
    const/16 v12, 0x53

    .line 133
    .line 134
    const/16 v15, 0x73

    .line 135
    .line 136
    const/high16 v28, 0x40000000    # 2.0f

    .line 137
    .line 138
    if-eq v9, v12, :cond_c

    .line 139
    .line 140
    const/16 v12, 0x54

    .line 141
    .line 142
    const/16 v2, 0x74

    .line 143
    .line 144
    if-eq v9, v12, :cond_9

    .line 145
    .line 146
    const/16 v12, 0x6c

    .line 147
    .line 148
    if-eq v9, v12, :cond_8

    .line 149
    .line 150
    if-eq v9, v14, :cond_6

    .line 151
    .line 152
    if-eq v9, v15, :cond_3

    .line 153
    .line 154
    if-eq v9, v2, :cond_0

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_0
    const/16 v12, 0x71

    .line 158
    .line 159
    if-eq v1, v12, :cond_2

    .line 160
    .line 161
    if-eq v1, v2, :cond_2

    .line 162
    .line 163
    const/16 v2, 0x51

    .line 164
    .line 165
    if-eq v1, v2, :cond_2

    .line 166
    .line 167
    const/16 v2, 0x54

    .line 168
    .line 169
    if-ne v1, v2, :cond_1

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_1
    const/4 v1, 0x0

    .line 173
    const/4 v12, 0x0

    .line 174
    goto :goto_5

    .line 175
    :cond_2
    :goto_4
    sub-float v12, v7, v4

    .line 176
    .line 177
    sub-float v1, v6, v5

    .line 178
    .line 179
    :goto_5
    add-int/lit8 v2, v3, 0x0

    .line 180
    .line 181
    aget v4, v8, v2

    .line 182
    .line 183
    add-int/lit8 v5, v3, 0x1

    .line 184
    .line 185
    aget v15, v8, v5

    .line 186
    .line 187
    invoke-virtual {v11, v12, v1, v4, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 188
    .line 189
    .line 190
    add-float/2addr v12, v7

    .line 191
    add-float/2addr v1, v6

    .line 192
    aget v2, v8, v2

    .line 193
    .line 194
    add-float/2addr v7, v2

    .line 195
    aget v2, v8, v5

    .line 196
    .line 197
    add-float/2addr v6, v2

    .line 198
    move v5, v1

    .line 199
    move v4, v12

    .line 200
    :goto_6
    move/from16 v29, v3

    .line 201
    .line 202
    goto/16 :goto_12

    .line 203
    .line 204
    :cond_3
    const/16 v2, 0x63

    .line 205
    .line 206
    if-eq v1, v2, :cond_5

    .line 207
    .line 208
    if-eq v1, v15, :cond_5

    .line 209
    .line 210
    const/16 v2, 0x43

    .line 211
    .line 212
    if-eq v1, v2, :cond_5

    .line 213
    .line 214
    const/16 v2, 0x53

    .line 215
    .line 216
    if-ne v1, v2, :cond_4

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_4
    const/4 v2, 0x0

    .line 220
    const/16 v24, 0x0

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_5
    :goto_7
    sub-float v1, v7, v4

    .line 224
    .line 225
    sub-float v2, v6, v5

    .line 226
    .line 227
    move/from16 v24, v2

    .line 228
    .line 229
    move v2, v1

    .line 230
    :goto_8
    add-int/lit8 v12, v3, 0x0

    .line 231
    .line 232
    aget v4, v8, v12

    .line 233
    .line 234
    add-int/lit8 v15, v3, 0x1

    .line 235
    .line 236
    aget v5, v8, v15

    .line 237
    .line 238
    add-int/lit8 v25, v3, 0x2

    .line 239
    .line 240
    aget v26, v8, v25

    .line 241
    .line 242
    add-int/lit8 v27, v3, 0x3

    .line 243
    .line 244
    aget v28, v8, v27

    .line 245
    .line 246
    move-object/from16 v1, p1

    .line 247
    .line 248
    move/from16 v29, v3

    .line 249
    .line 250
    move/from16 v3, v24

    .line 251
    .line 252
    move v14, v6

    .line 253
    move/from16 v6, v26

    .line 254
    .line 255
    move v0, v7

    .line 256
    move/from16 v7, v28

    .line 257
    .line 258
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 259
    .line 260
    .line 261
    aget v1, v8, v12

    .line 262
    .line 263
    add-float/2addr v1, v0

    .line 264
    aget v2, v8, v15

    .line 265
    .line 266
    add-float/2addr v2, v14

    .line 267
    aget v3, v8, v25

    .line 268
    .line 269
    add-float v7, v0, v3

    .line 270
    .line 271
    aget v0, v8, v27

    .line 272
    .line 273
    goto/16 :goto_10

    .line 274
    .line 275
    :cond_6
    move/from16 v29, v3

    .line 276
    .line 277
    move v14, v6

    .line 278
    move v0, v7

    .line 279
    add-int/lit8 v3, v29, 0x0

    .line 280
    .line 281
    aget v1, v8, v3

    .line 282
    .line 283
    add-float v7, v0, v1

    .line 284
    .line 285
    add-int/lit8 v3, v29, 0x1

    .line 286
    .line 287
    aget v0, v8, v3

    .line 288
    .line 289
    add-float v6, v14, v0

    .line 290
    .line 291
    if-lez v29, :cond_7

    .line 292
    .line 293
    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_12

    .line 297
    .line 298
    :cond_7
    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 299
    .line 300
    .line 301
    move/from16 v23, v6

    .line 302
    .line 303
    move/from16 v22, v7

    .line 304
    .line 305
    goto/16 :goto_d

    .line 306
    .line 307
    :cond_8
    move/from16 v29, v3

    .line 308
    .line 309
    move v14, v6

    .line 310
    move v0, v7

    .line 311
    add-int/lit8 v3, v29, 0x0

    .line 312
    .line 313
    aget v1, v8, v3

    .line 314
    .line 315
    add-int/lit8 v2, v29, 0x1

    .line 316
    .line 317
    aget v6, v8, v2

    .line 318
    .line 319
    invoke-virtual {v11, v1, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 320
    .line 321
    .line 322
    aget v1, v8, v3

    .line 323
    .line 324
    add-float v7, v0, v1

    .line 325
    .line 326
    aget v0, v8, v2

    .line 327
    .line 328
    goto/16 :goto_f

    .line 329
    .line 330
    :cond_9
    move/from16 v29, v3

    .line 331
    .line 332
    move v14, v6

    .line 333
    move v0, v7

    .line 334
    const/16 v3, 0x71

    .line 335
    .line 336
    if-eq v1, v3, :cond_b

    .line 337
    .line 338
    if-eq v1, v2, :cond_b

    .line 339
    .line 340
    const/16 v2, 0x51

    .line 341
    .line 342
    if-eq v1, v2, :cond_b

    .line 343
    .line 344
    const/16 v2, 0x54

    .line 345
    .line 346
    if-ne v1, v2, :cond_a

    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_a
    move v7, v0

    .line 350
    move v6, v14

    .line 351
    goto :goto_a

    .line 352
    :cond_b
    :goto_9
    mul-float v7, v0, v28

    .line 353
    .line 354
    sub-float/2addr v7, v4

    .line 355
    mul-float v6, v14, v28

    .line 356
    .line 357
    sub-float/2addr v6, v5

    .line 358
    :goto_a
    add-int/lit8 v3, v29, 0x0

    .line 359
    .line 360
    aget v0, v8, v3

    .line 361
    .line 362
    add-int/lit8 v1, v29, 0x1

    .line 363
    .line 364
    aget v2, v8, v1

    .line 365
    .line 366
    invoke-virtual {v11, v7, v6, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 367
    .line 368
    .line 369
    aget v0, v8, v3

    .line 370
    .line 371
    aget v1, v8, v1

    .line 372
    .line 373
    move v5, v6

    .line 374
    move v4, v7

    .line 375
    move-object/from16 v27, v8

    .line 376
    .line 377
    move/from16 v25, v9

    .line 378
    .line 379
    move/from16 v28, v10

    .line 380
    .line 381
    move v7, v0

    .line 382
    move v6, v1

    .line 383
    goto/16 :goto_19

    .line 384
    .line 385
    :cond_c
    move/from16 v29, v3

    .line 386
    .line 387
    move v14, v6

    .line 388
    move v0, v7

    .line 389
    const/16 v2, 0x63

    .line 390
    .line 391
    if-eq v1, v2, :cond_e

    .line 392
    .line 393
    if-eq v1, v15, :cond_e

    .line 394
    .line 395
    const/16 v2, 0x43

    .line 396
    .line 397
    if-eq v1, v2, :cond_e

    .line 398
    .line 399
    const/16 v2, 0x53

    .line 400
    .line 401
    if-ne v1, v2, :cond_d

    .line 402
    .line 403
    goto :goto_b

    .line 404
    :cond_d
    move v2, v0

    .line 405
    move v3, v14

    .line 406
    goto :goto_c

    .line 407
    :cond_e
    :goto_b
    mul-float v7, v0, v28

    .line 408
    .line 409
    sub-float/2addr v7, v4

    .line 410
    mul-float v6, v14, v28

    .line 411
    .line 412
    sub-float/2addr v6, v5

    .line 413
    move v3, v6

    .line 414
    move v2, v7

    .line 415
    :goto_c
    add-int/lit8 v0, v29, 0x0

    .line 416
    .line 417
    aget v4, v8, v0

    .line 418
    .line 419
    add-int/lit8 v12, v29, 0x1

    .line 420
    .line 421
    aget v5, v8, v12

    .line 422
    .line 423
    add-int/lit8 v14, v29, 0x2

    .line 424
    .line 425
    aget v6, v8, v14

    .line 426
    .line 427
    add-int/lit8 v15, v29, 0x3

    .line 428
    .line 429
    aget v7, v8, v15

    .line 430
    .line 431
    move-object/from16 v1, p1

    .line 432
    .line 433
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 434
    .line 435
    .line 436
    aget v0, v8, v0

    .line 437
    .line 438
    aget v1, v8, v12

    .line 439
    .line 440
    aget v2, v8, v14

    .line 441
    .line 442
    aget v3, v8, v15

    .line 443
    .line 444
    move v4, v0

    .line 445
    move v5, v1

    .line 446
    goto/16 :goto_11

    .line 447
    .line 448
    :cond_f
    move/from16 v29, v3

    .line 449
    .line 450
    add-int/lit8 v3, v29, 0x0

    .line 451
    .line 452
    aget v0, v8, v3

    .line 453
    .line 454
    add-int/lit8 v3, v29, 0x1

    .line 455
    .line 456
    aget v1, v8, v3

    .line 457
    .line 458
    if-lez v29, :cond_10

    .line 459
    .line 460
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 461
    .line 462
    .line 463
    goto :goto_e

    .line 464
    :cond_10
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 465
    .line 466
    .line 467
    move/from16 v22, v0

    .line 468
    .line 469
    move/from16 v23, v1

    .line 470
    .line 471
    :goto_d
    move/from16 v7, v22

    .line 472
    .line 473
    move/from16 v6, v23

    .line 474
    .line 475
    goto/16 :goto_12

    .line 476
    .line 477
    :cond_11
    move/from16 v29, v3

    .line 478
    .line 479
    add-int/lit8 v3, v29, 0x0

    .line 480
    .line 481
    aget v0, v8, v3

    .line 482
    .line 483
    add-int/lit8 v1, v29, 0x1

    .line 484
    .line 485
    aget v2, v8, v1

    .line 486
    .line 487
    invoke-virtual {v11, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 488
    .line 489
    .line 490
    aget v0, v8, v3

    .line 491
    .line 492
    aget v1, v8, v1

    .line 493
    .line 494
    :goto_e
    move v7, v0

    .line 495
    move v6, v1

    .line 496
    goto/16 :goto_12

    .line 497
    .line 498
    :cond_12
    move/from16 v29, v3

    .line 499
    .line 500
    move v14, v6

    .line 501
    move v0, v7

    .line 502
    add-int/lit8 v3, v29, 0x0

    .line 503
    .line 504
    aget v1, v8, v3

    .line 505
    .line 506
    const/4 v2, 0x0

    .line 507
    invoke-virtual {v11, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 508
    .line 509
    .line 510
    aget v1, v8, v3

    .line 511
    .line 512
    move v0, v1

    .line 513
    :goto_f
    add-float v6, v14, v0

    .line 514
    .line 515
    goto/16 :goto_12

    .line 516
    .line 517
    :cond_13
    move/from16 v29, v3

    .line 518
    .line 519
    move v14, v6

    .line 520
    move v0, v7

    .line 521
    add-int/lit8 v3, v29, 0x0

    .line 522
    .line 523
    aget v1, v8, v3

    .line 524
    .line 525
    add-int/lit8 v2, v29, 0x1

    .line 526
    .line 527
    aget v4, v8, v2

    .line 528
    .line 529
    add-int/lit8 v5, v29, 0x2

    .line 530
    .line 531
    aget v6, v8, v5

    .line 532
    .line 533
    add-int/lit8 v7, v29, 0x3

    .line 534
    .line 535
    aget v12, v8, v7

    .line 536
    .line 537
    invoke-virtual {v11, v1, v4, v6, v12}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 538
    .line 539
    .line 540
    aget v1, v8, v3

    .line 541
    .line 542
    add-float/2addr v1, v0

    .line 543
    aget v2, v8, v2

    .line 544
    .line 545
    add-float/2addr v2, v14

    .line 546
    aget v3, v8, v5

    .line 547
    .line 548
    add-float/2addr v0, v3

    .line 549
    aget v3, v8, v7

    .line 550
    .line 551
    move v7, v0

    .line 552
    move v0, v3

    .line 553
    goto :goto_10

    .line 554
    :cond_14
    move/from16 v29, v3

    .line 555
    .line 556
    move v14, v6

    .line 557
    move v0, v7

    .line 558
    add-int/lit8 v3, v29, 0x0

    .line 559
    .line 560
    aget v1, v8, v3

    .line 561
    .line 562
    const/4 v2, 0x0

    .line 563
    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 564
    .line 565
    .line 566
    aget v1, v8, v3

    .line 567
    .line 568
    add-float v7, v0, v1

    .line 569
    .line 570
    goto :goto_12

    .line 571
    :cond_15
    move/from16 v29, v3

    .line 572
    .line 573
    move v14, v6

    .line 574
    move v0, v7

    .line 575
    add-int/lit8 v3, v29, 0x0

    .line 576
    .line 577
    aget v2, v8, v3

    .line 578
    .line 579
    add-int/lit8 v3, v29, 0x1

    .line 580
    .line 581
    aget v3, v8, v3

    .line 582
    .line 583
    add-int/lit8 v12, v29, 0x2

    .line 584
    .line 585
    aget v4, v8, v12

    .line 586
    .line 587
    add-int/lit8 v15, v29, 0x3

    .line 588
    .line 589
    aget v5, v8, v15

    .line 590
    .line 591
    add-int/lit8 v24, v29, 0x4

    .line 592
    .line 593
    aget v6, v8, v24

    .line 594
    .line 595
    add-int/lit8 v25, v29, 0x5

    .line 596
    .line 597
    aget v7, v8, v25

    .line 598
    .line 599
    move-object/from16 v1, p1

    .line 600
    .line 601
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 602
    .line 603
    .line 604
    aget v1, v8, v12

    .line 605
    .line 606
    add-float/2addr v1, v0

    .line 607
    aget v2, v8, v15

    .line 608
    .line 609
    add-float/2addr v2, v14

    .line 610
    aget v3, v8, v24

    .line 611
    .line 612
    add-float v7, v0, v3

    .line 613
    .line 614
    aget v0, v8, v25

    .line 615
    .line 616
    :goto_10
    add-float v3, v14, v0

    .line 617
    .line 618
    move v4, v1

    .line 619
    move v5, v2

    .line 620
    move v2, v7

    .line 621
    :goto_11
    move v7, v2

    .line 622
    move v6, v3

    .line 623
    :goto_12
    move-object/from16 v27, v8

    .line 624
    .line 625
    move/from16 v25, v9

    .line 626
    .line 627
    move/from16 v28, v10

    .line 628
    .line 629
    goto/16 :goto_19

    .line 630
    .line 631
    :cond_16
    move/from16 v29, v3

    .line 632
    .line 633
    move v14, v6

    .line 634
    move v0, v7

    .line 635
    add-int/lit8 v12, v29, 0x5

    .line 636
    .line 637
    aget v1, v8, v12

    .line 638
    .line 639
    add-float v4, v1, v0

    .line 640
    .line 641
    add-int/lit8 v15, v29, 0x6

    .line 642
    .line 643
    aget v1, v8, v15

    .line 644
    .line 645
    add-float v5, v1, v14

    .line 646
    .line 647
    add-int/lit8 v3, v29, 0x0

    .line 648
    .line 649
    aget v6, v8, v3

    .line 650
    .line 651
    add-int/lit8 v3, v29, 0x1

    .line 652
    .line 653
    aget v7, v8, v3

    .line 654
    .line 655
    add-int/lit8 v3, v29, 0x2

    .line 656
    .line 657
    aget v25, v8, v3

    .line 658
    .line 659
    add-int/lit8 v3, v29, 0x3

    .line 660
    .line 661
    aget v1, v8, v3

    .line 662
    .line 663
    const/4 v2, 0x0

    .line 664
    cmpl-float v1, v1, v2

    .line 665
    .line 666
    if-eqz v1, :cond_17

    .line 667
    .line 668
    const/16 v24, 0x1

    .line 669
    .line 670
    goto :goto_13

    .line 671
    :cond_17
    const/16 v24, 0x0

    .line 672
    .line 673
    :goto_13
    add-int/lit8 v3, v29, 0x4

    .line 674
    .line 675
    aget v1, v8, v3

    .line 676
    .line 677
    cmpl-float v1, v1, v2

    .line 678
    .line 679
    if-eqz v1, :cond_18

    .line 680
    .line 681
    const/16 v26, 0x1

    .line 682
    .line 683
    goto :goto_14

    .line 684
    :cond_18
    const/16 v26, 0x0

    .line 685
    .line 686
    :goto_14
    move-object/from16 v1, p1

    .line 687
    .line 688
    move v2, v0

    .line 689
    move v3, v14

    .line 690
    move-object/from16 v27, v8

    .line 691
    .line 692
    move/from16 v8, v25

    .line 693
    .line 694
    move/from16 v25, v9

    .line 695
    .line 696
    move/from16 v9, v24

    .line 697
    .line 698
    move/from16 v28, v10

    .line 699
    .line 700
    move/from16 v10, v26

    .line 701
    .line 702
    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/f;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 703
    .line 704
    .line 705
    aget v1, v27, v12

    .line 706
    .line 707
    add-float v7, v0, v1

    .line 708
    .line 709
    aget v0, v27, v15

    .line 710
    .line 711
    add-float v6, v14, v0

    .line 712
    .line 713
    goto/16 :goto_18

    .line 714
    .line 715
    :cond_19
    move/from16 v29, v3

    .line 716
    .line 717
    move v0, v7

    .line 718
    move-object/from16 v27, v8

    .line 719
    .line 720
    move/from16 v25, v9

    .line 721
    .line 722
    move/from16 v28, v10

    .line 723
    .line 724
    add-int/lit8 v3, v29, 0x0

    .line 725
    .line 726
    aget v1, v27, v3

    .line 727
    .line 728
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 729
    .line 730
    .line 731
    aget v6, v27, v3

    .line 732
    .line 733
    goto/16 :goto_19

    .line 734
    .line 735
    :cond_1a
    move/from16 v29, v3

    .line 736
    .line 737
    move-object/from16 v27, v8

    .line 738
    .line 739
    move/from16 v25, v9

    .line 740
    .line 741
    move/from16 v28, v10

    .line 742
    .line 743
    add-int/lit8 v3, v29, 0x0

    .line 744
    .line 745
    aget v0, v27, v3

    .line 746
    .line 747
    add-int/lit8 v1, v29, 0x1

    .line 748
    .line 749
    aget v2, v27, v1

    .line 750
    .line 751
    add-int/lit8 v4, v29, 0x2

    .line 752
    .line 753
    aget v5, v27, v4

    .line 754
    .line 755
    add-int/lit8 v6, v29, 0x3

    .line 756
    .line 757
    aget v7, v27, v6

    .line 758
    .line 759
    invoke-virtual {v11, v0, v2, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 760
    .line 761
    .line 762
    aget v0, v27, v3

    .line 763
    .line 764
    aget v1, v27, v1

    .line 765
    .line 766
    aget v2, v27, v4

    .line 767
    .line 768
    aget v3, v27, v6

    .line 769
    .line 770
    move v7, v2

    .line 771
    move v6, v3

    .line 772
    goto :goto_15

    .line 773
    :cond_1b
    move/from16 v29, v3

    .line 774
    .line 775
    move v14, v6

    .line 776
    move-object/from16 v27, v8

    .line 777
    .line 778
    move/from16 v25, v9

    .line 779
    .line 780
    move/from16 v28, v10

    .line 781
    .line 782
    add-int/lit8 v3, v29, 0x0

    .line 783
    .line 784
    aget v0, v27, v3

    .line 785
    .line 786
    invoke-virtual {v11, v0, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 787
    .line 788
    .line 789
    aget v7, v27, v3

    .line 790
    .line 791
    goto/16 :goto_19

    .line 792
    .line 793
    :cond_1c
    move/from16 v29, v3

    .line 794
    .line 795
    move-object/from16 v27, v8

    .line 796
    .line 797
    move/from16 v25, v9

    .line 798
    .line 799
    move/from16 v28, v10

    .line 800
    .line 801
    add-int/lit8 v3, v29, 0x0

    .line 802
    .line 803
    aget v2, v27, v3

    .line 804
    .line 805
    add-int/lit8 v3, v29, 0x1

    .line 806
    .line 807
    aget v3, v27, v3

    .line 808
    .line 809
    add-int/lit8 v0, v29, 0x2

    .line 810
    .line 811
    aget v4, v27, v0

    .line 812
    .line 813
    add-int/lit8 v8, v29, 0x3

    .line 814
    .line 815
    aget v5, v27, v8

    .line 816
    .line 817
    add-int/lit8 v9, v29, 0x4

    .line 818
    .line 819
    aget v6, v27, v9

    .line 820
    .line 821
    add-int/lit8 v10, v29, 0x5

    .line 822
    .line 823
    aget v7, v27, v10

    .line 824
    .line 825
    move-object/from16 v1, p1

    .line 826
    .line 827
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 828
    .line 829
    .line 830
    aget v1, v27, v9

    .line 831
    .line 832
    aget v2, v27, v10

    .line 833
    .line 834
    aget v0, v27, v0

    .line 835
    .line 836
    aget v3, v27, v8

    .line 837
    .line 838
    move v7, v1

    .line 839
    move v6, v2

    .line 840
    move v1, v3

    .line 841
    :goto_15
    move v4, v0

    .line 842
    move v5, v1

    .line 843
    goto :goto_19

    .line 844
    :cond_1d
    move/from16 v29, v3

    .line 845
    .line 846
    move v14, v6

    .line 847
    move v0, v7

    .line 848
    move-object/from16 v27, v8

    .line 849
    .line 850
    move/from16 v25, v9

    .line 851
    .line 852
    move/from16 v28, v10

    .line 853
    .line 854
    add-int/lit8 v12, v29, 0x5

    .line 855
    .line 856
    aget v4, v27, v12

    .line 857
    .line 858
    add-int/lit8 v15, v29, 0x6

    .line 859
    .line 860
    aget v5, v27, v15

    .line 861
    .line 862
    add-int/lit8 v3, v29, 0x0

    .line 863
    .line 864
    aget v6, v27, v3

    .line 865
    .line 866
    add-int/lit8 v3, v29, 0x1

    .line 867
    .line 868
    aget v7, v27, v3

    .line 869
    .line 870
    add-int/lit8 v3, v29, 0x2

    .line 871
    .line 872
    aget v8, v27, v3

    .line 873
    .line 874
    add-int/lit8 v3, v29, 0x3

    .line 875
    .line 876
    aget v1, v27, v3

    .line 877
    .line 878
    const/4 v2, 0x0

    .line 879
    cmpl-float v1, v1, v2

    .line 880
    .line 881
    if-eqz v1, :cond_1e

    .line 882
    .line 883
    const/4 v9, 0x1

    .line 884
    goto :goto_16

    .line 885
    :cond_1e
    const/4 v9, 0x0

    .line 886
    :goto_16
    add-int/lit8 v3, v29, 0x4

    .line 887
    .line 888
    aget v1, v27, v3

    .line 889
    .line 890
    cmpl-float v1, v1, v2

    .line 891
    .line 892
    if-eqz v1, :cond_1f

    .line 893
    .line 894
    const/4 v10, 0x1

    .line 895
    goto :goto_17

    .line 896
    :cond_1f
    const/4 v10, 0x0

    .line 897
    :goto_17
    move-object/from16 v1, p1

    .line 898
    .line 899
    move v2, v0

    .line 900
    move v3, v14

    .line 901
    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/f;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 902
    .line 903
    .line 904
    aget v0, v27, v12

    .line 905
    .line 906
    aget v1, v27, v15

    .line 907
    .line 908
    move v7, v0

    .line 909
    move v6, v1

    .line 910
    :goto_18
    move v5, v6

    .line 911
    move v4, v7

    .line 912
    :goto_19
    add-int v3, v29, v21

    .line 913
    .line 914
    move/from16 v1, v25

    .line 915
    .line 916
    move v9, v1

    .line 917
    move-object/from16 v8, v27

    .line 918
    .line 919
    move/from16 v10, v28

    .line 920
    .line 921
    const/4 v12, 0x6

    .line 922
    const/16 v14, 0x6d

    .line 923
    .line 924
    const/4 v15, 0x0

    .line 925
    move-object/from16 v0, p0

    .line 926
    .line 927
    goto/16 :goto_3

    .line 928
    .line 929
    :cond_20
    move v14, v6

    .line 930
    move v0, v7

    .line 931
    move/from16 v28, v10

    .line 932
    .line 933
    const/4 v1, 0x0

    .line 934
    aput v0, v13, v1

    .line 935
    .line 936
    aput v14, v13, v16

    .line 937
    .line 938
    aput v4, v13, v17

    .line 939
    .line 940
    aput v5, v13, v18

    .line 941
    .line 942
    aput v22, v13, v19

    .line 943
    .line 944
    aput v23, v13, v20

    .line 945
    .line 946
    aget-object v0, p0, v28

    .line 947
    .line 948
    iget-char v0, v0, Landroidx/core/graphics/f;->a:C

    .line 949
    .line 950
    add-int/lit8 v10, v28, 0x1

    .line 951
    .line 952
    move v1, v0

    .line 953
    const/4 v12, 0x6

    .line 954
    const/16 v14, 0x6d

    .line 955
    .line 956
    const/4 v15, 0x0

    .line 957
    move-object/from16 v0, p0

    .line 958
    .line 959
    goto/16 :goto_0

    .line 960
    .line 961
    :cond_21
    return-void

    .line 962
    nop

    .line 963
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_4
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_4
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch
.end method
