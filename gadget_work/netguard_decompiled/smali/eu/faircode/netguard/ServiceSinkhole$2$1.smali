.class Leu/faircode/netguard/ServiceSinkhole$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ServiceSinkhole$2;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ServiceSinkhole$2;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$2;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->val$intent:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "alarm"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/AlarmManager;

    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v2, "eu.faircode.netguard.SCREEN_OFF_DELAYED"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->val$context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->val$context:Landroid/content/Context;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/high16 v5, 0x8000000

    .line 31
    .line 32
    invoke-static {v3, v4, v1, v5}, Leu/faircode/netguard/PendingIntentCompat;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x17

    .line 40
    .line 41
    :try_start_0
    iget-object v5, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$2;

    .line 42
    .line 43
    iget-object v5, v5, Leu/faircode/netguard/ServiceSinkhole$2;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 44
    .line 45
    invoke-static {v5}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 46
    .line 47
    .line 48
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    const-string v6, "screen_delay"

    .line 50
    .line 51
    const-string v7, "0"

    .line 52
    .line 53
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    const/4 v5, 0x0

    .line 63
    :goto_0
    :try_start_2
    const-string v6, "android.intent.action.SCREEN_ON"

    .line 64
    .line 65
    iget-object v7, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->val$intent:Landroid/content/Intent;

    .line 66
    .line 67
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    const-string v7, "interactive state changed"

    .line 76
    .line 77
    const/4 v8, 0x1

    .line 78
    if-nez v6, :cond_3

    .line 79
    .line 80
    if-nez v5, :cond_0

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    :try_start_3
    iget-object v9, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->val$intent:Landroid/content/Intent;

    .line 84
    .line 85
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$2;

    .line 96
    .line 97
    iget-object v2, v2, Leu/faircode/netguard/ServiceSinkhole$2;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 98
    .line 99
    invoke-static {v2, v6}, Leu/faircode/netguard/ServiceSinkhole;->access$702(Leu/faircode/netguard/ServiceSinkhole;Z)Z

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$2;

    .line 103
    .line 104
    iget-object v2, v2, Leu/faircode/netguard/ServiceSinkhole$2;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 105
    .line 106
    invoke-static {v7, v2, v8}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .line 112
    const-wide/16 v6, 0x3e8

    .line 113
    .line 114
    if-ge v2, v3, :cond_2

    .line 115
    .line 116
    new-instance v2, Ljava/util/Date;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 122
    .line 123
    .line 124
    move-result-wide v9

    .line 125
    mul-int/lit8 v5, v5, 0x3c

    .line 126
    .line 127
    int-to-long v11, v5

    .line 128
    mul-long v11, v11, v6

    .line 129
    .line 130
    add-long/2addr v11, v9

    .line 131
    invoke-virtual {v0, v4, v11, v12, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    new-instance v2, Ljava/util/Date;

    .line 136
    .line 137
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 141
    .line 142
    .line 143
    move-result-wide v9

    .line 144
    mul-int/lit8 v5, v5, 0x3c

    .line 145
    .line 146
    int-to-long v11, v5

    .line 147
    mul-long v11, v11, v6

    .line 148
    .line 149
    add-long/2addr v11, v9

    .line 150
    invoke-static {v0, v11, v12, v1}, LE0/c;->e(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    :goto_1
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$2;

    .line 155
    .line 156
    iget-object v2, v2, Leu/faircode/netguard/ServiceSinkhole$2;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 157
    .line 158
    invoke-static {v2, v6}, Leu/faircode/netguard/ServiceSinkhole;->access$702(Leu/faircode/netguard/ServiceSinkhole;Z)Z

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$2;

    .line 162
    .line 163
    iget-object v2, v2, Leu/faircode/netguard/ServiceSinkhole$2;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 164
    .line 165
    invoke-static {v7, v2, v8}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 166
    .line 167
    .line 168
    :goto_2
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$2;

    .line 169
    .line 170
    iget-object v2, v2, Leu/faircode/netguard/ServiceSinkhole$2;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 171
    .line 172
    invoke-static {v2}, Leu/faircode/netguard/ServiceSinkhole;->access$1000(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$StatsHandler;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget-object v5, p0, Leu/faircode/netguard/ServiceSinkhole$2$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$2;

    .line 177
    .line 178
    iget-object v5, v5, Leu/faircode/netguard/ServiceSinkhole$2;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 179
    .line 180
    invoke-static {v5}, Leu/faircode/netguard/Util;->isInteractive(Landroid/content/Context;)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eqz v5, :cond_4

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_4
    const/4 v8, 0x2

    .line 188
    :goto_3
    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :catchall_0
    move-exception v2

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v6, "\n"

    .line 199
    .line 200
    const-string v7, "NetGuard.Service"

    .line 201
    .line 202
    invoke-static {v2, v5, v6, v2, v7}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 206
    .line 207
    const-wide/16 v5, 0x3a98

    .line 208
    .line 209
    if-ge v2, v3, :cond_5

    .line 210
    .line 211
    new-instance v2, Ljava/util/Date;

    .line 212
    .line 213
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 217
    .line 218
    .line 219
    move-result-wide v2

    .line 220
    add-long/2addr v2, v5

    .line 221
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_5
    new-instance v2, Ljava/util/Date;

    .line 226
    .line 227
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 231
    .line 232
    .line 233
    move-result-wide v2

    .line 234
    add-long/2addr v2, v5

    .line 235
    invoke-static {v0, v2, v3, v1}, LE0/c;->e(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    .line 236
    .line 237
    .line 238
    :goto_4
    return-void
.end method
