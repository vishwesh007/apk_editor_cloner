.class public final Landroidx/appcompat/app/h0;
.super Landroidx/appcompat/app/d;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# static fields
.field private static final A:Landroid/view/animation/DecelerateInterpolator;

.field private static final z:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field d:Landroidx/appcompat/widget/ActionBarContainer;

.field e:Landroidx/appcompat/widget/DecorToolbar;

.field f:Landroidx/appcompat/widget/ActionBarContextView;

.field g:Landroid/view/View;

.field private h:Z

.field i:Landroidx/appcompat/app/g0;

.field j:Landroidx/appcompat/app/g0;

.field k:Landroidx/appcompat/view/b;

.field private l:Z

.field private m:Ljava/util/ArrayList;

.field private n:Z

.field private o:I

.field p:Z

.field q:Z

.field private r:Z

.field private s:Z

.field t:Landroidx/appcompat/view/n;

.field private u:Z

.field v:Z

.field final w:Landroidx/core/view/s0;

.field final x:Landroidx/core/view/s0;

.field final y:Landroidx/core/view/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/appcompat/app/h0;->z:Landroid/view/animation/AccelerateInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/appcompat/app/h0;->A:Landroid/view/animation/DecelerateInterpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/h0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/appcompat/app/h0;->o:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/h0;->p:Z

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/h0;->s:Z

    .line 7
    new-instance v1, Landroidx/appcompat/app/C;

    invoke-direct {v1, v0, p0}, Landroidx/appcompat/app/C;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/appcompat/app/h0;->w:Landroidx/core/view/s0;

    .line 8
    new-instance v1, Landroidx/appcompat/app/B;

    invoke-direct {v1, v0, p0}, Landroidx/appcompat/app/B;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/appcompat/app/h0;->x:Landroidx/core/view/s0;

    .line 9
    new-instance v0, Landroidx/appcompat/app/x;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/app/x;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/h0;->y:Landroidx/core/view/u0;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h0;->j(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/h0;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/h0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/appcompat/app/h0;->o:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroidx/appcompat/app/h0;->p:Z

    .line 19
    iput-boolean v0, p0, Landroidx/appcompat/app/h0;->s:Z

    .line 20
    new-instance v1, Landroidx/appcompat/app/C;

    invoke-direct {v1, v0, p0}, Landroidx/appcompat/app/C;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/appcompat/app/h0;->w:Landroidx/core/view/s0;

    .line 21
    new-instance v1, Landroidx/appcompat/app/B;

    invoke-direct {v1, v0, p0}, Landroidx/appcompat/app/B;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/appcompat/app/h0;->x:Landroidx/core/view/s0;

    .line 22
    new-instance v0, Landroidx/appcompat/app/x;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/app/x;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/h0;->y:Landroidx/core/view/u0;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/h0;->j(Landroid/view/View;)V

    return-void
.end method

.method private j(Landroid/view/View;)V
    .locals 5

    .line 1
    const v0, 0x7f09006f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/app/h0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const v0, 0x7f090027

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Landroidx/appcompat/widget/DecorToolbar;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Landroidx/appcompat/widget/DecorToolbar;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    if-eqz v1, :cond_a

    .line 34
    .line 35
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/DecorToolbar;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    iput-object v0, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 42
    .line 43
    const v0, 0x7f09002f

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 51
    .line 52
    iput-object v0, p0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 53
    .line 54
    const v0, 0x7f090029

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    .line 62
    .line 63
    iput-object p1, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 66
    .line 67
    if-eqz v0, :cond_9

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 70
    .line 71
    if-eqz v1, :cond_9

    .line 72
    .line 73
    if-eqz p1, :cond_9

    .line 74
    .line 75
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Landroidx/appcompat/app/h0;->a:Landroid/content/Context;

    .line 80
    .line 81
    iget-object p1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 82
    .line 83
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    and-int/lit8 p1, p1, 0x4

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    const/4 v1, 0x0

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const/4 p1, 0x0

    .line 96
    :goto_1
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iput-boolean v0, p0, Landroidx/appcompat/app/h0;->h:Z

    .line 99
    .line 100
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/h0;->a:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v2}, Landroidx/appcompat/view/a;->e(Landroid/content/Context;)Landroidx/appcompat/view/a;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroidx/appcompat/view/a;->c()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_5

    .line 111
    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    const/4 p1, 0x0

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 118
    :goto_3
    iget-object v3, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 119
    .line 120
    invoke-interface {v3, p1}, Landroidx/appcompat/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Landroidx/appcompat/view/a;->j()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-direct {p0, p1}, Landroidx/appcompat/app/h0;->m(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Landroidx/appcompat/app/h0;->a:Landroid/content/Context;

    .line 131
    .line 132
    sget-object v2, Ld/a;->a:[I

    .line 133
    .line 134
    const v3, 0x7f040005

    .line 135
    .line 136
    .line 137
    const/4 v4, 0x0

    .line 138
    invoke-virtual {p1, v4, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const/16 v2, 0xe

    .line 143
    .line 144
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_7

    .line 149
    .line 150
    iget-object v2, p0, Landroidx/appcompat/app/h0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 151
    .line 152
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    iput-boolean v0, p0, Landroidx/appcompat/app/h0;->v:Z

    .line 159
    .line 160
    iget-object v2, p0, Landroidx/appcompat/app/h0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 161
    .line 162
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    .line 169
    .line 170
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :cond_7
    :goto_4
    const/16 v0, 0xc

    .line 175
    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    int-to-float v0, v0

    .line 183
    iget-object v1, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 184
    .line 185
    invoke-static {v1, v0}, Landroidx/core/view/f0;->Q(Landroid/view/View;F)V

    .line 186
    .line 187
    .line 188
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 193
    .line 194
    const-class v0, Landroidx/appcompat/app/h0;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v1, " can only be used with a compatible window decor layout"

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 211
    .line 212
    if-eqz v0, :cond_b

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    goto :goto_5

    .line 223
    :cond_b
    const-string v0, "null"

    .line 224
    .line 225
    :goto_5
    const-string v1, "Can\'t make a decor toolbar out of "

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1
.end method

.method private m(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/h0;->n:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x2

    .line 34
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 42
    .line 43
    iget-boolean v3, p0, Landroidx/appcompat/app/h0;->n:Z

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    :goto_2
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/DecorToolbar;->setCollapsible(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Landroidx/appcompat/app/h0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 56
    .line 57
    iget-boolean v3, p0, Landroidx/appcompat/app/h0;->n:Z

    .line 58
    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/4 v1, 0x0

    .line 65
    :goto_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private o(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h0;->q:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/appcompat/app/h0;->r:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/h0;->y:Landroidx/core/view/u0;

    .line 15
    .line 16
    const/high16 v4, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v0, :cond_8

    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/appcompat/app/h0;->s:Z

    .line 22
    .line 23
    if-nez v0, :cond_e

    .line 24
    .line 25
    iput-boolean v2, p0, Landroidx/appcompat/app/h0;->s:Z

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/appcompat/app/h0;->t:Landroidx/appcompat/view/n;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/appcompat/view/n;->a()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Landroidx/appcompat/app/h0;->o:I

    .line 40
    .line 41
    iget-object v6, p0, Landroidx/appcompat/app/h0;->x:Landroidx/core/view/s0;

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    if-nez v0, :cond_6

    .line 45
    .line 46
    iget-boolean v0, p0, Landroidx/appcompat/app/h0;->u:Z

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    if-eqz p1, :cond_6

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 53
    .line 54
    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    neg-int v0, v0

    .line 64
    int-to-float v0, v0

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    filled-new-array {v3, v3}, [I

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v3, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 72
    .line 73
    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 74
    .line 75
    .line 76
    aget p1, p1, v2

    .line 77
    .line 78
    int-to-float p1, p1

    .line 79
    sub-float/2addr v0, p1

    .line 80
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Landroidx/appcompat/view/n;

    .line 86
    .line 87
    invoke-direct {p1}, Landroidx/appcompat/view/n;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 91
    .line 92
    invoke-static {v2}, Landroidx/core/view/f0;->a(Landroid/view/View;)Landroidx/core/view/r0;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, v7}, Landroidx/core/view/r0;->j(F)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Landroidx/core/view/r0;->h(Landroidx/core/view/u0;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/n;->c(Landroidx/core/view/r0;)V

    .line 103
    .line 104
    .line 105
    iget-boolean v1, p0, Landroidx/appcompat/app/h0;->p:Z

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    iget-object v1, p0, Landroidx/appcompat/app/h0;->g:Landroid/view/View;

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Landroidx/appcompat/app/h0;->g:Landroid/view/View;

    .line 117
    .line 118
    invoke-static {v0}, Landroidx/core/view/f0;->a(Landroid/view/View;)Landroidx/core/view/r0;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v7}, Landroidx/core/view/r0;->j(F)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/n;->c(Landroidx/core/view/r0;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    sget-object v0, Landroidx/appcompat/app/h0;->A:Landroid/view/animation/DecelerateInterpolator;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/n;->f(Landroid/view/animation/BaseInterpolator;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroidx/appcompat/view/n;->e()V

    .line 134
    .line 135
    .line 136
    check-cast v6, Landroidx/core/view/t0;

    .line 137
    .line 138
    invoke-virtual {p1, v6}, Landroidx/appcompat/view/n;->g(Landroidx/core/view/t0;)V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Landroidx/appcompat/app/h0;->t:Landroidx/appcompat/view/n;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroidx/appcompat/view/n;->h()V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 148
    .line 149
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 153
    .line 154
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 155
    .line 156
    .line 157
    iget-boolean p1, p0, Landroidx/appcompat/app/h0;->p:Z

    .line 158
    .line 159
    if-eqz p1, :cond_7

    .line 160
    .line 161
    iget-object p1, p0, Landroidx/appcompat/app/h0;->g:Landroid/view/View;

    .line 162
    .line 163
    if-eqz p1, :cond_7

    .line 164
    .line 165
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 166
    .line 167
    .line 168
    :cond_7
    check-cast v6, Landroidx/appcompat/app/B;

    .line 169
    .line 170
    invoke-virtual {v6, v5}, Landroidx/appcompat/app/B;->onAnimationEnd(Landroid/view/View;)V

    .line 171
    .line 172
    .line 173
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/app/h0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 174
    .line 175
    if-eqz p1, :cond_e

    .line 176
    .line 177
    invoke-static {p1}, Landroidx/core/view/f0;->I(Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_8
    iget-boolean v0, p0, Landroidx/appcompat/app/h0;->s:Z

    .line 183
    .line 184
    if-eqz v0, :cond_e

    .line 185
    .line 186
    iput-boolean v3, p0, Landroidx/appcompat/app/h0;->s:Z

    .line 187
    .line 188
    iget-object v0, p0, Landroidx/appcompat/app/h0;->t:Landroidx/appcompat/view/n;

    .line 189
    .line 190
    if-eqz v0, :cond_9

    .line 191
    .line 192
    invoke-virtual {v0}, Landroidx/appcompat/view/n;->a()V

    .line 193
    .line 194
    .line 195
    :cond_9
    iget v0, p0, Landroidx/appcompat/app/h0;->o:I

    .line 196
    .line 197
    iget-object v6, p0, Landroidx/appcompat/app/h0;->w:Landroidx/core/view/s0;

    .line 198
    .line 199
    if-nez v0, :cond_d

    .line 200
    .line 201
    iget-boolean v0, p0, Landroidx/appcompat/app/h0;->u:Z

    .line 202
    .line 203
    if-nez v0, :cond_a

    .line 204
    .line 205
    if-eqz p1, :cond_d

    .line 206
    .line 207
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 208
    .line 209
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 213
    .line 214
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 215
    .line 216
    .line 217
    new-instance v0, Landroidx/appcompat/view/n;

    .line 218
    .line 219
    invoke-direct {v0}, Landroidx/appcompat/view/n;-><init>()V

    .line 220
    .line 221
    .line 222
    iget-object v4, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 223
    .line 224
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    neg-int v4, v4

    .line 229
    int-to-float v4, v4

    .line 230
    if-eqz p1, :cond_b

    .line 231
    .line 232
    filled-new-array {v3, v3}, [I

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iget-object v3, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 237
    .line 238
    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 239
    .line 240
    .line 241
    aget p1, p1, v2

    .line 242
    .line 243
    int-to-float p1, p1

    .line 244
    sub-float/2addr v4, p1

    .line 245
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 246
    .line 247
    invoke-static {p1}, Landroidx/core/view/f0;->a(Landroid/view/View;)Landroidx/core/view/r0;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p1, v4}, Landroidx/core/view/r0;->j(F)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v1}, Landroidx/core/view/r0;->h(Landroidx/core/view/u0;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/n;->c(Landroidx/core/view/r0;)V

    .line 258
    .line 259
    .line 260
    iget-boolean p1, p0, Landroidx/appcompat/app/h0;->p:Z

    .line 261
    .line 262
    if-eqz p1, :cond_c

    .line 263
    .line 264
    iget-object p1, p0, Landroidx/appcompat/app/h0;->g:Landroid/view/View;

    .line 265
    .line 266
    if-eqz p1, :cond_c

    .line 267
    .line 268
    invoke-static {p1}, Landroidx/core/view/f0;->a(Landroid/view/View;)Landroidx/core/view/r0;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p1, v4}, Landroidx/core/view/r0;->j(F)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/n;->c(Landroidx/core/view/r0;)V

    .line 276
    .line 277
    .line 278
    :cond_c
    sget-object p1, Landroidx/appcompat/app/h0;->z:Landroid/view/animation/AccelerateInterpolator;

    .line 279
    .line 280
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/n;->f(Landroid/view/animation/BaseInterpolator;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Landroidx/appcompat/view/n;->e()V

    .line 284
    .line 285
    .line 286
    check-cast v6, Landroidx/core/view/t0;

    .line 287
    .line 288
    invoke-virtual {v0, v6}, Landroidx/appcompat/view/n;->g(Landroidx/core/view/t0;)V

    .line 289
    .line 290
    .line 291
    iput-object v0, p0, Landroidx/appcompat/app/h0;->t:Landroidx/appcompat/view/n;

    .line 292
    .line 293
    invoke-virtual {v0}, Landroidx/appcompat/view/n;->h()V

    .line 294
    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_d
    check-cast v6, Landroidx/appcompat/app/C;

    .line 298
    .line 299
    invoke-virtual {v6, v5}, Landroidx/appcompat/app/C;->onAnimationEnd(Landroid/view/View;)V

    .line 300
    .line 301
    .line 302
    :cond_e
    :goto_2
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x4

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 8
    .line 9
    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p0, Landroidx/appcompat/app/h0;->h:Z

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 17
    .line 18
    and-int/2addr p1, v0

    .line 19
    const/4 v0, -0x5

    .line 20
    and-int/2addr v0, v1

    .line 21
    or-int/2addr p1, v0

    .line 22
    invoke-interface {v2, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 8
    .line 9
    const/16 v2, -0x11

    .line 10
    .line 11
    and-int/2addr v0, v2

    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    or-int/2addr v0, v2

    .line 15
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/h0;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final enableContentAnimations(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/h0;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-boolean v1, p0, Landroidx/appcompat/app/h0;->r:Z

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Landroidx/appcompat/app/h0;->r:Z

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/appcompat/app/h0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h0;->o(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/app/h0;->r:Z

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iput-boolean v0, p0, Landroidx/appcompat/app/h0;->r:Z

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/appcompat/app/h0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h0;->o(Z)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 39
    .line 40
    invoke-static {v1}, Landroidx/core/view/f0;->y(Landroid/view/View;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x4

    .line 45
    const/16 v3, 0x8

    .line 46
    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    const-wide/16 v4, 0x64

    .line 50
    .line 51
    const-wide/16 v6, 0xc8

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 56
    .line 57
    invoke-interface {p1, v2, v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroidx/core/view/r0;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v1, p0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 62
    .line 63
    invoke-virtual {v1, v0, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/r0;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 69
    .line 70
    invoke-interface {p1, v0, v6, v7}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroidx/core/view/r0;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object p1, p0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 75
    .line 76
    invoke-virtual {p1, v3, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/r0;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :goto_1
    new-instance v1, Landroidx/appcompat/view/n;

    .line 81
    .line 82
    invoke-direct {v1}, Landroidx/appcompat/view/n;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/n;->d(Landroidx/core/view/r0;Landroidx/core/view/r0;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/appcompat/view/n;->h()V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    if-eqz p1, :cond_6

    .line 93
    .line 94
    iget-object p1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 95
    .line 96
    invoke-interface {p1, v2}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 106
    .line 107
    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Landroidx/appcompat/app/h0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 111
    .line 112
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    :goto_2
    return-void
.end method

.method public final h(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h0;->l:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/h0;->l:Z

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/h0;->m:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-ge v0, p1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/appcompat/app/h0;->m:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/appcompat/app/b;

    .line 24
    .line 25
    invoke-interface {v1}, Landroidx/appcompat/app/b;->a()V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public final hideForSystem()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h0;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/h0;->q:Z

    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h0;->o(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final i()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h0;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/appcompat/app/h0;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f04000a

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/appcompat/app/h0;->a:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroidx/appcompat/app/h0;->b:Landroid/content/Context;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/h0;->a:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/appcompat/app/h0;->b:Landroid/content/Context;

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/h0;->b:Landroid/content/Context;

    .line 42
    .line 43
    return-object v0
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/appcompat/view/a;->e(Landroid/content/Context;)Landroidx/appcompat/view/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/view/a;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h0;->m(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final l(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h0;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x4

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 12
    .line 13
    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, p0, Landroidx/appcompat/app/h0;->h:Z

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/appcompat/app/h0;->e:Landroidx/appcompat/widget/DecorToolbar;

    .line 21
    .line 22
    and-int/2addr p1, v0

    .line 23
    and-int/lit8 v0, v1, -0x5

    .line 24
    .line 25
    or-int/2addr p1, v0

    .line 26
    invoke-interface {v2, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/h0;->u:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/h0;->t:Landroidx/appcompat/view/n;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/view/n;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onContentScrollStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/h0;->t:Landroidx/appcompat/view/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/n;->a()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/appcompat/app/h0;->t:Landroidx/appcompat/view/n;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onContentScrollStopped()V
    .locals 0

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/app/h0;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public final showForSystem()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/h0;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/h0;->q:Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Landroidx/appcompat/app/h0;->o(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
