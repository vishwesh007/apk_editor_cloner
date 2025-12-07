.class final Landroidx/appcompat/view/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Ljava/lang/CharSequence;

.field private C:Landroid/content/res/ColorStateList;

.field private D:Landroid/graphics/PorterDuff$Mode;

.field final synthetic E:Landroidx/appcompat/view/l;

.field private a:Landroid/view/Menu;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:I

.field private n:C

.field private o:I

.field private p:C

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field z:Landroidx/core/view/f;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/l;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/k;->E:Landroidx/appcompat/view/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/appcompat/view/k;->C:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/appcompat/view/k;->D:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/appcompat/view/k;->a:Landroid/view/Menu;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/view/k;->g()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private d(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/k;->E:Landroidx/appcompat/view/l;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/l;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception p2

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "Cannot instantiate class: "

    .line 31
    .line 32
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p3, "SupportMenuInflater"

    .line 43
    .line 44
    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method private h(Landroid/view/MenuItem;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/k;->s:Z

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Landroidx/appcompat/view/k;->t:Z

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Landroidx/appcompat/view/k;->u:Z

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Landroidx/appcompat/view/k;->r:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt v1, v3, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Landroidx/appcompat/view/k;->l:Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Landroidx/appcompat/view/k;->m:I

    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    iget v0, p0, Landroidx/appcompat/view/k;->v:I

    .line 44
    .line 45
    if-ltz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/k;->y:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/appcompat/view/k;->E:Landroidx/appcompat/view/l;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget-object v0, v1, Landroidx/appcompat/view/l;->c:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Landroidx/appcompat/view/j;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/appcompat/view/l;->b()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-object v5, p0, Landroidx/appcompat/view/k;->y:Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {v0, v4, v5}, Landroidx/appcompat/view/j;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_3
    :goto_1
    iget v0, p0, Landroidx/appcompat/view/k;->r:I

    .line 88
    .line 89
    const/4 v4, 0x2

    .line 90
    if-lt v0, v4, :cond_5

    .line 91
    .line 92
    instance-of v0, p1, Landroidx/appcompat/view/menu/t;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    move-object v0, p1

    .line 97
    check-cast v0, Landroidx/appcompat/view/menu/t;

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/t;->q(Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    instance-of v0, p1, Landroidx/appcompat/view/menu/z;

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    move-object v0, p1

    .line 108
    check-cast v0, Landroidx/appcompat/view/menu/z;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z;->h()V

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/k;->x:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    sget-object v2, Landroidx/appcompat/view/l;->e:[Ljava/lang/Class;

    .line 118
    .line 119
    iget-object v1, v1, Landroidx/appcompat/view/l;->a:[Ljava/lang/Object;

    .line 120
    .line 121
    invoke-direct {p0, v0, v2, v1}, Landroidx/appcompat/view/k;->d(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/view/View;

    .line 126
    .line 127
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 128
    .line 129
    .line 130
    const/4 v2, 0x1

    .line 131
    :cond_6
    iget v0, p0, Landroidx/appcompat/view/k;->w:I

    .line 132
    .line 133
    if-lez v0, :cond_8

    .line 134
    .line 135
    if-nez v2, :cond_7

    .line 136
    .line 137
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    const-string v0, "SupportMenuInflater"

    .line 142
    .line 143
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 144
    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :cond_8
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/k;->z:Landroidx/core/view/f;

    .line 149
    .line 150
    if-eqz v0, :cond_a

    .line 151
    .line 152
    instance-of v1, p1, Lj/b;

    .line 153
    .line 154
    if-eqz v1, :cond_9

    .line 155
    .line 156
    move-object v1, p1

    .line 157
    check-cast v1, Lj/b;

    .line 158
    .line 159
    invoke-interface {v1, v0}, Lj/b;->a(Landroidx/core/view/f;)Lj/b;

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_9
    const-string v0, "MenuItemCompat"

    .line 164
    .line 165
    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 166
    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_a
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/view/k;->A:Ljava/lang/CharSequence;

    .line 171
    .line 172
    invoke-static {p1, v0}, Landroidx/core/view/s;->g(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Landroidx/appcompat/view/k;->B:Ljava/lang/CharSequence;

    .line 176
    .line 177
    invoke-static {p1, v0}, Landroidx/core/view/s;->k(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    iget-char v0, p0, Landroidx/appcompat/view/k;->n:C

    .line 181
    .line 182
    iget v1, p0, Landroidx/appcompat/view/k;->o:I

    .line 183
    .line 184
    invoke-static {p1, v0, v1}, Landroidx/core/view/s;->f(Landroid/view/MenuItem;CI)V

    .line 185
    .line 186
    .line 187
    iget-char v0, p0, Landroidx/appcompat/view/k;->p:C

    .line 188
    .line 189
    iget v1, p0, Landroidx/appcompat/view/k;->q:I

    .line 190
    .line 191
    invoke-static {p1, v0, v1}, Landroidx/core/view/s;->j(Landroid/view/MenuItem;CI)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Landroidx/appcompat/view/k;->D:Landroid/graphics/PorterDuff$Mode;

    .line 195
    .line 196
    if-eqz v0, :cond_b

    .line 197
    .line 198
    invoke-static {p1, v0}, Landroidx/core/view/s;->i(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 199
    .line 200
    .line 201
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/k;->C:Landroid/content/res/ColorStateList;

    .line 202
    .line 203
    if-eqz v0, :cond_c

    .line 204
    .line 205
    invoke-static {p1, v0}, Landroidx/core/view/s;->h(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 206
    .line 207
    .line 208
    :cond_c
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/k;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/k;->a:Landroid/view/Menu;

    .line 5
    .line 6
    iget v1, p0, Landroidx/appcompat/view/k;->b:I

    .line 7
    .line 8
    iget v2, p0, Landroidx/appcompat/view/k;->i:I

    .line 9
    .line 10
    iget v3, p0, Landroidx/appcompat/view/k;->j:I

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/appcompat/view/k;->k:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Landroidx/appcompat/view/k;->h(Landroid/view/MenuItem;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final b()Landroid/view/SubMenu;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/k;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/k;->a:Landroid/view/Menu;

    .line 5
    .line 6
    iget v1, p0, Landroidx/appcompat/view/k;->b:I

    .line 7
    .line 8
    iget v2, p0, Landroidx/appcompat/view/k;->i:I

    .line 9
    .line 10
    iget v3, p0, Landroidx/appcompat/view/k;->j:I

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/appcompat/view/k;->k:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, v1}, Landroidx/appcompat/view/k;->h(Landroid/view/MenuItem;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/k;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/k;->E:Landroidx/appcompat/view/l;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/view/l;->c:Landroid/content/Context;

    .line 4
    .line 5
    sget-object v1, Ld/a;->q:[I

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iput v2, p0, Landroidx/appcompat/view/k;->b:I

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, p0, Landroidx/appcompat/view/k;->c:I

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput v2, p0, Landroidx/appcompat/view/k;->d:I

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iput v2, p0, Landroidx/appcompat/view/k;->e:I

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput-boolean v2, p0, Landroidx/appcompat/view/k;->f:Z

    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput-boolean v0, p0, Landroidx/appcompat/view/k;->g:Z

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final f(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/k;->E:Landroidx/appcompat/view/l;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/view/l;->c:Landroid/content/Context;

    .line 4
    .line 5
    sget-object v2, Ld/a;->r:[I

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, p0, Landroidx/appcompat/view/k;->i:I

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    iget v3, p0, Landroidx/appcompat/view/k;->c:I

    .line 21
    .line 22
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x6

    .line 27
    iget v4, p0, Landroidx/appcompat/view/k;->d:I

    .line 28
    .line 29
    invoke-virtual {p1, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/high16 v4, -0x10000

    .line 34
    .line 35
    and-int/2addr v1, v4

    .line 36
    const v4, 0xffff

    .line 37
    .line 38
    .line 39
    and-int/2addr v3, v4

    .line 40
    or-int/2addr v1, v3

    .line 41
    iput v1, p0, Landroidx/appcompat/view/k;->j:I

    .line 42
    .line 43
    const/4 v1, 0x7

    .line 44
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Landroidx/appcompat/view/k;->k:Ljava/lang/CharSequence;

    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Landroidx/appcompat/view/k;->l:Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-virtual {p1, v2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, p0, Landroidx/appcompat/view/k;->m:I

    .line 63
    .line 64
    const/16 v1, 0x9

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_0

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    :goto_0
    iput-char v1, p0, Landroidx/appcompat/view/k;->n:C

    .line 79
    .line 80
    const/16 v1, 0x10

    .line 81
    .line 82
    const/16 v3, 0x1000

    .line 83
    .line 84
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iput v1, p0, Landroidx/appcompat/view/k;->o:I

    .line 89
    .line 90
    const/16 v1, 0xa

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-nez v1, :cond_1

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :goto_1
    iput-char v1, p0, Landroidx/appcompat/view/k;->p:C

    .line 105
    .line 106
    const/16 v1, 0x14

    .line 107
    .line 108
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iput v1, p0, Landroidx/appcompat/view/k;->q:I

    .line 113
    .line 114
    const/16 v1, 0xb

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_2

    .line 121
    .line 122
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iput v1, p0, Landroidx/appcompat/view/k;->r:I

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_2
    iget v1, p0, Landroidx/appcompat/view/k;->e:I

    .line 130
    .line 131
    iput v1, p0, Landroidx/appcompat/view/k;->r:I

    .line 132
    .line 133
    :goto_2
    const/4 v1, 0x3

    .line 134
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput-boolean v1, p0, Landroidx/appcompat/view/k;->s:Z

    .line 139
    .line 140
    const/4 v1, 0x4

    .line 141
    iget-boolean v3, p0, Landroidx/appcompat/view/k;->f:Z

    .line 142
    .line 143
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iput-boolean v1, p0, Landroidx/appcompat/view/k;->t:Z

    .line 148
    .line 149
    iget-boolean v1, p0, Landroidx/appcompat/view/k;->g:Z

    .line 150
    .line 151
    const/4 v3, 0x1

    .line 152
    invoke-virtual {p1, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    iput-boolean v1, p0, Landroidx/appcompat/view/k;->u:Z

    .line 157
    .line 158
    const/16 v1, 0x15

    .line 159
    .line 160
    const/4 v4, -0x1

    .line 161
    invoke-virtual {p1, v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    iput v1, p0, Landroidx/appcompat/view/k;->v:I

    .line 166
    .line 167
    const/16 v1, 0xc

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iput-object v1, p0, Landroidx/appcompat/view/k;->y:Ljava/lang/String;

    .line 174
    .line 175
    const/16 v1, 0xd

    .line 176
    .line 177
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    iput v1, p0, Landroidx/appcompat/view/k;->w:I

    .line 182
    .line 183
    const/16 v1, 0xf

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iput-object v1, p0, Landroidx/appcompat/view/k;->x:Ljava/lang/String;

    .line 190
    .line 191
    const/16 v1, 0xe

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    if-eqz v1, :cond_3

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_3
    const/4 v3, 0x0

    .line 201
    :goto_3
    const/4 v5, 0x0

    .line 202
    if-eqz v3, :cond_4

    .line 203
    .line 204
    iget v6, p0, Landroidx/appcompat/view/k;->w:I

    .line 205
    .line 206
    if-nez v6, :cond_4

    .line 207
    .line 208
    iget-object v6, p0, Landroidx/appcompat/view/k;->x:Ljava/lang/String;

    .line 209
    .line 210
    if-nez v6, :cond_4

    .line 211
    .line 212
    sget-object v3, Landroidx/appcompat/view/l;->f:[Ljava/lang/Class;

    .line 213
    .line 214
    iget-object v0, v0, Landroidx/appcompat/view/l;->b:[Ljava/lang/Object;

    .line 215
    .line 216
    invoke-direct {p0, v1, v3, v0}, Landroidx/appcompat/view/k;->d(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Landroidx/core/view/f;

    .line 221
    .line 222
    iput-object v0, p0, Landroidx/appcompat/view/k;->z:Landroidx/core/view/f;

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_4
    if-eqz v3, :cond_5

    .line 226
    .line 227
    const-string v0, "SupportMenuInflater"

    .line 228
    .line 229
    const-string v1, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 230
    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    :cond_5
    iput-object v5, p0, Landroidx/appcompat/view/k;->z:Landroidx/core/view/f;

    .line 235
    .line 236
    :goto_4
    const/16 v0, 0x11

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iput-object v0, p0, Landroidx/appcompat/view/k;->A:Ljava/lang/CharSequence;

    .line 243
    .line 244
    const/16 v0, 0x16

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iput-object v0, p0, Landroidx/appcompat/view/k;->B:Ljava/lang/CharSequence;

    .line 251
    .line 252
    const/16 v0, 0x13

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_6

    .line 259
    .line 260
    invoke-virtual {p1, v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    iget-object v1, p0, Landroidx/appcompat/view/k;->D:Landroid/graphics/PorterDuff$Mode;

    .line 265
    .line 266
    invoke-static {v0, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iput-object v0, p0, Landroidx/appcompat/view/k;->D:Landroid/graphics/PorterDuff$Mode;

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_6
    iput-object v5, p0, Landroidx/appcompat/view/k;->D:Landroid/graphics/PorterDuff$Mode;

    .line 274
    .line 275
    :goto_5
    const/16 v0, 0x12

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_7

    .line 282
    .line 283
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iput-object v0, p0, Landroidx/appcompat/view/k;->C:Landroid/content/res/ColorStateList;

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_7
    iput-object v5, p0, Landroidx/appcompat/view/k;->C:Landroid/content/res/ColorStateList;

    .line 291
    .line 292
    :goto_6
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 293
    .line 294
    .line 295
    iput-boolean v2, p0, Landroidx/appcompat/view/k;->h:Z

    .line 296
    .line 297
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/view/k;->b:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/appcompat/view/k;->c:I

    .line 5
    .line 6
    iput v0, p0, Landroidx/appcompat/view/k;->d:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/appcompat/view/k;->e:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Landroidx/appcompat/view/k;->f:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/appcompat/view/k;->g:Z

    .line 14
    .line 15
    return-void
.end method
