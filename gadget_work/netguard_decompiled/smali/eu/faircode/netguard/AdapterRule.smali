.class public Leu/faircode/netguard/AdapterRule;
.super Landroidx/recyclerview/widget/C;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field private anchor:Landroid/view/View;

.field private colorChanged:I

.field private colorGrayed:I

.field private colorOff:I

.field private colorOn:I

.field private colorText:I

.field private download:Ljava/util/List;

.field private iconSize:I

.field private inflater:Landroid/view/LayoutInflater;

.field private listAll:Ljava/util/List;

.field private listFiltered:Ljava/util/List;

.field private live:Z

.field private messaging:Ljava/util/List;

.field private otherActive:Z

.field private rv:Landroidx/recyclerview/widget/RecyclerView;

.field private wifiActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/C;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Leu/faircode/netguard/AdapterRule;->wifiActive:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Leu/faircode/netguard/AdapterRule;->otherActive:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Leu/faircode/netguard/AdapterRule;->live:Z

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Leu/faircode/netguard/AdapterRule;->listAll:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Leu/faircode/netguard/AdapterRule;->listFiltered:Ljava/util/List;

    .line 24
    .line 25
    const-string v2, "com.discord"

    .line 26
    .line 27
    const-string v3, "com.facebook.mlite"

    .line 28
    .line 29
    const-string v4, "com.facebook.orca"

    .line 30
    .line 31
    const-string v5, "com.instagram.android"

    .line 32
    .line 33
    const-string v6, "com.Slack"

    .line 34
    .line 35
    const-string v7, "com.skype.raider"

    .line 36
    .line 37
    const-string v8, "com.snapchat.android"

    .line 38
    .line 39
    const-string v9, "com.whatsapp"

    .line 40
    .line 41
    const-string v10, "com.whatsapp.w4b"

    .line 42
    .line 43
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Leu/faircode/netguard/AdapterRule;->messaging:Ljava/util/List;

    .line 52
    .line 53
    const-string v1, "com.google.android.youtube"

    .line 54
    .line 55
    filled-new-array {v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Leu/faircode/netguard/AdapterRule;->download:Ljava/util/List;

    .line 64
    .line 65
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule;->anchor:Landroid/view/View;

    .line 70
    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule;->inflater:Landroid/view/LayoutInflater;

    .line 76
    .line 77
    const-string p2, "dark_theme"

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    const/16 v1, 0x80

    .line 85
    .line 86
    if-eqz p2, :cond_0

    .line 87
    .line 88
    const p2, -0xbbbbbc

    .line 89
    .line 90
    .line 91
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-static {v1, v3, v4, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    iput p2, p0, Leu/faircode/netguard/AdapterRule;->colorChanged:I

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    const p2, -0x333334

    .line 111
    .line 112
    .line 113
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    invoke-static {v1, v3, v4, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    iput p2, p0, Leu/faircode/netguard/AdapterRule;->colorChanged:I

    .line 130
    .line 131
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    const v1, 0x1010036

    .line 136
    .line 137
    .line 138
    filled-new-array {v1}, [I

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    :try_start_0
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    iput v1, p0, Leu/faircode/netguard/AdapterRule;->colorText:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    .line 154
    .line 155
    new-instance p2, Landroid/util/TypedValue;

    .line 156
    .line 157
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const v2, 0x7f040064

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 168
    .line 169
    .line 170
    iget v1, p2, Landroid/util/TypedValue;->data:I

    .line 171
    .line 172
    iput v1, p0, Leu/faircode/netguard/AdapterRule;->colorOn:I

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const v2, 0x7f040063

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 182
    .line 183
    .line 184
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 185
    .line 186
    iput p2, p0, Leu/faircode/netguard/AdapterRule;->colorOff:I

    .line 187
    .line 188
    const p2, 0x7f060033

    .line 189
    .line 190
    .line 191
    invoke-static {p1, p2}, Landroidx/core/content/f;->b(Landroid/content/Context;I)I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    iput p2, p0, Leu/faircode/netguard/AdapterRule;->colorGrayed:I

    .line 196
    .line 197
    new-instance p2, Landroid/util/TypedValue;

    .line 198
    .line 199
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const v2, 0x101004d

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 210
    .line 211
    .line 212
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {p2, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    int-to-float p2, p2

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 236
    .line 237
    mul-float p2, p2, p1

    .line 238
    .line 239
    const/high16 p1, 0x3f000000    # 0.5f

    .line 240
    .line 241
    add-float/2addr p2, p1

    .line 242
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    iput p1, p0, Leu/faircode/netguard/AdapterRule;->iconSize:I

    .line 247
    .line 248
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/C;->setHasStableIds(Z)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :catchall_0
    move-exception p1

    .line 253
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    .line 255
    .line 256
    throw p1
.end method

.method static synthetic access$000(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/AdapterRule;->listAll:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Leu/faircode/netguard/Rule;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Leu/faircode/netguard/AdapterRule;->updateRule(Landroid/content/Context;Leu/faircode/netguard/Rule;ZLjava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Leu/faircode/netguard/AdapterRule;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/AdapterRule;->live:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Leu/faircode/netguard/AdapterRule;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Leu/faircode/netguard/AdapterRule;->live:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Leu/faircode/netguard/AdapterRule;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/AdapterRule;->anchor:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Leu/faircode/netguard/AdapterRule;->markPro(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Leu/faircode/netguard/AdapterRule;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/AdapterRule;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Leu/faircode/netguard/AdapterRule;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/AdapterRule;->listFiltered:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private markPro(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-static {p3, p1}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_2

    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    const-string v0, "dark_theme"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "  "

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroid/text/style/ImageSpan;

    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    const p3, 0x7f080099

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const p3, 0x7f080098

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-direct {v2, p1, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    const/16 p3, 0x21

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1, p1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method private updateRule(Landroid/content/Context;Leu/faircode/netguard/Rule;ZLjava/util/List;)V
    .locals 11

    .line 1
    const-string v0, "wifi"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v2, "other"

    .line 9
    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "apply"

    .line 15
    .line 16
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "screen_wifi"

    .line 21
    .line 22
    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v5, "screen_other"

    .line 27
    .line 28
    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v6, "roaming"

    .line 33
    .line 34
    invoke-virtual {p1, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v7, "lockdown"

    .line 39
    .line 40
    invoke-virtual {p1, v7, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const-string v8, "notify"

    .line 45
    .line 46
    invoke-virtual {p1, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    iget-boolean v9, p2, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    .line 51
    .line 52
    iget-boolean v10, p2, Leu/faircode/netguard/Rule;->wifi_default:Z

    .line 53
    .line 54
    if-ne v9, v10, :cond_0

    .line 55
    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v9, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v9, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    iget-boolean v10, p2, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    .line 77
    .line 78
    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-boolean v0, p2, Leu/faircode/netguard/Rule;->other_blocked:Z

    .line 86
    .line 87
    iget-boolean v9, p2, Leu/faircode/netguard/Rule;->other_default:Z

    .line 88
    .line 89
    if-ne v0, v9, :cond_1

    .line 90
    .line 91
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 110
    .line 111
    iget-boolean v9, p2, Leu/faircode/netguard/Rule;->other_blocked:Z

    .line 112
    .line 113
    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    .line 119
    .line 120
    :goto_1
    iget-boolean v0, p2, Leu/faircode/netguard/Rule;->apply:Z

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 143
    .line 144
    iget-boolean v3, p2, Leu/faircode/netguard/Rule;->apply:Z

    .line 145
    .line 146
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    .line 152
    .line 153
    :goto_2
    iget-boolean v0, p2, Leu/faircode/netguard/Rule;->screen_wifi:Z

    .line 154
    .line 155
    iget-boolean v2, p2, Leu/faircode/netguard/Rule;->screen_wifi_default:Z

    .line 156
    .line 157
    if-ne v0, v2, :cond_3

    .line 158
    .line 159
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 164
    .line 165
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 178
    .line 179
    iget-boolean v3, p2, Leu/faircode/netguard/Rule;->screen_wifi:Z

    .line 180
    .line 181
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    .line 187
    .line 188
    :goto_3
    iget-boolean v0, p2, Leu/faircode/netguard/Rule;->screen_other:Z

    .line 189
    .line 190
    iget-boolean v2, p2, Leu/faircode/netguard/Rule;->screen_other_default:Z

    .line 191
    .line 192
    if-ne v0, v2, :cond_4

    .line 193
    .line 194
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 199
    .line 200
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_4
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 213
    .line 214
    iget-boolean v3, p2, Leu/faircode/netguard/Rule;->screen_other:Z

    .line 215
    .line 216
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    .line 222
    .line 223
    :goto_4
    iget-boolean v0, p2, Leu/faircode/netguard/Rule;->roaming:Z

    .line 224
    .line 225
    iget-boolean v2, p2, Leu/faircode/netguard/Rule;->roaming_default:Z

    .line 226
    .line 227
    if-ne v0, v2, :cond_5

    .line 228
    .line 229
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 234
    .line 235
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_5
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 248
    .line 249
    iget-boolean v3, p2, Leu/faircode/netguard/Rule;->roaming:Z

    .line 250
    .line 251
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    .line 257
    .line 258
    :goto_5
    iget-boolean v0, p2, Leu/faircode/netguard/Rule;->lockdown:Z

    .line 259
    .line 260
    if-eqz v0, :cond_6

    .line 261
    .line 262
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 267
    .line 268
    iget-boolean v3, p2, Leu/faircode/netguard/Rule;->lockdown:Z

    .line 269
    .line 270
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_6
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 283
    .line 284
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    .line 290
    .line 291
    :goto_6
    iget-boolean v0, p2, Leu/faircode/netguard/Rule;->notify:Z

    .line 292
    .line 293
    if-eqz v0, :cond_7

    .line 294
    .line 295
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 300
    .line 301
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_7
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iget-object v2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 314
    .line 315
    iget-boolean v3, p2, Leu/faircode/netguard/Rule;->notify:Z

    .line 316
    .line 317
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    .line 323
    .line 324
    :goto_7
    invoke-virtual {p2, p1}, Leu/faircode/netguard/Rule;->updateChanged(Landroid/content/Context;)V

    .line 325
    .line 326
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v2, "Updated "

    .line 330
    .line 331
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    const-string v2, "NetGuard.Adapter"

    .line 342
    .line 343
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    new-instance v0, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    iget-object v2, p2, Leu/faircode/netguard/Rule;->related:[Ljava/lang/String;

    .line 352
    .line 353
    array-length v3, v2

    .line 354
    const/4 v4, 0x0

    .line 355
    :goto_8
    if-ge v4, v3, :cond_a

    .line 356
    .line 357
    aget-object v5, v2, v4

    .line 358
    .line 359
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    :cond_8
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    if-eqz v7, :cond_9

    .line 368
    .line 369
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    check-cast v7, Leu/faircode/netguard/Rule;

    .line 374
    .line 375
    iget-object v8, v7, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    if-eqz v8, :cond_8

    .line 382
    .line 383
    iget-boolean v8, p2, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    .line 384
    .line 385
    iput-boolean v8, v7, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    .line 386
    .line 387
    iget-boolean v8, p2, Leu/faircode/netguard/Rule;->other_blocked:Z

    .line 388
    .line 389
    iput-boolean v8, v7, Leu/faircode/netguard/Rule;->other_blocked:Z

    .line 390
    .line 391
    iget-boolean v8, p2, Leu/faircode/netguard/Rule;->apply:Z

    .line 392
    .line 393
    iput-boolean v8, v7, Leu/faircode/netguard/Rule;->apply:Z

    .line 394
    .line 395
    iget-boolean v8, p2, Leu/faircode/netguard/Rule;->screen_wifi:Z

    .line 396
    .line 397
    iput-boolean v8, v7, Leu/faircode/netguard/Rule;->screen_wifi:Z

    .line 398
    .line 399
    iget-boolean v8, p2, Leu/faircode/netguard/Rule;->screen_other:Z

    .line 400
    .line 401
    iput-boolean v8, v7, Leu/faircode/netguard/Rule;->screen_other:Z

    .line 402
    .line 403
    iget-boolean v8, p2, Leu/faircode/netguard/Rule;->roaming:Z

    .line 404
    .line 405
    iput-boolean v8, v7, Leu/faircode/netguard/Rule;->roaming:Z

    .line 406
    .line 407
    iget-boolean v8, p2, Leu/faircode/netguard/Rule;->lockdown:Z

    .line 408
    .line 409
    iput-boolean v8, v7, Leu/faircode/netguard/Rule;->lockdown:Z

    .line 410
    .line 411
    iget-boolean v8, p2, Leu/faircode/netguard/Rule;->notify:Z

    .line 412
    .line 413
    iput-boolean v8, v7, Leu/faircode/netguard/Rule;->notify:Z

    .line 414
    .line 415
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    goto :goto_9

    .line 419
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 420
    .line 421
    goto :goto_8

    .line 422
    :cond_a
    if-eqz p3, :cond_b

    .line 423
    .line 424
    new-instance v2, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {v2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 427
    .line 428
    .line 429
    move-object p4, v2

    .line 430
    :cond_b
    invoke-interface {p4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-eqz v3, :cond_c

    .line 442
    .line 443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    check-cast v3, Leu/faircode/netguard/Rule;

    .line 448
    .line 449
    invoke-interface {p4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    goto :goto_a

    .line 453
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-eqz v2, :cond_d

    .line 462
    .line 463
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    check-cast v2, Leu/faircode/netguard/Rule;

    .line 468
    .line 469
    invoke-direct {p0, p1, v2, v1, p4}, Leu/faircode/netguard/AdapterRule;->updateRule(Landroid/content/Context;Leu/faircode/netguard/Rule;ZLjava/util/List;)V

    .line 470
    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_d
    if-eqz p3, :cond_e

    .line 474
    .line 475
    invoke-virtual {p0}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 476
    .line 477
    .line 478
    invoke-static {p1}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 479
    .line 480
    .line 481
    move-result-object p3

    .line 482
    iget p2, p2, Leu/faircode/netguard/Rule;->uid:I

    .line 483
    .line 484
    invoke-virtual {p3, p2}, Landroidx/core/app/H;->b(I)V

    .line 485
    .line 486
    .line 487
    const-string p2, "rule changed"

    .line 488
    .line 489
    invoke-static {p2, p1, v1}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 490
    .line 491
    .line 492
    :cond_e
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    new-instance v0, Leu/faircode/netguard/AdapterRule$18;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Leu/faircode/netguard/AdapterRule$18;-><init>(Leu/faircode/netguard/AdapterRule;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule;->listFiltered:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule;->listFiltered:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Leu/faircode/netguard/Rule;

    .line 8
    .line 9
    iget-object v0, p1, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-long v0, v0

    .line 16
    const-wide/32 v2, 0x186a0

    .line 17
    .line 18
    .line 19
    mul-long v0, v0, v2

    .line 20
    .line 21
    iget p1, p1, Leu/faircode/netguard/Rule;->uid:I

    .line 22
    .line 23
    int-to-long v2, p1

    .line 24
    add-long/2addr v0, v2

    .line 25
    return-wide v0
.end method

.method public isLive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Leu/faircode/netguard/AdapterRule;->live:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/C;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/P;I)V
    .locals 0

    .line 1
    check-cast p1, Leu/faircode/netguard/AdapterRule$ViewHolder;

    invoke-virtual {p0, p1, p2}, Leu/faircode/netguard/AdapterRule;->onBindViewHolder(Leu/faircode/netguard/AdapterRule$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Leu/faircode/netguard/AdapterRule$ViewHolder;I)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2
    iget-object v0, v8, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 3
    invoke-static {v9}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v0, "log_app"

    const/4 v11, 0x0

    .line 4
    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "filter"

    .line 5
    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v12, "notify_access"

    .line 6
    invoke-interface {v10, v12, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 7
    iget-object v0, v7, Leu/faircode/netguard/AdapterRule;->listFiltered:Ljava/util/List;

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Leu/faircode/netguard/Rule;

    .line 8
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->llApplication:Landroid/widget/LinearLayout;

    new-instance v1, Leu/faircode/netguard/AdapterRule$1;

    invoke-direct {v1, v7, v13, v8}, Leu/faircode/netguard/AdapterRule$1;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Leu/faircode/netguard/AdapterRule$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, v8, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->changed:Z

    if-eqz v1, :cond_0

    iget v1, v7, Leu/faircode/netguard/AdapterRule;->colorChanged:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivExpander:Landroid/widget/ImageView;

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->expanded:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 11
    iget v0, v13, Leu/faircode/netguard/Rule;->icon:I

    if-gtz v0, :cond_1

    .line 12
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v13, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Leu/faircode/netguard/Rule;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14
    iget-object v1, v8, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Leu/faircode/netguard/GlideApp;->with(Landroid/content/Context;)Leu/faircode/netguard/GlideRequests;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/g;

    invoke-direct {v2}, Lcom/bumptech/glide/request/g;-><init>()V

    sget-object v6, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    .line 15
    invoke-virtual {v2, v6}, Lcom/bumptech/glide/request/a;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/a;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/g;

    invoke-virtual {v1, v2}, Leu/faircode/netguard/GlideRequests;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/g;)Leu/faircode/netguard/GlideRequests;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Leu/faircode/netguard/GlideRequests;->load(Landroid/net/Uri;)Leu/faircode/netguard/GlideRequest;

    move-result-object v0

    iget v1, v7, Leu/faircode/netguard/AdapterRule;->iconSize:I

    .line 17
    invoke-virtual {v0, v1, v1}, Leu/faircode/netguard/GlideRequest;->override(II)Leu/faircode/netguard/GlideRequest;

    move-result-object v0

    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/u;->into(Landroid/widget/ImageView;)LU/j;

    .line 19
    :goto_1
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, v13, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-boolean v0, v13, Leu/faircode/netguard/Rule;->system:Z

    if-eqz v0, :cond_2

    iget v0, v7, Leu/faircode/netguard/AdapterRule;->colorOff:I

    goto :goto_2

    :cond_2
    iget v0, v7, Leu/faircode/netguard/AdapterRule;->colorText:I

    .line 21
    :goto_2
    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->internet:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->enabled:Z

    if-nez v1, :cond_4

    .line 22
    :cond_3
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v6, 0x80

    invoke-static {v6, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 23
    :cond_4
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvHosts:Landroid/widget/TextView;

    iget-wide v1, v13, Leu/faircode/netguard/Rule;->hosts:J

    const-wide/16 v14, 0x0

    const/16 v6, 0x8

    cmp-long v16, v1, v14

    if-lez v16, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvHosts:Landroid/widget/TextView;

    iget-wide v1, v13, Leu/faircode/netguard/Rule;->hosts:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "lockdown"

    .line 26
    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "lockdown_wifi"

    const/4 v14, 0x1

    .line 27
    invoke-interface {v10, v1, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "lockdown_other"

    .line 28
    invoke-interface {v10, v2, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 29
    iget-boolean v15, v7, Leu/faircode/netguard/AdapterRule;->otherActive:Z

    if-eqz v15, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iget-boolean v2, v7, Leu/faircode/netguard/AdapterRule;->wifiActive:Z

    if-eqz v2, :cond_8

    if-nez v1, :cond_8

    :cond_7
    const/4 v0, 0x0

    .line 30
    :cond_8
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->rlLockdown:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    iget-boolean v0, v13, Leu/faircode/netguard/Rule;->lockdown:Z

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivLockdown:Landroid/widget/ImageView;

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->apply:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const-string v0, "screen_on"

    .line 32
    invoke-interface {v10, v0, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbWifi:Landroid/widget/CheckBox;

    iget-boolean v2, v13, Leu/faircode/netguard/Rule;->apply:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbWifi:Landroid/widget/CheckBox;

    iget-boolean v2, v7, Leu/faircode/netguard/AdapterRule;->wifiActive:Z

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f000000    # 0.5f

    if-eqz v2, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_a
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 35
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbWifi:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbWifi:Landroid/widget/CheckBox;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    invoke-virtual {v1, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 37
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbWifi:Landroid/widget/CheckBox;

    new-instance v14, Leu/faircode/netguard/AdapterRule$2;

    invoke-direct {v14, v7, v13, v9}, Leu/faircode/netguard/AdapterRule$2;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivScreenWifi:Landroid/widget/ImageView;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->apply:Z

    invoke-virtual {v1, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivScreenWifi:Landroid/widget/ImageView;

    iget-boolean v14, v7, Leu/faircode/netguard/AdapterRule;->wifiActive:Z

    if-eqz v14, :cond_b

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_b
    const/high16 v14, 0x3f000000    # 0.5f

    :goto_6
    invoke-virtual {v1, v14}, Landroid/view/View;->setAlpha(F)V

    .line 40
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivScreenWifi:Landroid/widget/ImageView;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->screen_wifi:Z

    const/16 v17, 0x4

    if-eqz v14, :cond_c

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_7

    :cond_c
    const/4 v14, 0x4

    :goto_7
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbOther:Landroid/widget/CheckBox;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->apply:Z

    invoke-virtual {v1, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbOther:Landroid/widget/CheckBox;

    iget-boolean v14, v7, Leu/faircode/netguard/AdapterRule;->otherActive:Z

    if-eqz v14, :cond_d

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_d
    const/high16 v14, 0x3f000000    # 0.5f

    :goto_8
    invoke-virtual {v1, v14}, Landroid/view/View;->setAlpha(F)V

    .line 43
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbOther:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbOther:Landroid/widget/CheckBox;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->other_blocked:Z

    invoke-virtual {v1, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 45
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbOther:Landroid/widget/CheckBox;

    new-instance v14, Leu/faircode/netguard/AdapterRule$3;

    invoke-direct {v14, v7, v13, v9}, Leu/faircode/netguard/AdapterRule$3;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 46
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivScreenOther:Landroid/widget/ImageView;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->apply:Z

    invoke-virtual {v1, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivScreenOther:Landroid/widget/ImageView;

    iget-boolean v14, v7, Leu/faircode/netguard/AdapterRule;->otherActive:Z

    if-eqz v14, :cond_e

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_e
    const/high16 v14, 0x3f000000    # 0.5f

    :goto_9
    invoke-virtual {v1, v14}, Landroid/view/View;->setAlpha(F)V

    .line 48
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivScreenOther:Landroid/widget/ImageView;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->screen_other:Z

    if-eqz v14, :cond_f

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->other_blocked:Z

    if-eqz v14, :cond_f

    const/4 v14, 0x0

    goto :goto_a

    :cond_f
    const/4 v14, 0x4

    :goto_a
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvRoaming:Landroid/widget/TextView;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->apply:Z

    if-eqz v14, :cond_10

    iget v14, v7, Leu/faircode/netguard/AdapterRule;->colorOff:I

    goto :goto_b

    :cond_10
    iget v14, v7, Leu/faircode/netguard/AdapterRule;->colorGrayed:I

    :goto_b
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvRoaming:Landroid/widget/TextView;

    iget-boolean v14, v7, Leu/faircode/netguard/AdapterRule;->otherActive:Z

    if-eqz v14, :cond_11

    goto :goto_c

    :cond_11
    const/high16 v15, 0x3f000000    # 0.5f

    :goto_c
    invoke-virtual {v1, v15}, Landroid/view/View;->setAlpha(F)V

    .line 51
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvRoaming:Landroid/widget/TextView;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->roaming:Z

    if-eqz v14, :cond_13

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->other_blocked:Z

    if-eqz v14, :cond_12

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->screen_other:Z

    if-eqz v14, :cond_13

    :cond_12
    const/4 v14, 0x0

    goto :goto_d

    :cond_13
    const/4 v14, 0x4

    :goto_d
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvRemarkMessaging:Landroid/widget/TextView;

    iget-object v14, v7, Leu/faircode/netguard/AdapterRule;->messaging:Ljava/util/List;

    iget-object v15, v13, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    const/4 v14, 0x0

    goto :goto_e

    :cond_14
    const/16 v14, 0x8

    :goto_e
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvRemarkDownload:Landroid/widget/TextView;

    iget-object v14, v7, Leu/faircode/netguard/AdapterRule;->download:Ljava/util/List;

    iget-object v15, v13, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    const/4 v14, 0x0

    goto :goto_f

    :cond_15
    const/16 v14, 0x8

    :goto_f
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->llConfiguration:Landroid/widget/LinearLayout;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->expanded:Z

    if-eqz v14, :cond_16

    const/4 v14, 0x0

    goto :goto_10

    :cond_16
    const/16 v14, 0x8

    :goto_10
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvUid:Landroid/widget/TextView;

    iget v14, v13, Leu/faircode/netguard/Rule;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvPackage:Landroid/widget/TextView;

    iget-object v14, v13, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvVersion:Landroid/widget/TextView;

    iget-object v14, v13, Leu/faircode/netguard/Rule;->version:Ljava/lang/String;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvInternet:Landroid/widget/TextView;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->internet:Z

    if-eqz v14, :cond_17

    const/16 v14, 0x8

    goto :goto_11

    :cond_17
    const/4 v14, 0x0

    :goto_11
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvDisabled:Landroid/widget/TextView;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->enabled:Z

    if-eqz v14, :cond_18

    const/16 v14, 0x8

    goto :goto_12

    :cond_18
    const/4 v14, 0x0

    :goto_12
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->btnRelated:Landroid/widget/Button;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->relateduids:Z

    if-eqz v14, :cond_19

    const/4 v14, 0x0

    goto :goto_13

    :cond_19
    const/16 v14, 0x8

    :goto_13
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->btnRelated:Landroid/widget/Button;

    new-instance v14, Leu/faircode/netguard/AdapterRule$4;

    invoke-direct {v14, v7, v9, v13}, Leu/faircode/netguard/AdapterRule$4;-><init>(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Leu/faircode/netguard/Rule;)V

    invoke-virtual {v1, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->expanded:Z

    if-eqz v1, :cond_1c

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-string v14, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "package:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v13, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v14

    if-nez v14, :cond_1a

    move-object v1, v2

    .line 66
    :cond_1a
    iget-object v14, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ibSettings:Landroid/widget/ImageButton;

    if-nez v1, :cond_1b

    const/16 v15, 0x8

    goto :goto_14

    :cond_1b
    const/4 v15, 0x0

    :goto_14
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v14, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ibSettings:Landroid/widget/ImageButton;

    new-instance v15, Leu/faircode/netguard/AdapterRule$5;

    invoke-direct {v15, v7, v9, v1}, Leu/faircode/netguard/AdapterRule$5;-><init>(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_15

    .line 68
    :cond_1c
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ibSettings:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :goto_15
    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->expanded:Z

    if-eqz v1, :cond_20

    .line 70
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v14, v13, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v14}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 71
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v14

    if-nez v14, :cond_1e

    :cond_1d
    move-object v1, v2

    .line 72
    :cond_1e
    iget-object v14, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ibLaunch:Landroid/widget/ImageButton;

    if-nez v1, :cond_1f

    const/16 v15, 0x8

    goto :goto_16

    :cond_1f
    const/4 v15, 0x0

    :goto_16
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v14, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ibLaunch:Landroid/widget/ImageButton;

    new-instance v15, Leu/faircode/netguard/AdapterRule$6;

    invoke-direct {v15, v7, v9, v1}, Leu/faircode/netguard/AdapterRule$6;-><init>(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_17

    .line 74
    :cond_20
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ibLaunch:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_17
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbApply:Landroid/widget/CheckBox;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->pkg:Z

    if-eqz v14, :cond_21

    if-eqz v4, :cond_21

    const/4 v14, 0x1

    goto :goto_18

    :cond_21
    const/4 v14, 0x0

    :goto_18
    invoke-virtual {v1, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbApply:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbApply:Landroid/widget/CheckBox;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->apply:Z

    invoke-virtual {v1, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 78
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbApply:Landroid/widget/CheckBox;

    new-instance v14, Leu/faircode/netguard/AdapterRule$7;

    invoke-direct {v14, v7, v13, v9}, Leu/faircode/netguard/AdapterRule$7;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->llScreenWifi:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_22

    const/4 v14, 0x0

    goto :goto_19

    :cond_22
    const/16 v14, 0x8

    :goto_19
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenWifi:Landroid/widget/CheckBox;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    if-eqz v14, :cond_23

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->apply:Z

    if-eqz v14, :cond_23

    const/4 v14, 0x1

    goto :goto_1a

    :cond_23
    const/4 v14, 0x0

    :goto_1a
    invoke-virtual {v1, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 81
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenWifi:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenWifi:Landroid/widget/CheckBox;

    iget-boolean v14, v13, Leu/faircode/netguard/Rule;->screen_wifi:Z

    invoke-virtual {v1, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 83
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenWifi:Landroid/widget/CheckBox;

    new-instance v14, Leu/faircode/netguard/AdapterRule$8;

    invoke-direct {v14, v7, v13, v9}, Leu/faircode/netguard/AdapterRule$8;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->llScreenOther:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    goto :goto_1b

    :cond_24
    const/16 v0, 0x8

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenOther:Landroid/widget/CheckBox;

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->other_blocked:Z

    if-eqz v1, :cond_25

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->apply:Z

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_1c

    :cond_25
    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 86
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenOther:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenOther:Landroid/widget/CheckBox;

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->screen_other:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 88
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbScreenOther:Landroid/widget/CheckBox;

    new-instance v1, Leu/faircode/netguard/AdapterRule$9;

    invoke-direct {v1, v7, v13, v9}, Leu/faircode/netguard/AdapterRule$9;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbRoaming:Landroid/widget/CheckBox;

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->other_blocked:Z

    if-eqz v1, :cond_26

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->screen_other:Z

    if-eqz v1, :cond_27

    :cond_26
    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->apply:Z

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_1d

    :cond_27
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbRoaming:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbRoaming:Landroid/widget/CheckBox;

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->roaming:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 92
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbRoaming:Landroid/widget/CheckBox;

    new-instance v1, Leu/faircode/netguard/AdapterRule$10;

    invoke-direct {v1, v7, v13, v9}, Leu/faircode/netguard/AdapterRule$10;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbLockdown:Landroid/widget/CheckBox;

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->apply:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbLockdown:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbLockdown:Landroid/widget/CheckBox;

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->lockdown:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 96
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbLockdown:Landroid/widget/CheckBox;

    new-instance v1, Leu/faircode/netguard/AdapterRule$11;

    invoke-direct {v1, v7, v13, v9}, Leu/faircode/netguard/AdapterRule$11;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->btnClear:Landroid/widget/ImageButton;

    new-instance v1, Leu/faircode/netguard/AdapterRule$12;

    invoke-direct {v1, v7, v8, v13}, Leu/faircode/netguard/AdapterRule$12;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/AdapterRule$ViewHolder;Leu/faircode/netguard/Rule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->llFilter:Landroid/widget/LinearLayout;

    invoke-static {v9}, Leu/faircode/netguard/Util;->canFilter(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v6, 0x0

    :cond_28
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->ivLive:Landroid/widget/ImageView;

    new-instance v1, Leu/faircode/netguard/AdapterRule$13;

    invoke-direct {v1, v7, v8}, Leu/faircode/netguard/AdapterRule$13;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/AdapterRule$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->tvLogging:Landroid/widget/TextView;

    if-eqz v3, :cond_29

    if-eqz v4, :cond_29

    const v1, 0x7f100127

    goto :goto_1e

    :cond_29
    const v1, 0x7f100126

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v14, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->btnLogging:Landroid/widget/Button;

    new-instance v15, Leu/faircode/netguard/AdapterRule$14;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v6, v2

    move-object v2, v9

    move-object v11, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Leu/faircode/netguard/AdapterRule$14;-><init>(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;ZZZLandroid/content/SharedPreferences;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-boolean v0, v13, Leu/faircode/netguard/Rule;->expanded:Z

    if-eqz v0, :cond_2a

    .line 103
    new-instance v0, Leu/faircode/netguard/AdapterAccess;

    .line 104
    invoke-static {v9}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    move-result-object v1

    iget v2, v13, Leu/faircode/netguard/Rule;->uid:I

    invoke-virtual {v1, v2}, Leu/faircode/netguard/DatabaseHelper;->getAccess(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Leu/faircode/netguard/AdapterAccess;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 105
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->lvAccess:Landroid/widget/ListView;

    new-instance v2, Leu/faircode/netguard/AdapterRule$15;

    invoke-direct {v2, v7, v9, v0, v13}, Leu/faircode/netguard/AdapterRule$15;-><init>(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Leu/faircode/netguard/AdapterAccess;Leu/faircode/netguard/Rule;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    iget-object v1, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->lvAccess:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1f

    .line 107
    :cond_2a
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->lvAccess:Landroid/widget/ListView;

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->lvAccess:Landroid/widget/ListView;

    invoke-virtual {v0, v11}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    :goto_1f
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->btnClearAccess:Landroid/widget/ImageButton;

    new-instance v1, Leu/faircode/netguard/AdapterRule$16;

    invoke-direct {v1, v7, v9, v13, v8}, Leu/faircode/netguard/AdapterRule$16;-><init>(Leu/faircode/netguard/AdapterRule;Landroid/content/Context;Leu/faircode/netguard/Rule;Leu/faircode/netguard/AdapterRule$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbNotify:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-interface {v10, v12, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-boolean v2, v13, Leu/faircode/netguard/Rule;->apply:Z

    if-eqz v2, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbNotify:Landroid/widget/CheckBox;

    invoke-virtual {v0, v11}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbNotify:Landroid/widget/CheckBox;

    iget-boolean v1, v13, Leu/faircode/netguard/Rule;->notify:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 113
    iget-object v0, v8, Leu/faircode/netguard/AdapterRule$ViewHolder;->cbNotify:Landroid/widget/CheckBox;

    new-instance v1, Leu/faircode/netguard/AdapterRule$17;

    invoke-direct {v1, v7, v13, v9}, Leu/faircode/netguard/AdapterRule$17;-><init>(Leu/faircode/netguard/AdapterRule;Leu/faircode/netguard/Rule;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/P;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Leu/faircode/netguard/AdapterRule;->onCreateViewHolder(Landroid/view/ViewGroup;I)Leu/faircode/netguard/AdapterRule$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Leu/faircode/netguard/AdapterRule$ViewHolder;
    .locals 3

    .line 2
    new-instance p2, Leu/faircode/netguard/AdapterRule$ViewHolder;

    iget-object v0, p0, Leu/faircode/netguard/AdapterRule;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Leu/faircode/netguard/AdapterRule$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/C;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/P;)V
    .locals 0

    .line 1
    check-cast p1, Leu/faircode/netguard/AdapterRule$ViewHolder;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/AdapterRule;->onViewRecycled(Leu/faircode/netguard/AdapterRule$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Leu/faircode/netguard/AdapterRule$ViewHolder;)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/C;->onViewRecycled(Landroidx/recyclerview/widget/P;)V

    .line 3
    iget-object v0, p1, Leu/faircode/netguard/AdapterRule$ViewHolder;->lvAccess:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    const-string v1, "NetGuard.Adapter"

    const-string v2, "Closing access cursor"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 6
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$ViewHolder;->lvAccess:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public set(Ljava/util/List;)V
    .locals 1

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule;->listAll:Ljava/util/List;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Leu/faircode/netguard/AdapterRule;->listFiltered:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setDisconnected()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Leu/faircode/netguard/AdapterRule;->wifiActive:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Leu/faircode/netguard/AdapterRule;->otherActive:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setMobileActive()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Leu/faircode/netguard/AdapterRule;->wifiActive:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Leu/faircode/netguard/AdapterRule;->otherActive:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setWifiActive()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Leu/faircode/netguard/AdapterRule;->wifiActive:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Leu/faircode/netguard/AdapterRule;->otherActive:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
