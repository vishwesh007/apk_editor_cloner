.class final Landroidx/appcompat/app/U;
.super Landroidx/appcompat/app/v;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/o;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final i0:Landroidx/collection/n;

.field private static final j0:[I

.field private static final k0:Z

.field private static final l0:Z


# instance fields
.field private A:Z

.field B:Landroid/view/ViewGroup;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Z

.field private F:Z

.field G:Z

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field private L:Z

.field private M:[Landroidx/appcompat/app/T;

.field private N:Landroidx/appcompat/app/T;

.field private O:Z

.field private P:Z

.field private Q:Z

.field R:Z

.field private S:Landroid/content/res/Configuration;

.field private T:I

.field private U:I

.field private V:I

.field private W:Z

.field private X:Landroidx/appcompat/app/P;

.field private Y:Landroidx/appcompat/app/M;

.field Z:Z

.field a0:I

.field private final b0:Ljava/lang/Runnable;

.field private c0:Z

.field private d0:Landroid/graphics/Rect;

.field private e0:Landroid/graphics/Rect;

.field private f0:Landroidx/appcompat/app/AppCompatViewInflater;

.field private g0:Landroid/window/OnBackInvokedDispatcher;

.field private h0:Landroid/window/OnBackInvokedCallback;

.field final j:Ljava/lang/Object;

.field final k:Landroid/content/Context;

.field l:Landroid/view/Window;

.field private m:Landroidx/appcompat/app/L;

.field final n:Landroidx/appcompat/app/r;

.field o:Landroidx/appcompat/app/h0;

.field p:Landroidx/appcompat/view/l;

.field private q:Ljava/lang/CharSequence;

.field private r:Landroidx/appcompat/widget/DecorContentParent;

.field private s:Landroidx/appcompat/app/x;

.field private t:Landroidx/appcompat/app/x;

.field u:Landroidx/appcompat/view/c;

.field v:Landroidx/appcompat/widget/ActionBarContextView;

.field w:Landroid/widget/PopupWindow;

.field x:Ljava/lang/Runnable;

.field y:Landroidx/core/view/r0;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/n;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/collection/n;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/appcompat/app/U;->i0:Landroidx/collection/n;

    .line 7
    .line 8
    const v0, 0x1010054

    .line 9
    .line 10
    .line 11
    filled-new-array {v0}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/appcompat/app/U;->j0:[I

    .line 16
    .line 17
    const-string v0, "robolectric"

    .line 18
    .line 19
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    xor-int/2addr v0, v1

    .line 27
    sput-boolean v0, Landroidx/appcompat/app/U;->k0:Z

    .line 28
    .line 29
    sput-boolean v1, Landroidx/appcompat/app/U;->l0:Z

    .line 30
    .line 31
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/r;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p1}, Landroidx/appcompat/app/U;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/r;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;Landroidx/appcompat/app/r;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/appcompat/app/U;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/r;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/r;Ljava/lang/Object;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/v;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroidx/appcompat/app/U;->z:Z

    const/16 v1, -0x64

    .line 6
    iput v1, p0, Landroidx/appcompat/app/U;->T:I

    .line 7
    new-instance v2, Landroidx/appcompat/app/w;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/w;-><init>(Landroidx/appcompat/app/U;)V

    iput-object v2, p0, Landroidx/appcompat/app/U;->b0:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Landroidx/appcompat/app/U;->n:Landroidx/appcompat/app/r;

    .line 10
    iput-object p4, p0, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    .line 11
    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 12
    instance-of p3, p1, Landroidx/appcompat/app/q;

    if-eqz p3, :cond_0

    .line 13
    check-cast p1, Landroidx/appcompat/app/q;

    goto :goto_1

    .line 14
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    .line 15
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/app/q;->getDelegate()Landroidx/appcompat/app/v;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/v;->i()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/U;->T:I

    .line 17
    :cond_2
    iget p1, p0, Landroidx/appcompat/app/U;->T:I

    if-ne p1, v1, :cond_3

    .line 18
    sget-object p1, Landroidx/appcompat/app/U;->i0:Landroidx/collection/n;

    iget-object p3, p0, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 19
    invoke-virtual {p1, p3, v0}, Landroidx/collection/n;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 20
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    .line 21
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/U;->T:I

    .line 22
    iget-object p3, p0, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/collection/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 23
    invoke-direct {p0, p2}, Landroidx/appcompat/app/U;->I(Landroid/view/Window;)V

    .line 24
    :cond_4
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->preload()V

    return-void
.end method

.method private G(ZZ)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Landroidx/appcompat/app/U;->R:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget v0, v1, Landroidx/appcompat/app/U;->T:I

    .line 10
    .line 11
    const/16 v3, -0x64

    .line 12
    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Landroidx/appcompat/app/v;->h()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    move v3, v0

    .line 21
    iget-object v4, v1, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/app/U;->Z(Landroid/content/Context;I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v6, 0x21

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    if-ge v0, v6, :cond_2

    .line 33
    .line 34
    invoke-static {v4}, Landroidx/appcompat/app/U;->J(Landroid/content/Context;)Landroidx/core/os/j;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v6, v7

    .line 40
    :goto_1
    if-nez p2, :cond_3

    .line 41
    .line 42
    if-eqz v6, :cond_3

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v6}, Landroidx/appcompat/app/U;->U(Landroid/content/res/Configuration;)Landroidx/core/os/j;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    :cond_3
    invoke-static {v4, v5, v6, v7, v2}, Landroidx/appcompat/app/U;->N(Landroid/content/Context;ILandroidx/core/os/j;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    iget-boolean v9, v1, Landroidx/appcompat/app/U;->W:Z

    .line 61
    .line 62
    const/16 v10, 0x18

    .line 63
    .line 64
    const/4 v11, 0x1

    .line 65
    iget-object v12, v1, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    .line 66
    .line 67
    if-nez v9, :cond_7

    .line 68
    .line 69
    instance-of v9, v12, Landroid/app/Activity;

    .line 70
    .line 71
    if-eqz v9, :cond_7

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    if-nez v9, :cond_4

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    goto :goto_4

    .line 81
    :cond_4
    const/16 v13, 0x1d

    .line 82
    .line 83
    if-lt v0, v13, :cond_5

    .line 84
    .line 85
    const/high16 v0, 0x100c0000

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    if-lt v0, v10, :cond_6

    .line 89
    .line 90
    const/high16 v0, 0xc0000

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    const/4 v0, 0x0

    .line 94
    :goto_2
    :try_start_0
    new-instance v13, Landroid/content/ComponentName;

    .line 95
    .line 96
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    invoke-direct {v13, v4, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v13, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 110
    .line 111
    iput v0, v1, Landroidx/appcompat/app/U;->V:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v9, "AppCompatDelegate"

    .line 116
    .line 117
    const-string v13, "Exception while getting ActivityInfo"

    .line 118
    .line 119
    invoke-static {v9, v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    iput v2, v1, Landroidx/appcompat/app/U;->V:I

    .line 123
    .line 124
    :cond_7
    :goto_3
    iput-boolean v11, v1, Landroidx/appcompat/app/U;->W:Z

    .line 125
    .line 126
    iget v0, v1, Landroidx/appcompat/app/U;->V:I

    .line 127
    .line 128
    :goto_4
    iget-object v9, v1, Landroidx/appcompat/app/U;->S:Landroid/content/res/Configuration;

    .line 129
    .line 130
    if-nez v9, :cond_8

    .line 131
    .line 132
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    :cond_8
    iget v13, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 141
    .line 142
    and-int/lit8 v13, v13, 0x30

    .line 143
    .line 144
    iget v14, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 145
    .line 146
    and-int/lit8 v14, v14, 0x30

    .line 147
    .line 148
    invoke-static {v9}, Landroidx/appcompat/app/U;->U(Landroid/content/res/Configuration;)Landroidx/core/os/j;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    if-nez v6, :cond_9

    .line 153
    .line 154
    move-object v8, v7

    .line 155
    goto :goto_5

    .line 156
    :cond_9
    invoke-static {v8}, Landroidx/appcompat/app/U;->U(Landroid/content/res/Configuration;)Landroidx/core/os/j;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    :goto_5
    if-eq v13, v14, :cond_a

    .line 161
    .line 162
    const/16 v13, 0x200

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_a
    const/4 v13, 0x0

    .line 166
    :goto_6
    if-eqz v8, :cond_b

    .line 167
    .line 168
    invoke-virtual {v9, v8}, Landroidx/core/os/j;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-nez v9, :cond_b

    .line 173
    .line 174
    or-int/lit8 v9, v13, 0x4

    .line 175
    .line 176
    or-int/lit16 v13, v9, 0x2000

    .line 177
    .line 178
    :cond_b
    not-int v9, v0

    .line 179
    and-int/2addr v9, v13

    .line 180
    if-eqz v9, :cond_e

    .line 181
    .line 182
    if-eqz p1, :cond_e

    .line 183
    .line 184
    iget-boolean v9, v1, Landroidx/appcompat/app/U;->P:Z

    .line 185
    .line 186
    if-eqz v9, :cond_e

    .line 187
    .line 188
    sget-boolean v9, Landroidx/appcompat/app/U;->k0:Z

    .line 189
    .line 190
    if-nez v9, :cond_c

    .line 191
    .line 192
    iget-boolean v9, v1, Landroidx/appcompat/app/U;->Q:Z

    .line 193
    .line 194
    if-eqz v9, :cond_e

    .line 195
    .line 196
    :cond_c
    instance-of v9, v12, Landroid/app/Activity;

    .line 197
    .line 198
    if-eqz v9, :cond_e

    .line 199
    .line 200
    move-object v9, v12

    .line 201
    check-cast v9, Landroid/app/Activity;

    .line 202
    .line 203
    invoke-virtual {v9}, Landroid/app/Activity;->isChild()Z

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    if-nez v15, :cond_e

    .line 208
    .line 209
    sget v15, Landroidx/core/app/f;->c:I

    .line 210
    .line 211
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 212
    .line 213
    const/16 v7, 0x1c

    .line 214
    .line 215
    if-lt v15, v7, :cond_d

    .line 216
    .line 217
    invoke-virtual {v9}, Landroid/app/Activity;->recreate()V

    .line 218
    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_d
    new-instance v7, Landroid/os/Handler;

    .line 222
    .line 223
    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 224
    .line 225
    .line 226
    move-result-object v15

    .line 227
    invoke-direct {v7, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    .line 229
    .line 230
    new-instance v15, Landroidx/appcompat/app/s;

    .line 231
    .line 232
    invoke-direct {v15, v9, v11}, Landroidx/appcompat/app/s;-><init>(Landroid/content/Context;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    .line 237
    .line 238
    :goto_7
    const/4 v7, 0x1

    .line 239
    goto :goto_8

    .line 240
    :cond_e
    const/4 v7, 0x0

    .line 241
    :goto_8
    if-nez v7, :cond_15

    .line 242
    .line 243
    if-eqz v13, :cond_15

    .line 244
    .line 245
    and-int/2addr v0, v13

    .line 246
    if-ne v0, v13, :cond_f

    .line 247
    .line 248
    const/4 v0, 0x1

    .line 249
    goto :goto_9

    .line 250
    :cond_f
    const/4 v0, 0x0

    .line 251
    :goto_9
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    new-instance v9, Landroid/content/res/Configuration;

    .line 256
    .line 257
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    invoke-direct {v9, v15}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 265
    .line 266
    .line 267
    move-result-object v15

    .line 268
    iget v15, v15, Landroid/content/res/Configuration;->uiMode:I

    .line 269
    .line 270
    and-int/lit8 v15, v15, -0x31

    .line 271
    .line 272
    or-int/2addr v14, v15

    .line 273
    iput v14, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 274
    .line 275
    if-eqz v8, :cond_11

    .line 276
    .line 277
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 278
    .line 279
    if-lt v14, v10, :cond_10

    .line 280
    .line 281
    invoke-static {v9, v8}, Landroidx/appcompat/app/G;->d(Landroid/content/res/Configuration;Landroidx/core/os/j;)V

    .line 282
    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_10
    invoke-virtual {v8, v2}, Landroidx/core/os/j;->c(I)Ljava/util/Locale;

    .line 286
    .line 287
    .line 288
    move-result-object v14

    .line 289
    invoke-static {v9, v14}, Landroidx/appcompat/app/E;->b(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8, v2}, Landroidx/core/os/j;->c(I)Ljava/util/Locale;

    .line 293
    .line 294
    .line 295
    move-result-object v14

    .line 296
    invoke-static {v9, v14}, Landroidx/appcompat/app/E;->a(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 297
    .line 298
    .line 299
    :cond_11
    :goto_a
    const/4 v14, 0x0

    .line 300
    invoke-virtual {v7, v9, v14}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 301
    .line 302
    .line 303
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 304
    .line 305
    const/16 v15, 0x1a

    .line 306
    .line 307
    if-ge v14, v15, :cond_12

    .line 308
    .line 309
    invoke-static {v7}, Landroidx/appcompat/app/Q;->a(Landroid/content/res/Resources;)V

    .line 310
    .line 311
    .line 312
    :cond_12
    iget v7, v1, Landroidx/appcompat/app/U;->U:I

    .line 313
    .line 314
    if-eqz v7, :cond_13

    .line 315
    .line 316
    invoke-virtual {v4, v7}, Landroid/content/Context;->setTheme(I)V

    .line 317
    .line 318
    .line 319
    const/16 v7, 0x17

    .line 320
    .line 321
    if-lt v14, v7, :cond_13

    .line 322
    .line 323
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    iget v14, v1, Landroidx/appcompat/app/U;->U:I

    .line 328
    .line 329
    invoke-virtual {v7, v14, v11}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 330
    .line 331
    .line 332
    :cond_13
    if-eqz v0, :cond_16

    .line 333
    .line 334
    instance-of v0, v12, Landroid/app/Activity;

    .line 335
    .line 336
    if-eqz v0, :cond_16

    .line 337
    .line 338
    move-object v0, v12

    .line 339
    check-cast v0, Landroid/app/Activity;

    .line 340
    .line 341
    instance-of v7, v0, Landroidx/lifecycle/s;

    .line 342
    .line 343
    if-eqz v7, :cond_14

    .line 344
    .line 345
    move-object v7, v0

    .line 346
    check-cast v7, Landroidx/lifecycle/s;

    .line 347
    .line 348
    invoke-interface {v7}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/m;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    invoke-virtual {v7}, Landroidx/lifecycle/m;->b()Landroidx/lifecycle/l;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    sget-object v14, Landroidx/lifecycle/l;->f:Landroidx/lifecycle/l;

    .line 357
    .line 358
    invoke-virtual {v7, v14}, Landroidx/lifecycle/l;->f(Landroidx/lifecycle/l;)Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    if-eqz v7, :cond_16

    .line 363
    .line 364
    invoke-virtual {v0, v9}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 365
    .line 366
    .line 367
    goto :goto_b

    .line 368
    :cond_14
    iget-boolean v7, v1, Landroidx/appcompat/app/U;->Q:Z

    .line 369
    .line 370
    if-eqz v7, :cond_16

    .line 371
    .line 372
    iget-boolean v7, v1, Landroidx/appcompat/app/U;->R:Z

    .line 373
    .line 374
    if-nez v7, :cond_16

    .line 375
    .line 376
    invoke-virtual {v0, v9}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 377
    .line 378
    .line 379
    goto :goto_b

    .line 380
    :cond_15
    move v11, v7

    .line 381
    :cond_16
    :goto_b
    if-eqz v11, :cond_18

    .line 382
    .line 383
    instance-of v0, v12, Landroidx/appcompat/app/q;

    .line 384
    .line 385
    if-eqz v0, :cond_18

    .line 386
    .line 387
    and-int/lit16 v0, v13, 0x200

    .line 388
    .line 389
    if-eqz v0, :cond_17

    .line 390
    .line 391
    move-object v0, v12

    .line 392
    check-cast v0, Landroidx/appcompat/app/q;

    .line 393
    .line 394
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/q;->onNightModeChanged(I)V

    .line 395
    .line 396
    .line 397
    :cond_17
    and-int/lit8 v0, v13, 0x4

    .line 398
    .line 399
    if-eqz v0, :cond_18

    .line 400
    .line 401
    check-cast v12, Landroidx/appcompat/app/q;

    .line 402
    .line 403
    invoke-virtual {v12, v6}, Landroidx/appcompat/app/q;->onLocalesChanged(Landroidx/core/os/j;)V

    .line 404
    .line 405
    .line 406
    :cond_18
    if-eqz v11, :cond_1a

    .line 407
    .line 408
    if-eqz v8, :cond_1a

    .line 409
    .line 410
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {v0}, Landroidx/appcompat/app/U;->U(Landroid/content/res/Configuration;)Landroidx/core/os/j;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 423
    .line 424
    if-lt v5, v10, :cond_19

    .line 425
    .line 426
    invoke-static {v0}, Landroidx/appcompat/app/G;->c(Landroidx/core/os/j;)V

    .line 427
    .line 428
    .line 429
    goto :goto_c

    .line 430
    :cond_19
    invoke-virtual {v0, v2}, Landroidx/core/os/j;->c(I)Ljava/util/Locale;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 435
    .line 436
    .line 437
    :cond_1a
    :goto_c
    if-nez v3, :cond_1c

    .line 438
    .line 439
    iget-object v0, v1, Landroidx/appcompat/app/U;->X:Landroidx/appcompat/app/P;

    .line 440
    .line 441
    if-nez v0, :cond_1b

    .line 442
    .line 443
    new-instance v0, Landroidx/appcompat/app/P;

    .line 444
    .line 445
    invoke-static {v4}, Landroidx/appcompat/app/f0;->a(Landroid/content/Context;)Landroidx/appcompat/app/f0;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/P;-><init>(Landroidx/appcompat/app/U;Landroidx/appcompat/app/f0;)V

    .line 450
    .line 451
    .line 452
    iput-object v0, v1, Landroidx/appcompat/app/U;->X:Landroidx/appcompat/app/P;

    .line 453
    .line 454
    :cond_1b
    iget-object v0, v1, Landroidx/appcompat/app/U;->X:Landroidx/appcompat/app/P;

    .line 455
    .line 456
    invoke-virtual {v0}, Landroidx/appcompat/app/O;->d()V

    .line 457
    .line 458
    .line 459
    goto :goto_d

    .line 460
    :cond_1c
    iget-object v0, v1, Landroidx/appcompat/app/U;->X:Landroidx/appcompat/app/P;

    .line 461
    .line 462
    if-eqz v0, :cond_1d

    .line 463
    .line 464
    invoke-virtual {v0}, Landroidx/appcompat/app/O;->a()V

    .line 465
    .line 466
    .line 467
    :cond_1d
    :goto_d
    const/4 v0, 0x3

    .line 468
    if-ne v3, v0, :cond_1f

    .line 469
    .line 470
    iget-object v0, v1, Landroidx/appcompat/app/U;->Y:Landroidx/appcompat/app/M;

    .line 471
    .line 472
    if-nez v0, :cond_1e

    .line 473
    .line 474
    new-instance v0, Landroidx/appcompat/app/M;

    .line 475
    .line 476
    invoke-direct {v0, v1, v4}, Landroidx/appcompat/app/M;-><init>(Landroidx/appcompat/app/U;Landroid/content/Context;)V

    .line 477
    .line 478
    .line 479
    iput-object v0, v1, Landroidx/appcompat/app/U;->Y:Landroidx/appcompat/app/M;

    .line 480
    .line 481
    :cond_1e
    iget-object v0, v1, Landroidx/appcompat/app/U;->Y:Landroidx/appcompat/app/M;

    .line 482
    .line 483
    invoke-virtual {v0}, Landroidx/appcompat/app/O;->d()V

    .line 484
    .line 485
    .line 486
    goto :goto_e

    .line 487
    :cond_1f
    iget-object v0, v1, Landroidx/appcompat/app/U;->Y:Landroidx/appcompat/app/M;

    .line 488
    .line 489
    if-eqz v0, :cond_20

    .line 490
    .line 491
    invoke-virtual {v0}, Landroidx/appcompat/app/O;->a()V

    .line 492
    .line 493
    .line 494
    :cond_20
    :goto_e
    return v11
.end method

.method private I(Landroid/view/Window;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 2
    .line 3
    const-string v1, "AppCompat has already installed itself into the Window"

    .line 4
    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v2, v0, Landroidx/appcompat/app/L;

    .line 12
    .line 13
    if-nez v2, :cond_4

    .line 14
    .line 15
    new-instance v1, Landroidx/appcompat/app/L;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/L;-><init>(Landroidx/appcompat/app/U;Landroid/view/Window$Callback;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Landroidx/appcompat/app/U;->m:Landroidx/appcompat/app/L;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 26
    .line 27
    sget-object v1, Landroidx/appcompat/app/U;->j0:[I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 48
    .line 49
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 v0, 0x21

    .line 52
    .line 53
    if-lt p1, v0, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/appcompat/app/U;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/appcompat/app/U;->h0:Landroid/window/OnBackInvokedCallback;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-static {p1, v0}, Landroidx/appcompat/app/K;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Landroidx/appcompat/app/U;->h0:Landroid/window/OnBackInvokedCallback;

    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    .line 71
    .line 72
    instance-of v0, p1, Landroid/app/Activity;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    check-cast p1, Landroid/app/Activity;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-static {p1}, Landroidx/appcompat/app/K;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Landroidx/appcompat/app/U;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iput-object v2, p0, Landroidx/appcompat/app/U;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 92
    .line 93
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->k0()V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void

    .line 97
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method static J(Landroid/content/Context;)Landroidx/core/os/j;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    invoke-static {}, Landroidx/appcompat/app/v;->k()Landroidx/core/os/j;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Landroidx/appcompat/app/U;->U(Landroid/content/res/Configuration;)Landroidx/core/os/j;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/16 v2, 0x18

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-lt v0, v2, :cond_6

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/core/os/j;->e()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-static {}, Landroidx/core/os/j;->d()Landroidx/core/os/j;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v1}, Landroidx/core/os/j;->f()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p0}, Landroidx/core/os/j;->f()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    add-int/2addr v4, v2

    .line 62
    if-ge v3, v4, :cond_5

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/core/os/j;->f()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v3, v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroidx/core/os/j;->c(I)Ljava/util/Locale;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {v1}, Landroidx/core/os/j;->f()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    sub-int v2, v3, v2

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Landroidx/core/os/j;->c(I)Ljava/util/Locale;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :goto_1
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    new-array v1, v1, [Ljava/util/Locale;

    .line 98
    .line 99
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, [Ljava/util/Locale;

    .line 104
    .line 105
    invoke-static {v0}, Landroidx/core/os/j;->a([Ljava/util/Locale;)Landroidx/core/os/j;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_2

    .line 110
    :cond_6
    invoke-virtual {v1}, Landroidx/core/os/j;->e()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-static {}, Landroidx/core/os/j;->d()Landroidx/core/os/j;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    goto :goto_2

    .line 121
    :cond_7
    invoke-virtual {v1, v3}, Landroidx/core/os/j;->c(I)Ljava/util/Locale;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Landroidx/core/os/j;->b(Ljava/lang/String;)Landroidx/core/os/j;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :goto_2
    invoke-virtual {v0}, Landroidx/core/os/j;->e()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_8

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    move-object p0, v0

    .line 141
    :goto_3
    return-object p0
.end method

.method private static N(Landroid/content/Context;ILandroidx/core/os/j;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 25
    .line 26
    and-int/lit8 p0, p0, 0x30

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 p0, 0x20

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 p0, 0x10

    .line 33
    .line 34
    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 p4, 0x0

    .line 40
    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 41
    .line 42
    if-eqz p3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 48
    .line 49
    and-int/lit8 p3, p3, -0x31

    .line 50
    .line 51
    or-int/2addr p0, p3

    .line 52
    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 53
    .line 54
    if-eqz p2, :cond_5

    .line 55
    .line 56
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 p3, 0x18

    .line 59
    .line 60
    if-lt p0, p3, :cond_4

    .line 61
    .line 62
    invoke-static {p1, p2}, Landroidx/appcompat/app/G;->d(Landroid/content/res/Configuration;Landroidx/core/os/j;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p2, v1}, Landroidx/core/os/j;->c(I)Ljava/util/Locale;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p1, p0}, Landroidx/appcompat/app/E;->b(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v1}, Landroidx/core/os/j;->c(I)Ljava/util/Locale;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p1, p0}, Landroidx/appcompat/app/E;->a(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_1
    return-object p1
.end method

.method private R()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_19

    .line 4
    .line 5
    sget-object v0, Ld/a;->k:[I

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/16 v3, 0x75

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_18

    .line 20
    .line 21
    const/16 v4, 0x7e

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v6, 0x1

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/U;->z(I)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const/16 v3, 0x6c

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/U;->z(I)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    const/16 v3, 0x76

    .line 47
    .line 48
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/16 v4, 0x6d

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/U;->z(I)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    const/16 v3, 0x77

    .line 60
    .line 61
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    const/16 v3, 0xa

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/U;->z(I)Z

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput-boolean v3, p0, Landroidx/appcompat/app/U;->J:Z

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Landroidx/appcompat/app/U;->S()V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-boolean v3, p0, Landroidx/appcompat/app/U;->K:Z

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    if-nez v3, :cond_9

    .line 97
    .line 98
    iget-boolean v3, p0, Landroidx/appcompat/app/U;->J:Z

    .line 99
    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    const v3, 0x7f0c000c

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroid/view/ViewGroup;

    .line 110
    .line 111
    iput-boolean v5, p0, Landroidx/appcompat/app/U;->H:Z

    .line 112
    .line 113
    iput-boolean v5, p0, Landroidx/appcompat/app/U;->G:Z

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :cond_4
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->G:Z

    .line 118
    .line 119
    if-eqz v2, :cond_8

    .line 120
    .line 121
    new-instance v2, Landroid/util/TypedValue;

    .line 122
    .line 123
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const v8, 0x7f040009

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v8, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 134
    .line 135
    .line 136
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    .line 137
    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    new-instance v3, Landroidx/appcompat/view/f;

    .line 141
    .line 142
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 143
    .line 144
    invoke-direct {v3, v1, v2}, Landroidx/appcompat/view/f;-><init>(Landroid/content/Context;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    move-object v3, v1

    .line 149
    :goto_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const v3, 0x7f0c0017

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Landroid/view/ViewGroup;

    .line 161
    .line 162
    const v3, 0x7f09006f

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Landroidx/appcompat/widget/DecorContentParent;

    .line 170
    .line 171
    iput-object v3, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 172
    .line 173
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->W()Landroid/view/Window$Callback;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-interface {v3, v8}, Landroidx/appcompat/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 178
    .line 179
    .line 180
    iget-boolean v3, p0, Landroidx/appcompat/app/U;->H:Z

    .line 181
    .line 182
    if-eqz v3, :cond_6

    .line 183
    .line 184
    iget-object v3, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 185
    .line 186
    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    .line 187
    .line 188
    .line 189
    :cond_6
    iget-boolean v3, p0, Landroidx/appcompat/app/U;->E:Z

    .line 190
    .line 191
    if-eqz v3, :cond_7

    .line 192
    .line 193
    iget-object v3, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 194
    .line 195
    const/4 v4, 0x2

    .line 196
    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    .line 197
    .line 198
    .line 199
    :cond_7
    iget-boolean v3, p0, Landroidx/appcompat/app/U;->F:Z

    .line 200
    .line 201
    if-eqz v3, :cond_b

    .line 202
    .line 203
    iget-object v3, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 204
    .line 205
    const/4 v4, 0x5

    .line 206
    invoke-interface {v3, v4}, Landroidx/appcompat/widget/DecorContentParent;->initFeature(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_8
    move-object v2, v7

    .line 211
    goto :goto_2

    .line 212
    :cond_9
    iget-boolean v3, p0, Landroidx/appcompat/app/U;->I:Z

    .line 213
    .line 214
    if-eqz v3, :cond_a

    .line 215
    .line 216
    const v3, 0x7f0c0016

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Landroid/view/ViewGroup;

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_a
    const v3, 0x7f0c0015

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Landroid/view/ViewGroup;

    .line 234
    .line 235
    :cond_b
    :goto_2
    if-eqz v2, :cond_17

    .line 236
    .line 237
    new-instance v3, Landroidx/appcompat/app/x;

    .line 238
    .line 239
    invoke-direct {v3, v5, p0}, Landroidx/appcompat/app/x;-><init>(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v2, v3}, Landroidx/core/view/f0;->U(Landroid/view/ViewGroup;Landroidx/core/view/D;)V

    .line 243
    .line 244
    .line 245
    iget-object v3, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 246
    .line 247
    if-nez v3, :cond_c

    .line 248
    .line 249
    const v3, 0x7f090146

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Landroid/widget/TextView;

    .line 257
    .line 258
    iput-object v3, p0, Landroidx/appcompat/app/U;->C:Landroid/widget/TextView;

    .line 259
    .line 260
    :cond_c
    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 261
    .line 262
    .line 263
    const v3, 0x7f090028

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    check-cast v3, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 271
    .line 272
    iget-object v4, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 273
    .line 274
    const v8, 0x1020002

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    check-cast v4, Landroid/view/ViewGroup;

    .line 282
    .line 283
    if-eqz v4, :cond_e

    .line 284
    .line 285
    :goto_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 286
    .line 287
    .line 288
    move-result v9

    .line 289
    if-lez v9, :cond_d

    .line 290
    .line 291
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_d
    const/4 v9, -0x1

    .line 303
    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v8}, Landroid/view/View;->setId(I)V

    .line 307
    .line 308
    .line 309
    instance-of v9, v4, Landroid/widget/FrameLayout;

    .line 310
    .line 311
    if-eqz v9, :cond_e

    .line 312
    .line 313
    check-cast v4, Landroid/widget/FrameLayout;

    .line 314
    .line 315
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 316
    .line 317
    .line 318
    :cond_e
    iget-object v4, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 319
    .line 320
    invoke-virtual {v4, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 321
    .line 322
    .line 323
    new-instance v4, Landroidx/appcompat/app/y;

    .line 324
    .line 325
    invoke-direct {v4, p0}, Landroidx/appcompat/app/y;-><init>(Landroidx/appcompat/app/U;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;)V

    .line 329
    .line 330
    .line 331
    iput-object v2, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 332
    .line 333
    iget-object v2, p0, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    .line 334
    .line 335
    instance-of v3, v2, Landroid/app/Activity;

    .line 336
    .line 337
    if-eqz v3, :cond_f

    .line 338
    .line 339
    check-cast v2, Landroid/app/Activity;

    .line 340
    .line 341
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    goto :goto_4

    .line 346
    :cond_f
    iget-object v2, p0, Landroidx/appcompat/app/U;->q:Ljava/lang/CharSequence;

    .line 347
    .line 348
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-nez v3, :cond_12

    .line 353
    .line 354
    iget-object v3, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 355
    .line 356
    if-eqz v3, :cond_10

    .line 357
    .line 358
    invoke-interface {v3, v2}, Landroidx/appcompat/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 359
    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_10
    iget-object v3, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 363
    .line 364
    if-eqz v3, :cond_11

    .line 365
    .line 366
    iget-object v3, v3, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 367
    .line 368
    invoke-interface {v3, v2}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_11
    iget-object v3, p0, Landroidx/appcompat/app/U;->C:Landroid/widget/TextView;

    .line 373
    .line 374
    if-eqz v3, :cond_12

    .line 375
    .line 376
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    :cond_12
    :goto_5
    iget-object v2, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 380
    .line 381
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 386
    .line 387
    iget-object v3, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 388
    .line 389
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    invoke-virtual {v2, v4, v7, v8, v3}, Landroidx/appcompat/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    const/16 v1, 0x7c

    .line 417
    .line 418
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 423
    .line 424
    .line 425
    const/16 v1, 0x7d

    .line 426
    .line 427
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 432
    .line 433
    .line 434
    const/16 v1, 0x7a

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-eqz v3, :cond_13

    .line 441
    .line 442
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 447
    .line 448
    .line 449
    :cond_13
    const/16 v1, 0x7b

    .line 450
    .line 451
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    if-eqz v3, :cond_14

    .line 456
    .line 457
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 462
    .line 463
    .line 464
    :cond_14
    const/16 v1, 0x78

    .line 465
    .line 466
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-eqz v3, :cond_15

    .line 471
    .line 472
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 477
    .line 478
    .line 479
    :cond_15
    const/16 v1, 0x79

    .line 480
    .line 481
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-eqz v3, :cond_16

    .line 486
    .line 487
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 492
    .line 493
    .line 494
    :cond_16
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 498
    .line 499
    .line 500
    iput-boolean v6, p0, Landroidx/appcompat/app/U;->A:Z

    .line 501
    .line 502
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    iget-boolean v1, p0, Landroidx/appcompat/app/U;->R:Z

    .line 507
    .line 508
    if-nez v1, :cond_19

    .line 509
    .line 510
    iget-object v0, v0, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 511
    .line 512
    if-nez v0, :cond_19

    .line 513
    .line 514
    iget v0, p0, Landroidx/appcompat/app/U;->a0:I

    .line 515
    .line 516
    const/16 v1, 0x1000

    .line 517
    .line 518
    or-int/2addr v0, v1

    .line 519
    iput v0, p0, Landroidx/appcompat/app/U;->a0:I

    .line 520
    .line 521
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->Z:Z

    .line 522
    .line 523
    if-nez v0, :cond_19

    .line 524
    .line 525
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 526
    .line 527
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    iget-object v1, p0, Landroidx/appcompat/app/U;->b0:Ljava/lang/Runnable;

    .line 532
    .line 533
    invoke-static {v0, v1}, Landroidx/core/view/f0;->G(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 534
    .line 535
    .line 536
    iput-boolean v6, p0, Landroidx/appcompat/app/U;->Z:Z

    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 540
    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    .line 544
    .line 545
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->G:Z

    .line 549
    .line 550
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    const-string v2, ", windowActionBarOverlay: "

    .line 554
    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->H:Z

    .line 559
    .line 560
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v2, ", android:windowIsFloating: "

    .line 564
    .line 565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->J:Z

    .line 569
    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    const-string v2, ", windowActionModeOverlay: "

    .line 574
    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->I:Z

    .line 579
    .line 580
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v2, ", windowNoTitle: "

    .line 584
    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->K:Z

    .line 589
    .line 590
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v2, " }"

    .line 594
    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    throw v0

    .line 606
    :cond_18
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 607
    .line 608
    .line 609
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 610
    .line 611
    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    .line 612
    .line 613
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    throw v0

    .line 617
    :cond_19
    :goto_6
    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Landroidx/appcompat/app/U;->I(Landroid/view/Window;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "We have not been given a Window"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method static U(Landroid/content/res/Configuration;)Landroidx/core/os/j;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/appcompat/app/G;->b(Landroid/content/res/Configuration;)Landroidx/core/os/j;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/appcompat/app/F;->a(Ljava/util/Locale;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroidx/core/os/j;->b(Ljava/lang/String;)Landroidx/core/os/j;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private X()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->R()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->G:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v1, v0, Landroid/app/Activity;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Landroidx/appcompat/app/h0;

    .line 20
    .line 21
    check-cast v0, Landroid/app/Activity;

    .line 22
    .line 23
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->H:Z

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/h0;-><init>(Landroid/app/Activity;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    new-instance v1, Landroidx/appcompat/app/h0;

    .line 36
    .line 37
    check-cast v0, Landroid/app/Dialog;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Landroidx/appcompat/app/h0;-><init>(Landroid/app/Dialog;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 43
    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-boolean v1, p0, Landroidx/appcompat/app/U;->c0:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/h0;->l(Z)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    return-void
.end method

.method private e0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)V
    .locals 13

    .line 1
    iget-boolean v0, p1, Landroidx/appcompat/app/T;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_1c

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->R:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_e

    .line 10
    .line 11
    :cond_0
    iget v0, p1, Landroidx/appcompat/app/T;->a:I

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 28
    .line 29
    and-int/lit8 v0, v0, 0xf

    .line 30
    .line 31
    const/4 v4, 0x4

    .line 32
    if-ne v0, v4, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    if-eqz v0, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->W()Landroid/view/Window$Callback;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget v4, p1, Landroidx/appcompat/app/T;->a:I

    .line 47
    .line 48
    iget-object v5, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 49
    .line 50
    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/U;->M(Landroidx/appcompat/app/T;Z)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    const-string v0, "window"

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/view/WindowManager;

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/U;->g0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_5

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    iget-object p2, p1, Landroidx/appcompat/app/T;->e:Landroid/view/ViewGroup;

    .line 79
    .line 80
    const/4 v4, -0x2

    .line 81
    if-eqz p2, :cond_7

    .line 82
    .line 83
    iget-boolean v5, p1, Landroidx/appcompat/app/T;->n:Z

    .line 84
    .line 85
    if-eqz v5, :cond_6

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    iget-object p2, p1, Landroidx/appcompat/app/T;->g:Landroid/view/View;

    .line 89
    .line 90
    if-eqz p2, :cond_19

    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    if-eqz p2, :cond_19

    .line 97
    .line 98
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    .line 100
    const/4 v1, -0x1

    .line 101
    if-ne p2, v1, :cond_19

    .line 102
    .line 103
    const/4 v6, -0x1

    .line 104
    goto/16 :goto_c

    .line 105
    .line 106
    :cond_7
    :goto_1
    if-nez p2, :cond_c

    .line 107
    .line 108
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 112
    .line 113
    if-eqz p2, :cond_8

    .line 114
    .line 115
    invoke-virtual {p2}, Landroidx/appcompat/app/h0;->i()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    goto :goto_2

    .line 120
    :cond_8
    const/4 p2, 0x0

    .line 121
    :goto_2
    if-nez p2, :cond_9

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_9
    move-object v1, p2

    .line 125
    :goto_3
    new-instance p2, Landroid/util/TypedValue;

    .line 126
    .line 127
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 143
    .line 144
    .line 145
    const v6, 0x7f040002

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v6, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 149
    .line 150
    .line 151
    iget v6, p2, Landroid/util/TypedValue;->resourceId:I

    .line 152
    .line 153
    if-eqz v6, :cond_a

    .line 154
    .line 155
    invoke-virtual {v5, v6, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 156
    .line 157
    .line 158
    :cond_a
    const v6, 0x7f0400fa

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v6, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 162
    .line 163
    .line 164
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 165
    .line 166
    if-eqz p2, :cond_b

    .line 167
    .line 168
    invoke-virtual {v5, p2, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_b
    const p2, 0x7f110128

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, p2, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 176
    .line 177
    .line 178
    :goto_4
    new-instance p2, Landroidx/appcompat/view/f;

    .line 179
    .line 180
    invoke-direct {p2, v1, v3}, Landroidx/appcompat/view/f;-><init>(Landroid/content/Context;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Landroidx/appcompat/view/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 188
    .line 189
    .line 190
    iput-object p2, p1, Landroidx/appcompat/app/T;->j:Landroidx/appcompat/view/f;

    .line 191
    .line 192
    sget-object v1, Ld/a;->k:[I

    .line 193
    .line 194
    invoke-virtual {p2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    const/16 v1, 0x56

    .line 199
    .line 200
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    iput v1, p1, Landroidx/appcompat/app/T;->b:I

    .line 205
    .line 206
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    iput v1, p1, Landroidx/appcompat/app/T;->d:I

    .line 211
    .line 212
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    .line 214
    .line 215
    new-instance p2, Landroidx/appcompat/app/S;

    .line 216
    .line 217
    iget-object v1, p1, Landroidx/appcompat/app/T;->j:Landroidx/appcompat/view/f;

    .line 218
    .line 219
    invoke-direct {p2, p0, v1}, Landroidx/appcompat/app/S;-><init>(Landroidx/appcompat/app/U;Landroidx/appcompat/view/f;)V

    .line 220
    .line 221
    .line 222
    iput-object p2, p1, Landroidx/appcompat/app/T;->e:Landroid/view/ViewGroup;

    .line 223
    .line 224
    const/16 p2, 0x51

    .line 225
    .line 226
    iput p2, p1, Landroidx/appcompat/app/T;->c:I

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_c
    iget-boolean v1, p1, Landroidx/appcompat/app/T;->n:Z

    .line 230
    .line 231
    if-eqz v1, :cond_d

    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    if-lez p2, :cond_d

    .line 238
    .line 239
    iget-object p2, p1, Landroidx/appcompat/app/T;->e:Landroid/view/ViewGroup;

    .line 240
    .line 241
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 242
    .line 243
    .line 244
    :cond_d
    :goto_5
    iget-object p2, p1, Landroidx/appcompat/app/T;->g:Landroid/view/View;

    .line 245
    .line 246
    if-eqz p2, :cond_e

    .line 247
    .line 248
    iput-object p2, p1, Landroidx/appcompat/app/T;->f:Landroid/view/View;

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_e
    iget-object p2, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 252
    .line 253
    if-nez p2, :cond_f

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_f
    iget-object p2, p0, Landroidx/appcompat/app/U;->t:Landroidx/appcompat/app/x;

    .line 257
    .line 258
    if-nez p2, :cond_10

    .line 259
    .line 260
    new-instance p2, Landroidx/appcompat/app/x;

    .line 261
    .line 262
    const/4 v1, 0x2

    .line 263
    invoke-direct {p2, v1, p0}, Landroidx/appcompat/app/x;-><init>(ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    iput-object p2, p0, Landroidx/appcompat/app/U;->t:Landroidx/appcompat/app/x;

    .line 267
    .line 268
    :cond_10
    iget-object p2, p0, Landroidx/appcompat/app/U;->t:Landroidx/appcompat/app/x;

    .line 269
    .line 270
    iget-object v1, p1, Landroidx/appcompat/app/T;->i:Landroidx/appcompat/view/menu/m;

    .line 271
    .line 272
    if-nez v1, :cond_11

    .line 273
    .line 274
    new-instance v1, Landroidx/appcompat/view/menu/m;

    .line 275
    .line 276
    iget-object v5, p1, Landroidx/appcompat/app/T;->j:Landroidx/appcompat/view/f;

    .line 277
    .line 278
    invoke-direct {v1, v5}, Landroidx/appcompat/view/menu/m;-><init>(Landroid/content/Context;)V

    .line 279
    .line 280
    .line 281
    iput-object v1, p1, Landroidx/appcompat/app/T;->i:Landroidx/appcompat/view/menu/m;

    .line 282
    .line 283
    invoke-virtual {v1, p2}, Landroidx/appcompat/view/menu/m;->setCallback(Landroidx/appcompat/view/menu/E;)V

    .line 284
    .line 285
    .line 286
    iget-object p2, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 287
    .line 288
    iget-object v1, p1, Landroidx/appcompat/app/T;->i:Landroidx/appcompat/view/menu/m;

    .line 289
    .line 290
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/q;->b(Landroidx/appcompat/view/menu/m;)V

    .line 291
    .line 292
    .line 293
    :cond_11
    iget-object p2, p1, Landroidx/appcompat/app/T;->i:Landroidx/appcompat/view/menu/m;

    .line 294
    .line 295
    iget-object v1, p1, Landroidx/appcompat/app/T;->e:Landroid/view/ViewGroup;

    .line 296
    .line 297
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/m;->b(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/H;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    check-cast p2, Landroid/view/View;

    .line 302
    .line 303
    iput-object p2, p1, Landroidx/appcompat/app/T;->f:Landroid/view/View;

    .line 304
    .line 305
    if-eqz p2, :cond_12

    .line 306
    .line 307
    :goto_6
    const/4 p2, 0x1

    .line 308
    goto :goto_8

    .line 309
    :cond_12
    :goto_7
    const/4 p2, 0x0

    .line 310
    :goto_8
    if-eqz p2, :cond_1b

    .line 311
    .line 312
    iget-object p2, p1, Landroidx/appcompat/app/T;->f:Landroid/view/View;

    .line 313
    .line 314
    if-nez p2, :cond_13

    .line 315
    .line 316
    goto :goto_a

    .line 317
    :cond_13
    iget-object p2, p1, Landroidx/appcompat/app/T;->g:Landroid/view/View;

    .line 318
    .line 319
    if-eqz p2, :cond_14

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_14
    iget-object p2, p1, Landroidx/appcompat/app/T;->i:Landroidx/appcompat/view/menu/m;

    .line 323
    .line 324
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/m;->a()Landroid/widget/ListAdapter;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    if-lez p2, :cond_15

    .line 333
    .line 334
    :goto_9
    const/4 p2, 0x1

    .line 335
    goto :goto_b

    .line 336
    :cond_15
    :goto_a
    const/4 p2, 0x0

    .line 337
    :goto_b
    if-nez p2, :cond_16

    .line 338
    .line 339
    goto :goto_d

    .line 340
    :cond_16
    iget-object p2, p1, Landroidx/appcompat/app/T;->f:Landroid/view/View;

    .line 341
    .line 342
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    if-nez p2, :cond_17

    .line 347
    .line 348
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 349
    .line 350
    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 351
    .line 352
    .line 353
    :cond_17
    iget v1, p1, Landroidx/appcompat/app/T;->b:I

    .line 354
    .line 355
    iget-object v5, p1, Landroidx/appcompat/app/T;->e:Landroid/view/ViewGroup;

    .line 356
    .line 357
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 358
    .line 359
    .line 360
    iget-object v1, p1, Landroidx/appcompat/app/T;->f:Landroid/view/View;

    .line 361
    .line 362
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    instance-of v5, v1, Landroid/view/ViewGroup;

    .line 367
    .line 368
    if-eqz v5, :cond_18

    .line 369
    .line 370
    check-cast v1, Landroid/view/ViewGroup;

    .line 371
    .line 372
    iget-object v5, p1, Landroidx/appcompat/app/T;->f:Landroid/view/View;

    .line 373
    .line 374
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 375
    .line 376
    .line 377
    :cond_18
    iget-object v1, p1, Landroidx/appcompat/app/T;->e:Landroid/view/ViewGroup;

    .line 378
    .line 379
    iget-object v5, p1, Landroidx/appcompat/app/T;->f:Landroid/view/View;

    .line 380
    .line 381
    invoke-virtual {v1, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .line 383
    .line 384
    iget-object p2, p1, Landroidx/appcompat/app/T;->f:Landroid/view/View;

    .line 385
    .line 386
    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    .line 387
    .line 388
    .line 389
    move-result p2

    .line 390
    if-nez p2, :cond_19

    .line 391
    .line 392
    iget-object p2, p1, Landroidx/appcompat/app/T;->f:Landroid/view/View;

    .line 393
    .line 394
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 395
    .line 396
    .line 397
    :cond_19
    const/4 v6, -0x2

    .line 398
    :goto_c
    iput-boolean v3, p1, Landroidx/appcompat/app/T;->l:Z

    .line 399
    .line 400
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 401
    .line 402
    const/4 v7, -0x2

    .line 403
    const/4 v8, 0x0

    .line 404
    const/4 v9, 0x0

    .line 405
    const/16 v10, 0x3ea

    .line 406
    .line 407
    const/high16 v11, 0x820000

    .line 408
    .line 409
    const/4 v12, -0x3

    .line 410
    move-object v5, p2

    .line 411
    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 412
    .line 413
    .line 414
    iget v1, p1, Landroidx/appcompat/app/T;->c:I

    .line 415
    .line 416
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 417
    .line 418
    iget v1, p1, Landroidx/appcompat/app/T;->d:I

    .line 419
    .line 420
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 421
    .line 422
    iget-object v1, p1, Landroidx/appcompat/app/T;->e:Landroid/view/ViewGroup;

    .line 423
    .line 424
    invoke-interface {v0, v1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    .line 426
    .line 427
    iput-boolean v2, p1, Landroidx/appcompat/app/T;->m:Z

    .line 428
    .line 429
    iget p1, p1, Landroidx/appcompat/app/T;->a:I

    .line 430
    .line 431
    if-nez p1, :cond_1a

    .line 432
    .line 433
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->k0()V

    .line 434
    .line 435
    .line 436
    :cond_1a
    return-void

    .line 437
    :cond_1b
    :goto_d
    iput-boolean v2, p1, Landroidx/appcompat/app/T;->n:Z

    .line 438
    .line 439
    :cond_1c
    :goto_e
    return-void
.end method

.method private f0(Landroidx/appcompat/app/T;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/T;->k:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/app/U;->g0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object p1, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/view/menu/q;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_2
    return v1
.end method

.method private g0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->R:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/T;->k:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/U;->N:Landroidx/appcompat/app/T;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-eq v0, p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/U;->M(Landroidx/appcompat/app/T;Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->W()Landroid/view/Window$Callback;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget v3, p1, Landroidx/appcompat/app/T;->a:I

    .line 29
    .line 30
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, p1, Landroidx/appcompat/app/T;->g:Landroid/view/View;

    .line 35
    .line 36
    :cond_3
    iget v3, p1, Landroidx/appcompat/app/T;->a:I

    .line 37
    .line 38
    const/16 v4, 0x6c

    .line 39
    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    if-ne v3, v4, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    const/4 v3, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_5
    :goto_0
    const/4 v3, 0x1

    .line 48
    :goto_1
    if-eqz v3, :cond_6

    .line 49
    .line 50
    iget-object v5, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 51
    .line 52
    if-eqz v5, :cond_6

    .line 53
    .line 54
    invoke-interface {v5}, Landroidx/appcompat/widget/DecorContentParent;->setMenuPrepared()V

    .line 55
    .line 56
    .line 57
    :cond_6
    iget-object v5, p1, Landroidx/appcompat/app/T;->g:Landroid/view/View;

    .line 58
    .line 59
    if-nez v5, :cond_1d

    .line 60
    .line 61
    iget-object v5, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    if-eqz v5, :cond_7

    .line 65
    .line 66
    iget-boolean v7, p1, Landroidx/appcompat/app/T;->o:Z

    .line 67
    .line 68
    if-eqz v7, :cond_17

    .line 69
    .line 70
    :cond_7
    if-nez v5, :cond_10

    .line 71
    .line 72
    iget v5, p1, Landroidx/appcompat/app/T;->a:I

    .line 73
    .line 74
    iget-object v7, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 75
    .line 76
    if-eqz v5, :cond_8

    .line 77
    .line 78
    if-ne v5, v4, :cond_c

    .line 79
    .line 80
    :cond_8
    iget-object v4, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 81
    .line 82
    if-eqz v4, :cond_c

    .line 83
    .line 84
    new-instance v4, Landroid/util/TypedValue;

    .line 85
    .line 86
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const v8, 0x7f040009

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    .line 98
    .line 99
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    .line 100
    .line 101
    const v9, 0x7f04000a

    .line 102
    .line 103
    .line 104
    if-eqz v8, :cond_9

    .line 105
    .line 106
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 115
    .line 116
    .line 117
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    .line 118
    .line 119
    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_9
    invoke-virtual {v5, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 127
    .line 128
    .line 129
    move-object v8, v6

    .line 130
    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    .line 131
    .line 132
    if-eqz v9, :cond_b

    .line 133
    .line 134
    if-nez v8, :cond_a

    .line 135
    .line 136
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v8, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 145
    .line 146
    .line 147
    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 148
    .line 149
    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 150
    .line 151
    .line 152
    :cond_b
    if-eqz v8, :cond_c

    .line 153
    .line 154
    new-instance v4, Landroidx/appcompat/view/f;

    .line 155
    .line 156
    invoke-direct {v4, v7, v1}, Landroidx/appcompat/view/f;-><init>(Landroid/content/Context;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Landroidx/appcompat/view/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 164
    .line 165
    .line 166
    move-object v7, v4

    .line 167
    :cond_c
    new-instance v4, Landroidx/appcompat/view/menu/q;

    .line 168
    .line 169
    invoke-direct {v4, v7}, Landroidx/appcompat/view/menu/q;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, p0}, Landroidx/appcompat/view/menu/q;->C(Landroidx/appcompat/view/menu/o;)V

    .line 173
    .line 174
    .line 175
    iget-object v5, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 176
    .line 177
    if-ne v4, v5, :cond_d

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_d
    if-eqz v5, :cond_e

    .line 181
    .line 182
    iget-object v7, p1, Landroidx/appcompat/app/T;->i:Landroidx/appcompat/view/menu/m;

    .line 183
    .line 184
    invoke-virtual {v5, v7}, Landroidx/appcompat/view/menu/q;->z(Landroidx/appcompat/view/menu/F;)V

    .line 185
    .line 186
    .line 187
    :cond_e
    iput-object v4, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 188
    .line 189
    iget-object v5, p1, Landroidx/appcompat/app/T;->i:Landroidx/appcompat/view/menu/m;

    .line 190
    .line 191
    if-eqz v5, :cond_f

    .line 192
    .line 193
    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/q;->b(Landroidx/appcompat/view/menu/m;)V

    .line 194
    .line 195
    .line 196
    :cond_f
    :goto_3
    iget-object v4, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 197
    .line 198
    if-nez v4, :cond_10

    .line 199
    .line 200
    return v1

    .line 201
    :cond_10
    if-eqz v3, :cond_12

    .line 202
    .line 203
    iget-object v4, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 204
    .line 205
    if-eqz v4, :cond_12

    .line 206
    .line 207
    iget-object v5, p0, Landroidx/appcompat/app/U;->s:Landroidx/appcompat/app/x;

    .line 208
    .line 209
    if-nez v5, :cond_11

    .line 210
    .line 211
    new-instance v5, Landroidx/appcompat/app/x;

    .line 212
    .line 213
    invoke-direct {v5, v2, p0}, Landroidx/appcompat/app/x;-><init>(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    iput-object v5, p0, Landroidx/appcompat/app/U;->s:Landroidx/appcompat/app/x;

    .line 217
    .line 218
    :cond_11
    iget-object v5, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 219
    .line 220
    iget-object v7, p0, Landroidx/appcompat/app/U;->s:Landroidx/appcompat/app/x;

    .line 221
    .line 222
    invoke-interface {v4, v5, v7}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/E;)V

    .line 223
    .line 224
    .line 225
    :cond_12
    iget-object v4, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 226
    .line 227
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/q;->N()V

    .line 228
    .line 229
    .line 230
    iget v4, p1, Landroidx/appcompat/app/T;->a:I

    .line 231
    .line 232
    iget-object v5, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 233
    .line 234
    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-nez v4, :cond_16

    .line 239
    .line 240
    iget-object p2, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 241
    .line 242
    if-nez p2, :cond_13

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_13
    if-eqz p2, :cond_14

    .line 246
    .line 247
    iget-object v0, p1, Landroidx/appcompat/app/T;->i:Landroidx/appcompat/view/menu/m;

    .line 248
    .line 249
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/q;->z(Landroidx/appcompat/view/menu/F;)V

    .line 250
    .line 251
    .line 252
    :cond_14
    iput-object v6, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 253
    .line 254
    :goto_4
    if-eqz v3, :cond_15

    .line 255
    .line 256
    iget-object p1, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 257
    .line 258
    if-eqz p1, :cond_15

    .line 259
    .line 260
    iget-object p2, p0, Landroidx/appcompat/app/U;->s:Landroidx/appcompat/app/x;

    .line 261
    .line 262
    invoke-interface {p1, v6, p2}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/E;)V

    .line 263
    .line 264
    .line 265
    :cond_15
    return v1

    .line 266
    :cond_16
    iput-boolean v1, p1, Landroidx/appcompat/app/T;->o:Z

    .line 267
    .line 268
    :cond_17
    iget-object v4, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 269
    .line 270
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/q;->N()V

    .line 271
    .line 272
    .line 273
    iget-object v4, p1, Landroidx/appcompat/app/T;->p:Landroid/os/Bundle;

    .line 274
    .line 275
    if-eqz v4, :cond_18

    .line 276
    .line 277
    iget-object v5, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 278
    .line 279
    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/q;->A(Landroid/os/Bundle;)V

    .line 280
    .line 281
    .line 282
    iput-object v6, p1, Landroidx/appcompat/app/T;->p:Landroid/os/Bundle;

    .line 283
    .line 284
    :cond_18
    iget-object v4, p1, Landroidx/appcompat/app/T;->g:Landroid/view/View;

    .line 285
    .line 286
    iget-object v5, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 287
    .line 288
    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-nez v0, :cond_1a

    .line 293
    .line 294
    if-eqz v3, :cond_19

    .line 295
    .line 296
    iget-object p2, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 297
    .line 298
    if-eqz p2, :cond_19

    .line 299
    .line 300
    iget-object v0, p0, Landroidx/appcompat/app/U;->s:Landroidx/appcompat/app/x;

    .line 301
    .line 302
    invoke-interface {p2, v6, v0}, Landroidx/appcompat/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/E;)V

    .line 303
    .line 304
    .line 305
    :cond_19
    iget-object p1, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 306
    .line 307
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->M()V

    .line 308
    .line 309
    .line 310
    return v1

    .line 311
    :cond_1a
    if-eqz p2, :cond_1b

    .line 312
    .line 313
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 314
    .line 315
    .line 316
    move-result p2

    .line 317
    goto :goto_5

    .line 318
    :cond_1b
    const/4 p2, -0x1

    .line 319
    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    if-eq p2, v2, :cond_1c

    .line 328
    .line 329
    const/4 p2, 0x1

    .line 330
    goto :goto_6

    .line 331
    :cond_1c
    const/4 p2, 0x0

    .line 332
    :goto_6
    iget-object v0, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 333
    .line 334
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/q;->setQwertyMode(Z)V

    .line 335
    .line 336
    .line 337
    iget-object p2, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 338
    .line 339
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/q;->M()V

    .line 340
    .line 341
    .line 342
    :cond_1d
    iput-boolean v2, p1, Landroidx/appcompat/app/T;->k:Z

    .line 343
    .line 344
    iput-boolean v1, p1, Landroidx/appcompat/app/T;->l:Z

    .line 345
    .line 346
    iput-object p1, p0, Landroidx/appcompat/app/U;->N:Landroidx/appcompat/app/T;

    .line 347
    .line 348
    return v2
.end method

.method private j0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 7
    .line 8
    const-string v1, "Window feature must be requested before adding content"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method


# virtual methods
.method public final A(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->R()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/appcompat/app/U;->m:Landroidx/appcompat/app/L;

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/L;->c(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final B(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->R()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/appcompat/app/U;->m:Landroidx/appcompat/app/L;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/L;->c(Landroid/view/Window$Callback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->R()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/appcompat/app/U;->m:Landroidx/appcompat/app/L;

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/L;->c(Landroid/view/Window$Callback;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final D(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/app/U;->U:I

    .line 2
    .line 3
    return-void
.end method

.method public final E(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/U;->q:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/U;->C:Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    return-void
.end method

.method public final H()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, v0}, Landroidx/appcompat/app/U;->G(ZZ)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method final K(ILandroidx/appcompat/app/T;Landroidx/appcompat/view/menu/q;)V
    .locals 2

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/U;->M:[Landroidx/appcompat/app/T;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-ge p1, v1, :cond_0

    .line 11
    .line 12
    aget-object p2, v0, p1

    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object p3, p2, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 17
    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-boolean p2, p2, Landroidx/appcompat/app/T;->m:Z

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-boolean p2, p0, Landroidx/appcompat/app/U;->R:Z

    .line 26
    .line 27
    if-nez p2, :cond_3

    .line 28
    .line 29
    iget-object p2, p0, Landroidx/appcompat/app/U;->m:Landroidx/appcompat/app/L;

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0, p1, p3}, Landroidx/appcompat/app/L;->d(Landroid/view/Window$Callback;ILandroid/view/Menu;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method final L(Landroidx/appcompat/view/menu/q;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->L:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/app/U;->L:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->dismissPopups()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->W()Landroid/view/Window$Callback;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/appcompat/app/U;->R:Z

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x6c

    .line 25
    .line 26
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Landroidx/appcompat/app/U;->L:Z

    .line 31
    .line 32
    return-void
.end method

.method final M(Landroidx/appcompat/app/T;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget v0, p1, Landroidx/appcompat/app/T;->a:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/U;->L(Landroidx/appcompat/view/menu/q;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 24
    .line 25
    const-string v1, "window"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/view/WindowManager;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-boolean v2, p1, Landroidx/appcompat/app/T;->m:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v2, p1, Landroidx/appcompat/app/T;->e:Landroid/view/ViewGroup;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iget p2, p1, Landroidx/appcompat/app/T;->a:I

    .line 50
    .line 51
    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/U;->K(ILandroidx/appcompat/app/T;Landroidx/appcompat/view/menu/q;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 p2, 0x0

    .line 55
    iput-boolean p2, p1, Landroidx/appcompat/app/T;->k:Z

    .line 56
    .line 57
    iput-boolean p2, p1, Landroidx/appcompat/app/T;->l:Z

    .line 58
    .line 59
    iput-boolean p2, p1, Landroidx/appcompat/app/T;->m:Z

    .line 60
    .line 61
    iput-object v1, p1, Landroidx/appcompat/app/T;->f:Landroid/view/View;

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    iput-boolean p2, p1, Landroidx/appcompat/app/T;->n:Z

    .line 65
    .line 66
    iget-object p2, p0, Landroidx/appcompat/app/U;->N:Landroidx/appcompat/app/T;

    .line 67
    .line 68
    if-ne p2, p1, :cond_2

    .line 69
    .line 70
    iput-object v1, p0, Landroidx/appcompat/app/U;->N:Landroidx/appcompat/app/T;

    .line 71
    .line 72
    :cond_2
    iget p1, p1, Landroidx/appcompat/app/T;->a:I

    .line 73
    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->k0()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method final O()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->dismissPopups()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Landroidx/appcompat/app/U;->x:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/core/view/r0;->b()V

    .line 44
    .line 45
    .line 46
    :cond_3
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/q;->e(Z)V

    .line 57
    .line 58
    .line 59
    :cond_4
    return-void
.end method

.method final P(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/core/view/p;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    instance-of v0, v0, Landroidx/appcompat/app/n;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroidx/core/view/q;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v1, 0x52

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/appcompat/app/U;->m:Landroidx/appcompat/app/L;

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3, p1}, Landroidx/appcompat/app/L;->b(Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    return v2

    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x0

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v3, 0x0

    .line 64
    :goto_0
    const/4 v5, 0x4

    .line 65
    if-eqz v3, :cond_7

    .line 66
    .line 67
    if-eq v0, v5, :cond_5

    .line 68
    .line 69
    if-eq v0, v1, :cond_4

    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_13

    .line 78
    .line 79
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-boolean v1, v0, Landroidx/appcompat/app/T;->m:Z

    .line 84
    .line 85
    if-nez v1, :cond_13

    .line 86
    .line 87
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/U;->g0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)Z

    .line 88
    .line 89
    .line 90
    goto/16 :goto_6

    .line 91
    .line 92
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    and-int/lit16 p1, p1, 0x80

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    const/4 v2, 0x0

    .line 102
    :goto_1
    iput-boolean v2, p0, Landroidx/appcompat/app/U;->O:Z

    .line 103
    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    :cond_7
    if-eq v0, v5, :cond_11

    .line 107
    .line 108
    if-eq v0, v1, :cond_8

    .line 109
    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 113
    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    goto/16 :goto_6

    .line 117
    .line 118
    :cond_9
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 123
    .line 124
    iget-object v3, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 125
    .line 126
    if-eqz v1, :cond_b

    .line 127
    .line 128
    invoke-interface {v1}, Landroidx/appcompat/widget/DecorContentParent;->canShowOverflowMenu()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_b

    .line 133
    .line 134
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_b

    .line 143
    .line 144
    iget-object v1, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 145
    .line 146
    invoke-interface {v1}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_a

    .line 151
    .line 152
    iget-boolean v1, p0, Landroidx/appcompat/app/U;->R:Z

    .line 153
    .line 154
    if-nez v1, :cond_e

    .line 155
    .line 156
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/U;->g0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_e

    .line 161
    .line 162
    iget-object p1, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 163
    .line 164
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->showOverflowMenu()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    goto :goto_4

    .line 169
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 170
    .line 171
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    goto :goto_4

    .line 176
    :cond_b
    iget-boolean v1, v0, Landroidx/appcompat/app/T;->m:Z

    .line 177
    .line 178
    if-nez v1, :cond_f

    .line 179
    .line 180
    iget-boolean v5, v0, Landroidx/appcompat/app/T;->l:Z

    .line 181
    .line 182
    if-eqz v5, :cond_c

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_c
    iget-boolean v1, v0, Landroidx/appcompat/app/T;->k:Z

    .line 186
    .line 187
    if-eqz v1, :cond_e

    .line 188
    .line 189
    iget-boolean v1, v0, Landroidx/appcompat/app/T;->o:Z

    .line 190
    .line 191
    if-eqz v1, :cond_d

    .line 192
    .line 193
    iput-boolean v4, v0, Landroidx/appcompat/app/T;->k:Z

    .line 194
    .line 195
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/U;->g0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    goto :goto_2

    .line 200
    :cond_d
    const/4 v1, 0x1

    .line 201
    :goto_2
    if-eqz v1, :cond_e

    .line 202
    .line 203
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/U;->e0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)V

    .line 204
    .line 205
    .line 206
    const/4 p1, 0x1

    .line 207
    goto :goto_4

    .line 208
    :cond_e
    const/4 p1, 0x0

    .line 209
    goto :goto_4

    .line 210
    :cond_f
    :goto_3
    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/app/U;->M(Landroidx/appcompat/app/T;Z)V

    .line 211
    .line 212
    .line 213
    move p1, v1

    .line 214
    :goto_4
    if-eqz p1, :cond_13

    .line 215
    .line 216
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-string v0, "audio"

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    check-cast p1, Landroid/media/AudioManager;

    .line 227
    .line 228
    if-eqz p1, :cond_10

    .line 229
    .line 230
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_10
    const-string p1, "AppCompatDelegate"

    .line 235
    .line 236
    const-string v0, "Couldn\'t get audio manager"

    .line 237
    .line 238
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_11
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->a0()Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-eqz p1, :cond_12

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_12
    :goto_5
    const/4 v2, 0x0

    .line 250
    :cond_13
    :goto_6
    return v2
.end method

.method final Q(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/q;->B(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    iput-object v1, v0, Landroidx/appcompat/app/T;->p:Landroid/os/Bundle;

    .line 26
    .line 27
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q;->N()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Landroidx/appcompat/app/T;->o:Z

    .line 39
    .line 40
    iput-boolean v1, v0, Landroidx/appcompat/app/T;->n:Z

    .line 41
    .line 42
    const/16 v0, 0x6c

    .line 43
    .line 44
    if-eq p1, v0, :cond_2

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-boolean p1, v0, Landroidx/appcompat/app/T;->k:Z

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/U;->g0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method final T(Landroidx/appcompat/view/menu/q;)Landroidx/appcompat/app/T;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->M:[Landroidx/appcompat/app/T;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    aget-object v3, v0, v1

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    iget-object v4, v3, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 16
    .line 17
    if-ne v4, p1, :cond_1

    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method protected final V(I)Landroidx/appcompat/app/T;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->M:[Landroidx/appcompat/app/T;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-gt v1, p1, :cond_2

    .line 7
    .line 8
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 9
    .line 10
    new-array v1, v1, [Landroidx/appcompat/app/T;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Landroidx/appcompat/app/U;->M:[Landroidx/appcompat/app/T;

    .line 20
    .line 21
    move-object v0, v1

    .line 22
    :cond_2
    aget-object v1, v0, p1

    .line 23
    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    new-instance v1, Landroidx/appcompat/app/T;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Landroidx/appcompat/app/T;-><init>(I)V

    .line 29
    .line 30
    .line 31
    aput-object v1, v0, p1

    .line 32
    .line 33
    :cond_3
    return-object v1
.end method

.method final W()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final Y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method final Z(Landroid/content/Context;I)I
    .locals 2

    .line 1
    const/16 v0, -0x64

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p2, v0, :cond_6

    .line 5
    .line 6
    if-eq p2, v1, :cond_5

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, v0, :cond_5

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p2, v0, :cond_5

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Landroidx/appcompat/app/U;->Y:Landroidx/appcompat/app/M;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    new-instance p2, Landroidx/appcompat/app/M;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Landroidx/appcompat/app/M;-><init>(Landroidx/appcompat/app/U;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Landroidx/appcompat/app/U;->Y:Landroidx/appcompat/app/M;

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/U;->Y:Landroidx/appcompat/app/M;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/app/M;->e()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v0, 0x17

    .line 48
    .line 49
    if-lt p2, v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v0, "uimode"

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroid/app/UiModeManager;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_3

    .line 68
    .line 69
    return v1

    .line 70
    :cond_3
    iget-object p2, p0, Landroidx/appcompat/app/U;->X:Landroidx/appcompat/app/P;

    .line 71
    .line 72
    if-nez p2, :cond_4

    .line 73
    .line 74
    new-instance p2, Landroidx/appcompat/app/P;

    .line 75
    .line 76
    invoke-static {p1}, Landroidx/appcompat/app/f0;->a(Landroid/content/Context;)Landroidx/appcompat/app/f0;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p0, p1}, Landroidx/appcompat/app/P;-><init>(Landroidx/appcompat/app/U;Landroidx/appcompat/app/f0;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Landroidx/appcompat/app/U;->X:Landroidx/appcompat/app/P;

    .line 84
    .line 85
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/U;->X:Landroidx/appcompat/app/P;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/appcompat/app/P;->e()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :cond_5
    return p2

    .line 93
    :cond_6
    return v1
.end method

.method final a0()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->O:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/appcompat/app/U;->O:Z

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-boolean v3, v2, Landroidx/appcompat/app/T;->m:Z

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v2, v4}, Landroidx/appcompat/app/U;->M(Landroidx/appcompat/app/T;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return v4

    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/appcompat/view/c;->a()V

    .line 26
    .line 27
    .line 28
    return v4

    .line 29
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    iget-object v2, v0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-interface {v2}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 47
    .line 48
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 v0, 0x0

    .line 54
    :goto_0
    if-eqz v0, :cond_4

    .line 55
    .line 56
    return v4

    .line 57
    :cond_4
    return v1
.end method

.method final b0(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/app/h0;->i:Landroidx/appcompat/app/g0;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/g0;->c()Landroidx/appcompat/view/menu/q;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v3, -0x1

    .line 29
    :goto_0
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eq v3, v2, :cond_2

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v3, 0x0

    .line 42
    :goto_1
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/q;->setQwertyMode(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, p2, v1}, Landroidx/appcompat/view/menu/q;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 51
    :goto_3
    if-eqz p1, :cond_4

    .line 52
    .line 53
    return v2

    .line 54
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/U;->N:Landroidx/appcompat/app/T;

    .line 55
    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-direct {p0, p1, v0, p2}, Landroidx/appcompat/app/U;->f0(Landroidx/appcompat/app/T;ILandroid/view/KeyEvent;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/appcompat/app/U;->N:Landroidx/appcompat/app/T;

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iput-boolean v2, p1, Landroidx/appcompat/app/T;->l:Z

    .line 73
    .line 74
    :cond_5
    return v2

    .line 75
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/U;->N:Landroidx/appcompat/app/T;

    .line 76
    .line 77
    if-nez p1, :cond_7

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/U;->g0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-direct {p0, p1, v0, p2}, Landroidx/appcompat/app/U;->f0(Landroidx/appcompat/app/T;ILandroid/view/KeyEvent;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iput-boolean v1, p1, Landroidx/appcompat/app/T;->k:Z

    .line 95
    .line 96
    if-eqz p2, :cond_7

    .line 97
    .line 98
    return v2

    .line 99
    :cond_7
    return v1
.end method

.method public final c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->R()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const v1, 0x1020002

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/U;->m:Landroidx/appcompat/app/L;

    .line 19
    .line 20
    iget-object p2, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/L;->c(Landroid/view/Window$Callback;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method final c0(I)V
    .locals 1

    .line 1
    const/16 v0, 0x6c

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/h0;->h(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final d(Landroid/content/Context;)Landroid/content/Context;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/U;->P:Z

    .line 3
    .line 4
    iget v1, p0, Landroidx/appcompat/app/U;->T:I

    .line 5
    .line 6
    const/16 v2, -0x64

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Landroidx/appcompat/app/v;->h()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/U;->Z(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p1}, Landroidx/appcompat/app/v;->o(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Landroidx/appcompat/app/v;->F(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {p1}, Landroidx/appcompat/app/U;->J(Landroid/content/Context;)Landroidx/core/os/j;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-boolean v3, Landroidx/appcompat/app/U;->l0:Z

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-static {p1, v1, v2, v4, v5}, Landroidx/appcompat/app/U;->N(Landroid/content/Context;ILandroidx/core/os/j;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :try_start_0
    move-object v6, p1

    .line 47
    check-cast v6, Landroid/view/ContextThemeWrapper;

    .line 48
    .line 49
    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :catch_0
    nop

    .line 54
    :cond_2
    instance-of v3, p1, Landroidx/appcompat/view/f;

    .line 55
    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-static {p1, v1, v2, v4, v5}, Landroidx/appcompat/app/U;->N(Landroid/content/Context;ILandroidx/core/os/j;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :try_start_1
    move-object v6, p1

    .line 63
    check-cast v6, Landroidx/appcompat/view/f;

    .line 64
    .line 65
    invoke-virtual {v6, v3}, Landroidx/appcompat/view/f;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :catch_1
    nop

    .line 70
    :cond_3
    sget-boolean v3, Landroidx/appcompat/app/U;->k0:Z

    .line 71
    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    new-instance v6, Landroid/content/res/Configuration;

    .line 78
    .line 79
    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    .line 80
    .line 81
    .line 82
    const/4 v7, -0x1

    .line 83
    iput v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 84
    .line 85
    const/4 v7, 0x0

    .line 86
    iput v7, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 87
    .line 88
    invoke-virtual {p1, v6}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    iget v9, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 109
    .line 110
    iput v9, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 111
    .line 112
    invoke-virtual {v6, v8}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-nez v9, :cond_1c

    .line 117
    .line 118
    new-instance v4, Landroid/content/res/Configuration;

    .line 119
    .line 120
    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 121
    .line 122
    .line 123
    iput v7, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 124
    .line 125
    invoke-virtual {v6, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_5

    .line 130
    .line 131
    goto/16 :goto_2

    .line 132
    .line 133
    :cond_5
    iget v7, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 134
    .line 135
    iget v9, v8, Landroid/content/res/Configuration;->fontScale:F

    .line 136
    .line 137
    cmpl-float v7, v7, v9

    .line 138
    .line 139
    if-eqz v7, :cond_6

    .line 140
    .line 141
    iput v9, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 142
    .line 143
    :cond_6
    iget v7, v6, Landroid/content/res/Configuration;->mcc:I

    .line 144
    .line 145
    iget v9, v8, Landroid/content/res/Configuration;->mcc:I

    .line 146
    .line 147
    if-eq v7, v9, :cond_7

    .line 148
    .line 149
    iput v9, v4, Landroid/content/res/Configuration;->mcc:I

    .line 150
    .line 151
    :cond_7
    iget v7, v6, Landroid/content/res/Configuration;->mnc:I

    .line 152
    .line 153
    iget v9, v8, Landroid/content/res/Configuration;->mnc:I

    .line 154
    .line 155
    if-eq v7, v9, :cond_8

    .line 156
    .line 157
    iput v9, v4, Landroid/content/res/Configuration;->mnc:I

    .line 158
    .line 159
    :cond_8
    const/16 v7, 0x18

    .line 160
    .line 161
    if-lt v3, v7, :cond_9

    .line 162
    .line 163
    invoke-static {v6, v8, v4}, Landroidx/appcompat/app/G;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_9
    iget-object v7, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 168
    .line 169
    iget-object v9, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 170
    .line 171
    invoke-static {v7, v9}, Landroidx/core/util/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-nez v7, :cond_a

    .line 176
    .line 177
    iget-object v7, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 178
    .line 179
    iput-object v7, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 180
    .line 181
    :cond_a
    :goto_1
    iget v7, v6, Landroid/content/res/Configuration;->touchscreen:I

    .line 182
    .line 183
    iget v9, v8, Landroid/content/res/Configuration;->touchscreen:I

    .line 184
    .line 185
    if-eq v7, v9, :cond_b

    .line 186
    .line 187
    iput v9, v4, Landroid/content/res/Configuration;->touchscreen:I

    .line 188
    .line 189
    :cond_b
    iget v7, v6, Landroid/content/res/Configuration;->keyboard:I

    .line 190
    .line 191
    iget v9, v8, Landroid/content/res/Configuration;->keyboard:I

    .line 192
    .line 193
    if-eq v7, v9, :cond_c

    .line 194
    .line 195
    iput v9, v4, Landroid/content/res/Configuration;->keyboard:I

    .line 196
    .line 197
    :cond_c
    iget v7, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 198
    .line 199
    iget v9, v8, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 200
    .line 201
    if-eq v7, v9, :cond_d

    .line 202
    .line 203
    iput v9, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 204
    .line 205
    :cond_d
    iget v7, v6, Landroid/content/res/Configuration;->navigation:I

    .line 206
    .line 207
    iget v9, v8, Landroid/content/res/Configuration;->navigation:I

    .line 208
    .line 209
    if-eq v7, v9, :cond_e

    .line 210
    .line 211
    iput v9, v4, Landroid/content/res/Configuration;->navigation:I

    .line 212
    .line 213
    :cond_e
    iget v7, v6, Landroid/content/res/Configuration;->navigationHidden:I

    .line 214
    .line 215
    iget v9, v8, Landroid/content/res/Configuration;->navigationHidden:I

    .line 216
    .line 217
    if-eq v7, v9, :cond_f

    .line 218
    .line 219
    iput v9, v4, Landroid/content/res/Configuration;->navigationHidden:I

    .line 220
    .line 221
    :cond_f
    iget v7, v6, Landroid/content/res/Configuration;->orientation:I

    .line 222
    .line 223
    iget v9, v8, Landroid/content/res/Configuration;->orientation:I

    .line 224
    .line 225
    if-eq v7, v9, :cond_10

    .line 226
    .line 227
    iput v9, v4, Landroid/content/res/Configuration;->orientation:I

    .line 228
    .line 229
    :cond_10
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 230
    .line 231
    and-int/lit8 v7, v7, 0xf

    .line 232
    .line 233
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 234
    .line 235
    and-int/lit8 v9, v9, 0xf

    .line 236
    .line 237
    if-eq v7, v9, :cond_11

    .line 238
    .line 239
    iget v7, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 240
    .line 241
    or-int/2addr v7, v9

    .line 242
    iput v7, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 243
    .line 244
    :cond_11
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 245
    .line 246
    and-int/lit16 v7, v7, 0xc0

    .line 247
    .line 248
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 249
    .line 250
    and-int/lit16 v9, v9, 0xc0

    .line 251
    .line 252
    if-eq v7, v9, :cond_12

    .line 253
    .line 254
    iget v7, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 255
    .line 256
    or-int/2addr v7, v9

    .line 257
    iput v7, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 258
    .line 259
    :cond_12
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 260
    .line 261
    and-int/lit8 v7, v7, 0x30

    .line 262
    .line 263
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 264
    .line 265
    and-int/lit8 v9, v9, 0x30

    .line 266
    .line 267
    if-eq v7, v9, :cond_13

    .line 268
    .line 269
    iget v7, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 270
    .line 271
    or-int/2addr v7, v9

    .line 272
    iput v7, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 273
    .line 274
    :cond_13
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 275
    .line 276
    and-int/lit16 v7, v7, 0x300

    .line 277
    .line 278
    iget v9, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 279
    .line 280
    and-int/lit16 v9, v9, 0x300

    .line 281
    .line 282
    if-eq v7, v9, :cond_14

    .line 283
    .line 284
    iget v7, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 285
    .line 286
    or-int/2addr v7, v9

    .line 287
    iput v7, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 288
    .line 289
    :cond_14
    const/16 v7, 0x1a

    .line 290
    .line 291
    if-lt v3, v7, :cond_16

    .line 292
    .line 293
    invoke-static {v6}, LB/x;->a(Landroid/content/res/Configuration;)I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    and-int/lit8 v3, v3, 0x3

    .line 298
    .line 299
    invoke-static {v8}, LB/x;->a(Landroid/content/res/Configuration;)I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    and-int/lit8 v7, v7, 0x3

    .line 304
    .line 305
    if-eq v3, v7, :cond_15

    .line 306
    .line 307
    invoke-static {v4}, LB/x;->a(Landroid/content/res/Configuration;)I

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    invoke-static {v8}, LB/x;->a(Landroid/content/res/Configuration;)I

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    and-int/lit8 v7, v7, 0x3

    .line 316
    .line 317
    or-int/2addr v3, v7

    .line 318
    invoke-static {v4, v3}, LC/a;->i(Landroid/content/res/Configuration;I)V

    .line 319
    .line 320
    .line 321
    :cond_15
    invoke-static {v6}, LB/x;->a(Landroid/content/res/Configuration;)I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    and-int/lit8 v3, v3, 0xc

    .line 326
    .line 327
    invoke-static {v8}, LB/x;->a(Landroid/content/res/Configuration;)I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    and-int/lit8 v7, v7, 0xc

    .line 332
    .line 333
    if-eq v3, v7, :cond_16

    .line 334
    .line 335
    invoke-static {v4}, LB/x;->a(Landroid/content/res/Configuration;)I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    invoke-static {v8}, LB/x;->a(Landroid/content/res/Configuration;)I

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    and-int/lit8 v7, v7, 0xc

    .line 344
    .line 345
    or-int/2addr v3, v7

    .line 346
    invoke-static {v4, v3}, LC/a;->i(Landroid/content/res/Configuration;I)V

    .line 347
    .line 348
    .line 349
    :cond_16
    iget v3, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 350
    .line 351
    and-int/lit8 v3, v3, 0xf

    .line 352
    .line 353
    iget v7, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 354
    .line 355
    and-int/lit8 v7, v7, 0xf

    .line 356
    .line 357
    if-eq v3, v7, :cond_17

    .line 358
    .line 359
    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 360
    .line 361
    or-int/2addr v3, v7

    .line 362
    iput v3, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 363
    .line 364
    :cond_17
    iget v3, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 365
    .line 366
    and-int/lit8 v3, v3, 0x30

    .line 367
    .line 368
    iget v7, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 369
    .line 370
    and-int/lit8 v7, v7, 0x30

    .line 371
    .line 372
    if-eq v3, v7, :cond_18

    .line 373
    .line 374
    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 375
    .line 376
    or-int/2addr v3, v7

    .line 377
    iput v3, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 378
    .line 379
    :cond_18
    iget v3, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 380
    .line 381
    iget v7, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 382
    .line 383
    if-eq v3, v7, :cond_19

    .line 384
    .line 385
    iput v7, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 386
    .line 387
    :cond_19
    iget v3, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 388
    .line 389
    iget v7, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 390
    .line 391
    if-eq v3, v7, :cond_1a

    .line 392
    .line 393
    iput v7, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 394
    .line 395
    :cond_1a
    iget v3, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 396
    .line 397
    iget v7, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 398
    .line 399
    if-eq v3, v7, :cond_1b

    .line 400
    .line 401
    iput v7, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 402
    .line 403
    :cond_1b
    iget v3, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 404
    .line 405
    iget v6, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 406
    .line 407
    if-eq v3, v6, :cond_1c

    .line 408
    .line 409
    iput v6, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 410
    .line 411
    :cond_1c
    :goto_2
    invoke-static {p1, v1, v2, v4, v0}, Landroidx/appcompat/app/U;->N(Landroid/content/Context;ILandroidx/core/os/j;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    new-instance v2, Landroidx/appcompat/view/f;

    .line 416
    .line 417
    const v3, 0x7f110134

    .line 418
    .line 419
    .line 420
    invoke-direct {v2, p1, v3}, Landroidx/appcompat/view/f;-><init>(Landroid/content/Context;I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/f;->a(Landroid/content/res/Configuration;)V

    .line 424
    .line 425
    .line 426
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 427
    .line 428
    .line 429
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 430
    if-eqz p1, :cond_1d

    .line 431
    .line 432
    goto :goto_3

    .line 433
    :cond_1d
    const/4 v0, 0x0

    .line 434
    :goto_3
    move v5, v0

    .line 435
    goto :goto_4

    .line 436
    :catch_2
    nop

    .line 437
    :goto_4
    if-eqz v5, :cond_1e

    .line 438
    .line 439
    invoke-virtual {v2}, Landroidx/appcompat/view/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    invoke-static {p1}, Landroidx/core/content/res/j;->c(Landroid/content/res/Resources$Theme;)V

    .line 444
    .line 445
    .line 446
    :cond_1e
    return-object v2
.end method

.method final d0(I)V
    .locals 2

    .line 1
    const/16 v0, 0x6c

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/h0;->h(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-boolean v0, p1, Landroidx/appcompat/app/T;->m:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/U;->M(Landroidx/appcompat/app/T;Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final e(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->R()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final g()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method final h0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/core/view/f0;->y(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/app/U;->T:I

    .line 2
    .line 3
    return v0
.end method

.method public final i0(Landroidx/appcompat/view/h;)Landroidx/appcompat/view/c;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/c;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Landroidx/appcompat/app/D;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/D;-><init>(Landroidx/appcompat/app/U;Landroidx/appcompat/view/h;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iget-object v2, p0, Landroidx/appcompat/app/U;->n:Landroidx/appcompat/app/r;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    iget-object v5, p1, Landroidx/appcompat/app/h0;->i:Landroidx/appcompat/app/g0;

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {v5}, Landroidx/appcompat/app/g0;->a()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v5, p1, Landroidx/appcompat/app/h0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v5, p1, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 38
    .line 39
    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 40
    .line 41
    .line 42
    new-instance v5, Landroidx/appcompat/app/g0;

    .line 43
    .line 44
    iget-object v6, p1, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-direct {v5, p1, v6, v0}, Landroidx/appcompat/app/g0;-><init>(Landroidx/appcompat/app/h0;Landroid/content/Context;Landroidx/appcompat/view/b;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Landroidx/appcompat/app/g0;->r()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    iput-object v5, p1, Landroidx/appcompat/app/h0;->i:Landroidx/appcompat/app/g0;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroidx/appcompat/app/g0;->i()V

    .line 62
    .line 63
    .line 64
    iget-object v6, p1, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 65
    .line 66
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Landroidx/appcompat/view/c;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/h0;->g(Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move-object v5, v1

    .line 74
    :goto_0
    iput-object v5, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 75
    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-interface {v2, v5}, Landroidx/appcompat/app/r;->onSupportActionModeStarted(Landroidx/appcompat/view/c;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 84
    .line 85
    if-nez p1, :cond_13

    .line 86
    .line 87
    iget-object p1, p0, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/core/view/r0;->b()V

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/appcompat/view/c;->a()V

    .line 99
    .line 100
    .line 101
    :cond_5
    if-eqz v2, :cond_6

    .line 102
    .line 103
    iget-boolean p1, p0, Landroidx/appcompat/app/U;->R:Z

    .line 104
    .line 105
    if-nez p1, :cond_6

    .line 106
    .line 107
    :try_start_0
    invoke-interface {v2, v0}, Landroidx/appcompat/app/r;->onWindowStartingSupportActionMode(Landroidx/appcompat/view/b;)Landroidx/appcompat/view/c;

    .line 108
    .line 109
    .line 110
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_1

    .line 112
    :catch_0
    nop

    .line 113
    :cond_6
    move-object p1, v1

    .line 114
    :goto_1
    if-eqz p1, :cond_7

    .line 115
    .line 116
    iput-object p1, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 117
    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 121
    .line 122
    if-nez p1, :cond_c

    .line 123
    .line 124
    iget-boolean p1, p0, Landroidx/appcompat/app/U;->J:Z

    .line 125
    .line 126
    iget-object v5, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 127
    .line 128
    if-eqz p1, :cond_9

    .line 129
    .line 130
    new-instance p1, Landroid/util/TypedValue;

    .line 131
    .line 132
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const v7, 0x7f040009

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v7, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 143
    .line 144
    .line 145
    iget v7, p1, Landroid/util/TypedValue;->resourceId:I

    .line 146
    .line 147
    if-eqz v7, :cond_8

    .line 148
    .line 149
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 158
    .line 159
    .line 160
    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    .line 161
    .line 162
    invoke-virtual {v7, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 163
    .line 164
    .line 165
    new-instance v6, Landroidx/appcompat/view/f;

    .line 166
    .line 167
    invoke-direct {v6, v5, v4}, Landroidx/appcompat/view/f;-><init>(Landroid/content/Context;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Landroidx/appcompat/view/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 175
    .line 176
    .line 177
    move-object v5, v6

    .line 178
    :cond_8
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    .line 179
    .line 180
    invoke-direct {v6, v5}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    iput-object v6, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 184
    .line 185
    new-instance v6, Landroid/widget/PopupWindow;

    .line 186
    .line 187
    const v7, 0x7f040018

    .line 188
    .line 189
    .line 190
    invoke-direct {v6, v5, v1, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    .line 192
    .line 193
    iput-object v6, p0, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 194
    .line 195
    const/4 v7, 0x2

    .line 196
    invoke-static {v6, v7}, Landroidx/core/widget/f;->f(Landroid/widget/PopupWindow;I)V

    .line 197
    .line 198
    .line 199
    iget-object v6, p0, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 200
    .line 201
    iget-object v7, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 202
    .line 203
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 204
    .line 205
    .line 206
    iget-object v6, p0, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 207
    .line 208
    const/4 v7, -0x1

    .line 209
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    const v7, 0x7f040003

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v7, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 220
    .line 221
    .line 222
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 223
    .line 224
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-static {p1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    iget-object v3, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 237
    .line 238
    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 242
    .line 243
    const/4 v3, -0x2

    .line 244
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 245
    .line 246
    .line 247
    new-instance p1, Landroidx/appcompat/app/A;

    .line 248
    .line 249
    invoke-direct {p1, p0}, Landroidx/appcompat/app/A;-><init>(Landroidx/appcompat/app/U;)V

    .line 250
    .line 251
    .line 252
    iput-object p1, p0, Landroidx/appcompat/app/U;->x:Ljava/lang/Runnable;

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_9
    iget-object p1, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 256
    .line 257
    const v3, 0x7f090035

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    .line 265
    .line 266
    if-eqz p1, :cond_c

    .line 267
    .line 268
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 269
    .line 270
    .line 271
    iget-object v3, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 272
    .line 273
    if-eqz v3, :cond_a

    .line 274
    .line 275
    invoke-virtual {v3}, Landroidx/appcompat/app/h0;->i()Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    goto :goto_2

    .line 280
    :cond_a
    move-object v3, v1

    .line 281
    :goto_2
    if-nez v3, :cond_b

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_b
    move-object v5, v3

    .line 285
    :goto_3
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->inflate()Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    .line 297
    .line 298
    iput-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 299
    .line 300
    :cond_c
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 301
    .line 302
    if-eqz p1, :cond_11

    .line 303
    .line 304
    iget-object p1, p0, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    .line 305
    .line 306
    if-eqz p1, :cond_d

    .line 307
    .line 308
    invoke-virtual {p1}, Landroidx/core/view/r0;->b()V

    .line 309
    .line 310
    .line 311
    :cond_d
    iget-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 312
    .line 313
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 314
    .line 315
    .line 316
    new-instance p1, Landroidx/appcompat/view/g;

    .line 317
    .line 318
    iget-object v3, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 319
    .line 320
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    iget-object v5, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 325
    .line 326
    invoke-direct {p1, v3, v5, v0}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/b;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1}, Landroidx/appcompat/view/g;->c()Landroidx/appcompat/view/menu/q;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v0, p1, v3}, Landroidx/appcompat/app/D;->d(Landroidx/appcompat/view/c;Landroidx/appcompat/view/menu/q;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_10

    .line 338
    .line 339
    invoke-virtual {p1}, Landroidx/appcompat/view/g;->i()V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 343
    .line 344
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Landroidx/appcompat/view/c;)V

    .line 345
    .line 346
    .line 347
    iput-object p1, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 348
    .line 349
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->h0()Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    const/high16 v0, 0x3f800000    # 1.0f

    .line 354
    .line 355
    if-eqz p1, :cond_e

    .line 356
    .line 357
    iget-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 358
    .line 359
    const/4 v1, 0x0

    .line 360
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 361
    .line 362
    .line 363
    iget-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 364
    .line 365
    invoke-static {p1}, Landroidx/core/view/f0;->a(Landroid/view/View;)Landroidx/core/view/r0;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-virtual {p1, v0}, Landroidx/core/view/r0;->a(F)V

    .line 370
    .line 371
    .line 372
    iput-object p1, p0, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    .line 373
    .line 374
    new-instance v0, Landroidx/appcompat/app/B;

    .line 375
    .line 376
    invoke-direct {v0, v4, p0}, Landroidx/appcompat/app/B;-><init>(ILjava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v0}, Landroidx/core/view/r0;->f(Landroidx/core/view/s0;)V

    .line 380
    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 384
    .line 385
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 386
    .line 387
    .line 388
    iget-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 389
    .line 390
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 391
    .line 392
    .line 393
    iget-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 394
    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    instance-of p1, p1, Landroid/view/View;

    .line 400
    .line 401
    if-eqz p1, :cond_f

    .line 402
    .line 403
    iget-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 404
    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    check-cast p1, Landroid/view/View;

    .line 410
    .line 411
    invoke-static {p1}, Landroidx/core/view/f0;->I(Landroid/view/View;)V

    .line 412
    .line 413
    .line 414
    :cond_f
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 415
    .line 416
    if-eqz p1, :cond_11

    .line 417
    .line 418
    iget-object p1, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 419
    .line 420
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    iget-object v0, p0, Landroidx/appcompat/app/U;->x:Ljava/lang/Runnable;

    .line 425
    .line 426
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 427
    .line 428
    .line 429
    goto :goto_6

    .line 430
    :cond_10
    iput-object v1, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 431
    .line 432
    :cond_11
    :goto_6
    iget-object p1, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 433
    .line 434
    if-eqz p1, :cond_12

    .line 435
    .line 436
    if-eqz v2, :cond_12

    .line 437
    .line 438
    invoke-interface {v2, p1}, Landroidx/appcompat/app/r;->onSupportActionModeStarted(Landroidx/appcompat/view/c;)V

    .line 439
    .line 440
    .line 441
    :cond_12
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->k0()V

    .line 442
    .line 443
    .line 444
    iget-object p1, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 445
    .line 446
    iput-object p1, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 447
    .line 448
    :cond_13
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->k0()V

    .line 449
    .line 450
    .line 451
    iget-object p1, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 452
    .line 453
    return-object p1
.end method

.method public final j()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->p:Landroidx/appcompat/view/l;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/appcompat/view/l;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/appcompat/app/h0;->i()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 20
    .line 21
    :goto_0
    invoke-direct {v0, v1}, Landroidx/appcompat/view/l;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/appcompat/app/U;->p:Landroidx/appcompat/view/l;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/U;->p:Landroidx/appcompat/view/l;

    .line 27
    .line 28
    return-object v0
.end method

.method final k0()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/U;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v0, v0, Landroidx/appcompat/app/T;->m:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/U;->u:Landroidx/appcompat/view/c;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :goto_0
    const/4 v1, 0x1

    .line 27
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/appcompat/app/U;->h0:Landroid/window/OnBackInvokedCallback;

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/appcompat/app/U;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroidx/appcompat/app/K;->b(Ljava/lang/Object;Landroidx/appcompat/app/U;)Landroid/window/OnBackInvokedCallback;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Landroidx/appcompat/app/U;->h0:Landroid/window/OnBackInvokedCallback;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    if-nez v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/appcompat/app/U;->h0:Landroid/window/OnBackInvokedCallback;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/appcompat/app/U;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 49
    .line 50
    invoke-static {v1, v0}, Landroidx/appcompat/app/K;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_4
    :goto_2
    return-void
.end method

.method public final l()Landroidx/appcompat/app/h0;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 5
    .line 6
    return-object v0
.end method

.method final l0(Landroidx/core/view/I0;)I
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/I0;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_f

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    .line 18
    if-eqz v1, :cond_f

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    .line 28
    iget-object v4, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v4, :cond_c

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/appcompat/app/U;->d0:Landroid/graphics/Rect;

    .line 38
    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    new-instance v4, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v4, p0, Landroidx/appcompat/app/U;->d0:Landroid/graphics/Rect;

    .line 47
    .line 48
    new-instance v4, Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v4, p0, Landroidx/appcompat/app/U;->e0:Landroid/graphics/Rect;

    .line 54
    .line 55
    :cond_0
    iget-object v4, p0, Landroidx/appcompat/app/U;->d0:Landroid/graphics/Rect;

    .line 56
    .line 57
    iget-object v6, p0, Landroidx/appcompat/app/U;->e0:Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/core/view/I0;->f()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {p1}, Landroidx/core/view/I0;->h()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-virtual {p1}, Landroidx/core/view/I0;->g()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    invoke-virtual {p1}, Landroidx/core/view/I0;->e()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {v4, v7, v8, v9, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 79
    .line 80
    invoke-static {p1, v4, v6}, Landroidx/appcompat/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 81
    .line 82
    .line 83
    iget p1, v4, Landroid/graphics/Rect;->top:I

    .line 84
    .line 85
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 86
    .line 87
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 88
    .line 89
    iget-object v7, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 90
    .line 91
    invoke-static {v7}, Landroidx/core/view/f0;->r(Landroid/view/View;)Landroidx/core/view/I0;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    if-nez v7, :cond_1

    .line 96
    .line 97
    const/4 v8, 0x0

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v7}, Landroidx/core/view/I0;->f()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    :goto_0
    if-nez v7, :cond_2

    .line 104
    .line 105
    const/4 v7, 0x0

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v7}, Landroidx/core/view/I0;->g()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    :goto_1
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 112
    .line 113
    if-ne v9, p1, :cond_4

    .line 114
    .line 115
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 116
    .line 117
    if-ne v9, v6, :cond_4

    .line 118
    .line 119
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 120
    .line 121
    if-eq v9, v4, :cond_3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    const/4 v4, 0x0

    .line 125
    goto :goto_3

    .line 126
    :cond_4
    :goto_2
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 127
    .line 128
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 129
    .line 130
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 131
    .line 132
    const/4 v4, 0x1

    .line 133
    :goto_3
    iget-object v6, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 134
    .line 135
    if-lez p1, :cond_5

    .line 136
    .line 137
    iget-object p1, p0, Landroidx/appcompat/app/U;->D:Landroid/view/View;

    .line 138
    .line 139
    if-nez p1, :cond_5

    .line 140
    .line 141
    new-instance p1, Landroid/view/View;

    .line 142
    .line 143
    invoke-direct {p1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Landroidx/appcompat/app/U;->D:Landroid/view/View;

    .line 147
    .line 148
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    .line 153
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 154
    .line 155
    const/4 v10, -0x1

    .line 156
    const/16 v11, 0x33

    .line 157
    .line 158
    invoke-direct {p1, v10, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 159
    .line 160
    .line 161
    iput v8, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 162
    .line 163
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 164
    .line 165
    iget-object v7, p0, Landroidx/appcompat/app/U;->B:Landroid/view/ViewGroup;

    .line 166
    .line 167
    iget-object v8, p0, Landroidx/appcompat/app/U;->D:Landroid/view/View;

    .line 168
    .line 169
    invoke-virtual {v7, v8, v10, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/app/U;->D:Landroid/view/View;

    .line 174
    .line 175
    if-eqz p1, :cond_7

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    .line 183
    iget v9, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 184
    .line 185
    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 186
    .line 187
    if-ne v9, v10, :cond_6

    .line 188
    .line 189
    iget v9, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 190
    .line 191
    if-ne v9, v8, :cond_6

    .line 192
    .line 193
    iget v9, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 194
    .line 195
    if-eq v9, v7, :cond_7

    .line 196
    .line 197
    :cond_6
    iput v10, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 198
    .line 199
    iput v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 200
    .line 201
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 202
    .line 203
    iget-object v7, p0, Landroidx/appcompat/app/U;->D:Landroid/view/View;

    .line 204
    .line 205
    invoke-virtual {v7, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    :cond_7
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/app/U;->D:Landroid/view/View;

    .line 209
    .line 210
    if-eqz p1, :cond_8

    .line 211
    .line 212
    const/4 v7, 0x1

    .line 213
    goto :goto_5

    .line 214
    :cond_8
    const/4 v7, 0x0

    .line 215
    :goto_5
    if-eqz v7, :cond_b

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_b

    .line 222
    .line 223
    iget-object p1, p0, Landroidx/appcompat/app/U;->D:Landroid/view/View;

    .line 224
    .line 225
    invoke-static {p1}, Landroidx/core/view/f0;->t(Landroid/view/View;)I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    and-int/lit16 v8, v8, 0x2000

    .line 230
    .line 231
    if-eqz v8, :cond_9

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_9
    const/4 v5, 0x0

    .line 235
    :goto_6
    if-eqz v5, :cond_a

    .line 236
    .line 237
    const v5, 0x7f060006

    .line 238
    .line 239
    .line 240
    invoke-static {v6, v5}, Landroidx/core/content/f;->b(Landroid/content/Context;I)I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    goto :goto_7

    .line 245
    :cond_a
    const v5, 0x7f060005

    .line 246
    .line 247
    .line 248
    invoke-static {v6, v5}, Landroidx/core/content/f;->b(Landroid/content/Context;I)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    :goto_7
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 253
    .line 254
    .line 255
    :cond_b
    iget-boolean p1, p0, Landroidx/appcompat/app/U;->I:Z

    .line 256
    .line 257
    if-nez p1, :cond_e

    .line 258
    .line 259
    if-eqz v7, :cond_e

    .line 260
    .line 261
    const/4 v0, 0x0

    .line 262
    goto :goto_9

    .line 263
    :cond_c
    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 264
    .line 265
    if-eqz p1, :cond_d

    .line 266
    .line 267
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_d
    const/4 v5, 0x0

    .line 271
    :goto_8
    move v4, v5

    .line 272
    const/4 v7, 0x0

    .line 273
    :cond_e
    :goto_9
    if-eqz v4, :cond_10

    .line 274
    .line 275
    iget-object p1, p0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 276
    .line 277
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_f
    const/4 v7, 0x0

    .line 282
    :cond_10
    :goto_a
    iget-object p1, p0, Landroidx/appcompat/app/U;->D:Landroid/view/View;

    .line 283
    .line 284
    if-eqz p1, :cond_12

    .line 285
    .line 286
    if-eqz v7, :cond_11

    .line 287
    .line 288
    const/4 v2, 0x0

    .line 289
    :cond_11
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    :cond_12
    return v0
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Landroidx/appcompat/app/U;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "AppCompatDelegate"

    .line 26
    .line 27
    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget v0, p0, Landroidx/appcompat/app/U;->a0:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    or-int/2addr v0, v1

    .line 17
    iput v0, p0, Landroidx/appcompat/app/U;->a0:I

    .line 18
    .line 19
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->Z:Z

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Landroidx/appcompat/app/U;->b0:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-static {v0, v2}, Landroidx/core/view/f0;->G(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iput-boolean v1, p0, Landroidx/appcompat/app/U;->Z:Z

    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->f0:Landroidx/appcompat/app/AppCompatViewInflater;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Ld/a;->k:[I

    iget-object v1, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x74

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/U;->f0:Landroidx/appcompat/app/AppCompatViewInflater;

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v1, p0, Landroidx/appcompat/app/U;->f0:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/U;->f0:Landroidx/appcompat/app/AppCompatViewInflater;

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/U;->f0:Landroidx/appcompat/app/AppCompatViewInflater;

    .line 11
    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 12
    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/U;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/q;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->W()Landroid/view/Window$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/appcompat/app/U;->R:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->q()Landroidx/appcompat/view/menu/q;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/U;->T(Landroidx/appcompat/view/menu/q;)Landroidx/appcompat/app/T;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget p1, p1, Landroidx/appcompat/app/T;->a:I

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/q;)V
    .locals 5

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->canShowOverflowMenu()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 26
    .line 27
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/U;->W()Landroid/view/Window$Callback;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v2, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 38
    .line 39
    invoke-interface {v2}, Landroidx/appcompat/widget/DecorContentParent;->isOverflowMenuShowing()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/16 v3, 0x6c

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 48
    .line 49
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p0, Landroidx/appcompat/app/U;->R:Z

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v0, v0, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 61
    .line 62
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->R:Z

    .line 69
    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->Z:Z

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    iget v2, p0, Landroidx/appcompat/app/U;->a0:I

    .line 77
    .line 78
    and-int/2addr v0, v2

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v2, p0, Landroidx/appcompat/app/U;->b0:Ljava/lang/Runnable;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 90
    .line 91
    .line 92
    check-cast v2, Landroidx/appcompat/app/w;

    .line 93
    .line 94
    invoke-virtual {v2}, Landroidx/appcompat/app/w;->run()V

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v2, v0, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    iget-boolean v4, v0, Landroidx/appcompat/app/T;->o:Z

    .line 106
    .line 107
    if-nez v4, :cond_4

    .line 108
    .line 109
    iget-object v4, v0, Landroidx/appcompat/app/T;->g:Landroid/view/View;

    .line 110
    .line 111
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    iget-object v0, v0, Landroidx/appcompat/app/T;->h:Landroidx/appcompat/view/menu/q;

    .line 118
    .line 119
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Landroidx/appcompat/app/U;->r:Landroidx/appcompat/widget/DecorContentParent;

    .line 123
    .line 124
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorContentParent;->showOverflowMenu()Z

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/U;->V(I)Landroidx/appcompat/app/T;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-boolean v0, p1, Landroidx/appcompat/app/T;->n:Z

    .line 133
    .line 134
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/U;->M(Landroidx/appcompat/app/T;Z)V

    .line 135
    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/U;->e0(Landroidx/appcompat/app/T;Landroid/view/KeyEvent;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_0
    return-void
.end method

.method public final p(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/app/U;->G:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/appcompat/app/U;->A:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/app/h0;->k()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroid/content/res/Configuration;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Landroidx/appcompat/app/U;->S:Landroid/content/res/Configuration;

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-direct {p0, p1, p1}, Landroidx/appcompat/app/U;->G(ZZ)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/U;->P:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, v0}, Landroidx/appcompat/app/U;->G(ZZ)Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/appcompat/app/U;->S()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v2, v1, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Landroidx/core/app/r;->c(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    :catch_1
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    iput-boolean v0, p0, Landroidx/appcompat/app/U;->c0:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/h0;->l(Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    invoke-static {p0}, Landroidx/appcompat/app/v;->b(Landroidx/appcompat/app/v;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    new-instance v1, Landroid/content/res/Configuration;

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/appcompat/app/U;->k:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Landroidx/appcompat/app/U;->S:Landroid/content/res/Configuration;

    .line 67
    .line 68
    iput-boolean v0, p0, Landroidx/appcompat/app/U;->Q:Z

    .line 69
    .line 70
    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/U;->j:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/appcompat/app/v;->x(Landroidx/appcompat/app/v;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->Z:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Landroidx/appcompat/app/U;->b0:Ljava/lang/Runnable;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, p0, Landroidx/appcompat/app/U;->R:Z

    .line 27
    .line 28
    iget v2, p0, Landroidx/appcompat/app/U;->T:I

    .line 29
    .line 30
    sget-object v3, Landroidx/appcompat/app/U;->i0:Landroidx/collection/n;

    .line 31
    .line 32
    const/16 v4, -0x64

    .line 33
    .line 34
    if-eq v2, v4, :cond_2

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    move-object v1, v0

    .line 39
    check-cast v1, Landroid/app/Activity;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v1, p0, Landroidx/appcompat/app/U;->T:I

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v3, v0, v1}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v3, v0}, Landroidx/collection/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/U;->X:Landroidx/appcompat/app/P;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/appcompat/app/O;->a()V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/U;->Y:Landroidx/appcompat/app/M;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/appcompat/app/O;->a()V

    .line 88
    .line 89
    .line 90
    :cond_4
    return-void
.end method

.method public final s()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/h0;->n(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 0

    .line 1
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/U;->G(ZZ)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/U;->X()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/U;->o:Landroidx/appcompat/app/h0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/h0;->n(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final z(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x6d

    .line 2
    .line 3
    const/16 v1, 0x6c

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const-string v3, "AppCompatDelegate"

    .line 8
    .line 9
    if-ne p1, v2, :cond_0

    .line 10
    .line 11
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 12
    .line 13
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x6c

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v2, 0x9

    .line 20
    .line 21
    if-ne p1, v2, :cond_1

    .line 22
    .line 23
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 24
    .line 25
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/16 p1, 0x6d

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->K:Z

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne p1, v1, :cond_2

    .line 36
    .line 37
    return v3

    .line 38
    :cond_2
    iget-boolean v2, p0, Landroidx/appcompat/app/U;->G:Z

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    if-ne p1, v4, :cond_3

    .line 44
    .line 45
    iput-boolean v3, p0, Landroidx/appcompat/app/U;->G:Z

    .line 46
    .line 47
    :cond_3
    if-eq p1, v4, :cond_9

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    if-eq p1, v2, :cond_8

    .line 51
    .line 52
    const/4 v2, 0x5

    .line 53
    if-eq p1, v2, :cond_7

    .line 54
    .line 55
    const/16 v2, 0xa

    .line 56
    .line 57
    if-eq p1, v2, :cond_6

    .line 58
    .line 59
    if-eq p1, v1, :cond_5

    .line 60
    .line 61
    if-eq p1, v0, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/appcompat/app/U;->l:Landroid/view/Window;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :cond_4
    invoke-direct {p0}, Landroidx/appcompat/app/U;->j0()V

    .line 71
    .line 72
    .line 73
    iput-boolean v4, p0, Landroidx/appcompat/app/U;->H:Z

    .line 74
    .line 75
    return v4

    .line 76
    :cond_5
    invoke-direct {p0}, Landroidx/appcompat/app/U;->j0()V

    .line 77
    .line 78
    .line 79
    iput-boolean v4, p0, Landroidx/appcompat/app/U;->G:Z

    .line 80
    .line 81
    return v4

    .line 82
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/app/U;->j0()V

    .line 83
    .line 84
    .line 85
    iput-boolean v4, p0, Landroidx/appcompat/app/U;->I:Z

    .line 86
    .line 87
    return v4

    .line 88
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/app/U;->j0()V

    .line 89
    .line 90
    .line 91
    iput-boolean v4, p0, Landroidx/appcompat/app/U;->F:Z

    .line 92
    .line 93
    return v4

    .line 94
    :cond_8
    invoke-direct {p0}, Landroidx/appcompat/app/U;->j0()V

    .line 95
    .line 96
    .line 97
    iput-boolean v4, p0, Landroidx/appcompat/app/U;->E:Z

    .line 98
    .line 99
    return v4

    .line 100
    :cond_9
    invoke-direct {p0}, Landroidx/appcompat/app/U;->j0()V

    .line 101
    .line 102
    .line 103
    iput-boolean v4, p0, Landroidx/appcompat/app/U;->K:Z

    .line 104
    .line 105
    return v4
.end method
