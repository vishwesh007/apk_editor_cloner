.class public final Landroidx/vectordrawable/graphics/drawable/r;
.super Landroidx/vectordrawable/graphics/drawable/i;
.source "SourceFile"


# static fields
.field static final j:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private b:Landroidx/vectordrawable/graphics/drawable/p;

.field private c:Landroid/graphics/PorterDuffColorFilter;

.field private d:Landroid/graphics/ColorFilter;

.field private e:Z

.field private f:Z

.field private final g:[F

.field private final h:Landroid/graphics/Matrix;

.field private final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/r;->j:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/i;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->f:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->g:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->h:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->i:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/p;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/p;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/p;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/i;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->f:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->g:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->h:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->i:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 13
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Landroidx/vectordrawable/graphics/drawable/r;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/r;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/r;
    .locals 1

    .line 1
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/r;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/r;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/vectordrawable/graphics/drawable/r;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/o;->o:Landroidx/collection/b;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroidx/collection/n;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/graphics/drawable/d;->b(Landroid/graphics/drawable/Drawable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method final d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Landroidx/vectordrawable/graphics/drawable/i;->getState()[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->i:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_11

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-gtz v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/r;->d:Landroid/graphics/ColorFilter;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/r;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 33
    .line 34
    :cond_2
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/r;->h:Landroid/graphics/Matrix;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/r;->g:[F

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    aget v4, v3, v2

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x4

    .line 52
    aget v5, v3, v5

    .line 53
    .line 54
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const/4 v6, 0x1

    .line 59
    aget v7, v3, v6

    .line 60
    .line 61
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    const/4 v8, 0x3

    .line 66
    aget v3, v3, v8

    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/high16 v8, 0x3f800000    # 1.0f

    .line 73
    .line 74
    const/4 v9, 0x0

    .line 75
    cmpl-float v7, v7, v9

    .line 76
    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    cmpl-float v3, v3, v9

    .line 80
    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    .line 84
    .line 85
    const/high16 v5, 0x3f800000    # 1.0f

    .line 86
    .line 87
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    int-to-float v3, v3

    .line 92
    mul-float v3, v3, v4

    .line 93
    .line 94
    float-to-int v3, v3

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    int-to-float v4, v4

    .line 100
    mul-float v4, v4, v5

    .line 101
    .line 102
    float-to-int v4, v4

    .line 103
    const/16 v5, 0x800

    .line 104
    .line 105
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-lez v3, :cond_11

    .line 114
    .line 115
    if-gtz v4, :cond_5

    .line 116
    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 124
    .line 125
    int-to-float v7, v7

    .line 126
    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 127
    .line 128
    int-to-float v10, v10

    .line 129
    invoke-virtual {p1, v7, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/r;->isAutoMirrored()Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_6

    .line 137
    .line 138
    invoke-static {p0}, Landroidx/core/graphics/drawable/d;->e(Landroid/graphics/drawable/Drawable;)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-ne v7, v6, :cond_6

    .line 143
    .line 144
    const/4 v7, 0x1

    .line 145
    goto :goto_0

    .line 146
    :cond_6
    const/4 v7, 0x0

    .line 147
    :goto_0
    if-eqz v7, :cond_7

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    int-to-float v7, v7

    .line 154
    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    .line 156
    .line 157
    const/high16 v7, -0x40800000    # -1.0f

    .line 158
    .line 159
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 160
    .line 161
    .line 162
    :cond_7
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 163
    .line 164
    .line 165
    iget-object v7, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 166
    .line 167
    iget-object v8, v7, Landroidx/vectordrawable/graphics/drawable/p;->f:Landroid/graphics/Bitmap;

    .line 168
    .line 169
    if-eqz v8, :cond_9

    .line 170
    .line 171
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-ne v3, v8, :cond_8

    .line 176
    .line 177
    iget-object v8, v7, Landroidx/vectordrawable/graphics/drawable/p;->f:Landroid/graphics/Bitmap;

    .line 178
    .line 179
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-ne v4, v8, :cond_8

    .line 184
    .line 185
    const/4 v8, 0x1

    .line 186
    goto :goto_1

    .line 187
    :cond_8
    const/4 v8, 0x0

    .line 188
    :goto_1
    if-nez v8, :cond_a

    .line 189
    .line 190
    :cond_9
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 191
    .line 192
    invoke-static {v3, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    iput-object v8, v7, Landroidx/vectordrawable/graphics/drawable/p;->f:Landroid/graphics/Bitmap;

    .line 197
    .line 198
    iput-boolean v6, v7, Landroidx/vectordrawable/graphics/drawable/p;->k:Z

    .line 199
    .line 200
    :cond_a
    iget-boolean v7, p0, Landroidx/vectordrawable/graphics/drawable/r;->f:Z

    .line 201
    .line 202
    if-nez v7, :cond_b

    .line 203
    .line 204
    iget-object v7, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 205
    .line 206
    iget-object v8, v7, Landroidx/vectordrawable/graphics/drawable/p;->f:Landroid/graphics/Bitmap;

    .line 207
    .line 208
    invoke-virtual {v8, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 209
    .line 210
    .line 211
    new-instance v8, Landroid/graphics/Canvas;

    .line 212
    .line 213
    iget-object v9, v7, Landroidx/vectordrawable/graphics/drawable/p;->f:Landroid/graphics/Bitmap;

    .line 214
    .line 215
    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    .line 217
    .line 218
    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 219
    .line 220
    invoke-virtual {v7, v8, v3, v4}, Landroidx/vectordrawable/graphics/drawable/o;->a(Landroid/graphics/Canvas;II)V

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_b
    iget-object v7, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 225
    .line 226
    iget-boolean v8, v7, Landroidx/vectordrawable/graphics/drawable/p;->k:Z

    .line 227
    .line 228
    if-nez v8, :cond_c

    .line 229
    .line 230
    iget-object v8, v7, Landroidx/vectordrawable/graphics/drawable/p;->g:Landroid/content/res/ColorStateList;

    .line 231
    .line 232
    iget-object v9, v7, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 233
    .line 234
    if-ne v8, v9, :cond_c

    .line 235
    .line 236
    iget-object v8, v7, Landroidx/vectordrawable/graphics/drawable/p;->h:Landroid/graphics/PorterDuff$Mode;

    .line 237
    .line 238
    iget-object v9, v7, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    .line 239
    .line 240
    if-ne v8, v9, :cond_c

    .line 241
    .line 242
    iget-boolean v8, v7, Landroidx/vectordrawable/graphics/drawable/p;->j:Z

    .line 243
    .line 244
    iget-boolean v9, v7, Landroidx/vectordrawable/graphics/drawable/p;->e:Z

    .line 245
    .line 246
    if-ne v8, v9, :cond_c

    .line 247
    .line 248
    iget v8, v7, Landroidx/vectordrawable/graphics/drawable/p;->i:I

    .line 249
    .line 250
    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 251
    .line 252
    invoke-virtual {v7}, Landroidx/vectordrawable/graphics/drawable/o;->getRootAlpha()I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    if-ne v8, v7, :cond_c

    .line 257
    .line 258
    const/4 v7, 0x1

    .line 259
    goto :goto_2

    .line 260
    :cond_c
    const/4 v7, 0x0

    .line 261
    :goto_2
    if-nez v7, :cond_d

    .line 262
    .line 263
    iget-object v7, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 264
    .line 265
    iget-object v8, v7, Landroidx/vectordrawable/graphics/drawable/p;->f:Landroid/graphics/Bitmap;

    .line 266
    .line 267
    invoke-virtual {v8, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 268
    .line 269
    .line 270
    new-instance v8, Landroid/graphics/Canvas;

    .line 271
    .line 272
    iget-object v9, v7, Landroidx/vectordrawable/graphics/drawable/p;->f:Landroid/graphics/Bitmap;

    .line 273
    .line 274
    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    .line 276
    .line 277
    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 278
    .line 279
    invoke-virtual {v7, v8, v3, v4}, Landroidx/vectordrawable/graphics/drawable/o;->a(Landroid/graphics/Canvas;II)V

    .line 280
    .line 281
    .line 282
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 283
    .line 284
    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 285
    .line 286
    iput-object v4, v3, Landroidx/vectordrawable/graphics/drawable/p;->g:Landroid/content/res/ColorStateList;

    .line 287
    .line 288
    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    .line 289
    .line 290
    iput-object v4, v3, Landroidx/vectordrawable/graphics/drawable/p;->h:Landroid/graphics/PorterDuff$Mode;

    .line 291
    .line 292
    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 293
    .line 294
    invoke-virtual {v4}, Landroidx/vectordrawable/graphics/drawable/o;->getRootAlpha()I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    iput v4, v3, Landroidx/vectordrawable/graphics/drawable/p;->i:I

    .line 299
    .line 300
    iget-boolean v4, v3, Landroidx/vectordrawable/graphics/drawable/p;->e:Z

    .line 301
    .line 302
    iput-boolean v4, v3, Landroidx/vectordrawable/graphics/drawable/p;->j:Z

    .line 303
    .line 304
    iput-boolean v2, v3, Landroidx/vectordrawable/graphics/drawable/p;->k:Z

    .line 305
    .line 306
    :cond_d
    :goto_3
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 307
    .line 308
    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 309
    .line 310
    invoke-virtual {v4}, Landroidx/vectordrawable/graphics/drawable/o;->getRootAlpha()I

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    const/16 v7, 0xff

    .line 315
    .line 316
    if-ge v4, v7, :cond_e

    .line 317
    .line 318
    const/4 v2, 0x1

    .line 319
    :cond_e
    const/4 v4, 0x0

    .line 320
    if-nez v2, :cond_f

    .line 321
    .line 322
    if-nez v1, :cond_f

    .line 323
    .line 324
    move-object v1, v4

    .line 325
    goto :goto_4

    .line 326
    :cond_f
    iget-object v2, v3, Landroidx/vectordrawable/graphics/drawable/p;->l:Landroid/graphics/Paint;

    .line 327
    .line 328
    if-nez v2, :cond_10

    .line 329
    .line 330
    new-instance v2, Landroid/graphics/Paint;

    .line 331
    .line 332
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 333
    .line 334
    .line 335
    iput-object v2, v3, Landroidx/vectordrawable/graphics/drawable/p;->l:Landroid/graphics/Paint;

    .line 336
    .line 337
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 338
    .line 339
    .line 340
    :cond_10
    iget-object v2, v3, Landroidx/vectordrawable/graphics/drawable/p;->l:Landroid/graphics/Paint;

    .line 341
    .line 342
    iget-object v6, v3, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 343
    .line 344
    invoke-virtual {v6}, Landroidx/vectordrawable/graphics/drawable/o;->getRootAlpha()I

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 349
    .line 350
    .line 351
    iget-object v2, v3, Landroidx/vectordrawable/graphics/drawable/p;->l:Landroid/graphics/Paint;

    .line 352
    .line 353
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 354
    .line 355
    .line 356
    iget-object v1, v3, Landroidx/vectordrawable/graphics/drawable/p;->l:Landroid/graphics/Paint;

    .line 357
    .line 358
    :goto_4
    iget-object v2, v3, Landroidx/vectordrawable/graphics/drawable/p;->f:Landroid/graphics/Bitmap;

    .line 359
    .line 360
    invoke-virtual {p1, v2, v4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 364
    .line 365
    .line 366
    :cond_11
    :goto_5
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/graphics/drawable/d;->c(Landroid/graphics/drawable/Drawable;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/o;->getRootAlpha()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/p;->getChangingConfigurations()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    or-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/graphics/drawable/d;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->d:Landroid/graphics/ColorFilter;

    .line 11
    .line 12
    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/q;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/q;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/r;->getChangingConfigurations()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 32
    .line 33
    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 13
    .line 14
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/o;->i:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 13
    .line 14
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/o;->h:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x3

    .line 11
    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/r;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 4
    iget-object v0, v1, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, v2, v3, v4, v5}, Landroidx/core/graphics/drawable/d;->f(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_0
    iget-object v6, v1, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 7
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/o;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/o;-><init>()V

    .line 8
    iput-object v0, v6, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 9
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/a;->a:[I

    invoke-static {v2, v5, v4, v0}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 10
    iget-object v8, v1, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 11
    iget-object v9, v8, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    const-string v0, "tintMode"

    const/4 v10, 0x6

    const/4 v11, -0x1

    .line 12
    invoke-static {v7, v3, v0, v10, v11}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 13
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v11, 0x3

    const/4 v12, 0x5

    if-eq v0, v11, :cond_2

    if-eq v0, v12, :cond_3

    const/16 v13, 0x9

    if-eq v0, v13, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 14
    :pswitch_0
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 15
    :pswitch_1
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 16
    :pswitch_2
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 17
    :cond_1
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 18
    :cond_2
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 19
    :cond_3
    :goto_0
    iput-object v10, v8, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v0, "tint"

    .line 20
    invoke-static {v3, v0}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-eqz v0, :cond_6

    .line 21
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 22
    invoke-virtual {v7, v10, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 23
    iget v15, v0, Landroid/util/TypedValue;->type:I

    if-eq v15, v14, :cond_5

    const/16 v14, 0x1c

    if-lt v15, v14, :cond_4

    const/16 v14, 0x1f

    if-gt v15, v14, :cond_4

    .line 24
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 26
    invoke-virtual {v7, v10, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 27
    sget v15, Landroidx/core/content/res/c;->b:I

    .line 28
    :try_start_0
    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 29
    invoke-static {v0, v14, v5}, Landroidx/core/content/res/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v14, "CSLCompat"

    const-string v15, "Failed to inflate ColorStateList."

    .line 30
    invoke-static {v14, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 31
    :cond_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to resolve attribute at index 1: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 32
    iput-object v0, v8, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 33
    :cond_7
    iget-boolean v0, v8, Landroidx/vectordrawable/graphics/drawable/p;->e:Z

    const-string v14, "autoMirrored"

    .line 34
    invoke-static {v3, v14}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    goto :goto_3

    .line 35
    :cond_8
    invoke-virtual {v7, v12, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 36
    :goto_3
    iput-boolean v0, v8, Landroidx/vectordrawable/graphics/drawable/p;->e:Z

    .line 37
    iget v0, v9, Landroidx/vectordrawable/graphics/drawable/o;->j:F

    const-string v8, "viewportWidth"

    const/4 v12, 0x7

    invoke-static {v7, v3, v8, v12, v0}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v9, Landroidx/vectordrawable/graphics/drawable/o;->j:F

    .line 38
    iget v0, v9, Landroidx/vectordrawable/graphics/drawable/o;->k:F

    const-string v8, "viewportHeight"

    const/16 v12, 0x8

    invoke-static {v7, v3, v8, v12, v0}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v9, Landroidx/vectordrawable/graphics/drawable/o;->k:F

    .line 39
    iget v8, v9, Landroidx/vectordrawable/graphics/drawable/o;->j:F

    const/4 v12, 0x0

    cmpg-float v8, v8, v12

    if-lez v8, :cond_1b

    cmpg-float v0, v0, v12

    if-lez v0, :cond_1a

    .line 40
    iget v0, v9, Landroidx/vectordrawable/graphics/drawable/o;->h:F

    invoke-virtual {v7, v11, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, Landroidx/vectordrawable/graphics/drawable/o;->h:F

    .line 41
    iget v0, v9, Landroidx/vectordrawable/graphics/drawable/o;->i:F

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, Landroidx/vectordrawable/graphics/drawable/o;->i:F

    .line 42
    iget v8, v9, Landroidx/vectordrawable/graphics/drawable/o;->h:F

    cmpg-float v8, v8, v12

    if-lez v8, :cond_19

    cmpg-float v0, v0, v12

    if-lez v0, :cond_18

    .line 43
    invoke-virtual {v9}, Landroidx/vectordrawable/graphics/drawable/o;->getAlpha()F

    move-result v0

    const-string v8, "alpha"

    const/4 v12, 0x4

    .line 44
    invoke-static {v7, v3, v8, v12, v0}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 45
    invoke-virtual {v9, v0}, Landroidx/vectordrawable/graphics/drawable/o;->setAlpha(F)V

    .line 46
    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 47
    iput-object v0, v9, Landroidx/vectordrawable/graphics/drawable/o;->m:Ljava/lang/String;

    .line 48
    iget-object v8, v9, Landroidx/vectordrawable/graphics/drawable/o;->o:Landroidx/collection/b;

    invoke-virtual {v8, v0, v9}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_9
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/vectordrawable/graphics/drawable/r;->getChangingConfigurations()I

    move-result v0

    iput v0, v6, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    .line 51
    iput-boolean v10, v6, Landroidx/vectordrawable/graphics/drawable/p;->k:Z

    .line 52
    iget-object v0, v1, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 53
    iget-object v7, v0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 54
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 55
    iget-object v9, v7, Landroidx/vectordrawable/graphics/drawable/o;->g:Landroidx/vectordrawable/graphics/drawable/l;

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 56
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 57
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    add-int/2addr v12, v10

    const/4 v14, 0x1

    :goto_4
    if-eq v9, v10, :cond_16

    .line 58
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-ge v15, v12, :cond_a

    if-eq v9, v11, :cond_16

    :cond_a
    const-string v15, "group"

    const/4 v11, 0x2

    if-ne v9, v11, :cond_14

    .line 59
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 60
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/vectordrawable/graphics/drawable/l;

    const-string v10, "path"

    .line 61
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget-object v13, v7, Landroidx/vectordrawable/graphics/drawable/o;->o:Landroidx/collection/b;

    if-eqz v10, :cond_c

    .line 62
    new-instance v9, Landroidx/vectordrawable/graphics/drawable/k;

    invoke-direct {v9}, Landroidx/vectordrawable/graphics/drawable/k;-><init>()V

    .line 63
    invoke-virtual {v9, v2, v3, v4, v5}, Landroidx/vectordrawable/graphics/drawable/k;->c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 64
    iget-object v10, v11, Landroidx/vectordrawable/graphics/drawable/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v9}, Landroidx/vectordrawable/graphics/drawable/n;->getPathName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 66
    invoke-virtual {v9}, Landroidx/vectordrawable/graphics/drawable/n;->getPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10, v9}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_b
    iget v10, v0, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/n;->d:I

    or-int/2addr v9, v10

    iput v9, v0, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    move-object/from16 v17, v7

    move/from16 v16, v12

    const/4 v7, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x2

    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_c
    const-string v10, "clip-path"

    .line 68
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 69
    new-instance v9, Landroidx/vectordrawable/graphics/drawable/j;

    invoke-direct {v9}, Landroidx/vectordrawable/graphics/drawable/j;-><init>()V

    const-string v10, "pathData"

    .line 70
    invoke-static {v3, v10}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    move-object/from16 v17, v7

    move/from16 v16, v12

    const/4 v7, 0x0

    const/4 v12, 0x2

    goto :goto_5

    .line 71
    :cond_d
    sget-object v10, Landroidx/vectordrawable/graphics/drawable/a;->d:[I

    invoke-static {v2, v5, v4, v10}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object/from16 v17, v7

    const/4 v15, 0x0

    .line 72
    invoke-virtual {v10, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 73
    iput-object v7, v9, Landroidx/vectordrawable/graphics/drawable/n;->b:Ljava/lang/String;

    :cond_e
    const/4 v7, 0x1

    .line 74
    invoke-virtual {v10, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_f

    .line 75
    invoke-static {v15}, Landroidx/core/graphics/g;->e(Ljava/lang/String;)[Landroidx/core/graphics/f;

    move-result-object v15

    iput-object v15, v9, Landroidx/vectordrawable/graphics/drawable/n;->a:[Landroidx/core/graphics/f;

    :cond_f
    const-string v15, "fillType"

    move/from16 v16, v12

    const/4 v7, 0x0

    const/4 v12, 0x2

    .line 76
    invoke-static {v10, v3, v15, v12, v7}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v15

    iput v15, v9, Landroidx/vectordrawable/graphics/drawable/n;->c:I

    .line 77
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    :goto_5
    iget-object v10, v11, Landroidx/vectordrawable/graphics/drawable/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v9}, Landroidx/vectordrawable/graphics/drawable/n;->getPathName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 80
    invoke-virtual {v9}, Landroidx/vectordrawable/graphics/drawable/n;->getPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10, v9}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_10
    iget v10, v0, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/n;->d:I

    or-int/2addr v9, v10

    iput v9, v0, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    goto :goto_6

    :cond_11
    move-object/from16 v17, v7

    move/from16 v16, v12

    const/4 v7, 0x0

    const/4 v12, 0x2

    .line 82
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 83
    new-instance v9, Landroidx/vectordrawable/graphics/drawable/l;

    invoke-direct {v9}, Landroidx/vectordrawable/graphics/drawable/l;-><init>()V

    .line 84
    invoke-virtual {v9, v2, v3, v4, v5}, Landroidx/vectordrawable/graphics/drawable/l;->c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 85
    iget-object v10, v11, Landroidx/vectordrawable/graphics/drawable/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v9}, Landroidx/vectordrawable/graphics/drawable/l;->getGroupName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 88
    invoke-virtual {v9}, Landroidx/vectordrawable/graphics/drawable/l;->getGroupName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10, v9}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_12
    iget v10, v0, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/l;->k:I

    or-int/2addr v9, v10

    iput v9, v0, Landroidx/vectordrawable/graphics/drawable/p;->a:I

    :cond_13
    :goto_6
    const/4 v10, 0x3

    goto :goto_7

    :cond_14
    move-object/from16 v17, v7

    move/from16 v16, v12

    const/4 v7, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x2

    if-ne v9, v10, :cond_15

    .line 90
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 91
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 92
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 93
    :cond_15
    :goto_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move/from16 v12, v16

    move-object/from16 v7, v17

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_16
    if-nez v14, :cond_17

    .line 94
    iget-object v0, v6, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v6, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroidx/vectordrawable/graphics/drawable/r;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v1, Landroidx/vectordrawable/graphics/drawable/r;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 95
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "no path defined"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/graphics/drawable/d;->g(Landroid/graphics/drawable/Drawable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 11
    .line 12
    iget-boolean v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->e:Z

    .line 13
    .line 14
    return v0
.end method

.method public final isStateful()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/o;->n:Ljava/lang/Boolean;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/o;->g:Landroidx/vectordrawable/graphics/drawable/l;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/l;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Landroidx/vectordrawable/graphics/drawable/o;->n:Ljava/lang/Boolean;

    .line 37
    .line 38
    :cond_1
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/o;->n:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 47
    .line 48
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 62
    :goto_1
    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->e:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-ne v0, p0, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/p;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroidx/vectordrawable/graphics/drawable/p;-><init>(Landroidx/vectordrawable/graphics/drawable/p;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->e:Z

    .line 30
    .line 31
    :cond_1
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v1, v3}, Landroidx/vectordrawable/graphics/drawable/r;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/r;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/r;->invalidateSelf()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_0
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 34
    .line 35
    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/o;->n:Ljava/lang/Boolean;

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    iget-object v4, v3, Landroidx/vectordrawable/graphics/drawable/o;->g:Landroidx/vectordrawable/graphics/drawable/l;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroidx/vectordrawable/graphics/drawable/l;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, v3, Landroidx/vectordrawable/graphics/drawable/o;->n:Ljava/lang/Boolean;

    .line 50
    .line 51
    :cond_2
    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/o;->n:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iget-object v3, v0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 60
    .line 61
    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/o;->g:Landroidx/vectordrawable/graphics/drawable/l;

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Landroidx/vectordrawable/graphics/drawable/l;->b([I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget-boolean v3, v0, Landroidx/vectordrawable/graphics/drawable/p;->k:Z

    .line 68
    .line 69
    or-int/2addr v3, p1

    .line 70
    iput-boolean v3, v0, Landroidx/vectordrawable/graphics/drawable/p;->k:Z

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/r;->invalidateSelf()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v2, v1

    .line 79
    :goto_1
    return v2
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/o;->getRootAlpha()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq v0, p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->b:Landroidx/vectordrawable/graphics/drawable/o;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/o;->setRootAlpha(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/r;->invalidateSelf()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/d;->h(Landroid/graphics/drawable/Drawable;Z)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 10
    .line 11
    iput-boolean p1, v0, Landroidx/vectordrawable/graphics/drawable/p;->e:Z

    .line 12
    .line 13
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/r;->d:Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/r;->invalidateSelf()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/d;->l(Landroid/graphics/drawable/Drawable;I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/r;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/d;->m(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    if-eq v1, p1, :cond_1

    .line 14
    .line 15
    iput-object p1, v0, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Landroidx/vectordrawable/graphics/drawable/r;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/r;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/r;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/d;->n(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/r;->b:Landroidx/vectordrawable/graphics/drawable/p;

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    if-eq v1, p1, :cond_1

    .line 14
    .line 15
    iput-object p1, v0, Landroidx/vectordrawable/graphics/drawable/p;->d:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/p;->c:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Landroidx/vectordrawable/graphics/drawable/r;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/r;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/r;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/i;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
