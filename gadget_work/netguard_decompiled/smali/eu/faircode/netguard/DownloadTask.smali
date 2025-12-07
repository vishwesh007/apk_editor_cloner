.class public Leu/faircode/netguard/DownloadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field private listener:Leu/faircode/netguard/DownloadTask$Listener;

.field private url:Ljava/net/URL;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/net/URL;Ljava/io/File;Leu/faircode/netguard/DownloadTask$Listener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Leu/faircode/netguard/DownloadTask;->url:Ljava/net/URL;

    .line 7
    .line 8
    iput-object p3, p0, Leu/faircode/netguard/DownloadTask;->file:Ljava/io/File;

    .line 9
    .line 10
    iput-object p4, p0, Leu/faircode/netguard/DownloadTask;->listener:Leu/faircode/netguard/DownloadTask$Listener;

    .line 11
    .line 12
    return-void
.end method

.method private showNotification(I)V
    .locals 9

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Leu/faircode/netguard/ActivitySettings;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    const/high16 v3, 0x8000000

    .line 15
    .line 16
    invoke-static {v1, v2, v0, v3}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Landroid/util/TypedValue;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const v4, 0x7f040063

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 36
    .line 37
    .line 38
    new-instance v3, Landroidx/core/app/w;

    .line 39
    .line 40
    iget-object v4, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 41
    .line 42
    const-string v6, "notify"

    .line 43
    .line 44
    invoke-direct {v3, v4, v6}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const v4, 0x7f080081

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->q(I)V

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 54
    .line 55
    const v6, 0x7f100023

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->k(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v4, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 66
    .line 67
    new-array v6, v5, [Ljava/lang/Object;

    .line 68
    .line 69
    iget-object v7, p0, Leu/faircode/netguard/DownloadTask;->url:Ljava/net/URL;

    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const/4 v8, 0x0

    .line 76
    aput-object v7, v6, v8

    .line 77
    .line 78
    const v7, 0x7f10006f

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, Landroidx/core/app/w;->j(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, p1}, Landroidx/core/app/w;->p(I)V

    .line 92
    .line 93
    .line 94
    iget p1, v1, Landroid/util/TypedValue;->data:I

    .line 95
    .line 96
    invoke-virtual {v3, p1}, Landroidx/core/app/w;->g(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v5}, Landroidx/core/app/w;->n(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v8}, Landroidx/core/app/w;->d(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Landroidx/core/app/w;->e()V

    .line 106
    .line 107
    .line 108
    const/4 p1, -0x1

    .line 109
    invoke-virtual {v3, p1}, Landroidx/core/app/w;->t(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {p1}, Leu/faircode/netguard/Util;->canNotify(Landroid/content/Context;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_0

    .line 119
    .line 120
    iget-object p1, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {p1}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v3}, Landroidx/core/app/w;->b()Landroid/app/Notification;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1, v2, v0}, Landroidx/core/app/H;->e(ILandroid/app/Notification;)V

    .line 131
    .line 132
    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "\n"

    .line 4
    .line 5
    const-string v0, "Content length="

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "Downloading "

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v4, v1, Leu/faircode/netguard/DownloadTask;->url:Ljava/net/URL;

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v4, " into "

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v4, v1, Leu/faircode/netguard/DownloadTask;->file:Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "NetGuard.Download"

    .line 34
    .line 35
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :try_start_0
    iget-object v3, v1, Leu/faircode/netguard/DownloadTask;->url:Ljava/net/URL;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 41
    .line 42
    .line 43
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 44
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 45
    .line 46
    .line 47
    instance-of v5, v3, Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    :try_start_2
    move-object v5, v3

    .line 52
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    const/16 v7, 0xc8

    .line 59
    .line 60
    if-ne v6, v7, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 64
    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v7, " "

    .line 78
    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v6, 0x0

    .line 100
    move-object v7, v6

    .line 101
    move-object v6, v5

    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 124
    .line 125
    .line 126
    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 127
    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    .line 128
    .line 129
    iget-object v0, v1, Leu/faircode/netguard/DownloadTask;->file:Ljava/io/File;

    .line 130
    .line 131
    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 132
    .line 133
    .line 134
    const/16 v0, 0x1000

    .line 135
    .line 136
    :try_start_5
    new-array v0, v0, [B

    .line 137
    .line 138
    const-wide/16 v8, 0x0

    .line 139
    .line 140
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-nez v10, :cond_3

    .line 145
    .line 146
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    const/4 v11, -0x1

    .line 151
    if-eq v10, v11, :cond_3

    .line 152
    .line 153
    const/4 v11, 0x0

    .line 154
    invoke-virtual {v7, v0, v11, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 155
    .line 156
    .line 157
    int-to-long v12, v10

    .line 158
    add-long/2addr v8, v12

    .line 159
    if-lez v5, :cond_2

    .line 160
    .line 161
    const/4 v10, 0x1

    .line 162
    new-array v10, v10, [Ljava/lang/Integer;

    .line 163
    .line 164
    const-wide/16 v12, 0x64

    .line 165
    .line 166
    mul-long v12, v12, v8

    .line 167
    .line 168
    int-to-long v14, v5

    .line 169
    div-long/2addr v12, v14

    .line 170
    long-to-int v13, v12

    .line 171
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    aput-object v12, v10, v11

    .line 176
    .line 177
    invoke-virtual {v1, v10}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v5, "Downloaded size="

    .line 187
    .line 188
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 199
    .line 200
    .line 201
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    move-object v5, v0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-static {v5, v0, v2, v5, v4}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    if-eqz v6, :cond_4

    .line 216
    .line 217
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :catch_1
    move-exception v0

    .line 222
    move-object v5, v0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-static {v5, v0, v2, v5, v4}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_4
    :goto_3
    instance-of v0, v3, Ljava/net/HttpURLConnection;

    .line 232
    .line 233
    if-eqz v0, :cond_5

    .line 234
    .line 235
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 236
    .line 237
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 238
    .line 239
    .line 240
    :cond_5
    const/4 v0, 0x0

    .line 241
    return-object v0

    .line 242
    :catchall_1
    move-exception v0

    .line 243
    goto :goto_5

    .line 244
    :catchall_2
    move-exception v0

    .line 245
    const/4 v5, 0x0

    .line 246
    move-object v7, v5

    .line 247
    goto :goto_5

    .line 248
    :catchall_3
    move-exception v0

    .line 249
    const/4 v5, 0x0

    .line 250
    goto :goto_4

    .line 251
    :catchall_4
    move-exception v0

    .line 252
    const/4 v3, 0x0

    .line 253
    move-object v5, v3

    .line 254
    :goto_4
    move-object v6, v5

    .line 255
    move-object v7, v6

    .line 256
    :goto_5
    move-object v5, v3

    .line 257
    move-object v3, v0

    .line 258
    if-eqz v7, :cond_6

    .line 259
    .line 260
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 261
    .line 262
    .line 263
    goto :goto_6

    .line 264
    :catch_2
    move-exception v0

    .line 265
    move-object v7, v0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-static {v7, v0, v2, v7, v4}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_6
    :goto_6
    if-eqz v6, :cond_7

    .line 275
    .line 276
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 277
    .line 278
    .line 279
    goto :goto_7

    .line 280
    :catch_3
    move-exception v0

    .line 281
    move-object v6, v0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-static {v6, v0, v2, v6, v4}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_7
    :goto_7
    instance-of v0, v5, Ljava/net/HttpURLConnection;

    .line 291
    .line 292
    if-eqz v0, :cond_8

    .line 293
    .line 294
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 297
    .line 298
    .line 299
    :cond_8
    return-object v3
.end method

.method protected onCancelled()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetGuard.Download"

    .line 5
    .line 6
    const-string v1, "Cancelled"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Leu/faircode/netguard/DownloadTask;->listener:Leu/faircode/netguard/DownloadTask$Listener;

    .line 12
    .line 13
    invoke-interface {v0}, Leu/faircode/netguard/DownloadTask$Listener;->onCancelled()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/DownloadTask;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/core/app/H;->b(I)V

    .line 15
    .line 16
    .line 17
    instance-of v0, p1, Ljava/lang/Throwable;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\n"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    check-cast p1, Ljava/lang/Throwable;

    .line 39
    .line 40
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "NetGuard.Download"

    .line 52
    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Leu/faircode/netguard/DownloadTask;->listener:Leu/faircode/netguard/DownloadTask$Listener;

    .line 57
    .line 58
    invoke-interface {v0, p1}, Leu/faircode/netguard/DownloadTask$Listener;->onException(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Leu/faircode/netguard/DownloadTask;->listener:Leu/faircode/netguard/DownloadTask$Listener;

    .line 63
    .line 64
    invoke-interface {p1}, Leu/faircode/netguard/DownloadTask$Listener;->onCompleted()V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "power"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/PowerManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Leu/faircode/netguard/DownloadTask;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Leu/faircode/netguard/DownloadTask;->showNotification(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Leu/faircode/netguard/Util;->isPlayStoreInstall(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Leu/faircode/netguard/DownloadTask;->context:Landroid/content/Context;

    .line 42
    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v3, p0, Leu/faircode/netguard/DownloadTask;->url:Ljava/net/URL;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    aput-object v3, v2, v0

    .line 52
    .line 53
    const v3, 0x7f10006f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Leu/faircode/netguard/DownloadTask;->showNotification(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
