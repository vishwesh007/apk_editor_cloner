.class final Landroidx/vectordrawable/graphics/drawable/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final p:Landroid/graphics/Matrix;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Matrix;

.field d:Landroid/graphics/Paint;

.field e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/PathMeasure;

.field final g:Landroidx/vectordrawable/graphics/drawable/l;

.field h:F

.field i:F

.field j:F

.field k:F

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/Boolean;

.field final o:Landroidx/collection/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/o;->p:Landroid/graphics/Matrix;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->h:F

    .line 4
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->i:F

    .line 5
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->j:F

    .line 6
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->k:F

    const/16 v0, 0xff

    .line 7
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->l:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->m:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->n:Ljava/lang/Boolean;

    .line 10
    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->o:Landroidx/collection/b;

    .line 11
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/l;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/l;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->g:Landroidx/vectordrawable/graphics/drawable/l;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->a:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/o;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->h:F

    .line 17
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->i:F

    .line 18
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->j:F

    .line 19
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->k:F

    const/16 v0, 0xff

    .line 20
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->l:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->m:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->n:Ljava/lang/Boolean;

    .line 23
    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->o:Landroidx/collection/b;

    .line 24
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/l;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/o;->g:Landroidx/vectordrawable/graphics/drawable/l;

    invoke-direct {v1, v2, v0}, Landroidx/vectordrawable/graphics/drawable/l;-><init>(Landroidx/vectordrawable/graphics/drawable/l;Landroidx/collection/b;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/o;->g:Landroidx/vectordrawable/graphics/drawable/l;

    .line 25
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/o;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/o;->a:Landroid/graphics/Path;

    .line 26
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/o;->b:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/o;->b:Landroid/graphics/Path;

    .line 27
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/o;->h:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/o;->h:F

    .line 28
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/o;->i:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/o;->i:F

    .line 29
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/o;->j:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/o;->j:F

    .line 30
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/o;->k:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/o;->k:F

    .line 31
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/o;->l:I

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/o;->l:I

    .line 32
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/o;->m:Ljava/lang/String;

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/o;->m:Ljava/lang/String;

    .line 33
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/o;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0, v1, p0}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/o;->n:Ljava/lang/Boolean;

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/o;->n:Ljava/lang/Boolean;

    return-void
.end method

.method private b(Landroidx/vectordrawable/graphics/drawable/l;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/l;->a:Landroid/graphics/Matrix;

    .line 8
    .line 9
    move-object/from16 v1, p2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 12
    .line 13
    .line 14
    iget-object v9, v7, Landroidx/vectordrawable/graphics/drawable/l;->a:Landroid/graphics/Matrix;

    .line 15
    .line 16
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/l;->j:Landroid/graphics/Matrix;

    .line 17
    .line 18
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 22
    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    :goto_0
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/l;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ge v11, v1, :cond_14

    .line 33
    .line 34
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/m;

    .line 39
    .line 40
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/l;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    check-cast v1, Landroidx/vectordrawable/graphics/drawable/l;

    .line 46
    .line 47
    move-object/from16 v0, p0

    .line 48
    .line 49
    move-object v2, v9

    .line 50
    move-object/from16 v3, p3

    .line 51
    .line 52
    move/from16 v4, p4

    .line 53
    .line 54
    move/from16 v5, p5

    .line 55
    .line 56
    invoke-direct/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/o;->b(Landroidx/vectordrawable/graphics/drawable/l;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_7

    .line 60
    .line 61
    :cond_0
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/n;

    .line 62
    .line 63
    if-eqz v1, :cond_12

    .line 64
    .line 65
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/n;

    .line 66
    .line 67
    move/from16 v1, p4

    .line 68
    .line 69
    int-to-float v2, v1

    .line 70
    iget v3, v6, Landroidx/vectordrawable/graphics/drawable/o;->j:F

    .line 71
    .line 72
    div-float/2addr v2, v3

    .line 73
    move/from16 v3, p5

    .line 74
    .line 75
    int-to-float v4, v3

    .line 76
    iget v5, v6, Landroidx/vectordrawable/graphics/drawable/o;->k:F

    .line 77
    .line 78
    div-float/2addr v4, v5

    .line 79
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iget-object v12, v6, Landroidx/vectordrawable/graphics/drawable/o;->c:Landroid/graphics/Matrix;

    .line 84
    .line 85
    invoke-virtual {v12, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v12, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 89
    .line 90
    .line 91
    const/4 v2, 0x4

    .line 92
    new-array v2, v2, [F

    .line 93
    .line 94
    fill-array-data v2, :array_0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 98
    .line 99
    .line 100
    aget v4, v2, v10

    .line 101
    .line 102
    float-to-double v13, v4

    .line 103
    const/4 v4, 0x1

    .line 104
    aget v15, v2, v4

    .line 105
    .line 106
    move/from16 p2, v5

    .line 107
    .line 108
    float-to-double v4, v15

    .line 109
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    double-to-float v4, v4

    .line 114
    const/4 v5, 0x2

    .line 115
    aget v13, v2, v5

    .line 116
    .line 117
    float-to-double v13, v13

    .line 118
    const/4 v15, 0x3

    .line 119
    aget v5, v2, v15

    .line 120
    .line 121
    move/from16 v17, v11

    .line 122
    .line 123
    float-to-double v10, v5

    .line 124
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 125
    .line 126
    .line 127
    move-result-wide v10

    .line 128
    double-to-float v5, v10

    .line 129
    const/4 v10, 0x0

    .line 130
    aget v11, v2, v10

    .line 131
    .line 132
    const/4 v10, 0x1

    .line 133
    aget v13, v2, v10

    .line 134
    .line 135
    const/4 v10, 0x2

    .line 136
    aget v10, v2, v10

    .line 137
    .line 138
    aget v2, v2, v15

    .line 139
    .line 140
    mul-float v11, v11, v2

    .line 141
    .line 142
    mul-float v13, v13, v10

    .line 143
    .line 144
    sub-float/2addr v11, v13

    .line 145
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const/4 v4, 0x0

    .line 150
    cmpl-float v5, v2, v4

    .line 151
    .line 152
    if-lez v5, :cond_1

    .line 153
    .line 154
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    div-float/2addr v5, v2

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    const/4 v5, 0x0

    .line 161
    :goto_1
    cmpl-float v2, v5, v4

    .line 162
    .line 163
    if-nez v2, :cond_2

    .line 164
    .line 165
    goto/16 :goto_8

    .line 166
    .line 167
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object v2, v6, Landroidx/vectordrawable/graphics/drawable/o;->a:Landroid/graphics/Path;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 173
    .line 174
    .line 175
    iget-object v10, v0, Landroidx/vectordrawable/graphics/drawable/n;->a:[Landroidx/core/graphics/f;

    .line 176
    .line 177
    if-eqz v10, :cond_3

    .line 178
    .line 179
    invoke-static {v10, v2}, Landroidx/core/graphics/f;->b([Landroidx/core/graphics/f;Landroid/graphics/Path;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    iget-object v10, v6, Landroidx/vectordrawable/graphics/drawable/o;->b:Landroid/graphics/Path;

    .line 183
    .line 184
    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 185
    .line 186
    .line 187
    instance-of v11, v0, Landroidx/vectordrawable/graphics/drawable/j;

    .line 188
    .line 189
    if-eqz v11, :cond_5

    .line 190
    .line 191
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/n;->c:I

    .line 192
    .line 193
    if-nez v0, :cond_4

    .line 194
    .line 195
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_4
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 199
    .line 200
    :goto_2
    invoke-virtual {v10, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 207
    .line 208
    .line 209
    goto/16 :goto_8

    .line 210
    .line 211
    :cond_5
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/k;

    .line 212
    .line 213
    iget v11, v0, Landroidx/vectordrawable/graphics/drawable/k;->j:F

    .line 214
    .line 215
    const/high16 v13, 0x3f800000    # 1.0f

    .line 216
    .line 217
    cmpl-float v14, v11, v4

    .line 218
    .line 219
    if-nez v14, :cond_6

    .line 220
    .line 221
    iget v14, v0, Landroidx/vectordrawable/graphics/drawable/k;->k:F

    .line 222
    .line 223
    cmpl-float v14, v14, v13

    .line 224
    .line 225
    if-eqz v14, :cond_9

    .line 226
    .line 227
    :cond_6
    iget v14, v0, Landroidx/vectordrawable/graphics/drawable/k;->l:F

    .line 228
    .line 229
    add-float/2addr v11, v14

    .line 230
    rem-float/2addr v11, v13

    .line 231
    iget v15, v0, Landroidx/vectordrawable/graphics/drawable/k;->k:F

    .line 232
    .line 233
    add-float/2addr v15, v14

    .line 234
    rem-float/2addr v15, v13

    .line 235
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/o;->f:Landroid/graphics/PathMeasure;

    .line 236
    .line 237
    if-nez v13, :cond_7

    .line 238
    .line 239
    new-instance v13, Landroid/graphics/PathMeasure;

    .line 240
    .line 241
    invoke-direct {v13}, Landroid/graphics/PathMeasure;-><init>()V

    .line 242
    .line 243
    .line 244
    iput-object v13, v6, Landroidx/vectordrawable/graphics/drawable/o;->f:Landroid/graphics/PathMeasure;

    .line 245
    .line 246
    :cond_7
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/o;->f:Landroid/graphics/PathMeasure;

    .line 247
    .line 248
    const/4 v14, 0x0

    .line 249
    invoke-virtual {v13, v2, v14}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 250
    .line 251
    .line 252
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/o;->f:Landroid/graphics/PathMeasure;

    .line 253
    .line 254
    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    mul-float v11, v11, v13

    .line 259
    .line 260
    mul-float v15, v15, v13

    .line 261
    .line 262
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 263
    .line 264
    .line 265
    cmpl-float v16, v11, v15

    .line 266
    .line 267
    if-lez v16, :cond_8

    .line 268
    .line 269
    iget-object v14, v6, Landroidx/vectordrawable/graphics/drawable/o;->f:Landroid/graphics/PathMeasure;

    .line 270
    .line 271
    const/4 v4, 0x1

    .line 272
    invoke-virtual {v14, v11, v13, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 273
    .line 274
    .line 275
    iget-object v11, v6, Landroidx/vectordrawable/graphics/drawable/o;->f:Landroid/graphics/PathMeasure;

    .line 276
    .line 277
    const/4 v13, 0x0

    .line 278
    invoke-virtual {v11, v13, v15, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_8
    const/4 v4, 0x1

    .line 283
    const/4 v13, 0x0

    .line 284
    iget-object v14, v6, Landroidx/vectordrawable/graphics/drawable/o;->f:Landroid/graphics/PathMeasure;

    .line 285
    .line 286
    invoke-virtual {v14, v11, v15, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 287
    .line 288
    .line 289
    :goto_3
    invoke-virtual {v2, v13, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 290
    .line 291
    .line 292
    :cond_9
    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 293
    .line 294
    .line 295
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/k;->g:Landroidx/core/content/res/d;

    .line 296
    .line 297
    invoke-virtual {v2}, Landroidx/core/content/res/d;->j()Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    const/4 v11, 0x0

    .line 302
    const/high16 v13, 0x437f0000    # 255.0f

    .line 303
    .line 304
    const/16 v14, 0xff

    .line 305
    .line 306
    if-eqz v2, :cond_d

    .line 307
    .line 308
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/k;->g:Landroidx/core/content/res/d;

    .line 309
    .line 310
    iget-object v15, v6, Landroidx/vectordrawable/graphics/drawable/o;->e:Landroid/graphics/Paint;

    .line 311
    .line 312
    if-nez v15, :cond_a

    .line 313
    .line 314
    new-instance v15, Landroid/graphics/Paint;

    .line 315
    .line 316
    const/4 v4, 0x1

    .line 317
    invoke-direct {v15, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 318
    .line 319
    .line 320
    iput-object v15, v6, Landroidx/vectordrawable/graphics/drawable/o;->e:Landroid/graphics/Paint;

    .line 321
    .line 322
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 323
    .line 324
    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    .line 326
    .line 327
    :cond_a
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/o;->e:Landroid/graphics/Paint;

    .line 328
    .line 329
    invoke-virtual {v2}, Landroidx/core/content/res/d;->f()Z

    .line 330
    .line 331
    .line 332
    move-result v15

    .line 333
    if-eqz v15, :cond_b

    .line 334
    .line 335
    invoke-virtual {v2}, Landroidx/core/content/res/d;->d()Landroid/graphics/Shader;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v2, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 343
    .line 344
    .line 345
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/k;->i:F

    .line 346
    .line 347
    mul-float v2, v2, v13

    .line 348
    .line 349
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 354
    .line 355
    .line 356
    goto :goto_4

    .line 357
    :cond_b
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Landroidx/core/content/res/d;->c()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    iget v15, v0, Landroidx/vectordrawable/graphics/drawable/k;->i:F

    .line 368
    .line 369
    sget-object v18, Landroidx/vectordrawable/graphics/drawable/r;->j:Landroid/graphics/PorterDuff$Mode;

    .line 370
    .line 371
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 372
    .line 373
    .line 374
    move-result v14

    .line 375
    const v16, 0xffffff

    .line 376
    .line 377
    .line 378
    and-int v2, v2, v16

    .line 379
    .line 380
    int-to-float v14, v14

    .line 381
    mul-float v14, v14, v15

    .line 382
    .line 383
    float-to-int v14, v14

    .line 384
    shl-int/lit8 v14, v14, 0x18

    .line 385
    .line 386
    or-int/2addr v2, v14

    .line 387
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    .line 389
    .line 390
    :goto_4
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 391
    .line 392
    .line 393
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/n;->c:I

    .line 394
    .line 395
    if-nez v2, :cond_c

    .line 396
    .line 397
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 398
    .line 399
    goto :goto_5

    .line 400
    :cond_c
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 401
    .line 402
    :goto_5
    invoke-virtual {v10, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 406
    .line 407
    .line 408
    :cond_d
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/k;->e:Landroidx/core/content/res/d;

    .line 409
    .line 410
    invoke-virtual {v2}, Landroidx/core/content/res/d;->j()Z

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    if-eqz v2, :cond_13

    .line 415
    .line 416
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/k;->e:Landroidx/core/content/res/d;

    .line 417
    .line 418
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/o;->d:Landroid/graphics/Paint;

    .line 419
    .line 420
    if-nez v4, :cond_e

    .line 421
    .line 422
    new-instance v4, Landroid/graphics/Paint;

    .line 423
    .line 424
    const/4 v14, 0x1

    .line 425
    invoke-direct {v4, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 426
    .line 427
    .line 428
    iput-object v4, v6, Landroidx/vectordrawable/graphics/drawable/o;->d:Landroid/graphics/Paint;

    .line 429
    .line 430
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 431
    .line 432
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 433
    .line 434
    .line 435
    :cond_e
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/o;->d:Landroid/graphics/Paint;

    .line 436
    .line 437
    iget-object v14, v0, Landroidx/vectordrawable/graphics/drawable/k;->n:Landroid/graphics/Paint$Join;

    .line 438
    .line 439
    if-eqz v14, :cond_f

    .line 440
    .line 441
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 442
    .line 443
    .line 444
    :cond_f
    iget-object v14, v0, Landroidx/vectordrawable/graphics/drawable/k;->m:Landroid/graphics/Paint$Cap;

    .line 445
    .line 446
    if-eqz v14, :cond_10

    .line 447
    .line 448
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 449
    .line 450
    .line 451
    :cond_10
    iget v14, v0, Landroidx/vectordrawable/graphics/drawable/k;->o:F

    .line 452
    .line 453
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2}, Landroidx/core/content/res/d;->f()Z

    .line 457
    .line 458
    .line 459
    move-result v14

    .line 460
    if-eqz v14, :cond_11

    .line 461
    .line 462
    invoke-virtual {v2}, Landroidx/core/content/res/d;->d()Landroid/graphics/Shader;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v2, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 470
    .line 471
    .line 472
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/k;->h:F

    .line 473
    .line 474
    mul-float v2, v2, v13

    .line 475
    .line 476
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 481
    .line 482
    .line 483
    goto :goto_6

    .line 484
    :cond_11
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 485
    .line 486
    .line 487
    const/16 v12, 0xff

    .line 488
    .line 489
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2}, Landroidx/core/content/res/d;->c()I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    iget v12, v0, Landroidx/vectordrawable/graphics/drawable/k;->h:F

    .line 497
    .line 498
    sget-object v13, Landroidx/vectordrawable/graphics/drawable/r;->j:Landroid/graphics/PorterDuff$Mode;

    .line 499
    .line 500
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 501
    .line 502
    .line 503
    move-result v13

    .line 504
    const v14, 0xffffff

    .line 505
    .line 506
    .line 507
    and-int/2addr v2, v14

    .line 508
    int-to-float v13, v13

    .line 509
    mul-float v13, v13, v12

    .line 510
    .line 511
    float-to-int v12, v13

    .line 512
    shl-int/lit8 v12, v12, 0x18

    .line 513
    .line 514
    or-int/2addr v2, v12

    .line 515
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 516
    .line 517
    .line 518
    :goto_6
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 519
    .line 520
    .line 521
    mul-float v5, v5, p2

    .line 522
    .line 523
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/k;->f:F

    .line 524
    .line 525
    mul-float v0, v0, v5

    .line 526
    .line 527
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 531
    .line 532
    .line 533
    goto :goto_8

    .line 534
    :cond_12
    :goto_7
    move/from16 v1, p4

    .line 535
    .line 536
    move/from16 v3, p5

    .line 537
    .line 538
    move/from16 v17, v11

    .line 539
    .line 540
    :cond_13
    :goto_8
    add-int/lit8 v11, v17, 0x1

    .line 541
    .line 542
    const/4 v10, 0x0

    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    .line 546
    .line 547
    .line 548
    return-void

    .line 549
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;II)V
    .locals 6

    .line 1
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/o;->g:Landroidx/vectordrawable/graphics/drawable/l;

    .line 2
    .line 3
    sget-object v2, Landroidx/vectordrawable/graphics/drawable/o;->p:Landroid/graphics/Matrix;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/o;->b(Landroidx/vectordrawable/graphics/drawable/l;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/o;->getRootAlpha()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x437f0000    # 255.0f

    .line 7
    .line 8
    div-float/2addr v0, v1

    .line 9
    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/vectordrawable/graphics/drawable/o;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    .line 3
    mul-float p1, p1, v0

    .line 4
    .line 5
    float-to-int p1, p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/o;->setRootAlpha(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/o;->l:I

    .line 2
    .line 3
    return-void
.end method
