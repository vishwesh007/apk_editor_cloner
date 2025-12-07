.class final Landroidx/emoji2/text/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/emoji2/text/z;

.field private final b:Landroidx/emoji2/text/F;

.field private c:Landroidx/emoji2/text/l;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/F;Landroidx/emoji2/text/z;Landroidx/emoji2/text/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/emoji2/text/x;->a:Landroidx/emoji2/text/z;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/emoji2/text/x;->b:Landroidx/emoji2/text/F;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/emoji2/text/x;->c:Landroidx/emoji2/text/l;

    .line 9
    .line 10
    return-void
.end method

.method private static a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    xor-int/2addr p1, v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, -0x1

    .line 24
    if-eq p1, v3, :cond_2

    .line 25
    .line 26
    if-eq v2, v3, :cond_2

    .line 27
    .line 28
    if-eq p1, v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 34
    :goto_1
    if-eqz v3, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    const-class v3, Landroidx/emoji2/text/y;

    .line 38
    .line 39
    invoke-interface {p0, p1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, [Landroidx/emoji2/text/y;

    .line 44
    .line 45
    if-eqz v2, :cond_8

    .line 46
    .line 47
    array-length v3, v2

    .line 48
    if-lez v3, :cond_8

    .line 49
    .line 50
    array-length v3, v2

    .line 51
    const/4 v4, 0x0

    .line 52
    :goto_2
    if-ge v4, v3, :cond_8

    .line 53
    .line 54
    aget-object v5, v2, v4

    .line 55
    .line 56
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    if-eq v6, p1, :cond_6

    .line 67
    .line 68
    :cond_4
    if-nez p2, :cond_5

    .line 69
    .line 70
    if-eq v5, p1, :cond_6

    .line 71
    .line 72
    :cond_5
    if-le p1, v6, :cond_7

    .line 73
    .line 74
    if-ge p1, v5, :cond_7

    .line 75
    .line 76
    :cond_6
    invoke-interface {p0, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 77
    .line 78
    .line 79
    return v0

    .line 80
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_8
    return v1
.end method

.method static b(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1d

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_b

    .line 7
    .line 8
    :cond_0
    if-ltz p2, :cond_1d

    .line 9
    .line 10
    if-gez p3, :cond_1

    .line 11
    .line 12
    goto/16 :goto_b

    .line 13
    .line 14
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, -0x1

    .line 24
    if-eq v1, v4, :cond_3

    .line 25
    .line 26
    if-eq v2, v4, :cond_3

    .line 27
    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v5, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    :goto_0
    const/4 v5, 0x1

    .line 34
    :goto_1
    if-eqz v5, :cond_4

    .line 35
    .line 36
    return v0

    .line 37
    :cond_4
    if-eqz p4, :cond_1a

    .line 38
    .line 39
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    if-ltz v1, :cond_e

    .line 48
    .line 49
    if-ge p4, v1, :cond_5

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_5
    if-gez p2, :cond_6

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_6
    :goto_2
    const/4 p4, 0x0

    .line 56
    :goto_3
    if-nez p2, :cond_7

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    if-gez v1, :cond_9

    .line 62
    .line 63
    if-eqz p4, :cond_8

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_8
    const/4 v1, 0x0

    .line 67
    goto :goto_5

    .line 68
    :cond_9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz p4, :cond_b

    .line 73
    .line 74
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 75
    .line 76
    .line 77
    move-result p4

    .line 78
    if-nez p4, :cond_a

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_a
    add-int/lit8 p2, p2, -0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_b
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_c

    .line 89
    .line 90
    add-int/lit8 p2, p2, -0x1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_c
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 94
    .line 95
    .line 96
    move-result p4

    .line 97
    if-eqz p4, :cond_d

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_d
    const/4 p4, 0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_e
    :goto_4
    const/4 v1, -0x1

    .line 103
    :goto_5
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-ltz v2, :cond_17

    .line 112
    .line 113
    if-ge p3, v2, :cond_f

    .line 114
    .line 115
    goto :goto_8

    .line 116
    :cond_f
    if-gez p2, :cond_10

    .line 117
    .line 118
    goto :goto_8

    .line 119
    :cond_10
    :goto_6
    const/4 p4, 0x0

    .line 120
    :goto_7
    if-nez p2, :cond_11

    .line 121
    .line 122
    move p3, v2

    .line 123
    goto :goto_9

    .line 124
    :cond_11
    if-lt v2, p3, :cond_12

    .line 125
    .line 126
    if-eqz p4, :cond_18

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_12
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz p4, :cond_14

    .line 134
    .line 135
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 136
    .line 137
    .line 138
    move-result p4

    .line 139
    if-nez p4, :cond_13

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_13
    add-int/lit8 p2, p2, -0x1

    .line 143
    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_15

    .line 152
    .line 153
    add-int/lit8 p2, p2, -0x1

    .line 154
    .line 155
    add-int/lit8 v2, v2, 0x1

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_15
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 159
    .line 160
    .line 161
    move-result p4

    .line 162
    if-eqz p4, :cond_16

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 166
    .line 167
    const/4 p4, 0x1

    .line 168
    goto :goto_7

    .line 169
    :cond_17
    :goto_8
    const/4 p3, -0x1

    .line 170
    :cond_18
    :goto_9
    if-eq v1, v4, :cond_19

    .line 171
    .line 172
    if-ne p3, v4, :cond_1b

    .line 173
    .line 174
    :cond_19
    return v0

    .line 175
    :cond_1a
    sub-int/2addr v1, p2

    .line 176
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    add-int/2addr v2, p3

    .line 181
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    :cond_1b
    const-class p2, Landroidx/emoji2/text/y;

    .line 190
    .line 191
    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    check-cast p2, [Landroidx/emoji2/text/y;

    .line 196
    .line 197
    if-eqz p2, :cond_1d

    .line 198
    .line 199
    array-length p4, p2

    .line 200
    if-lez p4, :cond_1d

    .line 201
    .line 202
    array-length p4, p2

    .line 203
    const/4 v2, 0x0

    .line 204
    :goto_a
    if-ge v2, p4, :cond_1c

    .line 205
    .line 206
    aget-object v4, p2, v2

    .line 207
    .line 208
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    .line 221
    .line 222
    .line 223
    move-result p3

    .line 224
    add-int/lit8 v2, v2, 0x1

    .line 225
    .line 226
    goto :goto_a

    .line 227
    :cond_1c
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 232
    .line 233
    .line 234
    move-result p4

    .line 235
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 236
    .line 237
    .line 238
    move-result p3

    .line 239
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 240
    .line 241
    .line 242
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 243
    .line 244
    .line 245
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 246
    .line 247
    .line 248
    return v3

    .line 249
    :cond_1d
    :goto_b
    return v0
.end method

.method static c(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/16 v0, 0x43

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x70

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0, p2, v1}, Landroidx/emoji2/text/x;->a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p0, p2, v2}, Landroidx/emoji2/text/x;->a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    :goto_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    return v2
.end method

.method private d(Ljava/lang/CharSequence;IILandroidx/emoji2/text/v;)Z
    .locals 2

    .line 1
    invoke-virtual {p4}, Landroidx/emoji2/text/v;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/emoji2/text/x;->c:Landroidx/emoji2/text/l;

    .line 8
    .line 9
    invoke-virtual {p4}, Landroidx/emoji2/text/v;->h()S

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    check-cast v0, Landroidx/emoji2/text/g;

    .line 14
    .line 15
    invoke-virtual {v0, p2, p3, v1, p1}, Landroidx/emoji2/text/g;->a(IIILjava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p4, p1}, Landroidx/emoji2/text/v;->k(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p4}, Landroidx/emoji2/text/v;->d()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, 0x2

    .line 27
    if-ne p1, p2, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method


# virtual methods
.method final e(Ljava/lang/CharSequence;IIZ)Ljava/lang/CharSequence;
    .locals 10

    .line 1
    instance-of v0, p1, Landroidx/emoji2/text/H;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Landroidx/emoji2/text/H;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/emoji2/text/H;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const-class v1, Landroidx/emoji2/text/y;

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    :try_start_0
    instance-of v2, p1, Landroid/text/Spannable;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v2, p1, Landroid/text/Spanned;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    move-object v2, p1

    .line 25
    check-cast v2, Landroid/text/Spanned;

    .line 26
    .line 27
    add-int/lit8 v3, p2, -0x1

    .line 28
    .line 29
    add-int/lit8 v4, p3, 0x1

    .line 30
    .line 31
    invoke-interface {v2, v3, v4, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-gt v2, p3, :cond_2

    .line 36
    .line 37
    new-instance v2, Landroidx/emoji2/text/K;

    .line 38
    .line 39
    invoke-direct {v2, p1}, Landroidx/emoji2/text/K;-><init>(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :goto_0
    new-instance v2, Landroidx/emoji2/text/K;

    .line 46
    .line 47
    move-object v3, p1

    .line 48
    check-cast v3, Landroid/text/Spannable;

    .line 49
    .line 50
    invoke-direct {v2, v3}, Landroidx/emoji2/text/K;-><init>(Landroid/text/Spannable;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    const/4 v3, 0x0

    .line 54
    if-eqz v2, :cond_5

    .line 55
    .line 56
    invoke-virtual {v2, p2, p3, v1}, Landroidx/emoji2/text/K;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, [Landroidx/emoji2/text/y;

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    array-length v4, v1

    .line 65
    if-lez v4, :cond_5

    .line 66
    .line 67
    array-length v4, v1

    .line 68
    const/4 v5, 0x0

    .line 69
    :goto_2
    if-ge v5, v4, :cond_5

    .line 70
    .line 71
    aget-object v6, v1, v5

    .line 72
    .line 73
    invoke-virtual {v2, v6}, Landroidx/emoji2/text/K;->getSpanStart(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-virtual {v2, v6}, Landroidx/emoji2/text/K;->getSpanEnd(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eq v7, p3, :cond_4

    .line 82
    .line 83
    invoke-virtual {v2, v6}, Landroidx/emoji2/text/K;->removeSpan(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    add-int/lit8 v5, v5, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    if-eq p2, p3, :cond_16

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-lt p2, v1, :cond_6

    .line 104
    .line 105
    goto/16 :goto_7

    .line 106
    .line 107
    :cond_6
    new-instance v1, Landroidx/emoji2/text/w;

    .line 108
    .line 109
    iget-object v4, p0, Landroidx/emoji2/text/x;->b:Landroidx/emoji2/text/F;

    .line 110
    .line 111
    invoke-virtual {v4}, Landroidx/emoji2/text/F;->e()Landroidx/emoji2/text/E;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-direct {v1, v4}, Landroidx/emoji2/text/w;-><init>(Landroidx/emoji2/text/E;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 119
    .line 120
    .line 121
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_3
    move v5, v4

    .line 123
    move v4, p2

    .line 124
    :cond_7
    :goto_4
    const/16 v6, 0x21

    .line 125
    .line 126
    iget-object v7, p0, Landroidx/emoji2/text/x;->a:Landroidx/emoji2/text/z;

    .line 127
    .line 128
    const v8, 0x7fffffff

    .line 129
    .line 130
    .line 131
    if-ge p2, p3, :cond_f

    .line 132
    .line 133
    if-ge v3, v8, :cond_f

    .line 134
    .line 135
    :try_start_1
    invoke-virtual {v1, v5}, Landroidx/emoji2/text/w;->a(I)I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    const/4 v9, 0x1

    .line 140
    if-eq v8, v9, :cond_d

    .line 141
    .line 142
    const/4 v9, 0x2

    .line 143
    if-eq v8, v9, :cond_c

    .line 144
    .line 145
    const/4 v9, 0x3

    .line 146
    if-eq v8, v9, :cond_8

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_8
    if-nez p4, :cond_a

    .line 150
    .line 151
    invoke-virtual {v1}, Landroidx/emoji2/text/w;->c()Landroidx/emoji2/text/v;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-direct {p0, p1, v4, p2, v8}, Landroidx/emoji2/text/x;->d(Ljava/lang/CharSequence;IILandroidx/emoji2/text/v;)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-nez v8, :cond_9

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_9
    :goto_5
    move v4, v5

    .line 163
    goto :goto_3

    .line 164
    :cond_a
    :goto_6
    if-nez v2, :cond_b

    .line 165
    .line 166
    new-instance v2, Landroidx/emoji2/text/K;

    .line 167
    .line 168
    new-instance v8, Landroid/text/SpannableString;

    .line 169
    .line 170
    invoke-direct {v8, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    invoke-direct {v2, v8}, Landroidx/emoji2/text/K;-><init>(Landroid/text/Spannable;)V

    .line 174
    .line 175
    .line 176
    :cond_b
    invoke-virtual {v1}, Landroidx/emoji2/text/w;->c()Landroidx/emoji2/text/v;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v7, Landroidx/emoji2/text/I;

    .line 184
    .line 185
    invoke-direct {v7, v8}, Landroidx/emoji2/text/I;-><init>(Landroidx/emoji2/text/v;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v7, v4, p2, v6}, Landroidx/emoji2/text/K;->setSpan(Ljava/lang/Object;III)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v3, v3, 0x1

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_c
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    add-int/2addr p2, v6

    .line 199
    if-ge p2, p3, :cond_7

    .line 200
    .line 201
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    goto :goto_4

    .line 206
    :cond_d
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    add-int/2addr v4, p2

    .line 215
    if-ge v4, p3, :cond_e

    .line 216
    .line 217
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    :cond_e
    move p2, v4

    .line 222
    goto :goto_4

    .line 223
    :cond_f
    invoke-virtual {v1}, Landroidx/emoji2/text/w;->d()Z

    .line 224
    .line 225
    .line 226
    move-result p3

    .line 227
    if-eqz p3, :cond_12

    .line 228
    .line 229
    if-ge v3, v8, :cond_12

    .line 230
    .line 231
    if-nez p4, :cond_10

    .line 232
    .line 233
    invoke-virtual {v1}, Landroidx/emoji2/text/w;->b()Landroidx/emoji2/text/v;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    invoke-direct {p0, p1, v4, p2, p3}, Landroidx/emoji2/text/x;->d(Ljava/lang/CharSequence;IILandroidx/emoji2/text/v;)Z

    .line 238
    .line 239
    .line 240
    move-result p3

    .line 241
    if-nez p3, :cond_12

    .line 242
    .line 243
    :cond_10
    if-nez v2, :cond_11

    .line 244
    .line 245
    new-instance p3, Landroidx/emoji2/text/K;

    .line 246
    .line 247
    invoke-direct {p3, p1}, Landroidx/emoji2/text/K;-><init>(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    move-object v2, p3

    .line 251
    :cond_11
    invoke-virtual {v1}, Landroidx/emoji2/text/w;->b()Landroidx/emoji2/text/v;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    new-instance p4, Landroidx/emoji2/text/I;

    .line 259
    .line 260
    invoke-direct {p4, p3}, Landroidx/emoji2/text/I;-><init>(Landroidx/emoji2/text/v;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, p4, v4, p2, v6}, Landroidx/emoji2/text/K;->setSpan(Ljava/lang/Object;III)V

    .line 264
    .line 265
    .line 266
    :cond_12
    if-eqz v2, :cond_14

    .line 267
    .line 268
    invoke-virtual {v2}, Landroidx/emoji2/text/K;->b()Landroid/text/Spannable;

    .line 269
    .line 270
    .line 271
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    if-eqz v0, :cond_13

    .line 273
    .line 274
    check-cast p1, Landroidx/emoji2/text/H;

    .line 275
    .line 276
    invoke-virtual {p1}, Landroidx/emoji2/text/H;->d()V

    .line 277
    .line 278
    .line 279
    :cond_13
    return-object p2

    .line 280
    :cond_14
    if-eqz v0, :cond_15

    .line 281
    .line 282
    move-object p2, p1

    .line 283
    check-cast p2, Landroidx/emoji2/text/H;

    .line 284
    .line 285
    invoke-virtual {p2}, Landroidx/emoji2/text/H;->d()V

    .line 286
    .line 287
    .line 288
    :cond_15
    return-object p1

    .line 289
    :cond_16
    :goto_7
    if-eqz v0, :cond_17

    .line 290
    .line 291
    move-object p2, p1

    .line 292
    check-cast p2, Landroidx/emoji2/text/H;

    .line 293
    .line 294
    invoke-virtual {p2}, Landroidx/emoji2/text/H;->d()V

    .line 295
    .line 296
    .line 297
    :cond_17
    return-object p1

    .line 298
    :catchall_0
    move-exception p2

    .line 299
    if-eqz v0, :cond_18

    .line 300
    .line 301
    check-cast p1, Landroidx/emoji2/text/H;

    .line 302
    .line 303
    invoke-virtual {p1}, Landroidx/emoji2/text/H;->d()V

    .line 304
    .line 305
    .line 306
    :cond_18
    throw p2
.end method
