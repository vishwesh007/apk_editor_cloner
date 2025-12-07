.class final Landroidx/recyclerview/widget/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private d:I

.field private e:I

.field f:Landroid/widget/OverScroller;

.field g:Landroid/view/animation/Interpolator;

.field private h:Z

.field private i:Z

.field final synthetic j:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/O;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->D0:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/O;->g:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/O;->h:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/recyclerview/widget/O;->i:Z

    .line 14
    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroidx/recyclerview/widget/O;->f:Landroid/widget/OverScroller;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/O;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->p0(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Landroidx/recyclerview/widget/O;->e:I

    .line 9
    .line 10
    iput v1, p0, Landroidx/recyclerview/widget/O;->d:I

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/O;->g:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->D0:Landroid/view/animation/Interpolator;

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    iput-object v2, p0, Landroidx/recyclerview/widget/O;->g:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    new-instance v1, Landroid/widget/OverScroller;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, v3, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroidx/recyclerview/widget/O;->f:Landroid/widget/OverScroller;

    .line 30
    .line 31
    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/O;->f:Landroid/widget/OverScroller;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/high16 v9, -0x80000000

    .line 36
    .line 37
    const v10, 0x7fffffff

    .line 38
    .line 39
    .line 40
    const/high16 v11, -0x80000000

    .line 41
    .line 42
    const v12, 0x7fffffff

    .line 43
    .line 44
    .line 45
    move v7, p1

    .line 46
    move v8, p2

    .line 47
    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 48
    .line 49
    .line 50
    iget-boolean p1, p0, Landroidx/recyclerview/widget/O;->h:Z

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Landroidx/recyclerview/widget/O;->i:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p0}, Landroidx/core/view/f0;->G(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public final b(II)V
    .locals 12

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v4, 0x0

    .line 16
    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/O;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    :goto_1
    if-eqz v4, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v0, v1

    .line 33
    :goto_2
    int-to-float v0, v0

    .line 34
    int-to-float v1, v6

    .line 35
    div-float/2addr v0, v1

    .line 36
    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    .line 38
    add-float/2addr v0, v1

    .line 39
    const/high16 v1, 0x43960000    # 300.0f

    .line 40
    .line 41
    mul-float v0, v0, v1

    .line 42
    .line 43
    float-to-int v0, v0

    .line 44
    const/16 v1, 0x7d0

    .line 45
    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->D0:Landroid/view/animation/Interpolator;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/recyclerview/widget/O;->g:Landroid/view/animation/Interpolator;

    .line 53
    .line 54
    if-eq v1, v0, :cond_3

    .line 55
    .line 56
    iput-object v0, p0, Landroidx/recyclerview/widget/O;->g:Landroid/view/animation/Interpolator;

    .line 57
    .line 58
    new-instance v1, Landroid/widget/OverScroller;

    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-direct {v1, v4, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Landroidx/recyclerview/widget/O;->f:Landroid/widget/OverScroller;

    .line 68
    .line 69
    :cond_3
    iput v3, p0, Landroidx/recyclerview/widget/O;->e:I

    .line 70
    .line 71
    iput v3, p0, Landroidx/recyclerview/widget/O;->d:I

    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->p0(I)V

    .line 75
    .line 76
    .line 77
    iget-object v6, p0, Landroidx/recyclerview/widget/O;->f:Landroid/widget/OverScroller;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v8, 0x0

    .line 81
    move v9, p1

    .line 82
    move v10, p2

    .line 83
    invoke-virtual/range {v6 .. v11}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 84
    .line 85
    .line 86
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    const/16 p2, 0x17

    .line 89
    .line 90
    if-ge p1, p2, :cond_4

    .line 91
    .line 92
    iget-object p1, p0, Landroidx/recyclerview/widget/O;->f:Landroid/widget/OverScroller;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/O;->h:Z

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    iput-boolean v2, p0, Landroidx/recyclerview/widget/O;->i:Z

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    invoke-virtual {v5, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    invoke-static {v5, p0}, Landroidx/core/view/f0;->G(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    :goto_3
    return-void
.end method

.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v9, v0, Landroidx/recyclerview/widget/O;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/E;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Landroidx/recyclerview/widget/O;->f:Landroid/widget/OverScroller;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v10, 0x0

    .line 19
    iput-boolean v10, v0, Landroidx/recyclerview/widget/O;->i:Z

    .line 20
    .line 21
    const/4 v11, 0x1

    .line 22
    iput-boolean v11, v0, Landroidx/recyclerview/widget/O;->h:Z

    .line 23
    .line 24
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->s()V

    .line 25
    .line 26
    .line 27
    iget-object v12, v0, Landroidx/recyclerview/widget/O;->f:Landroid/widget/OverScroller;

    .line 28
    .line 29
    invoke-virtual {v12}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_15

    .line 34
    .line 35
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v3, v0, Landroidx/recyclerview/widget/O;->d:I

    .line 44
    .line 45
    sub-int v3, v1, v3

    .line 46
    .line 47
    iget v4, v0, Landroidx/recyclerview/widget/O;->e:I

    .line 48
    .line 49
    sub-int v4, v2, v4

    .line 50
    .line 51
    iput v1, v0, Landroidx/recyclerview/widget/O;->d:I

    .line 52
    .line 53
    iput v2, v0, Landroidx/recyclerview/widget/O;->e:I

    .line 54
    .line 55
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/RecyclerView;->p(I)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView;->r(I)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    iget-object v4, v9, Landroidx/recyclerview/widget/RecyclerView;->q0:[I

    .line 64
    .line 65
    aput v10, v4, v10

    .line 66
    .line 67
    aput v10, v4, v11

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x1

    .line 71
    move-object v1, v9

    .line 72
    move v2, v7

    .line 73
    move v3, v8

    .line 74
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->x(II[I[II)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object v13, v9, Landroidx/recyclerview/widget/RecyclerView;->q0:[I

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    aget v1, v13, v10

    .line 83
    .line 84
    sub-int/2addr v7, v1

    .line 85
    aget v1, v13, v11

    .line 86
    .line 87
    sub-int/2addr v8, v1

    .line 88
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getOverScrollMode()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v14, 0x2

    .line 93
    if-eq v1, v14, :cond_2

    .line 94
    .line 95
    invoke-virtual {v9, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->o(II)V

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 99
    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    aput v10, v13, v10

    .line 103
    .line 104
    aput v10, v13, v11

    .line 105
    .line 106
    invoke-virtual {v9, v7, v8, v13}, Landroidx/recyclerview/widget/RecyclerView;->k0(II[I)V

    .line 107
    .line 108
    .line 109
    aget v1, v13, v10

    .line 110
    .line 111
    aget v2, v13, v11

    .line 112
    .line 113
    sub-int/2addr v7, v1

    .line 114
    sub-int/2addr v8, v2

    .line 115
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/E;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move v15, v1

    .line 121
    move/from16 v16, v7

    .line 122
    .line 123
    move/from16 v17, v8

    .line 124
    .line 125
    move v8, v2

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    move/from16 v16, v7

    .line 128
    .line 129
    move/from16 v17, v8

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v15, 0x0

    .line 133
    :goto_0
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_4

    .line 140
    .line 141
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 142
    .line 143
    .line 144
    :cond_4
    iget-object v7, v9, Landroidx/recyclerview/widget/RecyclerView;->q0:[I

    .line 145
    .line 146
    aput v10, v7, v10

    .line 147
    .line 148
    aput v10, v7, v11

    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    const/16 v18, 0x1

    .line 152
    .line 153
    move-object v1, v9

    .line 154
    move v2, v15

    .line 155
    move v3, v8

    .line 156
    move/from16 v4, v16

    .line 157
    .line 158
    move/from16 v5, v17

    .line 159
    .line 160
    move-object/from16 v19, v7

    .line 161
    .line 162
    move/from16 v7, v18

    .line 163
    .line 164
    move v14, v8

    .line 165
    move-object/from16 v8, v19

    .line 166
    .line 167
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/RecyclerView;->y(IIII[II[I)V

    .line 168
    .line 169
    .line 170
    aget v1, v13, v10

    .line 171
    .line 172
    sub-int v16, v16, v1

    .line 173
    .line 174
    aget v1, v13, v11

    .line 175
    .line 176
    sub-int v17, v17, v1

    .line 177
    .line 178
    if-nez v15, :cond_5

    .line 179
    .line 180
    if-eqz v14, :cond_6

    .line 181
    .line 182
    :cond_5
    invoke-virtual {v9, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->z(II)V

    .line 183
    .line 184
    .line 185
    :cond_6
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_7

    .line 190
    .line 191
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 192
    .line 193
    .line 194
    :cond_7
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalX()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-ne v1, v2, :cond_8

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    goto :goto_1

    .line 206
    :cond_8
    const/4 v1, 0x0

    .line 207
    :goto_1
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalY()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-ne v2, v3, :cond_9

    .line 216
    .line 217
    const/4 v2, 0x1

    .line 218
    goto :goto_2

    .line 219
    :cond_9
    const/4 v2, 0x0

    .line 220
    :goto_2
    invoke-virtual {v12}, Landroid/widget/OverScroller;->isFinished()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-nez v3, :cond_c

    .line 225
    .line 226
    if-nez v1, :cond_a

    .line 227
    .line 228
    if-eqz v16, :cond_b

    .line 229
    .line 230
    :cond_a
    if-nez v2, :cond_c

    .line 231
    .line 232
    if-eqz v17, :cond_b

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_b
    const/4 v1, 0x0

    .line 236
    goto :goto_4

    .line 237
    :cond_c
    :goto_3
    const/4 v1, 0x1

    .line 238
    :goto_4
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/E;

    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    if-eqz v1, :cond_13

    .line 244
    .line 245
    invoke-virtual {v9}, Landroid/view/View;->getOverScrollMode()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    const/4 v2, 0x2

    .line 250
    if-eq v1, v2, :cond_11

    .line 251
    .line 252
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    float-to-int v1, v1

    .line 257
    if-gez v16, :cond_d

    .line 258
    .line 259
    neg-int v2, v1

    .line 260
    goto :goto_5

    .line 261
    :cond_d
    if-lez v16, :cond_e

    .line 262
    .line 263
    move v2, v1

    .line 264
    goto :goto_5

    .line 265
    :cond_e
    const/4 v2, 0x0

    .line 266
    :goto_5
    if-gez v17, :cond_f

    .line 267
    .line 268
    neg-int v1, v1

    .line 269
    goto :goto_6

    .line 270
    :cond_f
    if-lez v17, :cond_10

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_10
    const/4 v1, 0x0

    .line 274
    :goto_6
    invoke-virtual {v9, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(II)V

    .line 275
    .line 276
    .line 277
    :cond_11
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    .line 278
    .line 279
    if-eqz v1, :cond_15

    .line 280
    .line 281
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/k;

    .line 282
    .line 283
    iget-object v2, v1, Landroidx/recyclerview/widget/k;->c:[I

    .line 284
    .line 285
    if-eqz v2, :cond_12

    .line 286
    .line 287
    const/4 v3, -0x1

    .line 288
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 289
    .line 290
    .line 291
    :cond_12
    iput v10, v1, Landroidx/recyclerview/widget/k;->d:I

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_13
    iget-boolean v1, v0, Landroidx/recyclerview/widget/O;->h:Z

    .line 295
    .line 296
    if-eqz v1, :cond_14

    .line 297
    .line 298
    iput-boolean v11, v0, Landroidx/recyclerview/widget/O;->i:Z

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_14
    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 302
    .line 303
    .line 304
    invoke-static {v9, v0}, Landroidx/core/view/f0;->G(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 305
    .line 306
    .line 307
    :goto_7
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/m;

    .line 308
    .line 309
    if-eqz v1, :cond_15

    .line 310
    .line 311
    invoke-virtual {v1, v9, v15, v14}, Landroidx/recyclerview/widget/m;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 312
    .line 313
    .line 314
    :cond_15
    :goto_8
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/E;

    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    iput-boolean v10, v0, Landroidx/recyclerview/widget/O;->h:Z

    .line 320
    .line 321
    iget-boolean v1, v0, Landroidx/recyclerview/widget/O;->i:Z

    .line 322
    .line 323
    if-eqz v1, :cond_16

    .line 324
    .line 325
    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    .line 327
    .line 328
    invoke-static {v9, v0}, Landroidx/core/view/f0;->G(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 329
    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_16
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->p0(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView;->u0(I)V

    .line 336
    .line 337
    .line 338
    :goto_9
    return-void
.end method
