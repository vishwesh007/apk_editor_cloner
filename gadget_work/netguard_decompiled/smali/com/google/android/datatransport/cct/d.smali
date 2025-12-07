.class final Lcom/google/android/datatransport/cct/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/o;


# instance fields
.field private final a:LA0/a;

.field private final b:Landroid/net/ConnectivityManager;

.field private final c:Landroid/content/Context;

.field final d:Ljava/net/URL;

.field private final e:Lj0/a;

.field private final f:Lj0/a;

.field private final g:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lj0/a;Lj0/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LC0/f;

    .line 5
    .line 6
    invoke-direct {v0}, LC0/f;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, La0/h;->a:La0/h;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, La0/h;->a(LB0/a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, LC0/f;->g()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, LC0/f;->f()LA0/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/datatransport/cct/d;->a:LA0/a;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/datatransport/cct/d;->c:Landroid/content/Context;

    .line 24
    .line 25
    const-string v0, "connectivity"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/datatransport/cct/d;->b:Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    sget-object p1, Lcom/google/android/datatransport/cct/a;->c:Ljava/lang/String;

    .line 36
    .line 37
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/datatransport/cct/d;->d:Ljava/net/URL;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/google/android/datatransport/cct/d;->e:Lj0/a;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/google/android/datatransport/cct/d;->f:Lj0/a;

    .line 47
    .line 48
    const p1, 0x1fbd0

    .line 49
    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/datatransport/cct/d;->g:I

    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception p2

    .line 55
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "Invalid url: "

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p3, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p3
.end method

.method public static c(Lcom/google/android/datatransport/cct/d;Lcom/google/android/datatransport/cct/b;)Lcom/google/android/datatransport/cct/c;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/datatransport/cct/b;->a:Ljava/net/URL;

    .line 5
    .line 6
    const-string v1, "CctTransportBackend"

    .line 7
    .line 8
    const-string v2, "Making request to: %s"

    .line 9
    .line 10
    invoke-static {v2, v0}, Lt0/a;->x(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/google/android/datatransport/cct/b;->a:Ljava/net/URL;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 20
    .line 21
    const/16 v2, 0x7530

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/google/android/datatransport/cct/d;->g:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 37
    .line 38
    .line 39
    const-string v4, "POST"

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    .line 46
    const-string v4, "3.1.8"

    .line 47
    .line 48
    aput-object v4, v2, v3

    .line 49
    .line 50
    const-string v3, "datatransport/%s android/"

    .line 51
    .line 52
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "User-Agent"

    .line 57
    .line 58
    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "Content-Encoding"

    .line 62
    .line 63
    const-string v3, "gzip"

    .line 64
    .line 65
    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v4, "application/json"

    .line 69
    .line 70
    const-string v5, "Content-Type"

    .line 71
    .line 72
    invoke-virtual {v0, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v4, "Accept-Encoding"

    .line 76
    .line 77
    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p1, Lcom/google/android/datatransport/cct/b;->c:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v4, :cond_0

    .line 83
    .line 84
    const-string v6, "X-Goog-Api-Key"

    .line 85
    .line 86
    invoke-virtual {v0, v6, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 93
    .line 94
    .line 95
    move-result-object v8
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch LA0/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    .line 97
    .line 98
    invoke-direct {v9, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 99
    .line 100
    .line 101
    :try_start_2
    iget-object p0, p0, Lcom/google/android/datatransport/cct/d;->a:LA0/a;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/google/android/datatransport/cct/b;->b:La0/u;

    .line 104
    .line 105
    new-instance v10, Ljava/io/BufferedWriter;

    .line 106
    .line 107
    new-instance v11, Ljava/io/OutputStreamWriter;

    .line 108
    .line 109
    invoke-direct {v11, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, p1, v10}, LA0/a;->a(La0/u;Ljava/io/BufferedWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 116
    .line 117
    .line 118
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 119
    .line 120
    .line 121
    if-eqz v8, :cond_1

    .line 122
    .line 123
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch LA0/b; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 124
    .line 125
    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    const-string p1, "Status Code: %d"

    .line 131
    .line 132
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-static {p1, v8}, Lt0/a;->x(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 137
    .line 138
    .line 139
    const-string p1, "Content-Type: %s"

    .line 140
    .line 141
    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v1, p1, v5}, Lt0/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    const-string p1, "Content-Encoding: %s"

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-static {v1, p1, v5}, Lt0/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    const/16 p1, 0x12e

    .line 158
    .line 159
    if-eq p0, p1, :cond_9

    .line 160
    .line 161
    const/16 p1, 0x12d

    .line 162
    .line 163
    if-eq p0, p1, :cond_9

    .line 164
    .line 165
    const/16 p1, 0x133

    .line 166
    .line 167
    if-ne p0, p1, :cond_2

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_2
    const/16 p1, 0xc8

    .line 171
    .line 172
    if-eq p0, p1, :cond_3

    .line 173
    .line 174
    new-instance p1, Lcom/google/android/datatransport/cct/c;

    .line 175
    .line 176
    invoke-direct {p1, p0, v4, v6, v7}, Lcom/google/android/datatransport/cct/c;-><init>(ILjava/net/URL;J)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :cond_3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    :try_start_5
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_4

    .line 194
    .line 195
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 196
    .line 197
    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_4
    move-object v0, p1

    .line 202
    :goto_0
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    .line 203
    .line 204
    new-instance v2, Ljava/io/InputStreamReader;

    .line 205
    .line 206
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v1}, La0/A;->a(Ljava/io/BufferedReader;)La0/A;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, La0/A;->b()J

    .line 217
    .line 218
    .line 219
    move-result-wide v1

    .line 220
    new-instance v3, Lcom/google/android/datatransport/cct/c;

    .line 221
    .line 222
    invoke-direct {v3, p0, v4, v1, v2}, Lcom/google/android/datatransport/cct/c;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    .line 224
    .line 225
    if-eqz v0, :cond_5

    .line 226
    .line 227
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 228
    .line 229
    .line 230
    :cond_5
    if-eqz p1, :cond_6

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 233
    .line 234
    .line 235
    :cond_6
    move-object p1, v3

    .line 236
    goto :goto_8

    .line 237
    :catchall_0
    move-exception p0

    .line 238
    if-eqz v0, :cond_7

    .line 239
    .line 240
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :catchall_1
    move-exception v0

    .line 245
    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    :cond_7
    :goto_1
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 249
    :catchall_2
    move-exception p0

    .line 250
    if-eqz p1, :cond_8

    .line 251
    .line 252
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :catchall_3
    move-exception p1

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    :cond_8
    :goto_2
    throw p0

    .line 261
    :cond_9
    :goto_3
    const-string p1, "Location"

    .line 262
    .line 263
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    new-instance v0, Lcom/google/android/datatransport/cct/c;

    .line 268
    .line 269
    new-instance v1, Ljava/net/URL;

    .line 270
    .line 271
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-direct {v0, p0, v1, v6, v7}, Lcom/google/android/datatransport/cct/c;-><init>(ILjava/net/URL;J)V

    .line 275
    .line 276
    .line 277
    move-object p1, v0

    .line 278
    goto :goto_8

    .line 279
    :catchall_4
    move-exception p0

    .line 280
    :try_start_b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :catchall_5
    move-exception p1

    .line 285
    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 286
    .line 287
    .line 288
    :goto_4
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 289
    :catchall_6
    move-exception p0

    .line 290
    if-eqz v8, :cond_a

    .line 291
    .line 292
    :try_start_d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :catchall_7
    move-exception p1

    .line 297
    :try_start_e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    :cond_a
    :goto_5
    throw p0
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch LA0/b; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 301
    :catch_0
    move-exception p0

    .line 302
    goto :goto_6

    .line 303
    :catch_1
    move-exception p0

    .line 304
    :goto_6
    const-string p1, "Couldn\'t encode request, returning with 400"

    .line 305
    .line 306
    invoke-static {v1, p1, p0}, Lt0/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 307
    .line 308
    .line 309
    new-instance p1, Lcom/google/android/datatransport/cct/c;

    .line 310
    .line 311
    const/16 p0, 0x190

    .line 312
    .line 313
    invoke-direct {p1, p0, v4, v6, v7}, Lcom/google/android/datatransport/cct/c;-><init>(ILjava/net/URL;J)V

    .line 314
    .line 315
    .line 316
    goto :goto_8

    .line 317
    :catch_2
    move-exception p0

    .line 318
    goto :goto_7

    .line 319
    :catch_3
    move-exception p0

    .line 320
    :goto_7
    const-string p1, "Couldn\'t open connection, returning with 500"

    .line 321
    .line 322
    invoke-static {v1, p1, p0}, Lt0/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 323
    .line 324
    .line 325
    new-instance p1, Lcom/google/android/datatransport/cct/c;

    .line 326
    .line 327
    const/16 p0, 0x1f4

    .line 328
    .line 329
    invoke-direct {p1, p0, v4, v6, v7}, Lcom/google/android/datatransport/cct/c;-><init>(ILjava/net/URL;J)V

    .line 330
    .line 331
    .line 332
    :goto_8
    return-object p1
.end method


# virtual methods
.method public final a(Lc0/g;)Lc0/h;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lc0/g;->b()Ljava/lang/Iterable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lb0/s;

    .line 25
    .line 26
    invoke-virtual {v2}, Lb0/s;->j()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    new-instance v4, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const-string v3, "CctTransportBackend"

    .line 76
    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/util/List;

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lb0/s;

    .line 97
    .line 98
    invoke-static {}, La0/z;->a()La0/x;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    sget-object v5, La0/E;->d:La0/E;

    .line 103
    .line 104
    invoke-virtual {v4}, La0/x;->C()La0/x;

    .line 105
    .line 106
    .line 107
    iget-object v5, p0, Lcom/google/android/datatransport/cct/d;->f:Lj0/a;

    .line 108
    .line 109
    invoke-interface {v5}, Lj0/a;->a()J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    invoke-virtual {v4, v5, v6}, La0/x;->D(J)La0/x;

    .line 114
    .line 115
    .line 116
    iget-object v5, p0, Lcom/google/android/datatransport/cct/d;->e:Lj0/a;

    .line 117
    .line 118
    invoke-interface {v5}, Lj0/a;->a()J

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    invoke-virtual {v4, v5, v6}, La0/x;->E(J)La0/x;

    .line 123
    .line 124
    .line 125
    invoke-static {}, La0/w;->a()La0/x;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5}, La0/x;->i()La0/x;

    .line 130
    .line 131
    .line 132
    invoke-static {}, La0/a;->a()La0/x;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const-string v7, "sdk-version"

    .line 137
    .line 138
    invoke-virtual {v3, v7}, Lb0/s;->g(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v6, v7}, La0/x;->F(Ljava/lang/Integer;)La0/x;

    .line 147
    .line 148
    .line 149
    const-string v7, "model"

    .line 150
    .line 151
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v6, v7}, La0/x;->x(Ljava/lang/String;)La0/x;

    .line 156
    .line 157
    .line 158
    const-string v7, "hardware"

    .line 159
    .line 160
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v6, v7}, La0/x;->p(Ljava/lang/String;)La0/x;

    .line 165
    .line 166
    .line 167
    const-string v7, "device"

    .line 168
    .line 169
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-virtual {v6, v7}, La0/x;->k(Ljava/lang/String;)La0/x;

    .line 174
    .line 175
    .line 176
    const-string v7, "product"

    .line 177
    .line 178
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v6, v7}, La0/x;->B(Ljava/lang/String;)La0/x;

    .line 183
    .line 184
    .line 185
    const-string v7, "os-uild"

    .line 186
    .line 187
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v6, v7}, La0/x;->A(Ljava/lang/String;)La0/x;

    .line 192
    .line 193
    .line 194
    const-string v7, "manufacturer"

    .line 195
    .line 196
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v6, v7}, La0/x;->u(Ljava/lang/String;)La0/x;

    .line 201
    .line 202
    .line 203
    const-string v7, "fingerprint"

    .line 204
    .line 205
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v6, v7}, La0/x;->o(Ljava/lang/String;)La0/x;

    .line 210
    .line 211
    .line 212
    const-string v7, "country"

    .line 213
    .line 214
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {v6, v7}, La0/x;->j(Ljava/lang/String;)La0/x;

    .line 219
    .line 220
    .line 221
    const-string v7, "locale"

    .line 222
    .line 223
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-virtual {v6, v7}, La0/x;->q(Ljava/lang/String;)La0/x;

    .line 228
    .line 229
    .line 230
    const-string v7, "mcc_mnc"

    .line 231
    .line 232
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {v6, v7}, La0/x;->v(Ljava/lang/String;)La0/x;

    .line 237
    .line 238
    .line 239
    const-string v7, "application_build"

    .line 240
    .line 241
    invoke-virtual {v3, v7}, Lb0/s;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v6, v3}, La0/x;->g(Ljava/lang/String;)La0/x;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6}, La0/x;->a()La0/a;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v5, v3}, La0/x;->f(La0/a;)La0/x;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5}, La0/x;->b()La0/w;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v4, v3}, La0/x;->h(La0/w;)La0/x;

    .line 260
    .line 261
    .line 262
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Ljava/lang/String;

    .line 267
    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    invoke-virtual {v4, v3}, La0/x;->G(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :catch_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v4, v3}, La0/x;->H(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    check-cast v2, Ljava/util/List;

    .line 295
    .line 296
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-eqz v5, :cond_5

    .line 305
    .line 306
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    check-cast v5, Lb0/s;

    .line 311
    .line 312
    invoke-virtual {v5}, Lb0/s;->e()Lb0/q;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-virtual {v6}, Lb0/q;->b()LZ/b;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    const-string v8, "proto"

    .line 321
    .line 322
    invoke-static {v8}, LZ/b;->b(Ljava/lang/String;)LZ/b;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    invoke-virtual {v7, v8}, LZ/b;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    if-eqz v8, :cond_2

    .line 331
    .line 332
    invoke-virtual {v6}, Lb0/q;->a()[B

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-static {v6}, La0/y;->i([B)La0/x;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    goto :goto_4

    .line 341
    :cond_2
    const-string v8, "json"

    .line 342
    .line 343
    invoke-static {v8}, LZ/b;->b(Ljava/lang/String;)LZ/b;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    invoke-virtual {v7, v8}, LZ/b;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    if-eqz v8, :cond_4

    .line 352
    .line 353
    new-instance v7, Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v6}, Lb0/q;->a()[B

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    const-string v8, "UTF-8"

    .line 360
    .line 361
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v7}, La0/y;->h(Ljava/lang/String;)La0/x;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    :goto_4
    invoke-virtual {v5}, Lb0/s;->f()J

    .line 373
    .line 374
    .line 375
    move-result-wide v7

    .line 376
    invoke-virtual {v6, v7, v8}, La0/x;->m(J)La0/x;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5}, Lb0/s;->k()J

    .line 380
    .line 381
    .line 382
    move-result-wide v7

    .line 383
    invoke-virtual {v6, v7, v8}, La0/x;->n(J)La0/x;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5}, Lb0/s;->h()J

    .line 387
    .line 388
    .line 389
    move-result-wide v7

    .line 390
    invoke-virtual {v6, v7, v8}, La0/x;->I(J)La0/x;

    .line 391
    .line 392
    .line 393
    invoke-static {}, La0/D;->a()La0/x;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    const-string v8, "net-type"

    .line 398
    .line 399
    invoke-virtual {v5, v8}, Lb0/s;->g(Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    invoke-static {v8}, La0/C;->f(I)La0/C;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    invoke-virtual {v7, v8}, La0/x;->z(La0/C;)La0/x;

    .line 408
    .line 409
    .line 410
    const-string v8, "mobile-subtype"

    .line 411
    .line 412
    invoke-virtual {v5, v8}, Lb0/s;->g(Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    invoke-static {v8}, La0/B;->f(I)La0/B;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    invoke-virtual {v7, v8}, La0/x;->w(La0/B;)La0/x;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v7}, La0/x;->e()La0/D;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    invoke-virtual {v6, v7}, La0/x;->y(La0/D;)La0/x;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5}, Lb0/s;->d()Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    if-eqz v7, :cond_3

    .line 435
    .line 436
    invoke-virtual {v5}, Lb0/s;->d()Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-virtual {v6, v5}, La0/x;->l(Ljava/lang/Integer;)La0/x;

    .line 441
    .line 442
    .line 443
    :cond_3
    invoke-virtual {v6}, La0/x;->c()La0/y;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    goto/16 :goto_3

    .line 451
    .line 452
    :cond_4
    invoke-static {v7}, Lt0/a;->M(LZ/b;)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_3

    .line 456
    .line 457
    :cond_5
    invoke-virtual {v4, v3}, La0/x;->r(Ljava/util/ArrayList;)La0/x;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v4}, La0/x;->d()La0/z;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :cond_6
    invoke-static {v1}, La0/u;->a(Ljava/util/ArrayList;)La0/u;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {p1}, Lc0/g;->c()[B

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    const/4 v2, 0x0

    .line 478
    iget-object v4, p0, Lcom/google/android/datatransport/cct/d;->d:Ljava/net/URL;

    .line 479
    .line 480
    if-eqz v1, :cond_8

    .line 481
    .line 482
    :try_start_1
    invoke-virtual {p1}, Lc0/g;->c()[B

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-static {p1}, Lcom/google/android/datatransport/cct/a;->a([B)Lcom/google/android/datatransport/cct/a;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->b()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    if-eqz v1, :cond_7

    .line 495
    .line 496
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->b()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    goto :goto_5

    .line 501
    :cond_7
    move-object v1, v2

    .line 502
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->c()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    if-eqz v5, :cond_9

    .line 507
    .line 508
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->c()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 512
    :try_start_2
    new-instance v4, Ljava/net/URL;

    .line 513
    .line 514
    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 515
    .line 516
    .line 517
    goto :goto_6

    .line 518
    :catch_1
    move-exception v0

    .line 519
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 520
    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    const-string v3, "Invalid url: "

    .line 524
    .line 525
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object p1

    .line 535
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 536
    .line 537
    .line 538
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 539
    :catch_2
    invoke-static {}, Lc0/h;->a()Lc0/h;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    return-object p1

    .line 544
    :cond_8
    move-object v1, v2

    .line 545
    :cond_9
    :goto_6
    :try_start_4
    new-instance p1, Lcom/google/android/datatransport/cct/b;

    .line 546
    .line 547
    invoke-direct {p1, v4, v0, v1}, Lcom/google/android/datatransport/cct/b;-><init>(Ljava/net/URL;La0/u;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    const/4 v0, 0x5

    .line 551
    :cond_a
    invoke-static {p0, p1}, Lcom/google/android/datatransport/cct/d;->c(Lcom/google/android/datatransport/cct/d;Lcom/google/android/datatransport/cct/b;)Lcom/google/android/datatransport/cct/c;

    .line 552
    .line 553
    .line 554
    move-result-object v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 555
    iget-object v4, v1, Lcom/google/android/datatransport/cct/c;->b:Ljava/net/URL;

    .line 556
    .line 557
    if-eqz v4, :cond_b

    .line 558
    .line 559
    :try_start_5
    const-string v5, "Following redirect to: %s"

    .line 560
    .line 561
    invoke-static {v3, v5, v4}, Lt0/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    new-instance v5, Lcom/google/android/datatransport/cct/b;

    .line 565
    .line 566
    iget-object v6, p1, Lcom/google/android/datatransport/cct/b;->b:La0/u;

    .line 567
    .line 568
    iget-object p1, p1, Lcom/google/android/datatransport/cct/b;->c:Ljava/lang/String;

    .line 569
    .line 570
    invoke-direct {v5, v4, v6, p1}, Lcom/google/android/datatransport/cct/b;-><init>(Ljava/net/URL;La0/u;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    move-object p1, v5

    .line 574
    goto :goto_7

    .line 575
    :cond_b
    move-object p1, v2

    .line 576
    :goto_7
    if-eqz p1, :cond_c

    .line 577
    .line 578
    add-int/lit8 v0, v0, -0x1

    .line 579
    .line 580
    const/4 v4, 0x1

    .line 581
    if-ge v0, v4, :cond_a

    .line 582
    .line 583
    :cond_c
    iget p1, v1, Lcom/google/android/datatransport/cct/c;->a:I

    .line 584
    .line 585
    const/16 v0, 0xc8

    .line 586
    .line 587
    if-ne p1, v0, :cond_d

    .line 588
    .line 589
    iget-wide v0, v1, Lcom/google/android/datatransport/cct/c;->c:J

    .line 590
    .line 591
    invoke-static {v0, v1}, Lc0/h;->e(J)Lc0/h;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    return-object p1

    .line 596
    :cond_d
    const/16 v0, 0x1f4

    .line 597
    .line 598
    if-ge p1, v0, :cond_10

    .line 599
    .line 600
    const/16 v0, 0x194

    .line 601
    .line 602
    if-ne p1, v0, :cond_e

    .line 603
    .line 604
    goto :goto_8

    .line 605
    :cond_e
    const/16 v0, 0x190

    .line 606
    .line 607
    if-ne p1, v0, :cond_f

    .line 608
    .line 609
    invoke-static {}, Lc0/h;->d()Lc0/h;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    return-object p1

    .line 614
    :cond_f
    invoke-static {}, Lc0/h;->a()Lc0/h;

    .line 615
    .line 616
    .line 617
    move-result-object p1

    .line 618
    return-object p1

    .line 619
    :cond_10
    :goto_8
    invoke-static {}, Lc0/h;->f()Lc0/h;

    .line 620
    .line 621
    .line 622
    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 623
    return-object p1

    .line 624
    :catch_3
    move-exception p1

    .line 625
    const-string v0, "Could not make request to the backend"

    .line 626
    .line 627
    invoke-static {v3, v0, p1}, Lt0/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 628
    .line 629
    .line 630
    invoke-static {}, Lc0/h;->f()Lc0/h;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    return-object p1
.end method

.method public final b(Lb0/s;)Lb0/s;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/d;->b:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lb0/s;->l()Lb0/r;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "sdk-version"

    .line 12
    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    invoke-virtual {p1, v2, v1}, Lb0/r;->a(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "model"

    .line 19
    .line 20
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v1, v2}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "hardware"

    .line 26
    .line 27
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v1, v2}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "device"

    .line 33
    .line 34
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "product"

    .line 40
    .line 41
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v1, v2}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "os-uild"

    .line 47
    .line 48
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v1, v2}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "manufacturer"

    .line 54
    .line 55
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v1, v2}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "fingerprint"

    .line 61
    .line 62
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v1, v2}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    div-int/lit16 v1, v1, 0x3e8

    .line 87
    .line 88
    int-to-long v1, v1

    .line 89
    invoke-virtual {p1, v1, v2}, Lb0/r;->b(J)V

    .line 90
    .line 91
    .line 92
    if-nez v0, :cond_0

    .line 93
    .line 94
    sget-object v1, La0/C;->e:La0/C;

    .line 95
    .line 96
    invoke-virtual {v1}, La0/C;->g()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    :goto_0
    const-string v2, "net-type"

    .line 106
    .line 107
    invoke-virtual {p1, v1, v2}, Lb0/r;->a(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    const/4 v2, -0x1

    .line 112
    if-nez v0, :cond_1

    .line 113
    .line 114
    sget-object v0, La0/B;->e:La0/B;

    .line 115
    .line 116
    invoke-virtual {v0}, La0/B;->g()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-ne v0, v2, :cond_2

    .line 126
    .line 127
    sget-object v0, La0/B;->f:La0/B;

    .line 128
    .line 129
    invoke-virtual {v0}, La0/B;->g()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    invoke-static {v0}, La0/B;->f(I)La0/B;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    const/4 v0, 0x0

    .line 142
    :goto_1
    const-string v3, "mobile-subtype"

    .line 143
    .line 144
    invoke-virtual {p1, v0, v3}, Lb0/r;->a(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v3, "country"

    .line 156
    .line 157
    invoke-virtual {p1, v3, v0}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v3, "locale"

    .line 169
    .line 170
    invoke-virtual {p1, v3, v0}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/google/android/datatransport/cct/d;->c:Landroid/content/Context;

    .line 174
    .line 175
    const-string v3, "phone"

    .line 176
    .line 177
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 182
    .line 183
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    const-string v4, "mcc_mnc"

    .line 188
    .line 189
    invoke-virtual {p1, v4, v3}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "CctTransportBackend"

    .line 209
    .line 210
    const-string v3, "Unable to find version code for package"

    .line 211
    .line 212
    invoke-static {v1, v3, v0}, Lt0/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const-string v1, "application_build"

    .line 220
    .line 221
    invoke-virtual {p1, v1, v0}, Lb0/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lb0/r;->d()Lb0/s;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    return-object p1
.end method
