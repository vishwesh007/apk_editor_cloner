.class public Leu/faircode/netguard/AdapterAccess;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field private colAllowed:I

.field private colBlock:I

.field private colConnections:I

.field private colCount:I

.field private colDPort:I

.field private colDaddr:I

.field private colProtocol:I

.field private colReceived:I

.field private colSent:I

.field private colTime:I

.field private colVersion:I

.field private colorOff:I

.field private colorOn:I

.field private colorText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 3
    .line 4
    .line 5
    const-string v1, "version"

    .line 6
    .line 7
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, p0, Leu/faircode/netguard/AdapterAccess;->colVersion:I

    .line 12
    .line 13
    const-string v1, "protocol"

    .line 14
    .line 15
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Leu/faircode/netguard/AdapterAccess;->colProtocol:I

    .line 20
    .line 21
    const-string v1, "daddr"

    .line 22
    .line 23
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Leu/faircode/netguard/AdapterAccess;->colDaddr:I

    .line 28
    .line 29
    const-string v1, "dport"

    .line 30
    .line 31
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, p0, Leu/faircode/netguard/AdapterAccess;->colDPort:I

    .line 36
    .line 37
    const-string v1, "time"

    .line 38
    .line 39
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput v1, p0, Leu/faircode/netguard/AdapterAccess;->colTime:I

    .line 44
    .line 45
    const-string v1, "allowed"

    .line 46
    .line 47
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, p0, Leu/faircode/netguard/AdapterAccess;->colAllowed:I

    .line 52
    .line 53
    const-string v1, "block"

    .line 54
    .line 55
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, p0, Leu/faircode/netguard/AdapterAccess;->colBlock:I

    .line 60
    .line 61
    const-string v1, "count"

    .line 62
    .line 63
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput v1, p0, Leu/faircode/netguard/AdapterAccess;->colCount:I

    .line 68
    .line 69
    const-string v1, "sent"

    .line 70
    .line 71
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput v1, p0, Leu/faircode/netguard/AdapterAccess;->colSent:I

    .line 76
    .line 77
    const-string v1, "received"

    .line 78
    .line 79
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iput v1, p0, Leu/faircode/netguard/AdapterAccess;->colReceived:I

    .line 84
    .line 85
    const-string v1, "connections"

    .line 86
    .line 87
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    iput p2, p0, Leu/faircode/netguard/AdapterAccess;->colConnections:I

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    const v1, 0x1010038

    .line 98
    .line 99
    .line 100
    filled-new-array {v1}, [I

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    :try_start_0
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Leu/faircode/netguard/AdapterAccess;->colorText:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    .line 116
    .line 117
    new-instance p2, Landroid/util/TypedValue;

    .line 118
    .line 119
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const v1, 0x7f040064

    .line 127
    .line 128
    .line 129
    const/4 v2, 0x1

    .line 130
    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 131
    .line 132
    .line 133
    iget v0, p2, Landroid/util/TypedValue;->data:I

    .line 134
    .line 135
    iput v0, p0, Leu/faircode/netguard/AdapterAccess;->colorOn:I

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const v0, 0x7f040063

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 145
    .line 146
    .line 147
    iget p1, p2, Landroid/util/TypedValue;->data:I

    .line 148
    .line 149
    iput p1, p0, Leu/faircode/netguard/AdapterAccess;->colorOff:I

    .line 150
    .line 151
    return-void

    .line 152
    :catchall_0
    move-exception p1

    .line 153
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    .line 155
    .line 156
    throw p1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move-object/from16 v1, p3

    .line 8
    .line 9
    iget v2, v6, Leu/faircode/netguard/AdapterAccess;->colVersion:I

    .line 10
    .line 11
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget v2, v6, Leu/faircode/netguard/AdapterAccess;->colProtocol:I

    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget v2, v6, Leu/faircode/netguard/AdapterAccess;->colDaddr:I

    .line 22
    .line 23
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    iget v2, v6, Leu/faircode/netguard/AdapterAccess;->colDPort:I

    .line 28
    .line 29
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    iget v2, v6, Leu/faircode/netguard/AdapterAccess;->colTime:I

    .line 34
    .line 35
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v9

    .line 39
    iget v2, v6, Leu/faircode/netguard/AdapterAccess;->colAllowed:I

    .line 40
    .line 41
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    iget v2, v6, Leu/faircode/netguard/AdapterAccess;->colBlock:I

    .line 46
    .line 47
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget v12, v6, Leu/faircode/netguard/AdapterAccess;->colCount:I

    .line 52
    .line 53
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    iget v13, v6, Leu/faircode/netguard/AdapterAccess;->colSent:I

    .line 58
    .line 59
    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-eqz v13, :cond_0

    .line 64
    .line 65
    const-wide/16 v13, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget v13, v6, Leu/faircode/netguard/AdapterAccess;->colSent:I

    .line 69
    .line 70
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v13

    .line 74
    :goto_0
    iget v15, v6, Leu/faircode/netguard/AdapterAccess;->colReceived:I

    .line 75
    .line 76
    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    if-eqz v15, :cond_1

    .line 81
    .line 82
    const-wide/16 v15, -0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget v15, v6, Leu/faircode/netguard/AdapterAccess;->colReceived:I

    .line 86
    .line 87
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v15

    .line 91
    :goto_1
    move-wide/from16 v17, v15

    .line 92
    .line 93
    iget v15, v6, Leu/faircode/netguard/AdapterAccess;->colConnections:I

    .line 94
    .line 95
    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    if-eqz v15, :cond_2

    .line 100
    .line 101
    const/4 v1, -0x1

    .line 102
    const/4 v15, -0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iget v15, v6, Leu/faircode/netguard/AdapterAccess;->colConnections:I

    .line 105
    .line 106
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    move v15, v1

    .line 111
    :goto_2
    const v1, 0x7f09018c

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroid/widget/TextView;

    .line 119
    .line 120
    const v7, 0x7f090092

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    check-cast v7, Landroid/widget/ImageView;

    .line 128
    .line 129
    move-wide/from16 v19, v13

    .line 130
    .line 131
    const v13, 0x7f090159

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    check-cast v13, Landroid/widget/TextView;

    .line 139
    .line 140
    const v14, 0x7f0900b9

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    check-cast v14, Landroid/widget/LinearLayout;

    .line 148
    .line 149
    move-object/from16 p3, v14

    .line 150
    .line 151
    const v14, 0x7f090154

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    check-cast v14, Landroid/widget/TextView;

    .line 159
    .line 160
    move-object/from16 v16, v14

    .line 161
    .line 162
    const v14, 0x7f09018e

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    move-object v14, v0

    .line 170
    check-cast v14, Landroid/widget/TextView;

    .line 171
    .line 172
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 173
    .line 174
    move-object/from16 p1, v14

    .line 175
    .line 176
    const-string v14, "dd HH:mm"

    .line 177
    .line 178
    invoke-direct {v0, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-virtual {v0, v9}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    if-gez v2, :cond_3

    .line 193
    .line 194
    const/4 v0, 0x0

    .line 195
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_3
    if-lez v2, :cond_4

    .line 200
    .line 201
    const v0, 0x7f080070

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_4
    const v0, 0x7f08006f

    .line 206
    .line 207
    .line 208
    :goto_3
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    .line 210
    .line 211
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const/4 v7, 0x1

    .line 217
    invoke-static {v3, v4, v7}, Leu/faircode/netguard/Util;->getProtocolName(IIZ)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, " "

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, ""

    .line 233
    .line 234
    if-lez v5, :cond_5

    .line 235
    .line 236
    const-string v2, "/"

    .line 237
    .line 238
    invoke-static {v2, v5}, LB/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    goto :goto_5

    .line 243
    :cond_5
    move-object v2, v1

    .line 244
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    if-le v12, v7, :cond_6

    .line 248
    .line 249
    const-string v1, " ?"

    .line 250
    .line 251
    invoke-static {v1, v12}, LB/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v1, Landroid/text/SpannableString;

    .line 263
    .line 264
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    new-instance v2, Landroid/text/style/UnderlineSpan;

    .line 268
    .line 269
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    const/4 v9, 0x0

    .line 277
    invoke-virtual {v1, v2, v9, v0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    invoke-static {v8}, Leu/faircode/netguard/Util;->isNumericAddress(Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_7

    .line 288
    .line 289
    new-instance v10, Leu/faircode/netguard/AdapterAccess$1;

    .line 290
    .line 291
    move-object v0, v10

    .line 292
    move-object/from16 v1, p0

    .line 293
    .line 294
    move-object v2, v13

    .line 295
    invoke-direct/range {v0 .. v5}, Leu/faircode/netguard/AdapterAccess$1;-><init>(Leu/faircode/netguard/AdapterAccess;Landroid/widget/TextView;III)V

    .line 296
    .line 297
    .line 298
    filled-new-array {v8}, [Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v10, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 303
    .line 304
    .line 305
    :cond_7
    if-gez v11, :cond_8

    .line 306
    .line 307
    iget v0, v6, Leu/faircode/netguard/AdapterAccess;->colorText:I

    .line 308
    .line 309
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_8
    if-lez v11, :cond_9

    .line 314
    .line 315
    iget v0, v6, Leu/faircode/netguard/AdapterAccess;->colorOn:I

    .line 316
    .line 317
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_9
    iget v0, v6, Leu/faircode/netguard/AdapterAccess;->colorOff:I

    .line 322
    .line 323
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    .line 325
    .line 326
    :goto_6
    const-wide/16 v0, 0x0

    .line 327
    .line 328
    if-gtz v15, :cond_b

    .line 329
    .line 330
    cmp-long v2, v19, v0

    .line 331
    .line 332
    if-gtz v2, :cond_b

    .line 333
    .line 334
    move-wide/from16 v2, v17

    .line 335
    .line 336
    cmp-long v4, v2, v0

    .line 337
    .line 338
    if-lez v4, :cond_a

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_a
    const/16 v4, 0x8

    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_b
    move-wide/from16 v2, v17

    .line 345
    .line 346
    :goto_7
    const/4 v4, 0x0

    .line 347
    :goto_8
    move-object/from16 v14, p3

    .line 348
    .line 349
    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    if-lez v15, :cond_c

    .line 353
    .line 354
    new-array v4, v7, [Ljava/lang/Object;

    .line 355
    .line 356
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    aput-object v5, v4, v9

    .line 361
    .line 362
    const v5, 0x7f100069

    .line 363
    .line 364
    .line 365
    move-object/from16 v8, p2

    .line 366
    .line 367
    invoke-virtual {v8, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    move-object/from16 v14, v16

    .line 372
    .line 373
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_c
    move-object/from16 v8, p2

    .line 378
    .line 379
    :goto_9
    const-wide/32 v4, 0x4b400000

    .line 380
    .line 381
    .line 382
    const/4 v10, 0x2

    .line 383
    const/4 v11, 0x0

    .line 384
    cmp-long v12, v19, v4

    .line 385
    .line 386
    if-gtz v12, :cond_14

    .line 387
    .line 388
    const-wide/32 v4, 0x40000000

    .line 389
    .line 390
    .line 391
    cmp-long v12, v2, v4

    .line 392
    .line 393
    if-lez v12, :cond_d

    .line 394
    .line 395
    goto/16 :goto_d

    .line 396
    .line 397
    :cond_d
    const-wide/32 v4, 0x12d000

    .line 398
    .line 399
    .line 400
    cmp-long v12, v19, v4

    .line 401
    .line 402
    if-gtz v12, :cond_11

    .line 403
    .line 404
    const-wide/32 v4, 0x100000

    .line 405
    .line 406
    .line 407
    cmp-long v12, v2, v4

    .line 408
    .line 409
    if-lez v12, :cond_e

    .line 410
    .line 411
    goto :goto_b

    .line 412
    :cond_e
    new-array v4, v10, [Ljava/lang/Object;

    .line 413
    .line 414
    const/high16 v5, 0x44800000    # 1024.0f

    .line 415
    .line 416
    cmp-long v10, v19, v0

    .line 417
    .line 418
    if-lez v10, :cond_f

    .line 419
    .line 420
    move-wide/from16 v13, v19

    .line 421
    .line 422
    long-to-float v10, v13

    .line 423
    div-float/2addr v10, v5

    .line 424
    goto :goto_a

    .line 425
    :cond_f
    const/4 v10, 0x0

    .line 426
    :goto_a
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 427
    .line 428
    .line 429
    move-result-object v10

    .line 430
    aput-object v10, v4, v9

    .line 431
    .line 432
    cmp-long v9, v2, v0

    .line 433
    .line 434
    if-lez v9, :cond_10

    .line 435
    .line 436
    long-to-float v0, v2

    .line 437
    div-float v11, v0, v5

    .line 438
    .line 439
    :cond_10
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    aput-object v0, v4, v7

    .line 444
    .line 445
    const v0, 0x7f10007c

    .line 446
    .line 447
    .line 448
    invoke-virtual {v8, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    move-object/from16 v4, p1

    .line 453
    .line 454
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .line 456
    .line 457
    goto :goto_f

    .line 458
    :cond_11
    :goto_b
    move-object/from16 v4, p1

    .line 459
    .line 460
    move-wide/from16 v13, v19

    .line 461
    .line 462
    new-array v5, v10, [Ljava/lang/Object;

    .line 463
    .line 464
    const/high16 v10, 0x49800000    # 1048576.0f

    .line 465
    .line 466
    cmp-long v12, v13, v0

    .line 467
    .line 468
    if-lez v12, :cond_12

    .line 469
    .line 470
    long-to-float v12, v13

    .line 471
    div-float/2addr v12, v10

    .line 472
    goto :goto_c

    .line 473
    :cond_12
    const/4 v12, 0x0

    .line 474
    :goto_c
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 475
    .line 476
    .line 477
    move-result-object v12

    .line 478
    aput-object v12, v5, v9

    .line 479
    .line 480
    cmp-long v9, v2, v0

    .line 481
    .line 482
    if-lez v9, :cond_13

    .line 483
    .line 484
    long-to-float v0, v2

    .line 485
    div-float v11, v0, v10

    .line 486
    .line 487
    :cond_13
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    aput-object v0, v5, v7

    .line 492
    .line 493
    const v0, 0x7f100080

    .line 494
    .line 495
    .line 496
    invoke-virtual {v8, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    .line 502
    .line 503
    goto :goto_f

    .line 504
    :cond_14
    :goto_d
    move-object/from16 v4, p1

    .line 505
    .line 506
    move-wide/from16 v13, v19

    .line 507
    .line 508
    new-array v5, v10, [Ljava/lang/Object;

    .line 509
    .line 510
    const/high16 v10, 0x4e800000

    .line 511
    .line 512
    cmp-long v12, v13, v0

    .line 513
    .line 514
    if-lez v12, :cond_15

    .line 515
    .line 516
    long-to-float v12, v13

    .line 517
    div-float/2addr v12, v10

    .line 518
    goto :goto_e

    .line 519
    :cond_15
    const/4 v12, 0x0

    .line 520
    :goto_e
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 521
    .line 522
    .line 523
    move-result-object v12

    .line 524
    aput-object v12, v5, v9

    .line 525
    .line 526
    cmp-long v9, v2, v0

    .line 527
    .line 528
    if-lez v9, :cond_16

    .line 529
    .line 530
    long-to-float v0, v2

    .line 531
    div-float v11, v0, v10

    .line 532
    .line 533
    :cond_16
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    aput-object v0, v5, v7

    .line 538
    .line 539
    const v0, 0x7f100075

    .line 540
    .line 541
    .line 542
    invoke-virtual {v8, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    .line 548
    .line 549
    :goto_f
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const p2, 0x7f0c001d

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
