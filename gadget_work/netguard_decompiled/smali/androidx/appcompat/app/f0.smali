.class final Landroidx/appcompat/app/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Landroidx/appcompat/app/f0;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/location/LocationManager;

.field private final c:Landroidx/appcompat/app/e0;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/appcompat/app/e0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/appcompat/app/e0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/appcompat/app/f0;->c:Landroidx/appcompat/app/e0;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/appcompat/app/f0;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/appcompat/app/f0;->b:Landroid/location/LocationManager;

    .line 14
    .line 15
    return-void
.end method

.method static a(Landroid/content/Context;)Landroidx/appcompat/app/f0;
    .locals 2

    .line 1
    sget-object v0, Landroidx/appcompat/app/f0;->d:Landroidx/appcompat/app/f0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Landroidx/appcompat/app/f0;

    .line 10
    .line 11
    const-string v1, "location"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/location/LocationManager;

    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/f0;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/appcompat/app/f0;->d:Landroidx/appcompat/app/f0;

    .line 23
    .line 24
    :cond_0
    sget-object p0, Landroidx/appcompat/app/f0;->d:Landroidx/appcompat/app/f0;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method final b()Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Landroidx/appcompat/app/f0;->c:Landroidx/appcompat/app/e0;

    .line 4
    .line 5
    iget-wide v3, v2, Landroidx/appcompat/app/e0;->b:J

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v5

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x1

    .line 13
    cmp-long v0, v3, v5

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, v2, Landroidx/appcompat/app/e0;->a:Z

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 26
    .line 27
    iget-object v3, v1, Landroidx/appcompat/app/f0;->a:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v3, v0}, Lt0/a;->h(Landroid/content/Context;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v4, "Failed to get last known location"

    .line 34
    .line 35
    iget-object v5, v1, Landroidx/appcompat/app/f0;->b:Landroid/location/LocationManager;

    .line 36
    .line 37
    const-string v6, "TwilightManager"

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    const-string v0, "network"

    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-static {v6, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :cond_2
    move-object v0, v9

    .line 60
    :goto_1
    move-object v10, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move-object v10, v9

    .line 63
    :goto_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 64
    .line 65
    invoke-static {v3, v0}, Lt0/a;->h(Landroid/content/Context;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    const-string v0, "gps"

    .line 72
    .line 73
    :try_start_1
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 80
    .line 81
    .line 82
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    move-object v9, v0

    .line 84
    goto :goto_3

    .line 85
    :catch_1
    move-exception v0

    .line 86
    invoke-static {v6, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    .line 90
    .line 91
    if-eqz v10, :cond_5

    .line 92
    .line 93
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {v10}, Landroid/location/Location;->getTime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v11

    .line 101
    cmp-long v0, v3, v11

    .line 102
    .line 103
    if-lez v0, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    if-eqz v9, :cond_6

    .line 107
    .line 108
    :goto_4
    move-object v10, v9

    .line 109
    :cond_6
    if-eqz v10, :cond_c

    .line 110
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    invoke-static {}, Landroidx/appcompat/app/d0;->b()Landroidx/appcompat/app/d0;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-wide/32 v5, 0x5265c00

    .line 120
    .line 121
    .line 122
    sub-long v12, v3, v5

    .line 123
    .line 124
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    .line 125
    .line 126
    .line 127
    move-result-wide v14

    .line 128
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    .line 129
    .line 130
    .line 131
    move-result-wide v16

    .line 132
    move-object v11, v0

    .line 133
    invoke-virtual/range {v11 .. v17}, Landroidx/appcompat/app/d0;->a(JDD)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    .line 137
    .line 138
    .line 139
    move-result-wide v14

    .line 140
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    .line 141
    .line 142
    .line 143
    move-result-wide v16

    .line 144
    move-wide v12, v3

    .line 145
    invoke-virtual/range {v11 .. v17}, Landroidx/appcompat/app/d0;->a(JDD)V

    .line 146
    .line 147
    .line 148
    iget v9, v0, Landroidx/appcompat/app/d0;->c:I

    .line 149
    .line 150
    if-ne v9, v8, :cond_7

    .line 151
    .line 152
    const/4 v7, 0x1

    .line 153
    :cond_7
    iget-wide v8, v0, Landroidx/appcompat/app/d0;->b:J

    .line 154
    .line 155
    iget-wide v14, v0, Landroidx/appcompat/app/d0;->a:J

    .line 156
    .line 157
    add-long v12, v3, v5

    .line 158
    .line 159
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    .line 160
    .line 161
    .line 162
    move-result-wide v5

    .line 163
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    .line 164
    .line 165
    .line 166
    move-result-wide v16

    .line 167
    move-object v11, v0

    .line 168
    move-wide/from16 v18, v14

    .line 169
    .line 170
    move-wide v14, v5

    .line 171
    invoke-virtual/range {v11 .. v17}, Landroidx/appcompat/app/d0;->a(JDD)V

    .line 172
    .line 173
    .line 174
    iget-wide v5, v0, Landroidx/appcompat/app/d0;->b:J

    .line 175
    .line 176
    const-wide/16 v10, -0x1

    .line 177
    .line 178
    cmp-long v0, v8, v10

    .line 179
    .line 180
    if-eqz v0, :cond_b

    .line 181
    .line 182
    cmp-long v0, v18, v10

    .line 183
    .line 184
    if-nez v0, :cond_8

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_8
    const-wide/16 v10, 0x0

    .line 188
    .line 189
    cmp-long v0, v3, v18

    .line 190
    .line 191
    if-lez v0, :cond_9

    .line 192
    .line 193
    add-long/2addr v5, v10

    .line 194
    goto :goto_5

    .line 195
    :cond_9
    cmp-long v0, v3, v8

    .line 196
    .line 197
    if-lez v0, :cond_a

    .line 198
    .line 199
    add-long v5, v18, v10

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_a
    add-long v5, v8, v10

    .line 203
    .line 204
    :goto_5
    const-wide/32 v3, 0xea60

    .line 205
    .line 206
    .line 207
    add-long/2addr v5, v3

    .line 208
    goto :goto_7

    .line 209
    :cond_b
    :goto_6
    const-wide/32 v5, 0x2932e00

    .line 210
    .line 211
    .line 212
    add-long/2addr v5, v3

    .line 213
    :goto_7
    iput-boolean v7, v2, Landroidx/appcompat/app/e0;->a:Z

    .line 214
    .line 215
    iput-wide v5, v2, Landroidx/appcompat/app/e0;->b:J

    .line 216
    .line 217
    return v7

    .line 218
    :cond_c
    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 219
    .line 220
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    const/16 v2, 0xb

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    const/4 v2, 0x6

    .line 234
    if-lt v0, v2, :cond_d

    .line 235
    .line 236
    const/16 v2, 0x16

    .line 237
    .line 238
    if-lt v0, v2, :cond_e

    .line 239
    .line 240
    :cond_d
    const/4 v7, 0x1

    .line 241
    :cond_e
    return v7
.end method
