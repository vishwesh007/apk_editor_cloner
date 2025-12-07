.class public Landroidx/appcompat/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[Ljava/lang/Class;

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[Ljava/lang/String;

.field private static final h:Landroidx/collection/n;


# instance fields
.field private final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-class v2, Landroid/content/Context;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-class v2, Landroid/util/AttributeSet;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->b:[Ljava/lang/Class;

    .line 15
    .line 16
    const v0, 0x101026f

    .line 17
    .line 18
    .line 19
    filled-new-array {v0}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->c:[I

    .line 24
    .line 25
    const v0, 0x1010580

    .line 26
    .line 27
    .line 28
    filled-new-array {v0}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->d:[I

    .line 33
    .line 34
    const v0, 0x101057c

    .line 35
    .line 36
    .line 37
    filled-new-array {v0}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->e:[I

    .line 42
    .line 43
    const v0, 0x1010574

    .line 44
    .line 45
    .line 46
    filled-new-array {v0}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->f:[I

    .line 51
    .line 52
    const-string v0, "android.view."

    .line 53
    .line 54
    const-string v1, "android.webkit."

    .line 55
    .line 56
    const-string v2, "android.widget."

    .line 57
    .line 58
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->g:[Ljava/lang/String;

    .line 63
    .line 64
    new-instance v0, Landroidx/collection/n;

    .line 65
    .line 66
    invoke-direct {v0}, Landroidx/collection/n;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->h:Landroidx/collection/n;

    .line 70
    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 1
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->h:Landroidx/collection/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p2, v1}, Landroidx/collection/n;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p3, p2

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p3, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-class p3, Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object p3, Landroidx/appcompat/app/AppCompatViewInflater;->b:[Ljava/lang/Class;

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, p2, v2}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_1
    const/4 p1, 0x1

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater;->a:[Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    return-object p1

    .line 57
    :catch_0
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;
    .locals 5

    .line 1
    sget-object p1, Ld/a;->A:[I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p3, p4, p1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v3, "AppCompatViewInflater"

    .line 16
    .line 17
    const-string v4, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 18
    .line 19
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    instance-of p1, p3, Landroidx/appcompat/view/f;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    move-object p1, p3

    .line 32
    check-cast p1, Landroidx/appcompat/view/f;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/appcompat/view/f;->b()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eq p1, v2, :cond_2

    .line 39
    .line 40
    :cond_1
    new-instance p1, Landroidx/appcompat/view/f;

    .line 41
    .line 42
    invoke-direct {p1, p3, v2}, Landroidx/appcompat/view/f;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object p1, p3

    .line 47
    :goto_0
    if-eqz p5, :cond_3

    .line 48
    .line 49
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result p5

    .line 60
    const/4 v2, -0x1

    .line 61
    const/4 v3, 0x3

    .line 62
    const/4 v4, 0x1

    .line 63
    sparse-switch p5, :sswitch_data_0

    .line 64
    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :sswitch_0
    const-string p5, "Button"

    .line 69
    .line 70
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p5

    .line 74
    if-nez p5, :cond_4

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_4
    const/16 v1, 0xd

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :sswitch_1
    const-string p5, "EditText"

    .line 83
    .line 84
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p5

    .line 88
    if-nez p5, :cond_5

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_5
    const/16 v1, 0xc

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :sswitch_2
    const-string p5, "CheckBox"

    .line 97
    .line 98
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p5

    .line 102
    if-nez p5, :cond_6

    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_6
    const/16 v1, 0xb

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :sswitch_3
    const-string p5, "AutoCompleteTextView"

    .line 111
    .line 112
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p5

    .line 116
    if-nez p5, :cond_7

    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_7
    const/16 v1, 0xa

    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :sswitch_4
    const-string p5, "ImageView"

    .line 125
    .line 126
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p5

    .line 130
    if-nez p5, :cond_8

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_8
    const/16 v1, 0x9

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :sswitch_5
    const-string p5, "ToggleButton"

    .line 139
    .line 140
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p5

    .line 144
    if-nez p5, :cond_9

    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_9
    const/16 v1, 0x8

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :sswitch_6
    const-string p5, "RadioButton"

    .line 153
    .line 154
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p5

    .line 158
    if-nez p5, :cond_a

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_a
    const/4 v1, 0x7

    .line 162
    goto :goto_2

    .line 163
    :sswitch_7
    const-string p5, "Spinner"

    .line 164
    .line 165
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p5

    .line 169
    if-nez p5, :cond_b

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_b
    const/4 v1, 0x6

    .line 173
    goto :goto_2

    .line 174
    :sswitch_8
    const-string p5, "SeekBar"

    .line 175
    .line 176
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p5

    .line 180
    if-nez p5, :cond_c

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_c
    const/4 v1, 0x5

    .line 184
    goto :goto_2

    .line 185
    :sswitch_9
    const-string p5, "ImageButton"

    .line 186
    .line 187
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p5

    .line 191
    if-nez p5, :cond_11

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :sswitch_a
    const-string p5, "TextView"

    .line 195
    .line 196
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p5

    .line 200
    if-nez p5, :cond_d

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_d
    const/4 v1, 0x3

    .line 204
    goto :goto_2

    .line 205
    :sswitch_b
    const-string p5, "MultiAutoCompleteTextView"

    .line 206
    .line 207
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result p5

    .line 211
    if-nez p5, :cond_e

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_e
    const/4 v1, 0x2

    .line 215
    goto :goto_2

    .line 216
    :sswitch_c
    const-string p5, "CheckedTextView"

    .line 217
    .line 218
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result p5

    .line 222
    if-nez p5, :cond_f

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_f
    const/4 v1, 0x1

    .line 226
    goto :goto_2

    .line 227
    :sswitch_d
    const-string p5, "RatingBar"

    .line 228
    .line 229
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p5

    .line 233
    if-nez p5, :cond_10

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_10
    const/4 v1, 0x0

    .line 237
    goto :goto_2

    .line 238
    :goto_1
    const/4 v1, -0x1

    .line 239
    :cond_11
    :goto_2
    const/4 p5, 0x0

    .line 240
    packed-switch v1, :pswitch_data_0

    .line 241
    .line 242
    .line 243
    move-object v1, p5

    .line 244
    goto :goto_3

    .line 245
    :pswitch_0
    new-instance v1, Landroidx/appcompat/widget/AppCompatButton;

    .line 246
    .line 247
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :pswitch_1
    new-instance v1, Landroidx/appcompat/widget/AppCompatEditText;

    .line 252
    .line 253
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :pswitch_2
    new-instance v1, Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 258
    .line 259
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :pswitch_3
    new-instance v1, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 264
    .line 265
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :pswitch_4
    new-instance v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 270
    .line 271
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :pswitch_5
    new-instance v1, Landroidx/appcompat/widget/AppCompatToggleButton;

    .line 276
    .line 277
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :pswitch_6
    new-instance v1, Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 282
    .line 283
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :pswitch_7
    new-instance v1, Landroidx/appcompat/widget/AppCompatSpinner;

    .line 288
    .line 289
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 290
    .line 291
    .line 292
    goto :goto_3

    .line 293
    :pswitch_8
    new-instance v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 294
    .line 295
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :pswitch_9
    new-instance v1, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 300
    .line 301
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :pswitch_a
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 306
    .line 307
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :pswitch_b
    new-instance v1, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    .line 312
    .line 313
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :pswitch_c
    new-instance v1, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 318
    .line 319
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :pswitch_d
    new-instance v1, Landroidx/appcompat/widget/AppCompatRatingBar;

    .line 324
    .line 325
    invoke-direct {v1, p1, p4}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 326
    .line 327
    .line 328
    :goto_3
    if-nez v1, :cond_16

    .line 329
    .line 330
    if-eq p3, p1, :cond_16

    .line 331
    .line 332
    iget-object p3, p0, Landroidx/appcompat/app/AppCompatViewInflater;->a:[Ljava/lang/Object;

    .line 333
    .line 334
    const-string v1, "view"

    .line 335
    .line 336
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_12

    .line 341
    .line 342
    const-string p2, "class"

    .line 343
    .line 344
    invoke-interface {p4, p5, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    :cond_12
    :try_start_0
    aput-object p1, p3, v0

    .line 349
    .line 350
    aput-object p4, p3, v4

    .line 351
    .line 352
    const/16 v1, 0x2e

    .line 353
    .line 354
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-ne v2, v1, :cond_15

    .line 359
    .line 360
    const/4 v1, 0x0

    .line 361
    :goto_4
    sget-object v2, Landroidx/appcompat/app/AppCompatViewInflater;->g:[Ljava/lang/String;

    .line 362
    .line 363
    if-ge v1, v3, :cond_14

    .line 364
    .line 365
    aget-object v2, v2, v1

    .line 366
    .line 367
    invoke-direct {p0, p1, p2, v2}, Landroidx/appcompat/app/AppCompatViewInflater;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    if-eqz v2, :cond_13

    .line 372
    .line 373
    aput-object p5, p3, v0

    .line 374
    .line 375
    aput-object p5, p3, v4

    .line 376
    .line 377
    move-object p5, v2

    .line 378
    goto :goto_5

    .line 379
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 380
    .line 381
    goto :goto_4

    .line 382
    :cond_14
    aput-object p5, p3, v0

    .line 383
    .line 384
    aput-object p5, p3, v4

    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_15
    :try_start_1
    invoke-direct {p0, p1, p2, p5}, Landroidx/appcompat/app/AppCompatViewInflater;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    aput-object p5, p3, v0

    .line 392
    .line 393
    aput-object p5, p3, v4

    .line 394
    .line 395
    move-object p5, p2

    .line 396
    goto :goto_5

    .line 397
    :catchall_0
    move-exception p1

    .line 398
    aput-object p5, p3, v0

    .line 399
    .line 400
    aput-object p5, p3, v4

    .line 401
    .line 402
    throw p1

    .line 403
    :catch_0
    aput-object p5, p3, v0

    .line 404
    .line 405
    aput-object p5, p3, v4

    .line 406
    .line 407
    :goto_5
    move-object v1, p5

    .line 408
    :cond_16
    if-eqz v1, :cond_1e

    .line 409
    .line 410
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 411
    .line 412
    .line 413
    move-result-object p2

    .line 414
    instance-of p3, p2, Landroid/content/ContextWrapper;

    .line 415
    .line 416
    if-eqz p3, :cond_19

    .line 417
    .line 418
    invoke-static {v1}, Landroidx/core/view/f0;->u(Landroid/view/View;)Z

    .line 419
    .line 420
    .line 421
    move-result p3

    .line 422
    if-nez p3, :cond_17

    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_17
    sget-object p3, Landroidx/appcompat/app/AppCompatViewInflater;->c:[I

    .line 426
    .line 427
    invoke-virtual {p2, p4, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 428
    .line 429
    .line 430
    move-result-object p2

    .line 431
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p3

    .line 435
    if-eqz p3, :cond_18

    .line 436
    .line 437
    new-instance p5, Landroidx/appcompat/app/W;

    .line 438
    .line 439
    invoke-direct {p5, v1, p3}, Landroidx/appcompat/app/W;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    .line 445
    :cond_18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 446
    .line 447
    .line 448
    :cond_19
    :goto_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 449
    .line 450
    const/16 p3, 0x1c

    .line 451
    .line 452
    if-le p2, p3, :cond_1a

    .line 453
    .line 454
    goto :goto_7

    .line 455
    :cond_1a
    sget-object p2, Landroidx/appcompat/app/AppCompatViewInflater;->d:[I

    .line 456
    .line 457
    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 458
    .line 459
    .line 460
    move-result-object p2

    .line 461
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 462
    .line 463
    .line 464
    move-result p3

    .line 465
    if-eqz p3, :cond_1b

    .line 466
    .line 467
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 468
    .line 469
    .line 470
    move-result p3

    .line 471
    invoke-static {v1, p3}, Landroidx/core/view/f0;->L(Landroid/view/View;Z)V

    .line 472
    .line 473
    .line 474
    :cond_1b
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 475
    .line 476
    .line 477
    sget-object p2, Landroidx/appcompat/app/AppCompatViewInflater;->e:[I

    .line 478
    .line 479
    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 484
    .line 485
    .line 486
    move-result p3

    .line 487
    if-eqz p3, :cond_1c

    .line 488
    .line 489
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p3

    .line 493
    invoke-static {v1, p3}, Landroidx/core/view/f0;->M(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 494
    .line 495
    .line 496
    :cond_1c
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 497
    .line 498
    .line 499
    sget-object p2, Landroidx/appcompat/app/AppCompatViewInflater;->f:[I

    .line 500
    .line 501
    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 506
    .line 507
    .line 508
    move-result p2

    .line 509
    if-eqz p2, :cond_1d

    .line 510
    .line 511
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 512
    .line 513
    .line 514
    move-result p2

    .line 515
    invoke-static {v1, p2}, Landroidx/core/view/f0;->V(Landroid/view/View;Z)V

    .line 516
    .line 517
    .line 518
    :cond_1d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 519
    .line 520
    .line 521
    :cond_1e
    :goto_7
    return-object v1

    .line 522
    nop

    .line 523
    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
