.class final Leu/faircode/netguard/ServiceSinkhole$CommandHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public queue:I

.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;


# direct methods
.method public constructor <init>(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue:I

    .line 8
    .line 9
    return-void
.end method

.method private checkUpdate()V
    .locals 12

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    const-string v1, "assets"

    .line 4
    .line 5
    const-string v2, "html_url"

    .line 6
    .line 7
    const-string v3, "tag_name"

    .line 8
    .line 9
    const-string v4, "\n"

    .line 10
    .line 11
    const-string v5, "NetGuard.Service"

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    :try_start_0
    new-instance v8, Ljava/net/URL;

    .line 20
    .line 21
    const-string v9, ""

    .line 22
    .line 23
    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    .line 33
    .line 34
    new-instance v9, Ljava/io/InputStreamReader;

    .line 35
    .line 36
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    if-eqz v9, :cond_0

    .line 51
    .line 52
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v7

    .line 57
    goto :goto_1

    .line 58
    :catchall_1
    move-exception v8

    .line 59
    move-object v11, v8

    .line 60
    move-object v8, v7

    .line 61
    move-object v7, v11

    .line 62
    :goto_1
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 89
    .line 90
    .line 91
    if-eqz v8, :cond_1

    .line 92
    .line 93
    :cond_0
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 94
    .line 95
    .line 96
    :cond_1
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_3

    .line 110
    .line 111
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_3

    .line 122
    .line 123
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-lez v6, :cond_3

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_3

    .line 147
    .line 148
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v6, "Tag "

    .line 162
    .line 163
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v6, " name "

    .line 170
    .line 171
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v6, " url "

    .line 178
    .line 179
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    new-instance v1, Leu/faircode/netguard/Version;

    .line 193
    .line 194
    iget-object v6, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 195
    .line 196
    invoke-static {v6}, Leu/faircode/netguard/Util;->getSelfVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-direct {v1, v6}, Leu/faircode/netguard/Version;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    new-instance v6, Leu/faircode/netguard/Version;

    .line 204
    .line 205
    invoke-direct {v6, v3}, Leu/faircode/netguard/Version;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v6}, Leu/faircode/netguard/Version;->compareTo(Leu/faircode/netguard/Version;)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-gez v3, :cond_2

    .line 213
    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v7, "Update available from "

    .line 220
    .line 221
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, " to "

    .line 228
    .line 229
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 243
    .line 244
    invoke-static {v1, v0, v2}, Leu/faircode/netguard/ServiceSinkhole;->access$3200(Leu/faircode/netguard/ServiceSinkhole;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v2, "Up-to-date current version "

    .line 254
    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    :cond_3
    :goto_2
    return-void

    .line 300
    :catchall_2
    move-exception v0

    .line 301
    if-eqz v8, :cond_4

    .line 302
    .line 303
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 304
    .line 305
    .line 306
    :cond_4
    throw v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "enabled"

    .line 6
    .line 7
    const-string v3, "Unknown command="

    .line 8
    .line 9
    iget-object v4, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 10
    .line 11
    invoke-static {v4}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-string v5, "Command"

    .line 16
    .line 17
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 22
    .line 23
    const-string v6, "Reason"

    .line 24
    .line 25
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v8, "Executing intent="

    .line 32
    .line 33
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v8, " command="

    .line 40
    .line 41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v8, " reason="

    .line 48
    .line 49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v6, " vpn="

    .line 56
    .line 57
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v6, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 61
    .line 62
    invoke-static {v6}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const/4 v8, 0x1

    .line 67
    const/4 v9, 0x0

    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    const/4 v6, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v6, 0x0

    .line 73
    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, " user="

    .line 77
    .line 78
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    const v10, 0x186a0

    .line 86
    .line 87
    .line 88
    div-int/2addr v6, v10

    .line 89
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const-string v7, "NetGuard.Service"

    .line 97
    .line 98
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    sget-object v6, Leu/faircode/netguard/ServiceSinkhole$Command;->stop:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 102
    .line 103
    const-string v10, "Command "

    .line 104
    .line 105
    if-eq v5, v6, :cond_1

    .line 106
    .line 107
    iget-object v11, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 108
    .line 109
    invoke-static {v11}, Leu/faircode/netguard/ServiceSinkhole;->access$400(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-nez v11, :cond_1

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, " ignored for background user"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_1
    if-ne v5, v6, :cond_2

    .line 137
    .line 138
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 139
    .line 140
    const-string v11, "Temporary"

    .line 141
    .line 142
    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    invoke-static {v10, v11}, Leu/faircode/netguard/ServiceSinkhole;->access$502(Leu/faircode/netguard/ServiceSinkhole;Z)Z

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    sget-object v11, Leu/faircode/netguard/ServiceSinkhole$Command;->start:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 151
    .line 152
    if-ne v5, v11, :cond_3

    .line 153
    .line 154
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 155
    .line 156
    invoke-static {v10, v9}, Leu/faircode/netguard/ServiceSinkhole;->access$502(Leu/faircode/netguard/ServiceSinkhole;Z)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    sget-object v11, Leu/faircode/netguard/ServiceSinkhole$Command;->reload:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 161
    .line 162
    if-ne v5, v11, :cond_4

    .line 163
    .line 164
    iget-object v11, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 165
    .line 166
    invoke-static {v11}, Leu/faircode/netguard/ServiceSinkhole;->access$500(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-eqz v11, :cond_4

    .line 171
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, " ignored because of temporary stop"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_4
    :goto_1
    const-string v10, "screen_on"

    .line 194
    .line 195
    invoke-interface {v4, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_5

    .line 200
    .line 201
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 202
    .line 203
    invoke-static {v10}, Leu/faircode/netguard/ServiceSinkhole;->access$600(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    if-nez v10, :cond_6

    .line 208
    .line 209
    const-string v10, "Starting listening for interactive state changes"

    .line 210
    .line 211
    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 215
    .line 216
    invoke-static {v10}, Leu/faircode/netguard/Util;->isInteractive(Landroid/content/Context;)Z

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    invoke-static {v10, v11}, Leu/faircode/netguard/ServiceSinkhole;->access$702(Leu/faircode/netguard/ServiceSinkhole;Z)Z

    .line 221
    .line 222
    .line 223
    new-instance v10, Landroid/content/IntentFilter;

    .line 224
    .line 225
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v11, "android.intent.action.SCREEN_ON"

    .line 229
    .line 230
    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string v11, "android.intent.action.SCREEN_OFF"

    .line 234
    .line 235
    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const-string v11, "eu.faircode.netguard.SCREEN_OFF_DELAYED"

    .line 239
    .line 240
    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v11, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 244
    .line 245
    invoke-static {v11}, Leu/faircode/netguard/ServiceSinkhole;->access$800(Leu/faircode/netguard/ServiceSinkhole;)Landroid/content/BroadcastReceiver;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    invoke-static {v11, v12, v10}, Landroidx/core/content/f;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 250
    .line 251
    .line 252
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 253
    .line 254
    invoke-static {v10, v8}, Leu/faircode/netguard/ServiceSinkhole;->access$602(Leu/faircode/netguard/ServiceSinkhole;Z)Z

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_5
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 259
    .line 260
    invoke-static {v10}, Leu/faircode/netguard/ServiceSinkhole;->access$600(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    if-eqz v10, :cond_6

    .line 265
    .line 266
    const-string v10, "Stopping listening for interactive state changes"

    .line 267
    .line 268
    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 272
    .line 273
    invoke-static {v10}, Leu/faircode/netguard/ServiceSinkhole;->access$800(Leu/faircode/netguard/ServiceSinkhole;)Landroid/content/BroadcastReceiver;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-virtual {v10, v11}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    .line 279
    .line 280
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 281
    .line 282
    invoke-static {v10, v9}, Leu/faircode/netguard/ServiceSinkhole;->access$602(Leu/faircode/netguard/ServiceSinkhole;Z)Z

    .line 283
    .line 284
    .line 285
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 286
    .line 287
    invoke-static {v10, v9}, Leu/faircode/netguard/ServiceSinkhole;->access$702(Leu/faircode/netguard/ServiceSinkhole;Z)Z

    .line 288
    .line 289
    .line 290
    :cond_6
    :goto_2
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 291
    .line 292
    const-string v11, "phone"

    .line 293
    .line 294
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 299
    .line 300
    const-string v11, "disable_on_call"

    .line 301
    .line 302
    invoke-interface {v4, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 303
    .line 304
    .line 305
    move-result v11

    .line 306
    if-eqz v11, :cond_7

    .line 307
    .line 308
    if-eqz v10, :cond_8

    .line 309
    .line 310
    iget-object v9, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 311
    .line 312
    invoke-static {v9}, Leu/faircode/netguard/ServiceSinkhole;->access$900(Leu/faircode/netguard/ServiceSinkhole;)Landroid/telephony/PhoneStateListener;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    if-nez v9, :cond_8

    .line 317
    .line 318
    iget-object v9, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 319
    .line 320
    invoke-static {v9}, Leu/faircode/netguard/Util;->hasPhoneStatePermission(Landroid/content/Context;)Z

    .line 321
    .line 322
    .line 323
    move-result v9

    .line 324
    if-eqz v9, :cond_8

    .line 325
    .line 326
    const-string v9, "Starting listening for call states"

    .line 327
    .line 328
    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    new-instance v9, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$1;

    .line 332
    .line 333
    invoke-direct {v9, v1, v4}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$1;-><init>(Leu/faircode/netguard/ServiceSinkhole$CommandHandler;Landroid/content/SharedPreferences;)V

    .line 334
    .line 335
    .line 336
    const/16 v11, 0x20

    .line 337
    .line 338
    invoke-virtual {v10, v9, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 339
    .line 340
    .line 341
    iget-object v10, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 342
    .line 343
    invoke-static {v10, v9}, Leu/faircode/netguard/ServiceSinkhole;->access$902(Leu/faircode/netguard/ServiceSinkhole;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 344
    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_7
    if-eqz v10, :cond_8

    .line 348
    .line 349
    iget-object v11, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 350
    .line 351
    invoke-static {v11}, Leu/faircode/netguard/ServiceSinkhole;->access$900(Leu/faircode/netguard/ServiceSinkhole;)Landroid/telephony/PhoneStateListener;

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    if-eqz v11, :cond_8

    .line 356
    .line 357
    const-string v11, "Stopping listening for call states"

    .line 358
    .line 359
    invoke-static {v7, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    iget-object v11, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 363
    .line 364
    invoke-static {v11}, Leu/faircode/netguard/ServiceSinkhole;->access$900(Leu/faircode/netguard/ServiceSinkhole;)Landroid/telephony/PhoneStateListener;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    invoke-virtual {v10, v11, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 369
    .line 370
    .line 371
    iget-object v9, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 372
    .line 373
    const/4 v10, 0x0

    .line 374
    invoke-static {v9, v10}, Leu/faircode/netguard/ServiceSinkhole;->access$902(Leu/faircode/netguard/ServiceSinkhole;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 375
    .line 376
    .line 377
    :cond_8
    :goto_3
    sget-object v9, Leu/faircode/netguard/ServiceSinkhole$Command;->start:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 378
    .line 379
    if-eq v5, v9, :cond_a

    .line 380
    .line 381
    sget-object v10, Leu/faircode/netguard/ServiceSinkhole$Command;->reload:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 382
    .line 383
    if-eq v5, v10, :cond_a

    .line 384
    .line 385
    if-ne v5, v6, :cond_9

    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_9
    move-object/from16 v18, v9

    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_a
    :goto_4
    new-instance v10, Landroid/content/Intent;

    .line 392
    .line 393
    iget-object v11, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 394
    .line 395
    const-class v12, Leu/faircode/netguard/ServiceSinkhole;

    .line 396
    .line 397
    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .line 399
    .line 400
    const-string v11, "eu.faircode.netguard.WATCHDOG"

    .line 401
    .line 402
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    .line 404
    .line 405
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 406
    .line 407
    const/16 v12, 0x1a

    .line 408
    .line 409
    const/high16 v13, 0x8000000

    .line 410
    .line 411
    if-lt v11, v12, :cond_b

    .line 412
    .line 413
    iget-object v11, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 414
    .line 415
    invoke-static {v11, v8, v10, v13}, Leu/faircode/netguard/PendingIntentCompat;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 416
    .line 417
    .line 418
    move-result-object v10

    .line 419
    goto :goto_5

    .line 420
    :cond_b
    iget-object v11, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 421
    .line 422
    invoke-static {v11, v8, v10, v13}, Leu/faircode/netguard/PendingIntentCompat;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 423
    .line 424
    .line 425
    move-result-object v10

    .line 426
    :goto_5
    iget-object v11, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 427
    .line 428
    const-string v12, "alarm"

    .line 429
    .line 430
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v11

    .line 434
    check-cast v11, Landroid/app/AlarmManager;

    .line 435
    .line 436
    invoke-virtual {v11, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 437
    .line 438
    .line 439
    if-eq v5, v6, :cond_9

    .line 440
    .line 441
    const-string v12, "watchdog"

    .line 442
    .line 443
    const-string v13, "0"

    .line 444
    .line 445
    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v12

    .line 449
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 450
    .line 451
    .line 452
    move-result v12

    .line 453
    if-lez v12, :cond_9

    .line 454
    .line 455
    new-instance v13, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string v14, "Watchdog "

    .line 458
    .line 459
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v14, " minutes"

    .line 466
    .line 467
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v13

    .line 474
    invoke-static {v7, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    const/4 v13, 0x1

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 479
    .line 480
    .line 481
    move-result-wide v14

    .line 482
    mul-int/lit8 v12, v12, 0x3c

    .line 483
    .line 484
    mul-int/lit16 v12, v12, 0x3e8

    .line 485
    .line 486
    move-object/from16 v18, v9

    .line 487
    .line 488
    int-to-long v8, v12

    .line 489
    add-long/2addr v14, v8

    .line 490
    move v12, v13

    .line 491
    move-wide v13, v14

    .line 492
    move-wide v15, v8

    .line 493
    move-object/from16 v17, v10

    .line 494
    .line 495
    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 496
    .line 497
    .line 498
    :goto_6
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    if-eqz v8, :cond_12

    .line 503
    .line 504
    const/4 v9, 0x1

    .line 505
    if-eq v8, v9, :cond_11

    .line 506
    .line 507
    const/4 v9, 0x2

    .line 508
    if-eq v8, v9, :cond_10

    .line 509
    .line 510
    const/4 v10, 0x3

    .line 511
    if-eq v8, v10, :cond_f

    .line 512
    .line 513
    const/4 v10, 0x4

    .line 514
    if-eq v8, v10, :cond_e

    .line 515
    .line 516
    const/4 v9, 0x6

    .line 517
    if-eq v8, v9, :cond_d

    .line 518
    .line 519
    const/4 v9, 0x7

    .line 520
    if-eq v8, v9, :cond_c

    .line 521
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    goto :goto_7

    .line 538
    :cond_c
    invoke-direct/range {p0 .. p1}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->watchdog(Landroid/content/Intent;)V

    .line 539
    .line 540
    .line 541
    goto :goto_7

    .line 542
    :cond_d
    invoke-direct/range {p0 .. p1}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->householding(Landroid/content/Intent;)V

    .line 543
    .line 544
    .line 545
    goto :goto_7

    .line 546
    :cond_e
    iget-object v0, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 547
    .line 548
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1000(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$StatsHandler;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 553
    .line 554
    .line 555
    iget-object v0, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 556
    .line 557
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1000(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$StatsHandler;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    const/4 v3, 0x1

    .line 562
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 563
    .line 564
    .line 565
    goto :goto_7

    .line 566
    :cond_f
    iget-object v0, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 567
    .line 568
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$500(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    invoke-direct {v1, v0}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->stop(Z)V

    .line 573
    .line 574
    .line 575
    goto :goto_7

    .line 576
    :cond_10
    const-string v3, "Interactive"

    .line 577
    .line 578
    const/4 v8, 0x0

    .line 579
    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    invoke-direct {v1, v0}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->reload(Z)V

    .line 584
    .line 585
    .line 586
    goto :goto_7

    .line 587
    :cond_11
    invoke-direct/range {p0 .. p0}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->start()V

    .line 588
    .line 589
    .line 590
    :cond_12
    :goto_7
    move-object/from16 v0, v18

    .line 591
    .line 592
    if-eq v5, v0, :cond_13

    .line 593
    .line 594
    sget-object v3, Leu/faircode/netguard/ServiceSinkhole$Command;->reload:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 595
    .line 596
    if-ne v5, v3, :cond_15

    .line 597
    .line 598
    :cond_13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 599
    .line 600
    const/16 v8, 0x1d

    .line 601
    .line 602
    if-lt v3, v8, :cond_15

    .line 603
    .line 604
    const-string v3, "filter"

    .line 605
    .line 606
    const/4 v8, 0x0

    .line 607
    invoke-interface {v4, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-eqz v3, :cond_14

    .line 612
    .line 613
    iget-object v3, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 614
    .line 615
    invoke-static {v3}, LE0/g;->i(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 616
    .line 617
    .line 618
    move-result v3

    .line 619
    if-eqz v3, :cond_14

    .line 620
    .line 621
    iget-object v3, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 622
    .line 623
    invoke-static {v3}, Leu/faircode/netguard/ServiceSinkhole;->access$1100(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 624
    .line 625
    .line 626
    goto :goto_8

    .line 627
    :cond_14
    iget-object v3, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 628
    .line 629
    invoke-static {v3}, Leu/faircode/netguard/ServiceSinkhole;->access$1200(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 630
    .line 631
    .line 632
    :cond_15
    :goto_8
    if-eq v5, v0, :cond_16

    .line 633
    .line 634
    sget-object v3, Leu/faircode/netguard/ServiceSinkhole$Command;->reload:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 635
    .line 636
    if-eq v5, v3, :cond_16

    .line 637
    .line 638
    if-ne v5, v6, :cond_19

    .line 639
    .line 640
    :cond_16
    new-instance v3, Landroid/content/Intent;

    .line 641
    .line 642
    const-string v8, "eu.faircode.netguard.ACTION_RULES_CHANGED"

    .line 643
    .line 644
    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    const-string v8, "Connected"

    .line 648
    .line 649
    if-ne v5, v6, :cond_17

    .line 650
    .line 651
    const/4 v9, 0x0

    .line 652
    goto :goto_9

    .line 653
    :cond_17
    iget-object v9, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 654
    .line 655
    invoke-static {v9}, Leu/faircode/netguard/ServiceSinkhole;->access$1300(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 656
    .line 657
    .line 658
    move-result v9

    .line 659
    :goto_9
    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 660
    .line 661
    .line 662
    const-string v8, "Metered"

    .line 663
    .line 664
    if-ne v5, v6, :cond_18

    .line 665
    .line 666
    const/4 v6, 0x0

    .line 667
    goto :goto_a

    .line 668
    :cond_18
    iget-object v6, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 669
    .line 670
    invoke-static {v6}, Leu/faircode/netguard/ServiceSinkhole;->access$1400(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 671
    .line 672
    .line 673
    move-result v6

    .line 674
    :goto_a
    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    .line 676
    .line 677
    iget-object v6, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 678
    .line 679
    invoke-static {v6}, Lr/d;->b(Landroid/content/Context;)Lr/d;

    .line 680
    .line 681
    .line 682
    move-result-object v6

    .line 683
    invoke-virtual {v6, v3}, Lr/d;->d(Landroid/content/Intent;)V

    .line 684
    .line 685
    .line 686
    iget-object v3, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 687
    .line 688
    invoke-static {v3}, Leu/faircode/netguard/WidgetMain;->updateWidgets(Landroid/content/Context;)V

    .line 689
    .line 690
    .line 691
    :cond_19
    iget-object v3, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 692
    .line 693
    invoke-static {v3}, Leu/faircode/netguard/ServiceSinkhole;->access$000(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 698
    .line 699
    .line 700
    move-result v0

    .line 701
    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-nez v0, :cond_1a

    .line 706
    .line 707
    iget-object v0, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 708
    .line 709
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$000(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    sget-object v3, Leu/faircode/netguard/ServiceSinkhole$Command;->reload:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 714
    .line 715
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    if-nez v0, :cond_1a

    .line 724
    .line 725
    const/4 v0, 0x0

    .line 726
    invoke-interface {v4, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    if-nez v3, :cond_1a

    .line 731
    .line 732
    const-string v3, "show_stats"

    .line 733
    .line 734
    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    if-nez v0, :cond_1a

    .line 739
    .line 740
    iget-object v0, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 741
    .line 742
    const/4 v3, 0x1

    .line 743
    invoke-virtual {v0, v3}, Landroid/app/Service;->stopForeground(Z)V

    .line 744
    .line 745
    .line 746
    :cond_1a
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    .line 748
    .line 749
    goto/16 :goto_c

    .line 750
    .line 751
    :catchall_0
    move-exception v0

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .line 756
    .line 757
    const-string v6, "\n"

    .line 758
    .line 759
    invoke-static {v0, v3, v6, v0, v7}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    sget-object v3, Leu/faircode/netguard/ServiceSinkhole$Command;->start:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 763
    .line 764
    if-eq v5, v3, :cond_1c

    .line 765
    .line 766
    sget-object v3, Leu/faircode/netguard/ServiceSinkhole$Command;->reload:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 767
    .line 768
    if-ne v5, v3, :cond_1b

    .line 769
    .line 770
    goto :goto_b

    .line 771
    :cond_1b
    iget-object v2, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 772
    .line 773
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-static {v2, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1500(Leu/faircode/netguard/ServiceSinkhole;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    goto :goto_c

    .line 781
    :cond_1c
    :goto_b
    iget-object v3, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 782
    .line 783
    invoke-static {v3}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    if-nez v3, :cond_1d

    .line 788
    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    const-string v3, "VPN prepared connected="

    .line 792
    .line 793
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    iget-object v3, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 797
    .line 798
    invoke-static {v3}, Leu/faircode/netguard/ServiceSinkhole;->access$1300(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 799
    .line 800
    .line 801
    move-result v3

    .line 802
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    iget-object v2, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 813
    .line 814
    invoke-static {v2}, Leu/faircode/netguard/ServiceSinkhole;->access$1300(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    if-eqz v2, :cond_1e

    .line 819
    .line 820
    instance-of v2, v0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$StartFailedException;

    .line 821
    .line 822
    if-nez v2, :cond_1e

    .line 823
    .line 824
    iget-object v2, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 825
    .line 826
    invoke-static {v2}, Leu/faircode/netguard/Util;->isPlayStoreInstall(Landroid/content/Context;)Z

    .line 827
    .line 828
    .line 829
    move-result v2

    .line 830
    if-nez v2, :cond_1e

    .line 831
    .line 832
    iget-object v2, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 833
    .line 834
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    invoke-static {v2, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1500(Leu/faircode/netguard/ServiceSinkhole;Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    goto :goto_c

    .line 842
    :cond_1d
    iget-object v3, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 843
    .line 844
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v5

    .line 848
    invoke-static {v3, v5}, Leu/faircode/netguard/ServiceSinkhole;->access$1500(Leu/faircode/netguard/ServiceSinkhole;Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    instance-of v0, v0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$StartFailedException;

    .line 852
    .line 853
    if-nez v0, :cond_1e

    .line 854
    .line 855
    const/4 v0, 0x0

    .line 856
    invoke-static {v4, v2, v0}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 857
    .line 858
    .line 859
    iget-object v0, v1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 860
    .line 861
    invoke-static {v0}, Leu/faircode/netguard/WidgetMain;->updateWidgets(Landroid/content/Context;)V

    .line 862
    .line 863
    .line 864
    :cond_1e
    :goto_c
    return-void
.end method

.method private householding(Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/Date;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/32 v2, 0xf731400

    .line 17
    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    invoke-virtual {p1, v0, v1}, Leu/faircode/netguard/DatabaseHelper;->cleanupLog(J)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 24
    .line 25
    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Leu/faircode/netguard/DatabaseHelper;->cleanupDns()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 33
    .line 34
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 39
    .line 40
    invoke-static {v0}, Leu/faircode/netguard/Util;->isPlayStoreInstall(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 47
    .line 48
    invoke-static {v0}, Leu/faircode/netguard/Util;->hasValidFingerprint(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const-string v0, "update_check"

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->checkUpdate()V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method private reload(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Leu/faircode/netguard/Rule;->getRules(ZLandroid/content/Context;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "NetGuard.Service"

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Leu/faircode/netguard/Rule;

    .line 28
    .line 29
    iget-object v5, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 30
    .line 31
    invoke-static {v5}, Leu/faircode/netguard/ServiceSinkhole;->access$1400(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    iget-boolean v5, v4, Leu/faircode/netguard/Rule;->other_blocked:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-boolean v5, v4, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    .line 41
    .line 42
    :goto_0
    iget-object v6, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 43
    .line 44
    invoke-static {v6}, Leu/faircode/netguard/ServiceSinkhole;->access$1400(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    iget-boolean v4, v4, Leu/faircode/netguard/Rule;->screen_other:Z

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-boolean v4, v4, Leu/faircode/netguard/Rule;->screen_wifi:Z

    .line 54
    .line 55
    :goto_1
    if-eqz v5, :cond_0

    .line 56
    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    const/4 p1, 0x0

    .line 62
    :goto_2
    if-nez p1, :cond_4

    .line 63
    .line 64
    const-string p1, "No changed rules on interactive state change"

    .line 65
    .line 66
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 71
    .line 72
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 77
    .line 78
    invoke-static {v4}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    sget-object v5, Leu/faircode/netguard/ServiceSinkhole$State;->enforcing:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 83
    .line 84
    if-eq v4, v5, :cond_6

    .line 85
    .line 86
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 87
    .line 88
    invoke-static {v4}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    sget-object v6, Leu/faircode/netguard/ServiceSinkhole$State;->none:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 93
    .line 94
    if-eq v4, v6, :cond_5

    .line 95
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v6, "Stop foreground state="

    .line 99
    .line 100
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v6, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 104
    .line 105
    invoke-static {v6}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 124
    .line 125
    invoke-virtual {v4, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 129
    .line 130
    const/4 v6, -0x1

    .line 131
    invoke-static {v4, v6, v6, v6}, Leu/faircode/netguard/ServiceSinkhole;->access$1700(Leu/faircode/netguard/ServiceSinkhole;III)Landroid/app/Notification;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v4, v1, v6}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 139
    .line 140
    invoke-static {v1, v5}, Leu/faircode/netguard/ServiceSinkhole;->access$1602(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$State;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 141
    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v4, "Start foreground state="

    .line 146
    .line 147
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 151
    .line 152
    invoke-static {v4}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :cond_6
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 171
    .line 172
    invoke-static {v1, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1800(Leu/faircode/netguard/ServiceSinkhole;Ljava/util/List;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 177
    .line 178
    invoke-static {v4, v1, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$2000(Leu/faircode/netguard/ServiceSinkhole;Ljava/util/List;Ljava/util/List;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 183
    .line 184
    iget-object v6, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 185
    .line 186
    invoke-static {v6}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    if-eqz v6, :cond_7

    .line 191
    .line 192
    const-string v6, "filter"

    .line 193
    .line 194
    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_7

    .line 199
    .line 200
    iget-object v6, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 201
    .line 202
    invoke-static {v6}, Leu/faircode/netguard/ServiceSinkhole;->access$1900(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v4, v6}, Leu/faircode/netguard/ServiceSinkhole$Builder;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_7

    .line 211
    .line 212
    const-string p1, "Native restart"

    .line 213
    .line 214
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 218
    .line 219
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {p1, v2}, Leu/faircode/netguard/ServiceSinkhole;->access$2500(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_6

    .line 227
    .line 228
    :cond_7
    iget-object v6, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 229
    .line 230
    invoke-static {v6, v4}, Leu/faircode/netguard/ServiceSinkhole;->access$1902(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$Builder;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 231
    .line 232
    .line 233
    const-string v6, "handover"

    .line 234
    .line 235
    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    const/16 v6, 0x1e

    .line 240
    .line 241
    if-lt v5, v6, :cond_8

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_8
    move v2, p1

    .line 245
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v5, "VPN restart handover="

    .line 248
    .line 249
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    if-eqz v2, :cond_b

    .line 263
    .line 264
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 265
    .line 266
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 271
    .line 272
    invoke-static {v2, v4}, Leu/faircode/netguard/ServiceSinkhole;->access$2100(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$Builder;)Landroid/os/ParcelFileDescriptor;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-static {v2, v4}, Leu/faircode/netguard/ServiceSinkhole;->access$302(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 277
    .line 278
    .line 279
    if-eqz p1, :cond_a

    .line 280
    .line 281
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 282
    .line 283
    invoke-static {v2}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    if-nez v2, :cond_a

    .line 288
    .line 289
    const-string v2, "Handover failed"

    .line 290
    .line 291
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 295
    .line 296
    invoke-static {v3, p1}, Leu/faircode/netguard/ServiceSinkhole;->access$2500(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V

    .line 297
    .line 298
    .line 299
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 300
    .line 301
    invoke-static {v3, p1}, Leu/faircode/netguard/ServiceSinkhole;->access$2600(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V

    .line 302
    .line 303
    .line 304
    const-wide/16 v3, 0xbb8

    .line 305
    .line 306
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :catch_0
    nop

    .line 311
    :goto_4
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 312
    .line 313
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$1900(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-static {p1, v3}, Leu/faircode/netguard/ServiceSinkhole;->access$2100(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$Builder;)Landroid/os/ParcelFileDescriptor;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-static {p1, v3}, Leu/faircode/netguard/ServiceSinkhole;->access$302(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 322
    .line 323
    .line 324
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 325
    .line 326
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    if-eqz p1, :cond_9

    .line 331
    .line 332
    const/4 p1, 0x0

    .line 333
    goto :goto_5

    .line 334
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 335
    .line 336
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw p1

    .line 340
    :cond_a
    :goto_5
    if-eqz p1, :cond_d

    .line 341
    .line 342
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 343
    .line 344
    invoke-static {v2, p1}, Leu/faircode/netguard/ServiceSinkhole;->access$2500(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V

    .line 345
    .line 346
    .line 347
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 348
    .line 349
    invoke-static {v2, p1}, Leu/faircode/netguard/ServiceSinkhole;->access$2600(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V

    .line 350
    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_b
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 354
    .line 355
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    if-eqz p1, :cond_c

    .line 360
    .line 361
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 362
    .line 363
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-static {p1, v2}, Leu/faircode/netguard/ServiceSinkhole;->access$2500(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V

    .line 368
    .line 369
    .line 370
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 371
    .line 372
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-static {p1, v2}, Leu/faircode/netguard/ServiceSinkhole;->access$2600(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V

    .line 377
    .line 378
    .line 379
    :cond_c
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 380
    .line 381
    invoke-static {p1, v4}, Leu/faircode/netguard/ServiceSinkhole;->access$2100(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$Builder;)Landroid/os/ParcelFileDescriptor;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-static {p1, v2}, Leu/faircode/netguard/ServiceSinkhole;->access$302(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 386
    .line 387
    .line 388
    :cond_d
    :goto_6
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 389
    .line 390
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    if-eqz p1, :cond_e

    .line 395
    .line 396
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 397
    .line 398
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-static {p1, v2, v1, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$2200(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;)V

    .line 403
    .line 404
    .line 405
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 406
    .line 407
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$2300(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 408
    .line 409
    .line 410
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 411
    .line 412
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-static {p1, v1, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$2400(Leu/faircode/netguard/ServiceSinkhole;II)V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :cond_e
    new-instance p1, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$StartFailedException;

    .line 425
    .line 426
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 427
    .line 428
    const v1, 0x7f10008c

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-direct {p1, p0, v0}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$StartFailedException;-><init>(Leu/faircode/netguard/ServiceSinkhole$CommandHandler;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw p1
.end method

.method private reportQueueSize()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "eu.faircode.netguard.ACTION_QUEUE_CHANGED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Size"

    .line 9
    .line 10
    iget v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 16
    .line 17
    invoke-static {v1}, Lr/d;->b(Landroid/content/Context;)Lr/d;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lr/d;->d(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private start()V
    .locals 4

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 10
    .line 11
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Leu/faircode/netguard/ServiceSinkhole$State;->none:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 16
    .line 17
    const-string v2, "NetGuard.Service"

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Stop foreground state="

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 30
    .line 31
    invoke-static {v1}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/app/Service;->stopForeground(Z)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 55
    .line 56
    const/4 v1, -0x1

    .line 57
    invoke-static {v0, v1, v1, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$1700(Leu/faircode/netguard/ServiceSinkhole;III)Landroid/app/Notification;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v3, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 65
    .line 66
    sget-object v1, Leu/faircode/netguard/ServiceSinkhole$State;->enforcing:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 67
    .line 68
    invoke-static {v0, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$1602(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$State;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 69
    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "Start foreground state="

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 79
    .line 80
    invoke-static {v1}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 99
    .line 100
    invoke-static {v3, v0}, Leu/faircode/netguard/Rule;->getRules(ZLandroid/content/Context;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 105
    .line 106
    invoke-static {v1, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1800(Leu/faircode/netguard/ServiceSinkhole;Ljava/util/List;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 111
    .line 112
    invoke-static {v2, v1, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$2000(Leu/faircode/netguard/ServiceSinkhole;Ljava/util/List;Ljava/util/List;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v2, v3}, Leu/faircode/netguard/ServiceSinkhole;->access$1902(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$Builder;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 120
    .line 121
    invoke-static {v2}, Leu/faircode/netguard/ServiceSinkhole;->access$1900(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v2, v3}, Leu/faircode/netguard/ServiceSinkhole;->access$2100(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$Builder;)Landroid/os/ParcelFileDescriptor;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v2, v3}, Leu/faircode/netguard/ServiceSinkhole;->access$302(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 133
    .line 134
    invoke-static {v2}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_1

    .line 139
    .line 140
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 141
    .line 142
    invoke-static {v2}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-static {v2, v3, v1, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$2200(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;)V

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 150
    .line 151
    invoke-static {v2}, Leu/faircode/netguard/ServiceSinkhole;->access$2300(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-static {v2, v1, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$2400(Leu/faircode/netguard/ServiceSinkhole;II)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_1
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$StartFailedException;

    .line 169
    .line 170
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 171
    .line 172
    const v2, 0x7f10008c

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v0, p0, v1}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler$StartFailedException;-><init>(Leu/faircode/netguard/ServiceSinkhole$CommandHandler;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_2
    :goto_0
    return-void
.end method

.method private stop(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 10
    .line 11
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$2500(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 19
    .line 20
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$2600(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$302(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 34
    .line 35
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$2700(Leu/faircode/netguard/ServiceSinkhole;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 39
    .line 40
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Leu/faircode/netguard/ServiceSinkhole$State;->enforcing:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v0, "Stop foreground state="

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 58
    .line 59
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v0, "NetGuard.Service"

    .line 75
    .line 76
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 80
    .line 81
    const/4 v1, -0x1

    .line 82
    invoke-static {p1, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$2802(Leu/faircode/netguard/ServiceSinkhole;I)I

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 86
    .line 87
    invoke-static {p1, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$2902(Leu/faircode/netguard/ServiceSinkhole;I)I

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 91
    .line 92
    invoke-static {p1, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$3002(Leu/faircode/netguard/ServiceSinkhole;I)I

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-virtual {p1, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 102
    .line 103
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string v1, "show_stats"

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_1

    .line 115
    .line 116
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 117
    .line 118
    const/4 v1, 0x2

    .line 119
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$3100(Leu/faircode/netguard/ServiceSinkhole;)Landroid/app/Notification;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {p1, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 127
    .line 128
    sget-object v1, Leu/faircode/netguard/ServiceSinkhole$State;->waiting:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 129
    .line 130
    invoke-static {p1, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$1602(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$State;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 131
    .line 132
    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v1, "Start foreground state="

    .line 136
    .line 137
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 141
    .line 142
    invoke-static {v1}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_1
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 162
    .line 163
    sget-object v0, Leu/faircode/netguard/ServiceSinkhole$State;->none:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 164
    .line 165
    invoke-static {p1, v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1602(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$State;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 171
    .line 172
    .line 173
    :cond_2
    :goto_0
    return-void
.end method

.method private watchdog(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$300(Leu/faircode/netguard/ServiceSinkhole;)Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 10
    .line 11
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "enabled"

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p1, "NetGuard.Service"

    .line 25
    .line 26
    const-string v0, "Service was killed"

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->start()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "Messages="

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 5
    .line 6
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->handleIntent(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 15
    monitor-enter p0

    .line 16
    :try_start_2
    iget p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    .line 20
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue:I

    .line 21
    .line 22
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->reportQueueSize()V

    .line 23
    .line 24
    .line 25
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :try_start_3
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 27
    .line 28
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$100(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p1, "NetGuard.Service"

    .line 43
    .line 44
    const-string v2, "Wakelock under-locked"

    .line 45
    .line 46
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    const-string p1, "NetGuard.Service"

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " wakelock="

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Leu/faircode/netguard/ServiceSinkhole;->access$200()Landroid/os/PowerManager$WakeLock;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :catchall_0
    move-exception p1

    .line 89
    const-string v0, "NetGuard.Service"

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :catchall_1
    move-exception p1

    .line 99
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    throw p1

    .line 101
    :catchall_2
    move-exception p1

    .line 102
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 103
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 104
    :catchall_3
    move-exception p1

    .line 105
    :try_start_7
    const-string v0, "NetGuard.Service"

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v3, "\n"

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 136
    .line 137
    .line 138
    monitor-enter p0

    .line 139
    :try_start_8
    iget p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue:I

    .line 140
    .line 141
    add-int/lit8 p1, p1, -0x1

    .line 142
    .line 143
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue:I

    .line 144
    .line 145
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->reportQueueSize()V

    .line 146
    .line 147
    .line 148
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 149
    :try_start_9
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 150
    .line 151
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$100(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_1
    const-string p1, "NetGuard.Service"

    .line 166
    .line 167
    const-string v0, "Wakelock under-locked"

    .line 168
    .line 169
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :goto_1
    const-string p1, "NetGuard.Service"

    .line 173
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v2, "Messages="

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, " wakelock="

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-static {}, Leu/faircode/netguard/ServiceSinkhole;->access$200()Landroid/os/PowerManager$WakeLock;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :catchall_4
    move-exception p1

    .line 216
    const-string v0, "NetGuard.Service"

    .line 217
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    :goto_2
    const-string v2, "\n"

    .line 224
    .line 225
    invoke-static {p1, v1, v2, p1, v0}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :goto_3
    return-void

    .line 229
    :catchall_5
    move-exception p1

    .line 230
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 231
    throw p1

    .line 232
    :catchall_6
    move-exception p1

    .line 233
    monitor-enter p0

    .line 234
    :try_start_b
    iget v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue:I

    .line 235
    .line 236
    add-int/lit8 v0, v0, -0x1

    .line 237
    .line 238
    iput v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue:I

    .line 239
    .line 240
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->reportQueueSize()V

    .line 241
    .line 242
    .line 243
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 244
    :try_start_c
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 245
    .line 246
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$100(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_2

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_2
    const-string v0, "NetGuard.Service"

    .line 261
    .line 262
    const-string v2, "Wakelock under-locked"

    .line 263
    .line 264
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    :goto_4
    const-string v0, "NetGuard.Service"

    .line 268
    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v3, "Messages="

    .line 275
    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v1, " wakelock="

    .line 287
    .line 288
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-static {}, Leu/faircode/netguard/ServiceSinkhole;->access$200()Landroid/os/PowerManager$WakeLock;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :catchall_7
    move-exception v0

    .line 311
    const-string v1, "NetGuard.Service"

    .line 312
    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v3, "\n"

    .line 319
    .line 320
    invoke-static {v0, v2, v3, v0, v1}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :goto_5
    throw p1

    .line 324
    :catchall_8
    move-exception p1

    .line 325
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 326
    throw p1
.end method

.method public queue(Landroid/content/Intent;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->queue:I

    .line 7
    .line 8
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->reportQueueSize()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string v0, "Command"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 19
    .line 20
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 21
    .line 22
    invoke-static {v1}, Leu/faircode/netguard/ServiceSinkhole;->access$000(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, v1, Landroid/os/Message;->what:I

    .line 37
    .line 38
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$CommandHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 39
    .line 40
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$000(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$CommandHandler;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p1
.end method
