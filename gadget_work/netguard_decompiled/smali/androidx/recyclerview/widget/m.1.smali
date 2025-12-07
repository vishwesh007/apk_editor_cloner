.class final Landroidx/recyclerview/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final h:Ljava/lang/ThreadLocal;

.field static i:Ljava/util/Comparator;


# instance fields
.field d:Ljava/util/ArrayList;

.field e:J

.field f:J

.field private g:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/recyclerview/widget/m;->h:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Landroidx/recyclerview/widget/j;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/recyclerview/widget/j;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/recyclerview/widget/m;->i:Ljava/util/Comparator;

    .line 14
    .line 15
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/m;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/m;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method private static c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/P;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->g(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->O(Landroid/view/View;)Landroidx/recyclerview/widget/P;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget v4, v3, Landroidx/recyclerview/widget/P;->mPosition:I

    .line 22
    .line 23
    if-ne v4, p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/recyclerview/widget/P;->isInvalid()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_1
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0

    .line 41
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/I;

    .line 42
    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->W()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/I;->o(IJ)Landroidx/recyclerview/widget/P;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isBound()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isInvalid()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    iget-object p2, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/I;->l(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/I;->a(Landroidx/recyclerview/widget/P;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->X(Z)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->X(Z)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method


# virtual methods
.method final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/recyclerview/widget/m;->e:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroidx/recyclerview/widget/RecyclerView;->Q()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Landroidx/recyclerview/widget/m;->e:J

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/k;

    .line 27
    .line 28
    iput p2, p1, Landroidx/recyclerview/widget/k;->a:I

    .line 29
    .line 30
    iput p3, p1, Landroidx/recyclerview/widget/k;->b:I

    .line 31
    .line 32
    return-void
.end method

.method final b(J)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/m;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/m;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/k;

    .line 27
    .line 28
    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/k;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/k;

    .line 32
    .line 33
    iget v4, v4, Landroidx/recyclerview/widget/k;->d:I

    .line 34
    .line 35
    add-int/2addr v3, v4

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/m;->g:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_1
    const/4 v4, 0x1

    .line 47
    if-ge v2, v0, :cond_6

    .line 48
    .line 49
    iget-object v5, p0, Landroidx/recyclerview/widget/m;->d:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_2
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/k;

    .line 65
    .line 66
    iget v7, v6, Landroidx/recyclerview/widget/k;->a:I

    .line 67
    .line 68
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    iget v8, v6, Landroidx/recyclerview/widget/k;->b:I

    .line 73
    .line 74
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    add-int/2addr v8, v7

    .line 79
    const/4 v7, 0x0

    .line 80
    :goto_2
    iget v9, v6, Landroidx/recyclerview/widget/k;->d:I

    .line 81
    .line 82
    mul-int/lit8 v9, v9, 0x2

    .line 83
    .line 84
    if-ge v7, v9, :cond_5

    .line 85
    .line 86
    iget-object v9, p0, Landroidx/recyclerview/widget/m;->g:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-lt v3, v9, :cond_3

    .line 93
    .line 94
    new-instance v9, Landroidx/recyclerview/widget/l;

    .line 95
    .line 96
    invoke-direct {v9}, Landroidx/recyclerview/widget/l;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object v10, p0, Landroidx/recyclerview/widget/m;->g:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    iget-object v9, p0, Landroidx/recyclerview/widget/m;->g:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Landroidx/recyclerview/widget/l;

    .line 112
    .line 113
    :goto_3
    iget-object v10, v6, Landroidx/recyclerview/widget/k;->c:[I

    .line 114
    .line 115
    add-int/lit8 v11, v7, 0x1

    .line 116
    .line 117
    aget v11, v10, v11

    .line 118
    .line 119
    if-gt v11, v8, :cond_4

    .line 120
    .line 121
    const/4 v12, 0x1

    .line 122
    goto :goto_4

    .line 123
    :cond_4
    const/4 v12, 0x0

    .line 124
    :goto_4
    iput-boolean v12, v9, Landroidx/recyclerview/widget/l;->a:Z

    .line 125
    .line 126
    iput v8, v9, Landroidx/recyclerview/widget/l;->b:I

    .line 127
    .line 128
    iput v11, v9, Landroidx/recyclerview/widget/l;->c:I

    .line 129
    .line 130
    iput-object v5, v9, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    .line 132
    aget v10, v10, v7

    .line 133
    .line 134
    iput v10, v9, Landroidx/recyclerview/widget/l;->e:I

    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    add-int/lit8 v7, v7, 0x2

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/m;->g:Ljava/util/ArrayList;

    .line 145
    .line 146
    sget-object v2, Landroidx/recyclerview/widget/m;->i:Ljava/util/Comparator;

    .line 147
    .line 148
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    :goto_6
    iget-object v2, p0, Landroidx/recyclerview/widget/m;->g:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-ge v0, v2, :cond_f

    .line 159
    .line 160
    iget-object v2, p0, Landroidx/recyclerview/widget/m;->g:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Landroidx/recyclerview/widget/l;

    .line 167
    .line 168
    iget-object v3, v2, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 169
    .line 170
    if-nez v3, :cond_7

    .line 171
    .line 172
    goto/16 :goto_a

    .line 173
    .line 174
    :cond_7
    iget-boolean v5, v2, Landroidx/recyclerview/widget/l;->a:Z

    .line 175
    .line 176
    if-eqz v5, :cond_8

    .line 177
    .line 178
    const-wide v5, 0x7fffffffffffffffL

    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_8
    move-wide v5, p1

    .line 185
    :goto_7
    iget v7, v2, Landroidx/recyclerview/widget/l;->e:I

    .line 186
    .line 187
    invoke-static {v3, v7, v5, v6}, Landroidx/recyclerview/widget/m;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/P;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    if-eqz v3, :cond_e

    .line 192
    .line 193
    iget-object v5, v3, Landroidx/recyclerview/widget/P;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 194
    .line 195
    if-eqz v5, :cond_e

    .line 196
    .line 197
    invoke-virtual {v3}, Landroidx/recyclerview/widget/P;->isBound()Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_e

    .line 202
    .line 203
    invoke-virtual {v3}, Landroidx/recyclerview/widget/P;->isInvalid()Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-nez v5, :cond_e

    .line 208
    .line 209
    iget-object v3, v3, Landroidx/recyclerview/widget/P;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 216
    .line 217
    if-nez v3, :cond_9

    .line 218
    .line 219
    goto :goto_9

    .line 220
    :cond_9
    iget-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    .line 221
    .line 222
    if-eqz v5, :cond_c

    .line 223
    .line 224
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    .line 225
    .line 226
    invoke-virtual {v5}, Landroidx/recyclerview/widget/d;->h()I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_c

    .line 231
    .line 232
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->L:Lu/i;

    .line 233
    .line 234
    if-eqz v5, :cond_a

    .line 235
    .line 236
    invoke-virtual {v5}, Lu/i;->q()V

    .line 237
    .line 238
    .line 239
    :cond_a
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/E;

    .line 240
    .line 241
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/I;

    .line 242
    .line 243
    if-eqz v5, :cond_b

    .line 244
    .line 245
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/E;->n0(Landroidx/recyclerview/widget/I;)V

    .line 246
    .line 247
    .line 248
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/E;

    .line 249
    .line 250
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/E;->o0(Landroidx/recyclerview/widget/I;)V

    .line 251
    .line 252
    .line 253
    :cond_b
    iget-object v5, v6, Landroidx/recyclerview/widget/I;->a:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Landroidx/recyclerview/widget/I;->j()V

    .line 259
    .line 260
    .line 261
    :cond_c
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->e0:Landroidx/recyclerview/widget/k;

    .line 262
    .line 263
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/k;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 264
    .line 265
    .line 266
    iget v6, v5, Landroidx/recyclerview/widget/k;->d:I

    .line 267
    .line 268
    if-eqz v6, :cond_e

    .line 269
    .line 270
    :try_start_0
    const-string v6, "RV Nested Prefetch"

    .line 271
    .line 272
    invoke-static {v6}, Landroidx/core/os/o;->a(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v6, v3, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/M;

    .line 276
    .line 277
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/C;

    .line 278
    .line 279
    iput v4, v6, Landroidx/recyclerview/widget/M;->c:I

    .line 280
    .line 281
    invoke-virtual {v7}, Landroidx/recyclerview/widget/C;->getItemCount()I

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    iput v7, v6, Landroidx/recyclerview/widget/M;->d:I

    .line 286
    .line 287
    iput-boolean v1, v6, Landroidx/recyclerview/widget/M;->f:Z

    .line 288
    .line 289
    iput-boolean v1, v6, Landroidx/recyclerview/widget/M;->g:Z

    .line 290
    .line 291
    iput-boolean v1, v6, Landroidx/recyclerview/widget/M;->h:Z

    .line 292
    .line 293
    const/4 v6, 0x0

    .line 294
    :goto_8
    iget v7, v5, Landroidx/recyclerview/widget/k;->d:I

    .line 295
    .line 296
    mul-int/lit8 v7, v7, 0x2

    .line 297
    .line 298
    if-ge v6, v7, :cond_d

    .line 299
    .line 300
    iget-object v7, v5, Landroidx/recyclerview/widget/k;->c:[I

    .line 301
    .line 302
    aget v7, v7, v6

    .line 303
    .line 304
    invoke-static {v3, v7, p1, p2}, Landroidx/recyclerview/widget/m;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/P;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .line 306
    .line 307
    add-int/lit8 v6, v6, 0x2

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_d
    invoke-static {}, Landroidx/core/os/o;->b()V

    .line 311
    .line 312
    .line 313
    goto :goto_9

    .line 314
    :catchall_0
    move-exception p1

    .line 315
    invoke-static {}, Landroidx/core/os/o;->b()V

    .line 316
    .line 317
    .line 318
    throw p1

    .line 319
    :cond_e
    :goto_9
    iput-boolean v1, v2, Landroidx/recyclerview/widget/l;->a:Z

    .line 320
    .line 321
    iput v1, v2, Landroidx/recyclerview/widget/l;->b:I

    .line 322
    .line 323
    iput v1, v2, Landroidx/recyclerview/widget/l;->c:I

    .line 324
    .line 325
    const/4 v3, 0x0

    .line 326
    iput-object v3, v2, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 327
    .line 328
    iput v1, v2, Landroidx/recyclerview/widget/l;->e:I

    .line 329
    .line 330
    add-int/lit8 v0, v0, 0x1

    .line 331
    .line 332
    goto/16 :goto_6

    .line 333
    .line 334
    :cond_f
    :goto_a
    return-void
.end method

.method public final run()V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v2, "RV Prefetch"

    .line 4
    .line 5
    invoke-static {v2}, Landroidx/core/os/o;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/m;->d:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    :goto_0
    iput-wide v0, p0, Landroidx/recyclerview/widget/m;->e:J

    .line 17
    .line 18
    invoke-static {}, Landroidx/core/os/o;->b()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/recyclerview/widget/m;->d:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    move-wide v4, v0

    .line 30
    :goto_1
    if-ge v3, v2, :cond_2

    .line 31
    .line 32
    iget-object v6, p0, Landroidx/recyclerview/widget/m;->d:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-nez v7, :cond_1

    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/view/View;->getDrawingTime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    cmp-long v2, v4, v0

    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    iget-wide v4, p0, Landroidx/recyclerview/widget/m;->f:J

    .line 69
    .line 70
    add-long/2addr v2, v4

    .line 71
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/m;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    iput-wide v0, p0, Landroidx/recyclerview/widget/m;->e:J

    .line 75
    .line 76
    invoke-static {}, Landroidx/core/os/o;->b()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception v2

    .line 81
    iput-wide v0, p0, Landroidx/recyclerview/widget/m;->e:J

    .line 82
    .line 83
    invoke-static {}, Landroidx/core/os/o;->b()V

    .line 84
    .line 85
    .line 86
    throw v2
.end method
