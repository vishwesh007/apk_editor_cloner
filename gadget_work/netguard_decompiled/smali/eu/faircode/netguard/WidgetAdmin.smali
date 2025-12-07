.class public Leu/faircode/netguard/WidgetAdmin;
.super Leu/faircode/netguard/ReceiverAutostart;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ReceiverAutostart;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    const-string v0, "eu.faircode.netguard.LOCKDOWN_ON"

    .line 2
    .line 3
    const-string v1, "Scheduling enabled after minutes="

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Leu/faircode/netguard/ReceiverAutostart;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "Received "

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "NetGuard.Widget"

    .line 23
    .line 24
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Leu/faircode/netguard/Util;->logExtras(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "alarm"

    .line 35
    .line 36
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/app/AlarmManager;

    .line 41
    .line 42
    new-instance v5, Landroid/content/Intent;

    .line 43
    .line 44
    const-string v6, "eu.faircode.netguard.ON"

    .line 45
    .line 46
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    const/high16 v8, 0x8000000

    .line 58
    .line 59
    invoke-static {p1, v7, v5, v8}, Leu/faircode/netguard/PendingIntentCompat;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const-string v9, "eu.faircode.netguard.OFF"

    .line 72
    .line 73
    if-nez v8, :cond_0

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_1

    .line 84
    .line 85
    :cond_0
    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    const-string v8, "vibrator"

    .line 89
    .line 90
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    check-cast v8, Landroid/os/Vibrator;

    .line 95
    .line 96
    invoke-virtual {v8}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_3

    .line 101
    .line 102
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    const/16 v11, 0x1a

    .line 105
    .line 106
    if-lt v10, v11, :cond_2

    .line 107
    .line 108
    invoke-static {}, LB/w;->f()Landroid/os/VibrationEffect;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-static {v8, v10}, LB/x;->o(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    const-wide/16 v10, 0x32

    .line 117
    .line 118
    invoke-virtual {v8, v10, v11}, Landroid/os/Vibrator;->vibrate(J)V

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    const-string v10, "widget"

    .line 130
    .line 131
    if-nez v8, :cond_6

    .line 132
    .line 133
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_4

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_5

    .line 153
    .line 154
    const-string v1, "eu.faircode.netguard.LOCKDOWN_OFF"

    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v1, "lockdown"

    .line 179
    .line 180
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    .line 186
    .line 187
    invoke-static {v10, p1, v7}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 188
    .line 189
    .line 190
    invoke-static {p1}, Leu/faircode/netguard/WidgetLockdown;->updateWidgets(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_3

    .line 194
    .line 195
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const-string v6, "enabled"

    .line 208
    .line 209
    invoke-interface {v0, v6, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    .line 215
    .line 216
    if-eqz p2, :cond_7

    .line 217
    .line 218
    invoke-static {v10, p1}, Leu/faircode/netguard/ServiceSinkhole;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_7
    invoke-static {v10, p1, v7}, Leu/faircode/netguard/ServiceSinkhole;->stop(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 223
    .line 224
    .line 225
    :goto_2
    const-string p1, "auto_enable"

    .line 226
    .line 227
    const-string v0, "0"

    .line 228
    .line 229
    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-nez p2, :cond_9

    .line 238
    .line 239
    if-lez p1, :cond_9

    .line 240
    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 257
    .line 258
    const/16 v0, 0x17

    .line 259
    .line 260
    const-wide/16 v1, 0x3e8

    .line 261
    .line 262
    if-ge p2, v0, :cond_8

    .line 263
    .line 264
    new-instance p2, Ljava/util/Date;

    .line 265
    .line 266
    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 270
    .line 271
    .line 272
    move-result-wide v8

    .line 273
    mul-int/lit8 p1, p1, 0x3c

    .line 274
    .line 275
    int-to-long p1, p1

    .line 276
    mul-long p1, p1, v1

    .line 277
    .line 278
    add-long/2addr p1, v8

    .line 279
    invoke-virtual {v4, v7, p1, p2, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_8
    new-instance p2, Ljava/util/Date;

    .line 284
    .line 285
    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 289
    .line 290
    .line 291
    move-result-wide v6

    .line 292
    mul-int/lit8 p1, p1, 0x3c

    .line 293
    .line 294
    int-to-long p1, p1

    .line 295
    mul-long p1, p1, v1

    .line 296
    .line 297
    add-long/2addr p1, v6

    .line 298
    invoke-static {v4, p1, p2, v5}, LE0/c;->e(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :catchall_0
    move-exception p1

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    const-string v0, "\n"

    .line 309
    .line 310
    invoke-static {p1, p2, v0, p1, v3}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :cond_9
    :goto_3
    return-void
.end method
