.class final Landroidx/appcompat/view/menu/k;
.super Landroidx/appcompat/view/menu/A;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field A:Z

.field private final b:Landroid/content/Context;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Z

.field final g:Landroid/os/Handler;

.field private final h:Ljava/util/ArrayList;

.field final i:Ljava/util/ArrayList;

.field final j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final k:Landroid/view/View$OnAttachStateChangeListener;

.field private final l:Landroidx/appcompat/widget/MenuItemHoverListener;

.field private m:I

.field private n:I

.field private o:Landroid/view/View;

.field p:Landroid/view/View;

.field private q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Landroidx/appcompat/view/menu/E;

.field y:Landroid/view/ViewTreeObserver;

.field private z:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/A;-><init>()V

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
    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Landroidx/appcompat/view/menu/f;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/k;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 24
    .line 25
    new-instance v0, Landroidx/appcompat/view/menu/g;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/k;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->k:Landroid/view/View$OnAttachStateChangeListener;

    .line 31
    .line 32
    new-instance v0, Landroidx/appcompat/view/menu/i;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/i;-><init>(Landroidx/appcompat/view/menu/k;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->l:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Landroidx/appcompat/view/menu/k;->m:I

    .line 41
    .line 42
    iput v0, p0, Landroidx/appcompat/view/menu/k;->n:I

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->b:Landroid/content/Context;

    .line 45
    .line 46
    iput-object p2, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    .line 47
    .line 48
    iput p3, p0, Landroidx/appcompat/view/menu/k;->d:I

    .line 49
    .line 50
    iput p4, p0, Landroidx/appcompat/view/menu/k;->e:I

    .line 51
    .line 52
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/k;->f:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/k;->v:Z

    .line 55
    .line 56
    invoke-static {p2}, Landroidx/core/view/f0;->n(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/4 p3, 0x1

    .line 61
    if-ne p2, p3, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x1

    .line 65
    :goto_0
    iput v0, p0, Landroidx/appcompat/view/menu/k;->q:I

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .line 77
    div-int/lit8 p2, p2, 0x2

    .line 78
    .line 79
    const p3, 0x7f070017

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput p1, p0, Landroidx/appcompat/view/menu/k;->c:I

    .line 91
    .line 92
    new-instance p1, Landroid/os/Handler;

    .line 93
    .line 94
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->g:Landroid/os/Handler;

    .line 98
    .line 99
    return-void
.end method

.method private m(Landroidx/appcompat/view/menu/q;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/appcompat/view/menu/k;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Landroidx/appcompat/view/menu/n;

    .line 12
    .line 13
    iget-boolean v5, v0, Landroidx/appcompat/view/menu/k;->f:Z

    .line 14
    .line 15
    const v6, 0x7f0c000b

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v1, v3, v5, v6}, Landroidx/appcompat/view/menu/n;-><init>(Landroidx/appcompat/view/menu/q;Landroid/view/LayoutInflater;ZI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/k;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x1

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    iget-boolean v5, v0, Landroidx/appcompat/view/menu/k;->v:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/n;->d(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/k;->isShowing()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/A;->l(Landroidx/appcompat/view/menu/q;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/n;->d(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    iget v5, v0, Landroidx/appcompat/view/menu/k;->c:I

    .line 50
    .line 51
    invoke-static {v4, v2, v5}, Landroidx/appcompat/view/menu/A;->c(Landroidx/appcompat/view/menu/n;Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    new-instance v7, Landroidx/appcompat/widget/MenuPopupWindow;

    .line 56
    .line 57
    iget v8, v0, Landroidx/appcompat/view/menu/k;->d:I

    .line 58
    .line 59
    iget v9, v0, Landroidx/appcompat/view/menu/k;->e:I

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    invoke-direct {v7, v2, v10, v8, v9}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Landroidx/appcompat/view/menu/k;->l:Landroidx/appcompat/widget/MenuItemHoverListener;

    .line 66
    .line 67
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iget v2, v0, Landroidx/appcompat/view/menu/k;->n:I

    .line 82
    .line 83
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 87
    .line 88
    .line 89
    const/4 v2, 0x2

    .line 90
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 97
    .line 98
    .line 99
    iget v4, v0, Landroidx/appcompat/view/menu/k;->n:I

    .line 100
    .line 101
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 102
    .line 103
    .line 104
    iget-object v4, v0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    const/4 v9, 0x0

    .line 111
    if-lez v8, :cond_b

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    sub-int/2addr v8, v6

    .line 118
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    check-cast v8, Landroidx/appcompat/view/menu/j;

    .line 123
    .line 124
    iget-object v11, v8, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/q;

    .line 125
    .line 126
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/q;->size()I

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    const/4 v13, 0x0

    .line 131
    :goto_1
    if-ge v13, v12, :cond_3

    .line 132
    .line 133
    invoke-virtual {v11, v13}, Landroidx/appcompat/view/menu/q;->getItem(I)Landroid/view/MenuItem;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    invoke-interface {v14}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 138
    .line 139
    .line 140
    move-result v15

    .line 141
    if-eqz v15, :cond_2

    .line 142
    .line 143
    invoke-interface {v14}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    if-ne v1, v15, :cond_2

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    move-object v14, v10

    .line 154
    :goto_2
    if-nez v14, :cond_4

    .line 155
    .line 156
    move-object v2, v10

    .line 157
    goto :goto_7

    .line 158
    :cond_4
    iget-object v11, v8, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 159
    .line 160
    invoke-virtual {v11}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    .line 169
    .line 170
    if-eqz v13, :cond_5

    .line 171
    .line 172
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 173
    .line 174
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    check-cast v12, Landroidx/appcompat/view/menu/n;

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_5
    check-cast v12, Landroidx/appcompat/view/menu/n;

    .line 186
    .line 187
    const/4 v13, 0x0

    .line 188
    :goto_3
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/n;->getCount()I

    .line 189
    .line 190
    .line 191
    move-result v15

    .line 192
    const/4 v2, 0x0

    .line 193
    :goto_4
    const/4 v6, -0x1

    .line 194
    if-ge v2, v15, :cond_7

    .line 195
    .line 196
    invoke-virtual {v12, v2}, Landroidx/appcompat/view/menu/n;->c(I)Landroidx/appcompat/view/menu/t;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    if-ne v14, v10, :cond_6

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    const/4 v10, 0x0

    .line 206
    goto :goto_4

    .line 207
    :cond_7
    const/4 v2, -0x1

    .line 208
    :goto_5
    if-ne v2, v6, :cond_8

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_8
    add-int/2addr v2, v13

    .line 212
    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    sub-int/2addr v2, v6

    .line 217
    if-ltz v2, :cond_a

    .line 218
    .line 219
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-lt v2, v6, :cond_9

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_9
    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    goto :goto_7

    .line 231
    :cond_a
    :goto_6
    const/4 v2, 0x0

    .line 232
    goto :goto_7

    .line 233
    :cond_b
    const/4 v2, 0x0

    .line 234
    const/4 v8, 0x0

    .line 235
    :goto_7
    if-eqz v2, :cond_15

    .line 236
    .line 237
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 238
    .line 239
    .line 240
    const/4 v6, 0x0

    .line 241
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    const/4 v10, 0x1

    .line 249
    sub-int/2addr v6, v10

    .line 250
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    check-cast v6, Landroidx/appcompat/view/menu/j;

    .line 255
    .line 256
    iget-object v6, v6, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 257
    .line 258
    invoke-virtual {v6}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    const/4 v10, 0x2

    .line 263
    new-array v11, v10, [I

    .line 264
    .line 265
    invoke-virtual {v6, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 266
    .line 267
    .line 268
    new-instance v10, Landroid/graphics/Rect;

    .line 269
    .line 270
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .line 272
    .line 273
    iget-object v12, v0, Landroidx/appcompat/view/menu/k;->p:Landroid/view/View;

    .line 274
    .line 275
    invoke-virtual {v12, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 276
    .line 277
    .line 278
    iget v12, v0, Landroidx/appcompat/view/menu/k;->q:I

    .line 279
    .line 280
    const/4 v13, 0x1

    .line 281
    if-ne v12, v13, :cond_c

    .line 282
    .line 283
    aget v11, v11, v9

    .line 284
    .line 285
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    add-int/2addr v6, v11

    .line 290
    add-int/2addr v6, v5

    .line 291
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 292
    .line 293
    if-le v6, v10, :cond_d

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_c
    aget v6, v11, v9

    .line 297
    .line 298
    sub-int/2addr v6, v5

    .line 299
    if-gez v6, :cond_e

    .line 300
    .line 301
    :cond_d
    const/4 v6, 0x1

    .line 302
    :goto_8
    const/4 v10, 0x1

    .line 303
    goto :goto_a

    .line 304
    :cond_e
    :goto_9
    const/4 v6, 0x0

    .line 305
    goto :goto_8

    .line 306
    :goto_a
    if-ne v6, v10, :cond_f

    .line 307
    .line 308
    const/4 v10, 0x1

    .line 309
    goto :goto_b

    .line 310
    :cond_f
    const/4 v10, 0x0

    .line 311
    :goto_b
    iput v6, v0, Landroidx/appcompat/view/menu/k;->q:I

    .line 312
    .line 313
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 314
    .line 315
    const/16 v11, 0x1a

    .line 316
    .line 317
    const/4 v12, 0x5

    .line 318
    if-lt v6, v11, :cond_10

    .line 319
    .line 320
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 321
    .line 322
    .line 323
    const/4 v6, 0x0

    .line 324
    const/4 v13, 0x0

    .line 325
    goto :goto_c

    .line 326
    :cond_10
    const/4 v6, 0x2

    .line 327
    new-array v11, v6, [I

    .line 328
    .line 329
    iget-object v13, v0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    .line 330
    .line 331
    invoke-virtual {v13, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 332
    .line 333
    .line 334
    new-array v6, v6, [I

    .line 335
    .line 336
    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 337
    .line 338
    .line 339
    iget v13, v0, Landroidx/appcompat/view/menu/k;->n:I

    .line 340
    .line 341
    and-int/lit8 v13, v13, 0x7

    .line 342
    .line 343
    if-ne v13, v12, :cond_11

    .line 344
    .line 345
    aget v13, v11, v9

    .line 346
    .line 347
    iget-object v14, v0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    .line 348
    .line 349
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    add-int/2addr v14, v13

    .line 354
    aput v14, v11, v9

    .line 355
    .line 356
    aget v13, v6, v9

    .line 357
    .line 358
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    add-int/2addr v14, v13

    .line 363
    aput v14, v6, v9

    .line 364
    .line 365
    :cond_11
    aget v13, v6, v9

    .line 366
    .line 367
    aget v14, v11, v9

    .line 368
    .line 369
    sub-int/2addr v13, v14

    .line 370
    const/4 v14, 0x1

    .line 371
    aget v6, v6, v14

    .line 372
    .line 373
    aget v11, v11, v14

    .line 374
    .line 375
    sub-int/2addr v6, v11

    .line 376
    :goto_c
    iget v11, v0, Landroidx/appcompat/view/menu/k;->n:I

    .line 377
    .line 378
    and-int/2addr v11, v12

    .line 379
    if-ne v11, v12, :cond_13

    .line 380
    .line 381
    if-eqz v10, :cond_12

    .line 382
    .line 383
    add-int/2addr v13, v5

    .line 384
    goto :goto_d

    .line 385
    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    sub-int/2addr v13, v2

    .line 390
    goto :goto_d

    .line 391
    :cond_13
    if-eqz v10, :cond_14

    .line 392
    .line 393
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    add-int/2addr v13, v2

    .line 398
    goto :goto_d

    .line 399
    :cond_14
    sub-int/2addr v13, v5

    .line 400
    :goto_d
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 401
    .line 402
    .line 403
    const/4 v2, 0x1

    .line 404
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 408
    .line 409
    .line 410
    goto :goto_e

    .line 411
    :cond_15
    iget-boolean v2, v0, Landroidx/appcompat/view/menu/k;->r:Z

    .line 412
    .line 413
    if-eqz v2, :cond_16

    .line 414
    .line 415
    iget v2, v0, Landroidx/appcompat/view/menu/k;->t:I

    .line 416
    .line 417
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 418
    .line 419
    .line 420
    :cond_16
    iget-boolean v2, v0, Landroidx/appcompat/view/menu/k;->s:Z

    .line 421
    .line 422
    if-eqz v2, :cond_17

    .line 423
    .line 424
    iget v2, v0, Landroidx/appcompat/view/menu/k;->u:I

    .line 425
    .line 426
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 427
    .line 428
    .line 429
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/A;->b()Landroid/graphics/Rect;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 434
    .line 435
    .line 436
    :goto_e
    new-instance v2, Landroidx/appcompat/view/menu/j;

    .line 437
    .line 438
    iget v5, v0, Landroidx/appcompat/view/menu/k;->q:I

    .line 439
    .line 440
    invoke-direct {v2, v7, v1, v5}, Landroidx/appcompat/view/menu/j;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/q;I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 454
    .line 455
    .line 456
    if-nez v8, :cond_18

    .line 457
    .line 458
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/k;->w:Z

    .line 459
    .line 460
    if-eqz v4, :cond_18

    .line 461
    .line 462
    iget-object v4, v1, Landroidx/appcompat/view/menu/q;->m:Ljava/lang/CharSequence;

    .line 463
    .line 464
    if-eqz v4, :cond_18

    .line 465
    .line 466
    const v4, 0x7f0c0012

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3, v4, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    check-cast v3, Landroid/widget/FrameLayout;

    .line 474
    .line 475
    const v4, 0x1020016

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    check-cast v4, Landroid/widget/TextView;

    .line 483
    .line 484
    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 485
    .line 486
    .line 487
    iget-object v1, v1, Landroidx/appcompat/view/menu/q;->m:Ljava/lang/CharSequence;

    .line 488
    .line 489
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    const/4 v1, 0x0

    .line 493
    invoke-virtual {v2, v3, v1, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 497
    .line 498
    .line 499
    :cond_18
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/q;->c(Landroidx/appcompat/view/menu/F;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/k;->m(Landroidx/appcompat/view/menu/q;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    .line 6
    .line 7
    iget v0, p0, Landroidx/appcompat/view/menu/k;->m:I

    .line 8
    .line 9
    invoke-static {p1}, Landroidx/core/view/f0;->n(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroidx/appcompat/view/menu/k;->n:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    new-array v2, v1, [Landroidx/appcompat/view/menu/j;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Landroidx/appcompat/view/menu/j;

    .line 16
    .line 17
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    if-ltz v1, :cond_1

    .line 20
    .line 21
    aget-object v2, v0, v1

    .line 22
    .line 23
    iget-object v3, v2, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/k;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/k;->m:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/appcompat/view/menu/k;->m:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/core/view/f0;->n(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroidx/appcompat/view/menu/k;->n:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/appcompat/view/menu/j;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    return-object v0
.end method

.method public final h(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/k;->r:Z

    .line 3
    .line 4
    iput p1, p0, Landroidx/appcompat/view/menu/k;->t:I

    .line 5
    .line 6
    return-void
.end method

.method public final i(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->z:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2
    .line 3
    return-void
.end method

.method public final isShowing()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/appcompat/view/menu/j;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    :cond_0
    return v2
.end method

.method public final j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/k;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public final k(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/k;->s:Z

    .line 3
    .line 4
    iput p1, p0, Landroidx/appcompat/view/menu/k;->u:I

    .line 5
    .line 6
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/q;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/appcompat/view/menu/j;

    .line 16
    .line 17
    iget-object v4, v4, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/q;

    .line 18
    .line 19
    if-ne p1, v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, -0x1

    .line 26
    :goto_1
    if-gez v3, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v1, v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/appcompat/view/menu/j;

    .line 42
    .line 43
    iget-object v1, v1, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/q;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/q;->e(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroidx/appcompat/view/menu/j;

    .line 53
    .line 54
    iget-object v3, v1, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/q;

    .line 55
    .line 56
    invoke-virtual {v3, p0}, Landroidx/appcompat/view/menu/q;->z(Landroidx/appcompat/view/menu/F;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/k;->A:Z

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    iget-object v1, v1, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/4 v3, 0x1

    .line 80
    if-lez v1, :cond_5

    .line 81
    .line 82
    add-int/lit8 v5, v1, -0x1

    .line 83
    .line 84
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Landroidx/appcompat/view/menu/j;

    .line 89
    .line 90
    iget v5, v5, Landroidx/appcompat/view/menu/j;->c:I

    .line 91
    .line 92
    iput v5, p0, Landroidx/appcompat/view/menu/k;->q:I

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    iget-object v5, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    .line 96
    .line 97
    invoke-static {v5}, Landroidx/core/view/f0;->n(Landroid/view/View;)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-ne v5, v3, :cond_6

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    goto :goto_2

    .line 105
    :cond_6
    const/4 v5, 0x1

    .line 106
    :goto_2
    iput v5, p0, Landroidx/appcompat/view/menu/k;->q:I

    .line 107
    .line 108
    :goto_3
    if-nez v1, :cond_a

    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->dismiss()V

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Landroidx/appcompat/view/menu/k;->x:Landroidx/appcompat/view/menu/E;

    .line 114
    .line 115
    if-eqz p2, :cond_7

    .line 116
    .line 117
    invoke-interface {p2, p1, v3}, Landroidx/appcompat/view/menu/E;->onCloseMenu(Landroidx/appcompat/view/menu/q;Z)V

    .line 118
    .line 119
    .line 120
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->y:Landroid/view/ViewTreeObserver;

    .line 121
    .line 122
    if-eqz p1, :cond_9

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_8

    .line 129
    .line 130
    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->y:Landroid/view/ViewTreeObserver;

    .line 131
    .line 132
    iget-object p2, p0, Landroidx/appcompat/view/menu/k;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 135
    .line 136
    .line 137
    :cond_8
    iput-object v4, p0, Landroidx/appcompat/view/menu/k;->y:Landroid/view/ViewTreeObserver;

    .line 138
    .line 139
    :cond_9
    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->p:Landroid/view/View;

    .line 140
    .line 141
    iget-object p2, p0, Landroidx/appcompat/view/menu/k;->k:Landroid/view/View$OnAttachStateChangeListener;

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->z:Landroid/widget/PopupWindow$OnDismissListener;

    .line 147
    .line 148
    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_a
    if-eqz p2, :cond_b

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroidx/appcompat/view/menu/j;

    .line 159
    .line 160
    iget-object p1, p1, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/q;

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/q;->e(Z)V

    .line 163
    .line 164
    .line 165
    :cond_b
    :goto_4
    return-void
.end method

.method public final onDismiss()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/appcompat/view/menu/j;

    .line 16
    .line 17
    iget-object v5, v4, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 18
    .line 19
    invoke-virtual {v5}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v4, 0x0

    .line 30
    :goto_1
    if-eqz v4, :cond_2

    .line 31
    .line 32
    iget-object v0, v4, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/q;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/q;->e(Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x52

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->dismiss()V

    .line 13
    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/N;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/appcompat/view/menu/j;

    .line 19
    .line 20
    iget-object v3, v1, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/q;

    .line 21
    .line 22
    if-ne p1, v3, :cond_0

    .line 23
    .line 24
    iget-object p1, v1, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->hasVisibleItems()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/k;->a(Landroidx/appcompat/view/menu/q;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->x:Landroidx/appcompat/view/menu/E;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/E;->onOpenSubMenu(Landroidx/appcompat/view/menu/q;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    return v2

    .line 51
    :cond_3
    const/4 p1, 0x0

    .line 52
    return p1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/E;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/k;->x:Landroidx/appcompat/view/menu/E;

    .line 2
    .line 3
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->h:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/appcompat/view/menu/q;

    .line 25
    .line 26
    invoke-direct {p0, v2}, Landroidx/appcompat/view/menu/k;->m(Landroidx/appcompat/view/menu/q;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->o:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->p:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/appcompat/view/menu/k;->y:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Landroidx/appcompat/view/menu/k;->y:Landroid/view/ViewTreeObserver;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/appcompat/view/menu/k;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/k;->p:Landroid/view/View;

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/appcompat/view/menu/k;->k:Landroid/view/View$OnAttachStateChangeListener;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final updateMenuView(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/k;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/appcompat/view/menu/j;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroidx/appcompat/view/menu/n;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    check-cast v0, Landroidx/appcompat/view/menu/n;

    .line 43
    .line 44
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/n;->notifyDataSetChanged()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method
