.class final Leu/faircode/netguard/ServiceSinkhole$StatsHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private grx:Ljava/util/List;

.field private gt:Ljava/util/List;

.field private gtx:Ljava/util/List;

.field private mapUidBytes:Ljava/util/HashMap;

.field private rx:J

.field private stats:Z

.field private t:J

.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;

.field private tx:J

.field private when:J


# direct methods
.method public constructor <init>(Leu/faircode/netguard/ServiceSinkhole;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->stats:Z

    .line 8
    .line 9
    const-wide/16 p1, -0x1

    .line 10
    .line 11
    iput-wide p1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->t:J

    .line 12
    .line 13
    iput-wide p1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->tx:J

    .line 14
    .line 15
    iput-wide p1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->rx:J

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gt:Ljava/util/List;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gtx:Ljava/util/List;

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->grx:Ljava/util/List;

    .line 37
    .line 38
    new-instance p1, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->mapUidBytes:Ljava/util/HashMap;

    .line 44
    .line 45
    return-void
.end method

.method private startStats()V
    .locals 4

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-static {v0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->stats:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "show_stats"

    .line 14
    .line 15
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Stats start enabled="

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "NetGuard.Service"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/util/Date;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iput-wide v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->when:J

    .line 53
    .line 54
    const-wide/16 v0, -0x1

    .line 55
    .line 56
    iput-wide v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->t:J

    .line 57
    .line 58
    iput-wide v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->tx:J

    .line 59
    .line 60
    iput-wide v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->rx:J

    .line 61
    .line 62
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gt:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gtx:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->grx:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->mapUidBytes:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 80
    .line 81
    .line 82
    iput-boolean v2, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->stats:Z

    .line 83
    .line 84
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->updateStats()V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method private stopStats()V
    .locals 3

    .line 1
    const-string v0, "Stats stop"

    .line 2
    .line 3
    const-string v1, "NetGuard.Service"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->stats:Z

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 16
    .line 17
    invoke-static {v0}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$State;->stats:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 22
    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Stop foreground state="

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 33
    .line 34
    invoke-static {v2}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 59
    .line 60
    sget-object v1, Leu/faircode/netguard/ServiceSinkhole$State;->none:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 61
    .line 62
    invoke-static {v0, v1}, Leu/faircode/netguard/ServiceSinkhole;->access$1602(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$State;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 67
    .line 68
    invoke-static {v0}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x7

    .line 73
    invoke-virtual {v0, v1}, Landroidx/core/app/H;->b(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method private updateStats()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/widget/RemoteViews;

    .line 4
    .line 5
    iget-object v2, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const v3, 0x7f0c0051

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 18
    .line 19
    invoke-static {v2}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "stats_frequency"

    .line 24
    .line 25
    const-string v4, "1000"

    .line 26
    .line 27
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    const-string v5, "stats_samples"

    .line 36
    .line 37
    const-string v6, "90"

    .line 38
    .line 39
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    const-string v7, "filter"

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    const-string v9, "show_top"

    .line 55
    .line 56
    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    const/4 v10, 0x5

    .line 61
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    const-string v11, "loglevel"

    .line 66
    .line 67
    invoke-interface {v2, v11, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const/4 v2, 0x3

    .line 75
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    :goto_0
    iget-object v10, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gt:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-lez v10, :cond_0

    .line 89
    .line 90
    iget-object v10, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gt:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    check-cast v10, Ljava/lang/Long;

    .line 97
    .line 98
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v10

    .line 102
    sub-long v10, v3, v10

    .line 103
    .line 104
    const-wide/16 v12, 0x3e8

    .line 105
    .line 106
    mul-long v12, v12, v5

    .line 107
    .line 108
    cmp-long v14, v10, v12

    .line 109
    .line 110
    if-lez v14, :cond_0

    .line 111
    .line 112
    iget-object v10, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gt:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v10, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    iget-object v10, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gtx:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v10, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    iget-object v10, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->grx:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v10, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 133
    .line 134
    .line 135
    move-result-wide v12

    .line 136
    const-wide/16 v14, 0x0

    .line 137
    .line 138
    if-eqz v7, :cond_2

    .line 139
    .line 140
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 145
    .line 146
    .line 147
    move-result-wide v16

    .line 148
    sub-long v10, v10, v16

    .line 149
    .line 150
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 155
    .line 156
    .line 157
    move-result-wide v16

    .line 158
    sub-long v12, v12, v16

    .line 159
    .line 160
    cmp-long v7, v10, v14

    .line 161
    .line 162
    if-gez v7, :cond_1

    .line 163
    .line 164
    move-wide v10, v14

    .line 165
    :cond_1
    cmp-long v7, v12, v14

    .line 166
    .line 167
    if-gez v7, :cond_2

    .line 168
    .line 169
    move/from16 v16, v9

    .line 170
    .line 171
    move-wide v12, v14

    .line 172
    goto :goto_1

    .line 173
    :cond_2
    move/from16 v16, v9

    .line 174
    .line 175
    :goto_1
    iget-wide v8, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->t:J

    .line 176
    .line 177
    const/16 v17, 0x0

    .line 178
    .line 179
    const/high16 v18, 0x447a0000    # 1000.0f

    .line 180
    .line 181
    cmp-long v19, v8, v14

    .line 182
    .line 183
    move-wide/from16 v20, v3

    .line 184
    .line 185
    if-lez v19, :cond_3

    .line 186
    .line 187
    iget-wide v2, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->tx:J

    .line 188
    .line 189
    cmp-long v4, v2, v14

    .line 190
    .line 191
    if-lez v4, :cond_3

    .line 192
    .line 193
    move-wide/from16 v22, v8

    .line 194
    .line 195
    iget-wide v7, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->rx:J

    .line 196
    .line 197
    cmp-long v9, v7, v14

    .line 198
    .line 199
    if-lez v9, :cond_3

    .line 200
    .line 201
    move-wide/from16 v24, v5

    .line 202
    .line 203
    sub-long v4, v20, v22

    .line 204
    .line 205
    long-to-float v4, v4

    .line 206
    div-float v4, v4, v18

    .line 207
    .line 208
    sub-long v2, v10, v2

    .line 209
    .line 210
    long-to-float v2, v2

    .line 211
    div-float/2addr v2, v4

    .line 212
    sub-long v7, v12, v7

    .line 213
    .line 214
    long-to-float v3, v7

    .line 215
    div-float/2addr v3, v4

    .line 216
    iget-object v4, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gt:Ljava/util/List;

    .line 217
    .line 218
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    iget-object v4, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gtx:Ljava/util/List;

    .line 226
    .line 227
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    iget-object v4, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->grx:Ljava/util/List;

    .line 235
    .line 236
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_3
    move-wide/from16 v24, v5

    .line 245
    .line 246
    const/4 v2, 0x0

    .line 247
    const/4 v3, 0x0

    .line 248
    :goto_2
    const v9, 0x49742400    # 1000000.0f

    .line 249
    .line 250
    .line 251
    if-eqz v16, :cond_d

    .line 252
    .line 253
    iget-object v6, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->mapUidBytes:Ljava/util/HashMap;

    .line 254
    .line 255
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-nez v6, :cond_5

    .line 260
    .line 261
    iget-object v6, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 262
    .line 263
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    const/4 v7, 0x0

    .line 268
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    const/4 v7, 0x1

    .line 273
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v19

    .line 281
    if-eqz v19, :cond_d

    .line 282
    .line 283
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v19

    .line 287
    move-object/from16 v4, v19

    .line 288
    .line 289
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 290
    .line 291
    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 292
    .line 293
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eq v8, v5, :cond_4

    .line 298
    .line 299
    iget-object v5, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->mapUidBytes:Ljava/util/HashMap;

    .line 300
    .line 301
    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 302
    .line 303
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 308
    .line 309
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 310
    .line 311
    .line 312
    move-result-wide v27

    .line 313
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 314
    .line 315
    invoke-static {v4}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 316
    .line 317
    .line 318
    move-result-wide v29

    .line 319
    add-long v29, v29, v27

    .line 320
    .line 321
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    :cond_4
    const/4 v7, 0x1

    .line 329
    goto :goto_3

    .line 330
    :cond_5
    iget-wide v4, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->t:J

    .line 331
    .line 332
    cmp-long v6, v4, v14

    .line 333
    .line 334
    if-lez v6, :cond_d

    .line 335
    .line 336
    new-instance v4, Ljava/util/TreeMap;

    .line 337
    .line 338
    new-instance v5, Leu/faircode/netguard/ServiceSinkhole$StatsHandler$1;

    .line 339
    .line 340
    invoke-direct {v5, v0}, Leu/faircode/netguard/ServiceSinkhole$StatsHandler$1;-><init>(Leu/faircode/netguard/ServiceSinkhole$StatsHandler;)V

    .line 341
    .line 342
    .line 343
    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 344
    .line 345
    .line 346
    iget-wide v5, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->t:J

    .line 347
    .line 348
    sub-long v5, v20, v5

    .line 349
    .line 350
    long-to-float v5, v5

    .line 351
    div-float v5, v5, v18

    .line 352
    .line 353
    iget-object v6, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->mapUidBytes:Ljava/util/HashMap;

    .line 354
    .line 355
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    if-eqz v7, :cond_7

    .line 368
    .line 369
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    check-cast v7, Ljava/lang/Integer;

    .line 374
    .line 375
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 380
    .line 381
    .line 382
    move-result-wide v27

    .line 383
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 384
    .line 385
    .line 386
    move-result-wide v29

    .line 387
    add-long v29, v29, v27

    .line 388
    .line 389
    iget-object v8, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->mapUidBytes:Ljava/util/HashMap;

    .line 390
    .line 391
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v14

    .line 395
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    check-cast v8, Ljava/lang/Long;

    .line 400
    .line 401
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 402
    .line 403
    .line 404
    move-result-wide v14

    .line 405
    sub-long v14, v29, v14

    .line 406
    .line 407
    long-to-float v8, v14

    .line 408
    div-float/2addr v8, v5

    .line 409
    cmpl-float v14, v8, v17

    .line 410
    .line 411
    if-lez v14, :cond_6

    .line 412
    .line 413
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v14

    .line 421
    invoke-virtual {v4, v8, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    iget-object v8, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->mapUidBytes:Ljava/util/HashMap;

    .line 425
    .line 426
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 431
    .line 432
    .line 433
    move-result-object v14

    .line 434
    invoke-virtual {v8, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    :cond_6
    const-wide/16 v14, 0x0

    .line 438
    .line 439
    goto :goto_4

    .line 440
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    const/4 v7, 0x0

    .line 454
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v8

    .line 458
    if-eqz v8, :cond_b

    .line 459
    .line 460
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    check-cast v8, Ljava/lang/Float;

    .line 465
    .line 466
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 467
    .line 468
    .line 469
    move-result v8

    .line 470
    add-int/lit8 v14, v7, 0x1

    .line 471
    .line 472
    const/4 v15, 0x3

    .line 473
    if-lt v7, v15, :cond_8

    .line 474
    .line 475
    goto :goto_8

    .line 476
    :cond_8
    cmpg-float v7, v8, v9

    .line 477
    .line 478
    if-gez v7, :cond_9

    .line 479
    .line 480
    iget-object v7, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 481
    .line 482
    const/4 v15, 0x1

    .line 483
    new-array v9, v15, [Ljava/lang/Object;

    .line 484
    .line 485
    div-float v26, v8, v18

    .line 486
    .line 487
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 488
    .line 489
    .line 490
    move-result-object v26

    .line 491
    const/16 v16, 0x0

    .line 492
    .line 493
    aput-object v26, v9, v16

    .line 494
    .line 495
    const v15, 0x7f10007d

    .line 496
    .line 497
    .line 498
    invoke-virtual {v7, v15, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    goto :goto_6

    .line 506
    :cond_9
    const/16 v16, 0x0

    .line 507
    .line 508
    iget-object v7, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 509
    .line 510
    const/4 v9, 0x1

    .line 511
    new-array v15, v9, [Ljava/lang/Object;

    .line 512
    .line 513
    div-float v9, v8, v18

    .line 514
    .line 515
    div-float v9, v9, v18

    .line 516
    .line 517
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 518
    .line 519
    .line 520
    move-result-object v9

    .line 521
    aput-object v9, v15, v16

    .line 522
    .line 523
    const v9, 0x7f100082

    .line 524
    .line 525
    .line 526
    invoke-virtual {v7, v9, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    :goto_6
    const/16 v7, 0x20

    .line 534
    .line 535
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    invoke-virtual {v4, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    check-cast v7, Ljava/lang/Integer;

    .line 547
    .line 548
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 549
    .line 550
    .line 551
    move-result v7

    .line 552
    iget-object v8, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 553
    .line 554
    invoke-static {v7, v8}, Leu/faircode/netguard/Util;->getApplicationNames(ILandroid/content/Context;)Ljava/util/List;

    .line 555
    .line 556
    .line 557
    move-result-object v7

    .line 558
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 559
    .line 560
    .line 561
    move-result v8

    .line 562
    if-lez v8, :cond_a

    .line 563
    .line 564
    const/4 v8, 0x0

    .line 565
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v7

    .line 569
    check-cast v7, Ljava/lang/String;

    .line 570
    .line 571
    goto :goto_7

    .line 572
    :cond_a
    const-string v7, "?"

    .line 573
    .line 574
    :goto_7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v7, "\r\n"

    .line 578
    .line 579
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    move v7, v14

    .line 583
    const v9, 0x49742400    # 1000000.0f

    .line 584
    .line 585
    .line 586
    goto/16 :goto_5

    .line 587
    .line 588
    :cond_b
    :goto_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    if-lez v4, :cond_c

    .line 593
    .line 594
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    const/4 v6, 0x2

    .line 599
    sub-int/2addr v4, v6

    .line 600
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 601
    .line 602
    .line 603
    :cond_c
    const v4, 0x7f09018d

    .line 604
    .line 605
    .line 606
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v5

    .line 610
    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 611
    .line 612
    .line 613
    :cond_d
    move-wide/from16 v4, v20

    .line 614
    .line 615
    iput-wide v4, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->t:J

    .line 616
    .line 617
    iput-wide v10, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->tx:J

    .line 618
    .line 619
    iput-wide v12, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->rx:J

    .line 620
    .line 621
    const/16 v4, 0x60

    .line 622
    .line 623
    iget-object v5, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 624
    .line 625
    invoke-static {v4, v5}, Leu/faircode/netguard/Util;->dips2pixels(ILandroid/content/Context;)I

    .line 626
    .line 627
    .line 628
    move-result v4

    .line 629
    const/16 v5, 0x1e0

    .line 630
    .line 631
    iget-object v6, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 632
    .line 633
    invoke-static {v5, v6}, Leu/faircode/netguard/Util;->dips2pixels(ILandroid/content/Context;)I

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 638
    .line 639
    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 640
    .line 641
    .line 642
    move-result-object v6

    .line 643
    new-instance v7, Landroid/graphics/Canvas;

    .line 644
    .line 645
    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 646
    .line 647
    .line 648
    const/4 v8, 0x0

    .line 649
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 650
    .line 651
    .line 652
    const/4 v9, 0x0

    .line 653
    const/4 v10, 0x0

    .line 654
    const-wide/16 v14, 0x0

    .line 655
    .line 656
    :goto_9
    iget-object v11, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gt:Ljava/util/List;

    .line 657
    .line 658
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 659
    .line 660
    .line 661
    move-result v11

    .line 662
    if-ge v9, v11, :cond_13

    .line 663
    .line 664
    iget-object v11, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gt:Ljava/util/List;

    .line 665
    .line 666
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v11

    .line 670
    check-cast v11, Ljava/lang/Long;

    .line 671
    .line 672
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 673
    .line 674
    .line 675
    move-result-wide v11

    .line 676
    iget-object v13, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gtx:Ljava/util/List;

    .line 677
    .line 678
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v13

    .line 682
    check-cast v13, Ljava/lang/Float;

    .line 683
    .line 684
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 685
    .line 686
    .line 687
    move-result v13

    .line 688
    iget-object v8, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->grx:Ljava/util/List;

    .line 689
    .line 690
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v8

    .line 694
    check-cast v8, Ljava/lang/Float;

    .line 695
    .line 696
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 697
    .line 698
    .line 699
    move-result v8

    .line 700
    cmp-long v19, v11, v14

    .line 701
    .line 702
    if-lez v19, :cond_e

    .line 703
    .line 704
    move-wide v14, v11

    .line 705
    :cond_e
    cmpl-float v11, v13, v17

    .line 706
    .line 707
    if-lez v11, :cond_f

    .line 708
    .line 709
    move/from16 v17, v13

    .line 710
    .line 711
    :cond_f
    cmpl-float v11, v8, v17

    .line 712
    .line 713
    if-lez v11, :cond_10

    .line 714
    .line 715
    move/from16 v17, v8

    .line 716
    .line 717
    :cond_10
    cmpl-float v11, v13, v10

    .line 718
    .line 719
    if-lez v11, :cond_11

    .line 720
    .line 721
    move v10, v13

    .line 722
    :cond_11
    cmpl-float v11, v8, v10

    .line 723
    .line 724
    if-lez v11, :cond_12

    .line 725
    .line 726
    move v10, v8

    .line 727
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 728
    .line 729
    goto :goto_9

    .line 730
    :cond_13
    new-instance v8, Landroid/graphics/Path;

    .line 731
    .line 732
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 733
    .line 734
    .line 735
    new-instance v13, Landroid/graphics/Path;

    .line 736
    .line 737
    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 738
    .line 739
    .line 740
    const/4 v9, 0x0

    .line 741
    :goto_a
    iget-object v11, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gtx:Ljava/util/List;

    .line 742
    .line 743
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 744
    .line 745
    .line 746
    move-result v11

    .line 747
    if-ge v9, v11, :cond_15

    .line 748
    .line 749
    int-to-float v11, v5

    .line 750
    move/from16 v19, v2

    .line 751
    .line 752
    move/from16 v20, v3

    .line 753
    .line 754
    int-to-long v2, v5

    .line 755
    iget-object v12, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gt:Ljava/util/List;

    .line 756
    .line 757
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v12

    .line 761
    check-cast v12, Ljava/lang/Long;

    .line 762
    .line 763
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 764
    .line 765
    .line 766
    move-result-wide v27

    .line 767
    sub-long v27, v14, v27

    .line 768
    .line 769
    mul-long v2, v2, v27

    .line 770
    .line 771
    long-to-float v2, v2

    .line 772
    div-float v2, v2, v18

    .line 773
    .line 774
    move-wide/from16 v27, v14

    .line 775
    .line 776
    move-wide/from16 v14, v24

    .line 777
    .line 778
    long-to-float v3, v14

    .line 779
    div-float/2addr v2, v3

    .line 780
    sub-float/2addr v11, v2

    .line 781
    int-to-float v2, v4

    .line 782
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->gtx:Ljava/util/List;

    .line 783
    .line 784
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    check-cast v3, Ljava/lang/Float;

    .line 789
    .line 790
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 791
    .line 792
    .line 793
    move-result v3

    .line 794
    mul-float v3, v3, v2

    .line 795
    .line 796
    div-float/2addr v3, v10

    .line 797
    sub-float v3, v2, v3

    .line 798
    .line 799
    iget-object v12, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->grx:Ljava/util/List;

    .line 800
    .line 801
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v12

    .line 805
    check-cast v12, Ljava/lang/Float;

    .line 806
    .line 807
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 808
    .line 809
    .line 810
    move-result v12

    .line 811
    mul-float v12, v12, v2

    .line 812
    .line 813
    div-float/2addr v12, v10

    .line 814
    sub-float/2addr v2, v12

    .line 815
    if-nez v9, :cond_14

    .line 816
    .line 817
    invoke-virtual {v8, v11, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v13, v11, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 821
    .line 822
    .line 823
    goto :goto_b

    .line 824
    :cond_14
    invoke-virtual {v8, v11, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v13, v11, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 828
    .line 829
    .line 830
    :goto_b
    add-int/lit8 v9, v9, 0x1

    .line 831
    .line 832
    move-wide/from16 v24, v14

    .line 833
    .line 834
    move/from16 v2, v19

    .line 835
    .line 836
    move/from16 v3, v20

    .line 837
    .line 838
    move-wide/from16 v14, v27

    .line 839
    .line 840
    goto :goto_a

    .line 841
    :cond_15
    move/from16 v19, v2

    .line 842
    .line 843
    move/from16 v20, v3

    .line 844
    .line 845
    new-instance v2, Landroid/graphics/Paint;

    .line 846
    .line 847
    const/4 v3, 0x1

    .line 848
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 849
    .line 850
    .line 851
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 852
    .line 853
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 854
    .line 855
    .line 856
    iget-object v9, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 857
    .line 858
    invoke-static {v3, v9}, Leu/faircode/netguard/Util;->dips2pixels(ILandroid/content/Context;)I

    .line 859
    .line 860
    .line 861
    move-result v9

    .line 862
    int-to-float v3, v9

    .line 863
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 864
    .line 865
    .line 866
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 867
    .line 868
    const v9, 0x7f060033

    .line 869
    .line 870
    .line 871
    invoke-static {v3, v9}, Landroidx/core/content/f;->b(Landroid/content/Context;I)I

    .line 872
    .line 873
    .line 874
    move-result v3

    .line 875
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 876
    .line 877
    .line 878
    const/4 v3, 0x2

    .line 879
    div-int/2addr v4, v3

    .line 880
    int-to-float v3, v4

    .line 881
    const/4 v10, 0x0

    .line 882
    int-to-float v12, v5

    .line 883
    move-object v9, v7

    .line 884
    move v11, v3

    .line 885
    move-object v4, v13

    .line 886
    move v13, v3

    .line 887
    move-object v14, v2

    .line 888
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 889
    .line 890
    .line 891
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 892
    .line 893
    const/4 v5, 0x2

    .line 894
    invoke-static {v5, v3}, Leu/faircode/netguard/Util;->dips2pixels(ILandroid/content/Context;)I

    .line 895
    .line 896
    .line 897
    move-result v3

    .line 898
    int-to-float v3, v3

    .line 899
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 900
    .line 901
    .line 902
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 903
    .line 904
    const v5, 0x7f060044

    .line 905
    .line 906
    .line 907
    invoke-static {v3, v5}, Landroidx/core/content/f;->b(Landroid/content/Context;I)I

    .line 908
    .line 909
    .line 910
    move-result v3

    .line 911
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v7, v8, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 915
    .line 916
    .line 917
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 918
    .line 919
    const v5, 0x7f060043

    .line 920
    .line 921
    .line 922
    invoke-static {v3, v5}, Landroidx/core/content/f;->b(Landroid/content/Context;I)I

    .line 923
    .line 924
    .line 925
    move-result v3

    .line 926
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v7, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 930
    .line 931
    .line 932
    const v2, 0x7f0900a6

    .line 933
    .line 934
    .line 935
    invoke-virtual {v1, v2, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 936
    .line 937
    .line 938
    const v2, 0x7f09018f

    .line 939
    .line 940
    .line 941
    const v3, 0x49742400    # 1000000.0f

    .line 942
    .line 943
    .line 944
    cmpg-float v4, v19, v3

    .line 945
    .line 946
    if-gez v4, :cond_16

    .line 947
    .line 948
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 949
    .line 950
    const/4 v4, 0x1

    .line 951
    new-array v5, v4, [Ljava/lang/Object;

    .line 952
    .line 953
    div-float v6, v19, v18

    .line 954
    .line 955
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 956
    .line 957
    .line 958
    move-result-object v6

    .line 959
    const/4 v7, 0x0

    .line 960
    aput-object v6, v5, v7

    .line 961
    .line 962
    const v6, 0x7f10007d

    .line 963
    .line 964
    .line 965
    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v3

    .line 969
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 970
    .line 971
    .line 972
    goto :goto_c

    .line 973
    :cond_16
    const/4 v4, 0x1

    .line 974
    const/4 v7, 0x0

    .line 975
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 976
    .line 977
    new-array v5, v4, [Ljava/lang/Object;

    .line 978
    .line 979
    div-float v4, v19, v18

    .line 980
    .line 981
    div-float v4, v4, v18

    .line 982
    .line 983
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 984
    .line 985
    .line 986
    move-result-object v4

    .line 987
    aput-object v4, v5, v7

    .line 988
    .line 989
    const v4, 0x7f100082

    .line 990
    .line 991
    .line 992
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 997
    .line 998
    .line 999
    :goto_c
    const v2, 0x7f090182

    .line 1000
    .line 1001
    .line 1002
    const v3, 0x49742400    # 1000000.0f

    .line 1003
    .line 1004
    .line 1005
    cmpg-float v4, v20, v3

    .line 1006
    .line 1007
    if-gez v4, :cond_17

    .line 1008
    .line 1009
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1010
    .line 1011
    const/4 v4, 0x1

    .line 1012
    new-array v5, v4, [Ljava/lang/Object;

    .line 1013
    .line 1014
    div-float v6, v20, v18

    .line 1015
    .line 1016
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v6

    .line 1020
    aput-object v6, v5, v7

    .line 1021
    .line 1022
    const v6, 0x7f10007d

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v3

    .line 1029
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1030
    .line 1031
    .line 1032
    goto :goto_d

    .line 1033
    :cond_17
    const/4 v4, 0x1

    .line 1034
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1035
    .line 1036
    new-array v5, v4, [Ljava/lang/Object;

    .line 1037
    .line 1038
    div-float v4, v20, v18

    .line 1039
    .line 1040
    div-float v4, v4, v18

    .line 1041
    .line 1042
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v4

    .line 1046
    aput-object v4, v5, v7

    .line 1047
    .line 1048
    const v4, 0x7f100082

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v3

    .line 1055
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1056
    .line 1057
    .line 1058
    :goto_d
    const/high16 v2, 0x40000000    # 2.0f

    .line 1059
    .line 1060
    const v3, 0x7f090171

    .line 1061
    .line 1062
    .line 1063
    const v4, 0x49742400    # 1000000.0f

    .line 1064
    .line 1065
    .line 1066
    cmpg-float v4, v17, v4

    .line 1067
    .line 1068
    if-gez v4, :cond_18

    .line 1069
    .line 1070
    iget-object v4, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1071
    .line 1072
    const/4 v5, 0x1

    .line 1073
    new-array v7, v5, [Ljava/lang/Object;

    .line 1074
    .line 1075
    div-float v17, v17, v2

    .line 1076
    .line 1077
    div-float v17, v17, v18

    .line 1078
    .line 1079
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v2

    .line 1083
    const/4 v6, 0x0

    .line 1084
    aput-object v2, v7, v6

    .line 1085
    .line 1086
    const v2, 0x7f10007d

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v4, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v2

    .line 1093
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1094
    .line 1095
    .line 1096
    goto :goto_e

    .line 1097
    :cond_18
    const/4 v5, 0x1

    .line 1098
    const/4 v6, 0x0

    .line 1099
    iget-object v4, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1100
    .line 1101
    new-array v7, v5, [Ljava/lang/Object;

    .line 1102
    .line 1103
    div-float v17, v17, v2

    .line 1104
    .line 1105
    div-float v17, v17, v18

    .line 1106
    .line 1107
    div-float v17, v17, v18

    .line 1108
    .line 1109
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    aput-object v2, v7, v6

    .line 1114
    .line 1115
    const v2, 0x7f100082

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v4, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v2

    .line 1122
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1123
    .line 1124
    .line 1125
    :goto_e
    const v2, 0x7f090185

    .line 1126
    .line 1127
    .line 1128
    const-string v3, ""

    .line 1129
    .line 1130
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1131
    .line 1132
    .line 1133
    const v2, 0x7f090163

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1137
    .line 1138
    .line 1139
    new-instance v2, Landroid/content/Intent;

    .line 1140
    .line 1141
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1142
    .line 1143
    const-class v4, Leu/faircode/netguard/ActivityMain;

    .line 1144
    .line 1145
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1146
    .line 1147
    .line 1148
    iget-object v3, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1149
    .line 1150
    const/high16 v4, 0x8000000

    .line 1151
    .line 1152
    const/4 v5, 0x0

    .line 1153
    invoke-static {v3, v5, v2, v4}, Leu/faircode/netguard/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v2

    .line 1157
    new-instance v4, Landroid/util/TypedValue;

    .line 1158
    .line 1159
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1160
    .line 1161
    .line 1162
    iget-object v5, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1163
    .line 1164
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v5

    .line 1168
    const v6, 0x7f040065

    .line 1169
    .line 1170
    .line 1171
    const/4 v7, 0x1

    .line 1172
    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1173
    .line 1174
    .line 1175
    new-instance v5, Landroidx/core/app/w;

    .line 1176
    .line 1177
    iget-object v6, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1178
    .line 1179
    const-string v7, "notify"

    .line 1180
    .line 1181
    invoke-direct {v5, v6, v7}, Landroidx/core/app/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    iget-wide v6, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->when:J

    .line 1185
    .line 1186
    invoke-virtual {v5, v6, v7}, Landroidx/core/app/w;->u(J)V

    .line 1187
    .line 1188
    .line 1189
    const v6, 0x7f08007a

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v5, v6}, Landroidx/core/app/w;->q(I)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v5, v1}, Landroidx/core/app/w;->h(Landroid/widget/RemoteViews;)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v5, v2}, Landroidx/core/app/w;->i(Landroid/app/PendingIntent;)V

    .line 1199
    .line 1200
    .line 1201
    iget v1, v4, Landroid/util/TypedValue;->data:I

    .line 1202
    .line 1203
    invoke-virtual {v5, v1}, Landroidx/core/app/w;->g(I)V

    .line 1204
    .line 1205
    .line 1206
    const/4 v1, 0x1

    .line 1207
    invoke-virtual {v5, v1}, Landroidx/core/app/w;->n(Z)V

    .line 1208
    .line 1209
    .line 1210
    const/4 v2, 0x0

    .line 1211
    invoke-virtual {v5, v2}, Landroidx/core/app/w;->d(Z)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v5}, Landroidx/core/app/w;->e()V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v5, v1}, Landroidx/core/app/w;->t(I)V

    .line 1218
    .line 1219
    .line 1220
    iget-object v1, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1221
    .line 1222
    invoke-static {v1}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v1

    .line 1226
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$State;->none:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 1227
    .line 1228
    const/4 v3, 0x7

    .line 1229
    if-eq v1, v2, :cond_1a

    .line 1230
    .line 1231
    iget-object v1, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1232
    .line 1233
    invoke-static {v1}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v1

    .line 1237
    sget-object v4, Leu/faircode/netguard/ServiceSinkhole$State;->waiting:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 1238
    .line 1239
    if-ne v1, v4, :cond_19

    .line 1240
    .line 1241
    goto :goto_f

    .line 1242
    :cond_19
    iget-object v1, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1243
    .line 1244
    invoke-static {v1}, Leu/faircode/netguard/Util;->canNotify(Landroid/content/Context;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v1

    .line 1248
    if-eqz v1, :cond_1c

    .line 1249
    .line 1250
    iget-object v1, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1251
    .line 1252
    invoke-static {v1}, Landroidx/core/app/H;->c(Landroid/content/Context;)Landroidx/core/app/H;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v1

    .line 1256
    invoke-virtual {v5}, Landroidx/core/app/w;->b()Landroid/app/Notification;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v2

    .line 1260
    invoke-virtual {v1, v3, v2}, Landroidx/core/app/H;->e(ILandroid/app/Notification;)V

    .line 1261
    .line 1262
    .line 1263
    goto :goto_10

    .line 1264
    :cond_1a
    :goto_f
    iget-object v1, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1265
    .line 1266
    invoke-static {v1}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v1

    .line 1270
    const-string v4, "NetGuard.Service"

    .line 1271
    .line 1272
    if-eq v1, v2, :cond_1b

    .line 1273
    .line 1274
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    const-string v2, "Stop foreground state="

    .line 1277
    .line 1278
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    iget-object v2, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1282
    .line 1283
    invoke-static {v2}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v2

    .line 1287
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v2

    .line 1291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    .line 1300
    .line 1301
    iget-object v1, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1302
    .line 1303
    const/4 v2, 0x1

    .line 1304
    invoke-virtual {v1, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 1305
    .line 1306
    .line 1307
    :cond_1b
    iget-object v1, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1308
    .line 1309
    invoke-virtual {v5}, Landroidx/core/app/w;->b()Landroid/app/Notification;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v2

    .line 1313
    invoke-virtual {v1, v3, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 1314
    .line 1315
    .line 1316
    iget-object v1, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1317
    .line 1318
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$State;->stats:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 1319
    .line 1320
    invoke-static {v1, v2}, Leu/faircode/netguard/ServiceSinkhole;->access$1602(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$State;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 1321
    .line 1322
    .line 1323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    const-string v2, "Start foreground state="

    .line 1326
    .line 1327
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1328
    .line 1329
    .line 1330
    iget-object v2, v0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 1331
    .line 1332
    invoke-static {v2}, Leu/faircode/netguard/ServiceSinkhole;->access$1600(Leu/faircode/netguard/ServiceSinkhole;)Leu/faircode/netguard/ServiceSinkhole$State;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v2

    .line 1336
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v2

    .line 1340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v1

    .line 1347
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    .line 1349
    .line 1350
    :cond_1c
    :goto_10
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "NetGuard.Service"

    .line 2
    .line 3
    const-string v1, "Unknown stats message="

    .line 4
    .line 5
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v2, v3, :cond_2

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v2, v3, :cond_1

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p1, p1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->updateStats()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->stopStats()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-direct {p0}, Leu/faircode/netguard/ServiceSinkhole$StatsHandler;->startStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "\n"

    .line 53
    .line 54
    invoke-static {p1, v1, v2, p1, v0}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method
