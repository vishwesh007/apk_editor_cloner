.class final Landroidx/appcompat/app/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/view/View;

.field C:Landroid/widget/ListAdapter;

.field D:I

.field private E:I

.field private F:I

.field G:I

.field H:I

.field I:I

.field private J:Z

.field K:Landroid/os/Handler;

.field private final L:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field final b:Landroidx/appcompat/app/n;

.field private final c:Landroid/view/Window;

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field f:Landroidx/appcompat/app/AlertController$RecycleListView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:Z

.field j:Landroid/widget/Button;

.field private k:Ljava/lang/CharSequence;

.field l:Landroid/os/Message;

.field private m:Landroid/graphics/drawable/Drawable;

.field n:Landroid/widget/Button;

.field private o:Ljava/lang/CharSequence;

.field p:Landroid/os/Message;

.field private q:Landroid/graphics/drawable/Drawable;

.field r:Landroid/widget/Button;

.field private s:Ljava/lang/CharSequence;

.field t:Landroid/os/Message;

.field private u:Landroid/graphics/drawable/Drawable;

.field v:Landroidx/core/widget/NestedScrollView;

.field private w:I

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/n;Landroid/view/Window;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/l;->i:Z

    .line 6
    .line 7
    iput v0, p0, Landroidx/appcompat/app/l;->w:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Landroidx/appcompat/app/l;->D:I

    .line 11
    .line 12
    new-instance v1, Landroidx/appcompat/app/e;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Landroidx/appcompat/app/e;-><init>(Landroidx/appcompat/app/l;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroidx/appcompat/app/l;->L:Landroid/view/View$OnClickListener;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/app/n;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/appcompat/app/l;->c:Landroid/view/Window;

    .line 24
    .line 25
    new-instance p3, Landroidx/appcompat/app/j;

    .line 26
    .line 27
    invoke-direct {p3, p2}, Landroidx/appcompat/app/j;-><init>(Landroid/content/DialogInterface;)V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Landroidx/appcompat/app/l;->K:Landroid/os/Handler;

    .line 31
    .line 32
    sget-object p3, Ld/a;->f:[I

    .line 33
    .line 34
    const v1, 0x7f040029

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    iput p3, p0, Landroidx/appcompat/app/l;->E:I

    .line 47
    .line 48
    const/4 p3, 0x2

    .line 49
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    iput p3, p0, Landroidx/appcompat/app/l;->F:I

    .line 54
    .line 55
    const/4 p3, 0x4

    .line 56
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    iput p3, p0, Landroidx/appcompat/app/l;->G:I

    .line 61
    .line 62
    const/4 p3, 0x5

    .line 63
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 64
    .line 65
    .line 66
    const/4 p3, 0x7

    .line 67
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    iput p3, p0, Landroidx/appcompat/app/l;->H:I

    .line 72
    .line 73
    const/4 p3, 0x3

    .line 74
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    iput p3, p0, Landroidx/appcompat/app/l;->I:I

    .line 79
    .line 80
    const/4 p3, 0x6

    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    iput-boolean p3, p0, Landroidx/appcompat/app/l;->J:Z

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    iput p3, p0, Landroidx/appcompat/app/l;->d:I

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Landroidx/appcompat/app/n;->b()Landroidx/appcompat/app/v;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/v;->z(I)Z

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :cond_2
    if-lez v0, :cond_3

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Landroidx/appcompat/app/l;->a(Landroid/view/View;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    return v2
.end method

.method private static b(Landroid/widget/Button;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 9
    .line 10
    const/high16 v1, 0x3f000000    # 0.5f

    .line 11
    .line 12
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static d(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x4

    .line 15
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    if-eqz p2, :cond_3

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v0, 0x4

    .line 29
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    return-void
.end method

.method private static e(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    instance-of p0, p1, Landroid/view/ViewStub;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroid/view/ViewStub;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_1
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    instance-of p1, p0, Landroid/view/ViewStub;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    check-cast p0, Landroid/view/ViewStub;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_3
    check-cast p0, Landroid/view/ViewGroup;

    .line 42
    .line 43
    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/appcompat/app/l;->F:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Landroidx/appcompat/app/l;->E:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v1, v0, Landroidx/appcompat/app/l;->E:I

    .line 11
    .line 12
    :goto_0
    iget-object v2, v0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/app/n;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/n;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0900fd

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Landroidx/appcompat/app/l;->c:Landroid/view/Window;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v3, 0x7f09014a

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const v5, 0x7f09006b

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const v7, 0x7f090059

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const v9, 0x7f09006d

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroid/view/ViewGroup;

    .line 55
    .line 56
    iget-object v9, v0, Landroidx/appcompat/app/l;->g:Landroid/view/View;

    .line 57
    .line 58
    const/4 v11, 0x0

    .line 59
    iget-object v12, v0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    .line 60
    .line 61
    if-eqz v9, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget v9, v0, Landroidx/appcompat/app/l;->h:I

    .line 65
    .line 66
    if-eqz v9, :cond_2

    .line 67
    .line 68
    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    iget v13, v0, Landroidx/appcompat/app/l;->h:I

    .line 73
    .line 74
    invoke-virtual {v9, v13, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v9, 0x0

    .line 80
    :goto_1
    if-eqz v9, :cond_3

    .line 81
    .line 82
    const/4 v14, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    const/4 v14, 0x0

    .line 85
    :goto_2
    if-eqz v14, :cond_4

    .line 86
    .line 87
    invoke-static {v9}, Landroidx/appcompat/app/l;->a(Landroid/view/View;)Z

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    if-nez v15, :cond_5

    .line 92
    .line 93
    :cond_4
    const/high16 v15, 0x20000

    .line 94
    .line 95
    invoke-virtual {v2, v15, v15}, Landroid/view/Window;->setFlags(II)V

    .line 96
    .line 97
    .line 98
    :cond_5
    const/4 v15, -0x1

    .line 99
    const/16 v13, 0x8

    .line 100
    .line 101
    if-eqz v14, :cond_7

    .line 102
    .line 103
    const v14, 0x7f09006c

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    check-cast v14, Landroid/widget/FrameLayout;

    .line 111
    .line 112
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 113
    .line 114
    invoke-direct {v10, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v14, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    iget-boolean v9, v0, Landroidx/appcompat/app/l;->i:Z

    .line 121
    .line 122
    if-eqz v9, :cond_6

    .line 123
    .line 124
    invoke-virtual {v14, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    .line 126
    .line 127
    :cond_6
    iget-object v9, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 128
    .line 129
    if-eqz v9, :cond_8

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 136
    .line 137
    const/4 v10, 0x0

    .line 138
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    :cond_8
    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-static {v3, v4}, Landroidx/appcompat/app/l;->e(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-static {v5, v6}, Landroidx/appcompat/app/l;->e(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v7, v8}, Landroidx/appcompat/app/l;->e(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    const v6, 0x7f090112

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    check-cast v6, Landroidx/core/widget/NestedScrollView;

    .line 176
    .line 177
    iput-object v6, v0, Landroidx/appcompat/app/l;->v:Landroidx/core/widget/NestedScrollView;

    .line 178
    .line 179
    invoke-virtual {v6, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 180
    .line 181
    .line 182
    iget-object v6, v0, Landroidx/appcompat/app/l;->v:Landroidx/core/widget/NestedScrollView;

    .line 183
    .line 184
    invoke-virtual {v6, v11}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 185
    .line 186
    .line 187
    const v6, 0x102000b

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    check-cast v6, Landroid/widget/TextView;

    .line 195
    .line 196
    iput-object v6, v0, Landroidx/appcompat/app/l;->A:Landroid/widget/TextView;

    .line 197
    .line 198
    if-nez v6, :cond_9

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_9
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-object v6, v0, Landroidx/appcompat/app/l;->v:Landroidx/core/widget/NestedScrollView;

    .line 205
    .line 206
    iget-object v7, v0, Landroidx/appcompat/app/l;->A:Landroid/widget/TextView;

    .line 207
    .line 208
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    iget-object v6, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 212
    .line 213
    if-eqz v6, :cond_a

    .line 214
    .line 215
    iget-object v6, v0, Landroidx/appcompat/app/l;->v:Landroidx/core/widget/NestedScrollView;

    .line 216
    .line 217
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Landroid/view/ViewGroup;

    .line 222
    .line 223
    iget-object v7, v0, Landroidx/appcompat/app/l;->v:Landroidx/core/widget/NestedScrollView;

    .line 224
    .line 225
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 230
    .line 231
    .line 232
    iget-object v8, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 233
    .line 234
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 235
    .line 236
    invoke-direct {v9, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_a
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    :goto_4
    const v6, 0x1020019

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    check-cast v6, Landroid/widget/Button;

    .line 254
    .line 255
    iput-object v6, v0, Landroidx/appcompat/app/l;->j:Landroid/widget/Button;

    .line 256
    .line 257
    iget-object v7, v0, Landroidx/appcompat/app/l;->L:Landroid/view/View$OnClickListener;

    .line 258
    .line 259
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    iget-object v6, v0, Landroidx/appcompat/app/l;->k:Ljava/lang/CharSequence;

    .line 263
    .line 264
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    iget v8, v0, Landroidx/appcompat/app/l;->d:I

    .line 269
    .line 270
    if-eqz v6, :cond_b

    .line 271
    .line 272
    iget-object v6, v0, Landroidx/appcompat/app/l;->m:Landroid/graphics/drawable/Drawable;

    .line 273
    .line 274
    if-nez v6, :cond_b

    .line 275
    .line 276
    iget-object v6, v0, Landroidx/appcompat/app/l;->j:Landroid/widget/Button;

    .line 277
    .line 278
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    const/4 v6, 0x0

    .line 282
    goto :goto_5

    .line 283
    :cond_b
    iget-object v6, v0, Landroidx/appcompat/app/l;->j:Landroid/widget/Button;

    .line 284
    .line 285
    iget-object v9, v0, Landroidx/appcompat/app/l;->k:Ljava/lang/CharSequence;

    .line 286
    .line 287
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    iget-object v6, v0, Landroidx/appcompat/app/l;->m:Landroid/graphics/drawable/Drawable;

    .line 291
    .line 292
    if-eqz v6, :cond_c

    .line 293
    .line 294
    invoke-virtual {v6, v11, v11, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    .line 296
    .line 297
    iget-object v6, v0, Landroidx/appcompat/app/l;->j:Landroid/widget/Button;

    .line 298
    .line 299
    iget-object v9, v0, Landroidx/appcompat/app/l;->m:Landroid/graphics/drawable/Drawable;

    .line 300
    .line 301
    const/4 v10, 0x0

    .line 302
    invoke-virtual {v6, v9, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 303
    .line 304
    .line 305
    :cond_c
    iget-object v6, v0, Landroidx/appcompat/app/l;->j:Landroid/widget/Button;

    .line 306
    .line 307
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    const/4 v6, 0x1

    .line 311
    :goto_5
    const v9, 0x102001a

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    check-cast v9, Landroid/widget/Button;

    .line 319
    .line 320
    iput-object v9, v0, Landroidx/appcompat/app/l;->n:Landroid/widget/Button;

    .line 321
    .line 322
    invoke-virtual {v9, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    .line 324
    .line 325
    iget-object v9, v0, Landroidx/appcompat/app/l;->o:Ljava/lang/CharSequence;

    .line 326
    .line 327
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    if-eqz v9, :cond_d

    .line 332
    .line 333
    iget-object v9, v0, Landroidx/appcompat/app/l;->q:Landroid/graphics/drawable/Drawable;

    .line 334
    .line 335
    if-nez v9, :cond_d

    .line 336
    .line 337
    iget-object v9, v0, Landroidx/appcompat/app/l;->n:Landroid/widget/Button;

    .line 338
    .line 339
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_d
    iget-object v9, v0, Landroidx/appcompat/app/l;->n:Landroid/widget/Button;

    .line 344
    .line 345
    iget-object v10, v0, Landroidx/appcompat/app/l;->o:Ljava/lang/CharSequence;

    .line 346
    .line 347
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    iget-object v9, v0, Landroidx/appcompat/app/l;->q:Landroid/graphics/drawable/Drawable;

    .line 351
    .line 352
    if-eqz v9, :cond_e

    .line 353
    .line 354
    invoke-virtual {v9, v11, v11, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 355
    .line 356
    .line 357
    iget-object v9, v0, Landroidx/appcompat/app/l;->n:Landroid/widget/Button;

    .line 358
    .line 359
    iget-object v10, v0, Landroidx/appcompat/app/l;->q:Landroid/graphics/drawable/Drawable;

    .line 360
    .line 361
    const/4 v14, 0x0

    .line 362
    invoke-virtual {v9, v10, v14, v14, v14}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 363
    .line 364
    .line 365
    :cond_e
    iget-object v9, v0, Landroidx/appcompat/app/l;->n:Landroid/widget/Button;

    .line 366
    .line 367
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    or-int/lit8 v6, v6, 0x2

    .line 371
    .line 372
    :goto_6
    const v9, 0x102001b

    .line 373
    .line 374
    .line 375
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    check-cast v9, Landroid/widget/Button;

    .line 380
    .line 381
    iput-object v9, v0, Landroidx/appcompat/app/l;->r:Landroid/widget/Button;

    .line 382
    .line 383
    invoke-virtual {v9, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    .line 385
    .line 386
    iget-object v7, v0, Landroidx/appcompat/app/l;->s:Ljava/lang/CharSequence;

    .line 387
    .line 388
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result v7

    .line 392
    if-eqz v7, :cond_f

    .line 393
    .line 394
    iget-object v7, v0, Landroidx/appcompat/app/l;->u:Landroid/graphics/drawable/Drawable;

    .line 395
    .line 396
    if-nez v7, :cond_f

    .line 397
    .line 398
    iget-object v7, v0, Landroidx/appcompat/app/l;->r:Landroid/widget/Button;

    .line 399
    .line 400
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .line 402
    .line 403
    const/4 v10, 0x0

    .line 404
    goto :goto_8

    .line 405
    :cond_f
    iget-object v7, v0, Landroidx/appcompat/app/l;->r:Landroid/widget/Button;

    .line 406
    .line 407
    iget-object v9, v0, Landroidx/appcompat/app/l;->s:Ljava/lang/CharSequence;

    .line 408
    .line 409
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    iget-object v7, v0, Landroidx/appcompat/app/l;->u:Landroid/graphics/drawable/Drawable;

    .line 413
    .line 414
    if-eqz v7, :cond_10

    .line 415
    .line 416
    invoke-virtual {v7, v11, v11, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 417
    .line 418
    .line 419
    iget-object v7, v0, Landroidx/appcompat/app/l;->r:Landroid/widget/Button;

    .line 420
    .line 421
    iget-object v8, v0, Landroidx/appcompat/app/l;->u:Landroid/graphics/drawable/Drawable;

    .line 422
    .line 423
    const/4 v10, 0x0

    .line 424
    invoke-virtual {v7, v8, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 425
    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_10
    const/4 v10, 0x0

    .line 429
    :goto_7
    iget-object v7, v0, Landroidx/appcompat/app/l;->r:Landroid/widget/Button;

    .line 430
    .line 431
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    or-int/lit8 v6, v6, 0x4

    .line 435
    .line 436
    :goto_8
    new-instance v7, Landroid/util/TypedValue;

    .line 437
    .line 438
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 442
    .line 443
    .line 444
    move-result-object v8

    .line 445
    const v9, 0x7f040028

    .line 446
    .line 447
    .line 448
    const/4 v12, 0x1

    .line 449
    invoke-virtual {v8, v9, v7, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 450
    .line 451
    .line 452
    iget v7, v7, Landroid/util/TypedValue;->data:I

    .line 453
    .line 454
    if-eqz v7, :cond_11

    .line 455
    .line 456
    const/16 v16, 0x1

    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_11
    const/16 v16, 0x0

    .line 460
    .line 461
    :goto_9
    const/4 v7, 0x2

    .line 462
    if-eqz v16, :cond_14

    .line 463
    .line 464
    if-ne v6, v12, :cond_12

    .line 465
    .line 466
    iget-object v8, v0, Landroidx/appcompat/app/l;->j:Landroid/widget/Button;

    .line 467
    .line 468
    invoke-static {v8}, Landroidx/appcompat/app/l;->b(Landroid/widget/Button;)V

    .line 469
    .line 470
    .line 471
    goto :goto_a

    .line 472
    :cond_12
    if-ne v6, v7, :cond_13

    .line 473
    .line 474
    iget-object v8, v0, Landroidx/appcompat/app/l;->n:Landroid/widget/Button;

    .line 475
    .line 476
    invoke-static {v8}, Landroidx/appcompat/app/l;->b(Landroid/widget/Button;)V

    .line 477
    .line 478
    .line 479
    goto :goto_a

    .line 480
    :cond_13
    const/4 v8, 0x4

    .line 481
    if-ne v6, v8, :cond_14

    .line 482
    .line 483
    iget-object v8, v0, Landroidx/appcompat/app/l;->r:Landroid/widget/Button;

    .line 484
    .line 485
    invoke-static {v8}, Landroidx/appcompat/app/l;->b(Landroid/widget/Button;)V

    .line 486
    .line 487
    .line 488
    :cond_14
    :goto_a
    if-eqz v6, :cond_15

    .line 489
    .line 490
    const/4 v6, 0x1

    .line 491
    goto :goto_b

    .line 492
    :cond_15
    const/4 v6, 0x0

    .line 493
    :goto_b
    if-nez v6, :cond_16

    .line 494
    .line 495
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 496
    .line 497
    .line 498
    :cond_16
    iget-object v6, v0, Landroidx/appcompat/app/l;->B:Landroid/view/View;

    .line 499
    .line 500
    const v8, 0x7f090148

    .line 501
    .line 502
    .line 503
    if-eqz v6, :cond_17

    .line 504
    .line 505
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 506
    .line 507
    const/4 v9, -0x2

    .line 508
    invoke-direct {v6, v15, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 509
    .line 510
    .line 511
    iget-object v9, v0, Landroidx/appcompat/app/l;->B:Landroid/view/View;

    .line 512
    .line 513
    invoke-virtual {v3, v9, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 521
    .line 522
    .line 523
    goto :goto_c

    .line 524
    :cond_17
    const v6, 0x1020006

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    check-cast v6, Landroid/widget/ImageView;

    .line 532
    .line 533
    iput-object v6, v0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 534
    .line 535
    iget-object v6, v0, Landroidx/appcompat/app/l;->e:Ljava/lang/CharSequence;

    .line 536
    .line 537
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 538
    .line 539
    .line 540
    move-result v6

    .line 541
    const/4 v9, 0x1

    .line 542
    xor-int/2addr v6, v9

    .line 543
    if-eqz v6, :cond_1a

    .line 544
    .line 545
    iget-boolean v6, v0, Landroidx/appcompat/app/l;->J:Z

    .line 546
    .line 547
    if-eqz v6, :cond_1a

    .line 548
    .line 549
    const v6, 0x7f09003d

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v6

    .line 556
    check-cast v6, Landroid/widget/TextView;

    .line 557
    .line 558
    iput-object v6, v0, Landroidx/appcompat/app/l;->z:Landroid/widget/TextView;

    .line 559
    .line 560
    iget-object v8, v0, Landroidx/appcompat/app/l;->e:Ljava/lang/CharSequence;

    .line 561
    .line 562
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .line 564
    .line 565
    iget v6, v0, Landroidx/appcompat/app/l;->w:I

    .line 566
    .line 567
    if-eqz v6, :cond_18

    .line 568
    .line 569
    iget-object v8, v0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 570
    .line 571
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    .line 573
    .line 574
    goto :goto_c

    .line 575
    :cond_18
    iget-object v6, v0, Landroidx/appcompat/app/l;->x:Landroid/graphics/drawable/Drawable;

    .line 576
    .line 577
    if-eqz v6, :cond_19

    .line 578
    .line 579
    iget-object v8, v0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 580
    .line 581
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    .line 583
    .line 584
    goto :goto_c

    .line 585
    :cond_19
    iget-object v6, v0, Landroidx/appcompat/app/l;->z:Landroid/widget/TextView;

    .line 586
    .line 587
    iget-object v8, v0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 588
    .line 589
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    iget-object v9, v0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 594
    .line 595
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    .line 596
    .line 597
    .line 598
    move-result v9

    .line 599
    iget-object v12, v0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 600
    .line 601
    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    .line 602
    .line 603
    .line 604
    move-result v12

    .line 605
    iget-object v14, v0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 606
    .line 607
    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    .line 608
    .line 609
    .line 610
    move-result v14

    .line 611
    invoke-virtual {v6, v8, v9, v12, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 612
    .line 613
    .line 614
    iget-object v6, v0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 615
    .line 616
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 617
    .line 618
    .line 619
    goto :goto_c

    .line 620
    :cond_1a
    invoke-virtual {v2, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 625
    .line 626
    .line 627
    iget-object v6, v0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 628
    .line 629
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 633
    .line 634
    .line 635
    :goto_c
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    if-eq v1, v13, :cond_1b

    .line 640
    .line 641
    const/4 v12, 0x1

    .line 642
    goto :goto_d

    .line 643
    :cond_1b
    const/4 v12, 0x0

    .line 644
    :goto_d
    if-eqz v3, :cond_1c

    .line 645
    .line 646
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-eq v1, v13, :cond_1c

    .line 651
    .line 652
    const/4 v1, 0x1

    .line 653
    goto :goto_e

    .line 654
    :cond_1c
    const/4 v1, 0x0

    .line 655
    :goto_e
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    if-eq v5, v13, :cond_1d

    .line 660
    .line 661
    const/4 v5, 0x1

    .line 662
    goto :goto_f

    .line 663
    :cond_1d
    const/4 v5, 0x0

    .line 664
    :goto_f
    if-nez v5, :cond_1e

    .line 665
    .line 666
    const v6, 0x7f090143

    .line 667
    .line 668
    .line 669
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 670
    .line 671
    .line 672
    move-result-object v6

    .line 673
    if-eqz v6, :cond_1e

    .line 674
    .line 675
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 676
    .line 677
    .line 678
    :cond_1e
    if-eqz v1, :cond_21

    .line 679
    .line 680
    iget-object v6, v0, Landroidx/appcompat/app/l;->v:Landroidx/core/widget/NestedScrollView;

    .line 681
    .line 682
    if-eqz v6, :cond_1f

    .line 683
    .line 684
    const/4 v8, 0x1

    .line 685
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 686
    .line 687
    .line 688
    :cond_1f
    iget-object v6, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 689
    .line 690
    if-eqz v6, :cond_20

    .line 691
    .line 692
    const v6, 0x7f090147

    .line 693
    .line 694
    .line 695
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 696
    .line 697
    .line 698
    move-result-object v3

    .line 699
    goto :goto_10

    .line 700
    :cond_20
    move-object v3, v10

    .line 701
    :goto_10
    if-eqz v3, :cond_22

    .line 702
    .line 703
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 704
    .line 705
    .line 706
    goto :goto_11

    .line 707
    :cond_21
    const v3, 0x7f090144

    .line 708
    .line 709
    .line 710
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    if-eqz v3, :cond_22

    .line 715
    .line 716
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 717
    .line 718
    .line 719
    :cond_22
    :goto_11
    iget-object v3, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 720
    .line 721
    instance-of v6, v3, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 722
    .line 723
    if-eqz v6, :cond_23

    .line 724
    .line 725
    invoke-virtual {v3, v1, v5}, Landroidx/appcompat/app/AlertController$RecycleListView;->a(ZZ)V

    .line 726
    .line 727
    .line 728
    :cond_23
    if-nez v12, :cond_2d

    .line 729
    .line 730
    iget-object v3, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 731
    .line 732
    if-eqz v3, :cond_24

    .line 733
    .line 734
    goto :goto_12

    .line 735
    :cond_24
    iget-object v3, v0, Landroidx/appcompat/app/l;->v:Landroidx/core/widget/NestedScrollView;

    .line 736
    .line 737
    :goto_12
    if-eqz v3, :cond_2d

    .line 738
    .line 739
    if-eqz v5, :cond_25

    .line 740
    .line 741
    const/4 v11, 0x2

    .line 742
    :cond_25
    or-int/2addr v1, v11

    .line 743
    const v5, 0x7f090111

    .line 744
    .line 745
    .line 746
    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    const v6, 0x7f090110

    .line 751
    .line 752
    .line 753
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 758
    .line 759
    const/16 v8, 0x17

    .line 760
    .line 761
    if-lt v6, v8, :cond_27

    .line 762
    .line 763
    invoke-static {v3, v1}, Landroidx/core/view/f0;->W(Landroid/view/ViewGroup;I)V

    .line 764
    .line 765
    .line 766
    if-eqz v5, :cond_26

    .line 767
    .line 768
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 769
    .line 770
    .line 771
    :cond_26
    if-eqz v2, :cond_2d

    .line 772
    .line 773
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 774
    .line 775
    .line 776
    goto :goto_14

    .line 777
    :cond_27
    if-eqz v5, :cond_28

    .line 778
    .line 779
    and-int/lit8 v3, v1, 0x1

    .line 780
    .line 781
    if-nez v3, :cond_28

    .line 782
    .line 783
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 784
    .line 785
    .line 786
    move-object v5, v10

    .line 787
    :cond_28
    if-eqz v2, :cond_29

    .line 788
    .line 789
    and-int/2addr v1, v7

    .line 790
    if-nez v1, :cond_29

    .line 791
    .line 792
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 793
    .line 794
    .line 795
    goto :goto_13

    .line 796
    :cond_29
    move-object v10, v2

    .line 797
    :goto_13
    if-nez v5, :cond_2a

    .line 798
    .line 799
    if-eqz v10, :cond_2d

    .line 800
    .line 801
    :cond_2a
    iget-object v1, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 802
    .line 803
    if-eqz v1, :cond_2b

    .line 804
    .line 805
    new-instance v2, Landroidx/appcompat/app/f;

    .line 806
    .line 807
    invoke-direct {v2, v5, v10}, Landroidx/appcompat/app/f;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 811
    .line 812
    .line 813
    iget-object v1, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 814
    .line 815
    new-instance v2, Landroidx/appcompat/app/g;

    .line 816
    .line 817
    invoke-direct {v2, v0, v5, v10}, Landroidx/appcompat/app/g;-><init>(Landroidx/appcompat/app/l;Landroid/view/View;Landroid/view/View;)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 821
    .line 822
    .line 823
    goto :goto_14

    .line 824
    :cond_2b
    if-eqz v5, :cond_2c

    .line 825
    .line 826
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 827
    .line 828
    .line 829
    :cond_2c
    if-eqz v10, :cond_2d

    .line 830
    .line 831
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 832
    .line 833
    .line 834
    :cond_2d
    :goto_14
    iget-object v1, v0, Landroidx/appcompat/app/l;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 835
    .line 836
    if-eqz v1, :cond_2e

    .line 837
    .line 838
    iget-object v2, v0, Landroidx/appcompat/app/l;->C:Landroid/widget/ListAdapter;

    .line 839
    .line 840
    if-eqz v2, :cond_2e

    .line 841
    .line 842
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 843
    .line 844
    .line 845
    iget v2, v0, Landroidx/appcompat/app/l;->D:I

    .line 846
    .line 847
    if-le v2, v15, :cond_2e

    .line 848
    .line 849
    const/4 v3, 0x1

    .line 850
    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 854
    .line 855
    .line 856
    :cond_2e
    return-void
.end method

.method public final f(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/l;->K:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p3, v0

    .line 12
    :goto_0
    const/4 v1, -0x3

    .line 13
    if-eq p1, v1, :cond_3

    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    if-eq p1, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/appcompat/app/l;->k:Ljava/lang/CharSequence;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/appcompat/app/l;->l:Landroid/os/Message;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/app/l;->m:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p2, "Button does not exist"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_2
    iput-object p2, p0, Landroidx/appcompat/app/l;->o:Ljava/lang/CharSequence;

    .line 37
    .line 38
    iput-object p3, p0, Landroidx/appcompat/app/l;->p:Landroid/os/Message;

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/appcompat/app/l;->q:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    iput-object p2, p0, Landroidx/appcompat/app/l;->s:Ljava/lang/CharSequence;

    .line 44
    .line 45
    iput-object p3, p0, Landroidx/appcompat/app/l;->t:Landroid/os/Message;

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/appcompat/app/l;->u:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    :goto_1
    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/l;->B:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/l;->x:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/appcompat/app/l;->w:I

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/appcompat/app/l;->y:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 p1, 0x8

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/l;->e:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/l;->z:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/l;->g:Landroid/view/View;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroidx/appcompat/app/l;->h:I

    .line 5
    .line 6
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->i:Z

    .line 7
    .line 8
    return-void
.end method
