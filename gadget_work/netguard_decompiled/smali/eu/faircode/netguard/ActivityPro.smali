.class public Leu/faircode/netguard/ActivityPro;
.super Landroidx/appcompat/app/q;
.source "SourceFile"


# instance fields
.field private iab:Leu/faircode/netguard/IAB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/q;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Leu/faircode/netguard/ActivityPro;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivityPro;->updateState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private menu_challenge()V
    .locals 7

    .line 1
    const-string v0, "donation"

    .line 2
    .line 3
    invoke-static {v0, p0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const v0, 0x7f100134

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x0

    .line 30
    const v3, 0x7f0c0021

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Landroidx/appcompat/app/m;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/m;->m(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/m;->d(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "android_id"

    .line 58
    .line 59
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    const/16 v4, 0x1a

    .line 66
    .line 67
    if-ge v3, v4, :cond_1

    .line 68
    .line 69
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v6, "O3"

    .line 75
    .line 76
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :goto_0
    if-ge v3, v4, :cond_2

    .line 87
    .line 88
    const-string v3, "NetGuard2"

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const-string v3, "NetGuard3"

    .line 92
    .line 93
    :goto_1
    const v4, 0x7f090153

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    const v4, 0x7f090083

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Landroid/widget/ImageButton;

    .line 113
    .line 114
    new-instance v5, Leu/faircode/netguard/ActivityPro$3;

    .line 115
    .line 116
    invoke-direct {v5, p0, v2}, Leu/faircode/netguard/ActivityPro$3;-><init>(Leu/faircode/netguard/ActivityPro;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    const v4, 0x7f090078

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Landroid/widget/EditText;

    .line 130
    .line 131
    :try_start_0
    invoke-static {v2, v3}, Leu/faircode/netguard/Util;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    new-instance v3, Leu/faircode/netguard/ActivityPro$4;

    .line 136
    .line 137
    invoke-direct {v3, p0, v2, v1}, Leu/faircode/netguard/ActivityPro$4;-><init>(Leu/faircode/netguard/ActivityPro;Ljava/lang/String;Landroidx/appcompat/app/n;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_0
    move-exception v2

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v5, "\n"

    .line 151
    .line 152
    const-string v6, "NetGuard.Pro"

    .line 153
    .line 154
    invoke-static {v2, v3, v5, v2, v6}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_2
    const v2, 0x7f090086

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Landroid/widget/ImageButton;

    .line 165
    .line 166
    new-instance v2, Leu/faircode/netguard/ActivityPro$5;

    .line 167
    .line 168
    invoke-direct {v2, p0, v4}, Leu/faircode/netguard/ActivityPro$5;-><init>(Leu/faircode/netguard/ActivityPro;Landroid/widget/EditText;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method private updateState()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const v1, 0x7f09004d

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/widget/Button;

    .line 11
    .line 12
    const v2, 0x7f09004c

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/Button;

    .line 20
    .line 21
    const v3, 0x7f09004f

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/widget/Button;

    .line 29
    .line 30
    const v4, 0x7f090054

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/widget/Button;

    .line 38
    .line 39
    const v5, 0x7f090056

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/widget/Button;

    .line 47
    .line 48
    const v6, 0x7f090045

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Landroid/widget/Button;

    .line 56
    .line 57
    const v7, 0x7f090049

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v7}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Landroid/widget/Button;

    .line 65
    .line 66
    const v8, 0x7f09004a

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v8}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Landroid/widget/Button;

    .line 74
    .line 75
    const v9, 0x7f09016d

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v9}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Landroid/widget/TextView;

    .line 83
    .line 84
    const v10, 0x7f090164

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    check-cast v10, Landroid/widget/TextView;

    .line 92
    .line 93
    const v11, 0x7f090174

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v11}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    check-cast v11, Landroid/widget/TextView;

    .line 101
    .line 102
    const v12, 0x7f090186

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v12}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    check-cast v12, Landroid/widget/TextView;

    .line 110
    .line 111
    const v13, 0x7f09018a

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v13}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    check-cast v13, Landroid/widget/TextView;

    .line 119
    .line 120
    const v14, 0x7f090151

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v14}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    check-cast v14, Landroid/widget/TextView;

    .line 128
    .line 129
    const v15, 0x7f09015a

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v15}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    check-cast v15, Landroid/widget/TextView;

    .line 137
    .line 138
    move-object/from16 v16, v15

    .line 139
    .line 140
    const v15, 0x7f09015c

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v15}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    check-cast v15, Landroid/widget/TextView;

    .line 148
    .line 149
    move-object/from16 v17, v15

    .line 150
    .line 151
    const v15, 0x7f09016f

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v15}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    check-cast v15, Landroid/widget/TextView;

    .line 159
    .line 160
    move-object/from16 v18, v15

    .line 161
    .line 162
    const v15, 0x7f090167

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v15}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    check-cast v15, Landroid/widget/TextView;

    .line 170
    .line 171
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->canFilter(Landroid/content/Context;)Z

    .line 172
    .line 173
    .line 174
    move-result v19

    .line 175
    move-object/from16 v20, v15

    .line 176
    .line 177
    const-string v15, "log"

    .line 178
    .line 179
    invoke-static {v15, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 180
    .line 181
    .line 182
    move-result v21

    .line 183
    const/16 v22, 0x0

    .line 184
    .line 185
    const/16 v23, 0x8

    .line 186
    .line 187
    if-nez v21, :cond_1

    .line 188
    .line 189
    if-nez v19, :cond_0

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_0
    move-object/from16 v21, v14

    .line 193
    .line 194
    const/4 v14, 0x0

    .line 195
    goto :goto_1

    .line 196
    :cond_1
    :goto_0
    move-object/from16 v21, v14

    .line 197
    .line 198
    const/16 v14, 0x8

    .line 199
    .line 200
    :goto_1
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    const-string v1, "filter"

    .line 204
    .line 205
    invoke-static {v1, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-nez v14, :cond_3

    .line 210
    .line 211
    if-nez v19, :cond_2

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_2
    const/4 v14, 0x0

    .line 215
    goto :goto_3

    .line 216
    :cond_3
    :goto_2
    const/16 v14, 0x8

    .line 217
    .line 218
    :goto_3
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    const-string v2, "notify"

    .line 222
    .line 223
    invoke-static {v2, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 224
    .line 225
    .line 226
    move-result v14

    .line 227
    if-eqz v14, :cond_4

    .line 228
    .line 229
    const/16 v14, 0x8

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_4
    const/4 v14, 0x0

    .line 233
    :goto_4
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    const-string v3, "speed"

    .line 237
    .line 238
    invoke-static {v3, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    if-eqz v14, :cond_5

    .line 243
    .line 244
    const/16 v14, 0x8

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_5
    const/4 v14, 0x0

    .line 248
    :goto_5
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    const-string v4, "theme"

    .line 252
    .line 253
    invoke-static {v4, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 254
    .line 255
    .line 256
    move-result v14

    .line 257
    if-eqz v14, :cond_6

    .line 258
    .line 259
    const/16 v14, 0x8

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_6
    const/4 v14, 0x0

    .line 263
    :goto_6
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    const-string v5, "pro1"

    .line 267
    .line 268
    invoke-static {v5, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 269
    .line 270
    .line 271
    move-result v14

    .line 272
    if-eqz v14, :cond_7

    .line 273
    .line 274
    const/16 v14, 0x8

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_7
    const/4 v14, 0x0

    .line 278
    :goto_7
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    const-string v6, "support1"

    .line 282
    .line 283
    invoke-static {v6, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 284
    .line 285
    .line 286
    move-result v14

    .line 287
    if-eqz v14, :cond_8

    .line 288
    .line 289
    const/16 v14, 0x8

    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_8
    const/4 v14, 0x0

    .line 293
    :goto_8
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    const-string v7, "support2"

    .line 297
    .line 298
    invoke-static {v7, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    if-eqz v14, :cond_9

    .line 303
    .line 304
    const/16 v14, 0x8

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_9
    const/4 v14, 0x0

    .line 308
    :goto_9
    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    invoke-static {v15, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    if-eqz v8, :cond_a

    .line 316
    .line 317
    if-eqz v19, :cond_a

    .line 318
    .line 319
    const/4 v8, 0x0

    .line 320
    goto :goto_a

    .line 321
    :cond_a
    const/16 v8, 0x8

    .line 322
    .line 323
    :goto_a
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 324
    .line 325
    .line 326
    invoke-static {v1, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_b

    .line 331
    .line 332
    if-eqz v19, :cond_b

    .line 333
    .line 334
    const/4 v1, 0x0

    .line 335
    goto :goto_b

    .line 336
    :cond_b
    const/16 v1, 0x8

    .line 337
    .line 338
    :goto_b
    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    invoke-static {v2, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_c

    .line 346
    .line 347
    const/4 v1, 0x0

    .line 348
    goto :goto_c

    .line 349
    :cond_c
    const/16 v1, 0x8

    .line 350
    .line 351
    :goto_c
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    invoke-static {v3, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_d

    .line 359
    .line 360
    const/4 v1, 0x0

    .line 361
    goto :goto_d

    .line 362
    :cond_d
    const/16 v1, 0x8

    .line 363
    .line 364
    :goto_d
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    invoke-static {v4, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_e

    .line 372
    .line 373
    const/4 v1, 0x0

    .line 374
    goto :goto_e

    .line 375
    :cond_e
    const/16 v1, 0x8

    .line 376
    .line 377
    :goto_e
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    invoke-static {v5, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    move-object/from16 v14, v21

    .line 385
    .line 386
    if-eqz v1, :cond_f

    .line 387
    .line 388
    const/4 v1, 0x0

    .line 389
    goto :goto_f

    .line 390
    :cond_f
    const/16 v1, 0x8

    .line 391
    .line 392
    :goto_f
    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    .line 394
    .line 395
    invoke-static {v6, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    move-object/from16 v15, v16

    .line 400
    .line 401
    if-eqz v1, :cond_10

    .line 402
    .line 403
    const/4 v1, 0x0

    .line 404
    goto :goto_10

    .line 405
    :cond_10
    const/16 v1, 0x8

    .line 406
    .line 407
    :goto_10
    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    .line 409
    .line 410
    invoke-static {v7, v0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    move-object/from16 v15, v17

    .line 415
    .line 416
    if-eqz v1, :cond_11

    .line 417
    .line 418
    const/4 v1, 0x0

    .line 419
    goto :goto_11

    .line 420
    :cond_11
    const/16 v1, 0x8

    .line 421
    .line 422
    :goto_11
    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    move-object/from16 v15, v18

    .line 426
    .line 427
    if-eqz v19, :cond_12

    .line 428
    .line 429
    const/16 v1, 0x8

    .line 430
    .line 431
    goto :goto_12

    .line 432
    :cond_12
    const/4 v1, 0x0

    .line 433
    :goto_12
    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    .line 435
    .line 436
    move-object/from16 v15, v20

    .line 437
    .line 438
    if-eqz v19, :cond_13

    .line 439
    .line 440
    const/16 v1, 0x8

    .line 441
    .line 442
    goto :goto_13

    .line 443
    :cond_13
    const/4 v1, 0x0

    .line 444
    :goto_13
    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    .line 446
    .line 447
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    const-string v0, "NetGuard.Pro"

    .line 2
    .line 3
    const-string v1, "Create"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Leu/faircode/netguard/Util;->setTheme(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroidx/fragment/app/y;->onCreate(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0c0049

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const v1, 0x7f100132

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/d;->e(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/d;->c(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v1, 0x2

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Leu/faircode/netguard/ActivityPro;->updateState()V

    .line 47
    .line 48
    .line 49
    const p1, 0x1020002

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const v1, 0x7f09015f

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/widget/TextView;

    .line 64
    .line 65
    const v2, 0x7f09016e

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/widget/TextView;

    .line 73
    .line 74
    const v3, 0x7f090166

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroid/widget/TextView;

    .line 82
    .line 83
    const v4, 0x7f090175

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/widget/TextView;

    .line 91
    .line 92
    const v5, 0x7f090187

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Landroid/widget/TextView;

    .line 100
    .line 101
    const v6, 0x7f09018b

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Landroid/widget/TextView;

    .line 109
    .line 110
    const v7, 0x7f090152

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Landroid/widget/TextView;

    .line 118
    .line 119
    const v8, 0x7f09015b

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    check-cast v8, Landroid/widget/TextView;

    .line 127
    .line 128
    const v9, 0x7f09015d

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    check-cast v9, Landroid/widget/TextView;

    .line 136
    .line 137
    const/16 v10, 0x8

    .line 138
    .line 139
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    or-int/2addr v11, v10

    .line 147
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    or-int/2addr v11, v10

    .line 155
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    or-int/2addr v11, v10

    .line 163
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    or-int/2addr v11, v10

    .line 171
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    or-int/2addr v11, v10

    .line 179
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    or-int/2addr v11, v10

    .line 187
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    or-int/2addr v11, v10

    .line 195
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    or-int/2addr v10, v11

    .line 203
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 204
    .line 205
    .line 206
    new-instance v10, Leu/faircode/netguard/ActivityPro$1;

    .line 207
    .line 208
    invoke-direct {v10, p0}, Leu/faircode/netguard/ActivityPro$1;-><init>(Leu/faircode/netguard/ActivityPro;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    .line 235
    :try_start_0
    new-instance v2, Leu/faircode/netguard/IAB;

    .line 236
    .line 237
    new-instance v3, Leu/faircode/netguard/ActivityPro$2;

    .line 238
    .line 239
    invoke-direct {v3, p0, p1, v1}, Leu/faircode/netguard/ActivityPro$2;-><init>(Leu/faircode/netguard/ActivityPro;Landroid/view/View;Landroid/widget/TextView;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {v2, v3, p0}, Leu/faircode/netguard/IAB;-><init>(Leu/faircode/netguard/IAB$Delegate;Landroid/content/Context;)V

    .line 243
    .line 244
    .line 245
    iput-object v2, p0, Leu/faircode/netguard/ActivityPro;->iab:Leu/faircode/netguard/IAB;

    .line 246
    .line 247
    invoke-virtual {v2}, Leu/faircode/netguard/IAB;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .line 249
    .line 250
    goto :goto_0

    .line 251
    :catchall_0
    move-exception p1

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v2, "\n"

    .line 258
    .line 259
    invoke-static {p1, v1, v2, p1, v0}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0007

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    const-string v0, "NetGuard.Pro"

    .line 2
    .line 3
    const-string v1, "Destroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro;->iab:Leu/faircode/netguard/IAB;

    .line 9
    .line 10
    invoke-virtual {v0}, Leu/faircode/netguard/IAB;->unbind()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Leu/faircode/netguard/ActivityPro;->iab:Leu/faircode/netguard/IAB;

    .line 15
    .line 16
    invoke-super {p0}, Landroidx/appcompat/app/q;->onDestroy()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const v1, 0x7f0900cc

    .line 12
    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-direct {p0}, Leu/faircode/netguard/ActivityPro;->menu_challenge()V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    const-string p1, "NetGuard.Pro"

    .line 26
    .line 27
    const-string v0, "Up"

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Landroidx/core/app/r;->d(Landroid/app/Activity;)V

    .line 33
    .line 34
    .line 35
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/Util;->isPlayStoreInstall(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7f0900cc

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
