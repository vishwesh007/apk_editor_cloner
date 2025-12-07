.class public Leu/faircode/netguard/Rule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cacheEnabled:Ljava/util/Map;

.field private static cacheInternet:Ljava/util/Map;

.field private static cacheLabel:Ljava/util/Map;

.field private static cachePackageInfo:Ljava/util/List;

.field private static cacheSystem:Ljava/util/Map;


# instance fields
.field public apply:Z

.field public changed:Z

.field public enabled:Z

.field public expanded:Z

.field public hosts:J

.field public icon:I

.field public internet:Z

.field public lockdown:Z

.field public name:Ljava/lang/String;

.field public notify:Z

.field public other_blocked:Z

.field public other_default:Z

.field public packageName:Ljava/lang/String;

.field public pkg:Z

.field public related:[Ljava/lang/String;

.field public relateduids:Z

.field public roaming:Z

.field public roaming_default:Z

.field public screen_other:Z

.field public screen_other_default:Z

.field public screen_wifi:Z

.field public screen_wifi_default:Z

.field public system:Z

.field public uid:I

.field public version:Ljava/lang/String;

.field public wifi_blocked:Z

.field public wifi_default:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Leu/faircode/netguard/Rule;->cacheLabel:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Leu/faircode/netguard/Rule;->cacheSystem:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Leu/faircode/netguard/Rule;->cacheInternet:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Leu/faircode/netguard/Rule;->cacheEnabled:Ljava/util/Map;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>(Leu/faircode/netguard/DatabaseHelper;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->pkg:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->wifi_default:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->other_default:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->screen_wifi_default:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->screen_other_default:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->roaming_default:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->other_blocked:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->screen_wifi:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->screen_other:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->roaming:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->lockdown:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->apply:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->notify:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->relateduids:Z

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput-object v2, p0, Leu/faircode/netguard/Rule;->related:[Ljava/lang/String;

    .line 38
    .line 39
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->expanded:Z

    .line 40
    .line 41
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    .line 43
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 44
    .line 45
    iput v4, p0, Leu/faircode/netguard/Rule;->uid:I

    .line 46
    .line 47
    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v5, p0, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 50
    .line 51
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 52
    .line 53
    iput v3, p0, Leu/faircode/netguard/Rule;->icon:I

    .line 54
    .line 55
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v3, p0, Leu/faircode/netguard/Rule;->version:Ljava/lang/String;

    .line 58
    .line 59
    if-nez v4, :cond_0

    .line 60
    .line 61
    const p1, 0x7f10014b

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 69
    .line 70
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->system:Z

    .line 71
    .line 72
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->internet:Z

    .line 73
    .line 74
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->enabled:Z

    .line 75
    .line 76
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->pkg:Z

    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_0
    const/16 v3, 0x3f5

    .line 81
    .line 82
    if-ne v4, v3, :cond_1

    .line 83
    .line 84
    const p1, 0x7f100128

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 92
    .line 93
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->system:Z

    .line 94
    .line 95
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->internet:Z

    .line 96
    .line 97
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->enabled:Z

    .line 98
    .line 99
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->pkg:Z

    .line 100
    .line 101
    goto/16 :goto_4

    .line 102
    .line 103
    :cond_1
    const/16 v3, 0x3fc

    .line 104
    .line 105
    if-ne v4, v3, :cond_2

    .line 106
    .line 107
    const-string p1, "MulticastDNSResponder"

    .line 108
    .line 109
    iput-object p1, p0, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 110
    .line 111
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->system:Z

    .line 112
    .line 113
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->internet:Z

    .line 114
    .line 115
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->enabled:Z

    .line 116
    .line 117
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->pkg:Z

    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :cond_2
    const/16 v3, 0x3fd

    .line 122
    .line 123
    if-ne v4, v3, :cond_3

    .line 124
    .line 125
    const p1, 0x7f10011b

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p0, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 133
    .line 134
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->system:Z

    .line 135
    .line 136
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->internet:Z

    .line 137
    .line 138
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->enabled:Z

    .line 139
    .line 140
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->pkg:Z

    .line 141
    .line 142
    goto/16 :goto_4

    .line 143
    .line 144
    :cond_3
    const/16 v3, 0x41b

    .line 145
    .line 146
    if-ne v4, v3, :cond_4

    .line 147
    .line 148
    const p1, 0x7f100110

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 156
    .line 157
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->system:Z

    .line 158
    .line 159
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->internet:Z

    .line 160
    .line 161
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->enabled:Z

    .line 162
    .line 163
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->pkg:Z

    .line 164
    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :cond_4
    const/16 v3, 0x270f

    .line 168
    .line 169
    if-ne v4, v3, :cond_5

    .line 170
    .line 171
    const p1, 0x7f10012e

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iput-object p1, p0, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 179
    .line 180
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->system:Z

    .line 181
    .line 182
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->internet:Z

    .line 183
    .line 184
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->enabled:Z

    .line 185
    .line 186
    iput-boolean v1, p0, Leu/faircode/netguard/Rule;->pkg:Z

    .line 187
    .line 188
    goto/16 :goto_4

    .line 189
    .line 190
    :cond_5
    :try_start_0
    invoke-virtual {p1, v5}, Leu/faircode/netguard/DatabaseHelper;->getApp(Ljava/lang/String;)Landroid/database/Cursor;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_9

    .line 199
    .line 200
    const-string p1, "label"

    .line 201
    .line 202
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iput-object p1, p0, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 211
    .line 212
    const-string p1, "system"

    .line 213
    .line 214
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-lez p1, :cond_6

    .line 223
    .line 224
    const/4 p1, 0x1

    .line 225
    goto :goto_0

    .line 226
    :cond_6
    const/4 p1, 0x0

    .line 227
    :goto_0
    iput-boolean p1, p0, Leu/faircode/netguard/Rule;->system:Z

    .line 228
    .line 229
    const-string p1, "internet"

    .line 230
    .line 231
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-lez p1, :cond_7

    .line 240
    .line 241
    const/4 p1, 0x1

    .line 242
    goto :goto_1

    .line 243
    :cond_7
    const/4 p1, 0x0

    .line 244
    :goto_1
    iput-boolean p1, p0, Leu/faircode/netguard/Rule;->internet:Z

    .line 245
    .line 246
    const-string p1, "enabled"

    .line 247
    .line 248
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-lez p1, :cond_8

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_8
    const/4 v0, 0x0

    .line 260
    :goto_2
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->enabled:Z

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_9
    invoke-static {p2, p3}, Leu/faircode/netguard/Rule;->getLabel(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iput-object v0, p0, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v0, p3}, Leu/faircode/netguard/Rule;->isSystem(Ljava/lang/String;Landroid/content/Context;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->system:Z

    .line 276
    .line 277
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {v0, p3}, Leu/faircode/netguard/Rule;->hasInternet(Ljava/lang/String;Landroid/content/Context;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    iput-boolean v0, p0, Leu/faircode/netguard/Rule;->internet:Z

    .line 284
    .line 285
    invoke-static {p2, p3}, Leu/faircode/netguard/Rule;->isEnabled(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    iput-boolean v8, p0, Leu/faircode/netguard/Rule;->enabled:Z

    .line 290
    .line 291
    iget-object v4, p0, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 292
    .line 293
    iget-object v5, p0, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 294
    .line 295
    iget-boolean v6, p0, Leu/faircode/netguard/Rule;->system:Z

    .line 296
    .line 297
    iget-boolean v7, p0, Leu/faircode/netguard/Rule;->internet:Z

    .line 298
    .line 299
    move-object v3, p1

    .line 300
    invoke-virtual/range {v3 .. v8}, Leu/faircode/netguard/DatabaseHelper;->addApp(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .line 302
    .line 303
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 304
    .line 305
    .line 306
    :goto_4
    return-void

    .line 307
    :catchall_0
    move-exception p1

    .line 308
    if-eqz v2, :cond_a

    .line 309
    .line 310
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 311
    .line 312
    .line 313
    :cond_a
    throw p1
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "NetGuard.Rule"

    .line 2
    .line 3
    const-string v1, "Clearing cache"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-enter v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    sput-object v1, Leu/faircode/netguard/Rule;->cachePackageInfo:Ljava/util/List;

    .line 15
    .line 16
    sget-object v1, Leu/faircode/netguard/Rule;->cacheLabel:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Leu/faircode/netguard/Rule;->cacheSystem:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 24
    .line 25
    .line 26
    sget-object v1, Leu/faircode/netguard/Rule;->cacheInternet:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 29
    .line 30
    .line 31
    sget-object v1, Leu/faircode/netguard/Rule;->cacheEnabled:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 34
    .line 35
    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Leu/faircode/netguard/DatabaseHelper;->clearApps()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
.end method

.method private static getLabel(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Leu/faircode/netguard/Rule;->cacheLabel:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Leu/faircode/netguard/Rule;->cacheLabel:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object p1, Leu/faircode/netguard/Rule;->cacheLabel:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/String;

    .line 35
    .line 36
    return-object p0
.end method

.method private static getPackages(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Leu/faircode/netguard/Rule;->cachePackageInfo:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sput-object p0, Leu/faircode/netguard/Rule;->cachePackageInfo:Ljava/util/List;

    .line 15
    .line 16
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 17
    .line 18
    sget-object v0, Leu/faircode/netguard/Rule;->cachePackageInfo:Ljava/util/List;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public static getRules(ZLandroid/content/Context;)Ljava/util/List;
    .locals 38

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    invoke-static/range {p1 .. p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const-string v0, "wifi"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    const-string v0, "other"

    .line 22
    .line 23
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const-string v0, "screen_wifi"

    .line 28
    .line 29
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    const-string v0, "screen_other"

    .line 34
    .line 35
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    const-string v0, "roaming"

    .line 40
    .line 41
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    const-string v0, "lockdown"

    .line 46
    .line 47
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    const-string v0, "apply"

    .line 52
    .line 53
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    const-string v0, "notify"

    .line 58
    .line 59
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    const-string v0, "whitelist_wifi"

    .line 64
    .line 65
    const/4 v14, 0x1

    .line 66
    invoke-interface {v4, v0, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v15

    .line 70
    const-string v0, "whitelist_other"

    .line 71
    .line 72
    invoke-interface {v4, v0, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const-string v0, "screen_wifi"

    .line 77
    .line 78
    const/4 v14, 0x0

    .line 79
    invoke-interface {v4, v0, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    move/from16 v17, v5

    .line 84
    .line 85
    const-string v5, "screen_other"

    .line 86
    .line 87
    invoke-interface {v4, v5, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const-string v14, "whitelist_roaming"

    .line 92
    .line 93
    move/from16 v18, v15

    .line 94
    .line 95
    const/4 v15, 0x1

    .line 96
    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    const-string v15, "manage_system"

    .line 101
    .line 102
    move-object/from16 v19, v13

    .line 103
    .line 104
    const/4 v13, 0x0

    .line 105
    invoke-interface {v4, v15, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    const-string v13, "screen_on"

    .line 110
    .line 111
    move-object/from16 v20, v12

    .line 112
    .line 113
    const/4 v12, 0x1

    .line 114
    invoke-interface {v4, v13, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    move-object/from16 v21, v11

    .line 119
    .line 120
    const-string v11, "show_user"

    .line 121
    .line 122
    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    const-string v12, "show_system"

    .line 127
    .line 128
    move-object/from16 v22, v10

    .line 129
    .line 130
    const/4 v10, 0x0

    .line 131
    invoke-interface {v4, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    const-string v10, "show_nointernet"

    .line 136
    .line 137
    move-object/from16 v23, v9

    .line 138
    .line 139
    const/4 v9, 0x1

    .line 140
    invoke-interface {v4, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    move-object/from16 v24, v8

    .line 145
    .line 146
    const-string v8, "show_disabled"

    .line 147
    .line 148
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eqz v0, :cond_0

    .line 153
    .line 154
    if-eqz v13, :cond_0

    .line 155
    .line 156
    const/4 v9, 0x1

    .line 157
    goto :goto_0

    .line 158
    :cond_0
    const/4 v9, 0x0

    .line 159
    :goto_0
    if-eqz v5, :cond_1

    .line 160
    .line 161
    if-eqz v13, :cond_1

    .line 162
    .line 163
    move-object/from16 v25, v4

    .line 164
    .line 165
    const/4 v5, 0x1

    .line 166
    goto :goto_1

    .line 167
    :cond_1
    move-object/from16 v25, v4

    .line 168
    .line 169
    const/4 v5, 0x0

    .line 170
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    move/from16 v26, v13

    .line 176
    .line 177
    new-instance v13, Ljava/util/HashMap;

    .line 178
    .line 179
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 180
    .line 181
    .line 182
    move-object/from16 v27, v7

    .line 183
    .line 184
    new-instance v7, Ljava/util/HashMap;

    .line 185
    .line 186
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 187
    .line 188
    .line 189
    move-object/from16 v28, v6

    .line 190
    .line 191
    new-instance v6, Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 194
    .line 195
    .line 196
    move/from16 v29, v15

    .line 197
    .line 198
    new-instance v15, Ljava/util/HashMap;

    .line 199
    .line 200
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_16

    .line 201
    .line 202
    .line 203
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 207
    move/from16 v30, v5

    .line 208
    .line 209
    const v5, 0x7f130002

    .line 210
    .line 211
    .line 212
    :try_start_2
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 217
    .line 218
    .line 219
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 220
    move/from16 v31, v9

    .line 221
    .line 222
    :goto_2
    const/4 v9, 0x1

    .line 223
    if-eq v5, v9, :cond_7

    .line 224
    .line 225
    const/4 v9, 0x2

    .line 226
    if-ne v5, v9, :cond_5

    .line 227
    .line 228
    :try_start_3
    const-string v5, "wifi"

    .line 229
    .line 230
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    const/4 v9, 0x0

    .line 239
    if-eqz v5, :cond_2

    .line 240
    .line 241
    const-string v5, "package"

    .line 242
    .line 243
    invoke-interface {v0, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    move/from16 v32, v8

    .line 248
    .line 249
    :try_start_4
    const-string v8, "blocked"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    .line 251
    move/from16 v33, v10

    .line 252
    .line 253
    const/4 v10, 0x0

    .line 254
    :try_start_5
    invoke-interface {v0, v9, v8, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    goto/16 :goto_3

    .line 266
    .line 267
    :catchall_0
    move-exception v0

    .line 268
    goto/16 :goto_5

    .line 269
    .line 270
    :cond_2
    move/from16 v32, v8

    .line 271
    .line 272
    move/from16 v33, v10

    .line 273
    .line 274
    const-string v5, "other"

    .line 275
    .line 276
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_3

    .line 285
    .line 286
    const-string v5, "package"

    .line 287
    .line 288
    invoke-interface {v0, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    const-string v8, "blocked"

    .line 293
    .line 294
    const/4 v10, 0x0

    .line 295
    invoke-interface {v0, v9, v8, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    const-string v10, "roaming"

    .line 300
    .line 301
    invoke-interface {v0, v9, v10, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-virtual {v13, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_3
    const-string v5, "relation"

    .line 321
    .line 322
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    if-eqz v5, :cond_4

    .line 331
    .line 332
    const-string v5, "package"

    .line 333
    .line 334
    invoke-interface {v0, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    const-string v8, "related"

    .line 339
    .line 340
    invoke-interface {v0, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    const-string v9, ","

    .line 345
    .line 346
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    goto :goto_3

    .line 354
    :cond_4
    const-string v5, "type"

    .line 355
    .line 356
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    if-eqz v5, :cond_6

    .line 365
    .line 366
    const-string v5, "package"

    .line 367
    .line 368
    invoke-interface {v0, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    const-string v8, "system"

    .line 373
    .line 374
    const/4 v10, 0x1

    .line 375
    invoke-interface {v0, v9, v8, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-virtual {v15, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    goto :goto_3

    .line 387
    :catchall_1
    move-exception v0

    .line 388
    move/from16 v32, v8

    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_5
    move/from16 v32, v8

    .line 392
    .line 393
    move/from16 v33, v10

    .line 394
    .line 395
    :cond_6
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 396
    .line 397
    .line 398
    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 399
    move/from16 v8, v32

    .line 400
    .line 401
    move/from16 v10, v33

    .line 402
    .line 403
    goto/16 :goto_2

    .line 404
    .line 405
    :catchall_2
    move-exception v0

    .line 406
    goto :goto_6

    .line 407
    :cond_7
    move/from16 v32, v8

    .line 408
    .line 409
    move/from16 v33, v10

    .line 410
    .line 411
    goto :goto_7

    .line 412
    :catchall_3
    move-exception v0

    .line 413
    goto :goto_4

    .line 414
    :catchall_4
    move-exception v0

    .line 415
    move/from16 v30, v5

    .line 416
    .line 417
    :goto_4
    move/from16 v32, v8

    .line 418
    .line 419
    move/from16 v31, v9

    .line 420
    .line 421
    :goto_5
    move/from16 v33, v10

    .line 422
    .line 423
    :goto_6
    :try_start_6
    const-string v5, "NetGuard.Rule"

    .line 424
    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v9, "\n"

    .line 438
    .line 439
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    :goto_7
    new-instance v5, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-static/range {p1 .. p1}, Leu/faircode/netguard/Rule;->getPackages(Landroid/content/Context;)Ljava/util/List;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    const v9, 0x186a0

    .line 470
    .line 471
    .line 472
    div-int/2addr v0, v9

    .line 473
    new-instance v10, Landroid/content/pm/PackageInfo;

    .line 474
    .line 475
    invoke-direct {v10}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 476
    .line 477
    .line 478
    const-string v9, "root"

    .line 479
    .line 480
    iput-object v9, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 481
    .line 482
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 483
    .line 484
    iput v9, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 485
    .line 486
    move-object/from16 v35, v5

    .line 487
    .line 488
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 489
    .line 490
    iput-object v5, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 491
    .line 492
    move/from16 v36, v14

    .line 493
    .line 494
    new-instance v14, Landroid/content/pm/ApplicationInfo;

    .line 495
    .line 496
    invoke-direct {v14}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 497
    .line 498
    .line 499
    iput-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 500
    .line 501
    move-object/from16 v37, v6

    .line 502
    .line 503
    const/4 v6, 0x0

    .line 504
    iput v6, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 505
    .line 506
    iput v6, v14, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 507
    .line 508
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    new-instance v6, Landroid/content/pm/PackageInfo;

    .line 512
    .line 513
    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 514
    .line 515
    .line 516
    const-string v10, "android.media"

    .line 517
    .line 518
    iput-object v10, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 519
    .line 520
    iput v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 521
    .line 522
    iput-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 523
    .line 524
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    .line 525
    .line 526
    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 527
    .line 528
    .line 529
    iput-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 530
    .line 531
    const v14, 0x186a0

    .line 532
    .line 533
    .line 534
    mul-int v0, v0, v14

    .line 535
    .line 536
    add-int/lit16 v14, v0, 0x3f5

    .line 537
    .line 538
    iput v14, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 539
    .line 540
    const/4 v14, 0x0

    .line 541
    iput v14, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 542
    .line 543
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    new-instance v6, Landroid/content/pm/PackageInfo;

    .line 547
    .line 548
    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 549
    .line 550
    .line 551
    const-string v10, "android.multicast"

    .line 552
    .line 553
    iput-object v10, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 554
    .line 555
    iput v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 556
    .line 557
    iput-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 558
    .line 559
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    .line 560
    .line 561
    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 562
    .line 563
    .line 564
    iput-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 565
    .line 566
    add-int/lit16 v14, v0, 0x3fc

    .line 567
    .line 568
    iput v14, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 569
    .line 570
    const/4 v14, 0x0

    .line 571
    iput v14, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 572
    .line 573
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    new-instance v6, Landroid/content/pm/PackageInfo;

    .line 577
    .line 578
    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 579
    .line 580
    .line 581
    const-string v10, "android.gps"

    .line 582
    .line 583
    iput-object v10, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 584
    .line 585
    iput v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 586
    .line 587
    iput-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 588
    .line 589
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    .line 590
    .line 591
    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 592
    .line 593
    .line 594
    iput-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 595
    .line 596
    add-int/lit16 v14, v0, 0x3fd

    .line 597
    .line 598
    iput v14, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 599
    .line 600
    const/4 v14, 0x0

    .line 601
    iput v14, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 602
    .line 603
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    new-instance v6, Landroid/content/pm/PackageInfo;

    .line 607
    .line 608
    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 609
    .line 610
    .line 611
    const-string v10, "android.dns"

    .line 612
    .line 613
    iput-object v10, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 614
    .line 615
    iput v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 616
    .line 617
    iput-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 618
    .line 619
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    .line 620
    .line 621
    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 622
    .line 623
    .line 624
    iput-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 625
    .line 626
    add-int/lit16 v0, v0, 0x41b

    .line 627
    .line 628
    iput v0, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 629
    .line 630
    const/4 v14, 0x0

    .line 631
    iput v14, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 632
    .line 633
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    new-instance v0, Landroid/content/pm/PackageInfo;

    .line 637
    .line 638
    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 639
    .line 640
    .line 641
    const-string v6, "nobody"

    .line 642
    .line 643
    iput-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 644
    .line 645
    iput v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 646
    .line 647
    iput-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 648
    .line 649
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    .line 650
    .line 651
    invoke-direct {v5}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 652
    .line 653
    .line 654
    iput-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 655
    .line 656
    const/16 v6, 0x270f

    .line 657
    .line 658
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 659
    .line 660
    const/4 v6, 0x0

    .line 661
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 662
    .line 663
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    invoke-static/range {p1 .. p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 671
    .line 672
    .line 673
    move-result-object v6

    .line 674
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-eqz v0, :cond_1d

    .line 679
    .line 680
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_16

    .line 685
    .line 686
    :try_start_7
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 687
    .line 688
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 689
    .line 690
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 691
    .line 692
    .line 693
    move-result v10

    .line 694
    if-ne v9, v10, :cond_8

    .line 695
    .line 696
    goto :goto_8

    .line 697
    :cond_8
    new-instance v9, Leu/faircode/netguard/Rule;

    .line 698
    .line 699
    invoke-direct {v9, v5, v0, v2}, Leu/faircode/netguard/Rule;-><init>(Leu/faircode/netguard/DatabaseHelper;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    .line 700
    .line 701
    .line 702
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 703
    .line 704
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v10

    .line 708
    if-eqz v10, :cond_9

    .line 709
    .line 710
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 711
    .line 712
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v10

    .line 716
    check-cast v10, Ljava/lang/Boolean;

    .line 717
    .line 718
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 719
    .line 720
    .line 721
    move-result v10

    .line 722
    iput-boolean v10, v9, Leu/faircode/netguard/Rule;->system:Z

    .line 723
    .line 724
    :cond_9
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 725
    .line 726
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 727
    .line 728
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 729
    .line 730
    .line 731
    move-result v14

    .line 732
    if-ne v10, v14, :cond_a

    .line 733
    .line 734
    const/4 v10, 0x1

    .line 735
    iput-boolean v10, v9, Leu/faircode/netguard/Rule;->system:Z

    .line 736
    .line 737
    :cond_a
    if-nez v1, :cond_e

    .line 738
    .line 739
    iget-boolean v10, v9, Leu/faircode/netguard/Rule;->system:Z

    .line 740
    .line 741
    if-eqz v10, :cond_b

    .line 742
    .line 743
    if-eqz v12, :cond_d

    .line 744
    .line 745
    goto :goto_9

    .line 746
    :cond_b
    if-eqz v11, :cond_d

    .line 747
    .line 748
    :goto_9
    if-nez v33, :cond_c

    .line 749
    .line 750
    iget-boolean v10, v9, Leu/faircode/netguard/Rule;->internet:Z

    .line 751
    .line 752
    if-eqz v10, :cond_d

    .line 753
    .line 754
    :cond_c
    if-nez v32, :cond_e

    .line 755
    .line 756
    iget-boolean v10, v9, Leu/faircode/netguard/Rule;->enabled:Z

    .line 757
    .line 758
    if-eqz v10, :cond_d

    .line 759
    .line 760
    goto :goto_a

    .line 761
    :cond_d
    move-object/from16 v16, v7

    .line 762
    .line 763
    move/from16 v2, v18

    .line 764
    .line 765
    move/from16 v14, v30

    .line 766
    .line 767
    move/from16 v10, v31

    .line 768
    .line 769
    move/from16 v7, v36

    .line 770
    .line 771
    move-object/from16 v30, v4

    .line 772
    .line 773
    move-object/from16 v31, v6

    .line 774
    .line 775
    move/from16 v6, v17

    .line 776
    .line 777
    move-object/from16 v4, v35

    .line 778
    .line 779
    goto/16 :goto_17

    .line 780
    .line 781
    :cond_e
    :goto_a
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 782
    .line 783
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v10

    .line 787
    if-eqz v10, :cond_f

    .line 788
    .line 789
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 790
    .line 791
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v10

    .line 795
    check-cast v10, Ljava/lang/Boolean;

    .line 796
    .line 797
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 798
    .line 799
    .line 800
    move-result v10

    .line 801
    goto :goto_b

    .line 802
    :cond_f
    move/from16 v10, v18

    .line 803
    .line 804
    :goto_b
    iput-boolean v10, v9, Leu/faircode/netguard/Rule;->wifi_default:Z

    .line 805
    .line 806
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 807
    .line 808
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v10

    .line 812
    if-eqz v10, :cond_10

    .line 813
    .line 814
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 815
    .line 816
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v10

    .line 820
    check-cast v10, Ljava/lang/Boolean;

    .line 821
    .line 822
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 823
    .line 824
    .line 825
    move-result v10

    .line 826
    goto :goto_c

    .line 827
    :cond_10
    move/from16 v10, v17

    .line 828
    .line 829
    :goto_c
    iput-boolean v10, v9, Leu/faircode/netguard/Rule;->other_default:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_15

    .line 830
    .line 831
    move/from16 v10, v31

    .line 832
    .line 833
    :try_start_8
    iput-boolean v10, v9, Leu/faircode/netguard/Rule;->screen_wifi_default:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_14

    .line 834
    .line 835
    move/from16 v14, v30

    .line 836
    .line 837
    :try_start_9
    iput-boolean v14, v9, Leu/faircode/netguard/Rule;->screen_other_default:Z

    .line 838
    .line 839
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 840
    .line 841
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result v2

    .line 845
    if-eqz v2, :cond_11

    .line 846
    .line 847
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 848
    .line 849
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    check-cast v2, Ljava/lang/Boolean;

    .line 854
    .line 855
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 856
    .line 857
    .line 858
    move-result v2

    .line 859
    goto :goto_d

    .line 860
    :cond_11
    move/from16 v2, v36

    .line 861
    .line 862
    :goto_d
    iput-boolean v2, v9, Leu/faircode/netguard/Rule;->roaming_default:Z

    .line 863
    .line 864
    iget-boolean v2, v9, Leu/faircode/netguard/Rule;->system:Z

    .line 865
    .line 866
    if-eqz v2, :cond_13

    .line 867
    .line 868
    if-eqz v29, :cond_12

    .line 869
    .line 870
    goto :goto_e

    .line 871
    :cond_12
    move-object/from16 v30, v4

    .line 872
    .line 873
    move-object/from16 v31, v6

    .line 874
    .line 875
    move-object/from16 v6, v28

    .line 876
    .line 877
    goto :goto_f

    .line 878
    :cond_13
    :goto_e
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_13

    .line 879
    .line 880
    move-object/from16 v30, v4

    .line 881
    .line 882
    :try_start_a
    iget-boolean v4, v9, Leu/faircode/netguard/Rule;->wifi_default:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_12

    .line 883
    .line 884
    move-object/from16 v31, v6

    .line 885
    .line 886
    move-object/from16 v6, v28

    .line 887
    .line 888
    :try_start_b
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    if-eqz v2, :cond_14

    .line 893
    .line 894
    const/4 v2, 0x1

    .line 895
    goto :goto_10

    .line 896
    :cond_14
    :goto_f
    const/4 v2, 0x0

    .line 897
    :goto_10
    iput-boolean v2, v9, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    .line 898
    .line 899
    iget-boolean v2, v9, Leu/faircode/netguard/Rule;->system:Z

    .line 900
    .line 901
    if-eqz v2, :cond_16

    .line 902
    .line 903
    if-eqz v29, :cond_15

    .line 904
    .line 905
    goto :goto_11

    .line 906
    :cond_15
    move-object/from16 v28, v6

    .line 907
    .line 908
    move-object/from16 v6, v27

    .line 909
    .line 910
    goto :goto_12

    .line 911
    :cond_16
    :goto_11
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 912
    .line 913
    iget-boolean v4, v9, Leu/faircode/netguard/Rule;->other_default:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_11

    .line 914
    .line 915
    move-object/from16 v28, v6

    .line 916
    .line 917
    move-object/from16 v6, v27

    .line 918
    .line 919
    :try_start_c
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 920
    .line 921
    .line 922
    move-result v2

    .line 923
    if-eqz v2, :cond_17

    .line 924
    .line 925
    const/4 v2, 0x1

    .line 926
    goto :goto_13

    .line 927
    :cond_17
    :goto_12
    const/4 v2, 0x0

    .line 928
    :goto_13
    iput-boolean v2, v9, Leu/faircode/netguard/Rule;->other_blocked:Z

    .line 929
    .line 930
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 931
    .line 932
    iget-boolean v4, v9, Leu/faircode/netguard/Rule;->screen_wifi_default:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_10

    .line 933
    .line 934
    move-object/from16 v27, v6

    .line 935
    .line 936
    move-object/from16 v6, v24

    .line 937
    .line 938
    :try_start_d
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 939
    .line 940
    .line 941
    move-result v2

    .line 942
    if-eqz v2, :cond_18

    .line 943
    .line 944
    if-eqz v26, :cond_18

    .line 945
    .line 946
    const/4 v2, 0x1

    .line 947
    goto :goto_14

    .line 948
    :cond_18
    const/4 v2, 0x0

    .line 949
    :goto_14
    iput-boolean v2, v9, Leu/faircode/netguard/Rule;->screen_wifi:Z

    .line 950
    .line 951
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 952
    .line 953
    iget-boolean v4, v9, Leu/faircode/netguard/Rule;->screen_other_default:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_f

    .line 954
    .line 955
    move-object/from16 v24, v6

    .line 956
    .line 957
    move-object/from16 v6, v23

    .line 958
    .line 959
    :try_start_e
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 960
    .line 961
    .line 962
    move-result v2

    .line 963
    if-eqz v2, :cond_19

    .line 964
    .line 965
    if-eqz v26, :cond_19

    .line 966
    .line 967
    const/4 v2, 0x1

    .line 968
    goto :goto_15

    .line 969
    :cond_19
    const/4 v2, 0x0

    .line 970
    :goto_15
    iput-boolean v2, v9, Leu/faircode/netguard/Rule;->screen_other:Z

    .line 971
    .line 972
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 973
    .line 974
    iget-boolean v4, v9, Leu/faircode/netguard/Rule;->roaming_default:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 975
    .line 976
    move-object/from16 v23, v6

    .line 977
    .line 978
    move-object/from16 v6, v22

    .line 979
    .line 980
    :try_start_f
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 981
    .line 982
    .line 983
    move-result v2

    .line 984
    iput-boolean v2, v9, Leu/faircode/netguard/Rule;->roaming:Z

    .line 985
    .line 986
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    .line 987
    .line 988
    move-object/from16 v22, v6

    .line 989
    .line 990
    move-object/from16 v4, v21

    .line 991
    .line 992
    const/4 v6, 0x0

    .line 993
    :try_start_10
    invoke-interface {v4, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 994
    .line 995
    .line 996
    move-result v2

    .line 997
    iput-boolean v2, v9, Leu/faircode/netguard/Rule;->lockdown:Z

    .line 998
    .line 999
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 1000
    .line 1001
    move-object/from16 v21, v4

    .line 1002
    .line 1003
    move-object/from16 v6, v20

    .line 1004
    .line 1005
    const/4 v4, 0x1

    .line 1006
    :try_start_11
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v2

    .line 1010
    iput-boolean v2, v9, Leu/faircode/netguard/Rule;->apply:Z

    .line 1011
    .line 1012
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1013
    .line 1014
    move-object/from16 v20, v6

    .line 1015
    .line 1016
    move-object/from16 v6, v19

    .line 1017
    .line 1018
    :try_start_12
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v2

    .line 1022
    iput-boolean v2, v9, Leu/faircode/netguard/Rule;->notify:Z

    .line 1023
    .line 1024
    new-instance v2, Ljava/util/ArrayList;

    .line 1025
    .line 1026
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .line 1028
    .line 1029
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 1030
    .line 1031
    move-object/from16 v19, v6

    .line 1032
    .line 1033
    move-object/from16 v6, v37

    .line 1034
    .line 1035
    :try_start_13
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v4

    .line 1039
    if-eqz v4, :cond_1a

    .line 1040
    .line 1041
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1042
    .line 1043
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    check-cast v0, [Ljava/lang/String;

    .line 1048
    .line 1049
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v0

    .line 1053
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1054
    .line 1055
    .line 1056
    :cond_1a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v4

    .line 1064
    if-eqz v4, :cond_1c

    .line 1065
    .line 1066
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v4

    .line 1070
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1071
    .line 1072
    move-object/from16 v34, v0

    .line 1073
    .line 1074
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1075
    .line 1076
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 1077
    .line 1078
    move-object/from16 v37, v6

    .line 1079
    .line 1080
    :try_start_14
    iget v6, v9, Leu/faircode/netguard/Rule;->uid:I

    .line 1081
    .line 1082
    if-ne v0, v6, :cond_1b

    .line 1083
    .line 1084
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1085
    .line 1086
    iget-object v6, v9, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    .line 1087
    .line 1088
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v0

    .line 1092
    if-nez v0, :cond_1b

    .line 1093
    .line 1094
    const/4 v6, 0x1

    .line 1095
    iput-boolean v6, v9, Leu/faircode/netguard/Rule;->relateduids:Z

    .line 1096
    .line 1097
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1098
    .line 1099
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    .line 1101
    .line 1102
    :cond_1b
    move-object/from16 v0, v34

    .line 1103
    .line 1104
    move-object/from16 v6, v37

    .line 1105
    .line 1106
    goto :goto_16

    .line 1107
    :cond_1c
    move-object/from16 v37, v6

    .line 1108
    .line 1109
    const/4 v4, 0x0

    .line 1110
    new-array v0, v4, [Ljava/lang/String;

    .line 1111
    .line 1112
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    check-cast v0, [Ljava/lang/String;

    .line 1117
    .line 1118
    iput-object v0, v9, Leu/faircode/netguard/Rule;->related:[Ljava/lang/String;

    .line 1119
    .line 1120
    iget v0, v9, Leu/faircode/netguard/Rule;->uid:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 1121
    .line 1122
    move-object/from16 v16, v7

    .line 1123
    .line 1124
    const/4 v2, 0x1

    .line 1125
    :try_start_15
    invoke-virtual {v5, v0, v2}, Leu/faircode/netguard/DatabaseHelper;->getHostCount(IZ)J

    .line 1126
    .line 1127
    .line 1128
    move-result-wide v6

    .line 1129
    iput-wide v6, v9, Leu/faircode/netguard/Rule;->hosts:J
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 1130
    .line 1131
    move/from16 v6, v17

    .line 1132
    .line 1133
    move/from16 v2, v18

    .line 1134
    .line 1135
    move/from16 v7, v36

    .line 1136
    .line 1137
    :try_start_16
    invoke-direct {v9, v2, v6, v7}, Leu/faircode/netguard/Rule;->updateChanged(ZZZ)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 1138
    .line 1139
    .line 1140
    move-object/from16 v4, v35

    .line 1141
    .line 1142
    :try_start_17
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 1143
    .line 1144
    .line 1145
    :goto_17
    move/from16 v18, v2

    .line 1146
    .line 1147
    move-object/from16 v34, v5

    .line 1148
    .line 1149
    goto/16 :goto_1d

    .line 1150
    .line 1151
    :catchall_5
    move-exception v0

    .line 1152
    goto/16 :goto_1c

    .line 1153
    .line 1154
    :catchall_6
    move-exception v0

    .line 1155
    goto/16 :goto_1b

    .line 1156
    .line 1157
    :catchall_7
    move-exception v0

    .line 1158
    goto :goto_1a

    .line 1159
    :catchall_8
    move-exception v0

    .line 1160
    goto :goto_19

    .line 1161
    :catchall_9
    move-exception v0

    .line 1162
    move-object/from16 v37, v6

    .line 1163
    .line 1164
    goto :goto_19

    .line 1165
    :catchall_a
    move-exception v0

    .line 1166
    move-object/from16 v19, v6

    .line 1167
    .line 1168
    goto :goto_19

    .line 1169
    :catchall_b
    move-exception v0

    .line 1170
    move-object/from16 v20, v6

    .line 1171
    .line 1172
    goto :goto_19

    .line 1173
    :catchall_c
    move-exception v0

    .line 1174
    move-object/from16 v21, v4

    .line 1175
    .line 1176
    goto :goto_19

    .line 1177
    :catchall_d
    move-exception v0

    .line 1178
    move-object/from16 v22, v6

    .line 1179
    .line 1180
    goto :goto_19

    .line 1181
    :catchall_e
    move-exception v0

    .line 1182
    move-object/from16 v23, v6

    .line 1183
    .line 1184
    goto :goto_19

    .line 1185
    :catchall_f
    move-exception v0

    .line 1186
    move-object/from16 v24, v6

    .line 1187
    .line 1188
    goto :goto_19

    .line 1189
    :catchall_10
    move-exception v0

    .line 1190
    move-object/from16 v27, v6

    .line 1191
    .line 1192
    goto :goto_19

    .line 1193
    :catchall_11
    move-exception v0

    .line 1194
    move-object/from16 v28, v6

    .line 1195
    .line 1196
    goto :goto_19

    .line 1197
    :catchall_12
    move-exception v0

    .line 1198
    goto :goto_18

    .line 1199
    :catchall_13
    move-exception v0

    .line 1200
    move-object/from16 v30, v4

    .line 1201
    .line 1202
    :goto_18
    move-object/from16 v31, v6

    .line 1203
    .line 1204
    :goto_19
    move-object/from16 v16, v7

    .line 1205
    .line 1206
    :goto_1a
    move/from16 v6, v17

    .line 1207
    .line 1208
    move/from16 v2, v18

    .line 1209
    .line 1210
    move-object/from16 v4, v35

    .line 1211
    .line 1212
    move/from16 v7, v36

    .line 1213
    .line 1214
    goto :goto_1c

    .line 1215
    :catchall_14
    move-exception v0

    .line 1216
    move-object/from16 v31, v6

    .line 1217
    .line 1218
    move-object/from16 v16, v7

    .line 1219
    .line 1220
    move/from16 v6, v17

    .line 1221
    .line 1222
    move/from16 v2, v18

    .line 1223
    .line 1224
    move/from16 v14, v30

    .line 1225
    .line 1226
    move/from16 v7, v36

    .line 1227
    .line 1228
    move-object/from16 v30, v4

    .line 1229
    .line 1230
    goto :goto_1b

    .line 1231
    :catchall_15
    move-exception v0

    .line 1232
    move-object/from16 v16, v7

    .line 1233
    .line 1234
    move/from16 v2, v18

    .line 1235
    .line 1236
    move/from16 v14, v30

    .line 1237
    .line 1238
    move/from16 v10, v31

    .line 1239
    .line 1240
    move/from16 v7, v36

    .line 1241
    .line 1242
    move-object/from16 v30, v4

    .line 1243
    .line 1244
    move-object/from16 v31, v6

    .line 1245
    .line 1246
    move/from16 v6, v17

    .line 1247
    .line 1248
    :goto_1b
    move-object/from16 v4, v35

    .line 1249
    .line 1250
    :goto_1c
    :try_start_18
    const-string v9, "NetGuard.Rule"

    .line 1251
    .line 1252
    move/from16 v18, v2

    .line 1253
    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .line 1258
    .line 1259
    move-object/from16 v34, v5

    .line 1260
    .line 1261
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v5

    .line 1265
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    .line 1268
    const-string v5, "\n"

    .line 1269
    .line 1270
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    .line 1272
    .line 1273
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v0

    .line 1284
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    .line 1286
    .line 1287
    :goto_1d
    move-object/from16 v2, p1

    .line 1288
    .line 1289
    move-object/from16 v35, v4

    .line 1290
    .line 1291
    move/from16 v17, v6

    .line 1292
    .line 1293
    move/from16 v36, v7

    .line 1294
    .line 1295
    move-object/from16 v7, v16

    .line 1296
    .line 1297
    move-object/from16 v4, v30

    .line 1298
    .line 1299
    move-object/from16 v6, v31

    .line 1300
    .line 1301
    move-object/from16 v5, v34

    .line 1302
    .line 1303
    move/from16 v31, v10

    .line 1304
    .line 1305
    move/from16 v30, v14

    .line 1306
    .line 1307
    goto/16 :goto_8

    .line 1308
    .line 1309
    :cond_1d
    move-object/from16 v4, v35

    .line 1310
    .line 1311
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v0

    .line 1315
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    const/4 v2, 0x1

    .line 1320
    invoke-virtual {v0, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 1321
    .line 1322
    .line 1323
    const-string v2, "sort"

    .line 1324
    .line 1325
    const-string v5, "name"

    .line 1326
    .line 1327
    move-object/from16 v6, v25

    .line 1328
    .line 1329
    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v2

    .line 1333
    const-string v5, "uid"

    .line 1334
    .line 1335
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1336
    .line 1337
    .line 1338
    move-result v2

    .line 1339
    if-eqz v2, :cond_1e

    .line 1340
    .line 1341
    new-instance v1, Leu/faircode/netguard/Rule$1;

    .line 1342
    .line 1343
    invoke-direct {v1, v0}, Leu/faircode/netguard/Rule$1;-><init>(Ljava/text/Collator;)V

    .line 1344
    .line 1345
    .line 1346
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1347
    .line 1348
    .line 1349
    goto :goto_1e

    .line 1350
    :cond_1e
    new-instance v2, Leu/faircode/netguard/Rule$2;

    .line 1351
    .line 1352
    invoke-direct {v2, v1, v0}, Leu/faircode/netguard/Rule$2;-><init>(ZLjava/text/Collator;)V

    .line 1353
    .line 1354
    .line 1355
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1356
    .line 1357
    .line 1358
    :goto_1e
    monitor-exit v3

    .line 1359
    return-object v4

    .line 1360
    :catchall_16
    move-exception v0

    .line 1361
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_16

    .line 1362
    throw v0
.end method

.method private static hasInternet(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Leu/faircode/netguard/Rule;->cacheInternet:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Leu/faircode/netguard/Rule;->cacheInternet:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p0, p1}, Leu/faircode/netguard/Util;->hasInternet(Ljava/lang/String;Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p1, Leu/faircode/netguard/Rule;->cacheInternet:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method private static isEnabled(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Leu/faircode/netguard/Rule;->cacheEnabled:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Leu/faircode/netguard/Rule;->cacheEnabled:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p0, p1}, Leu/faircode/netguard/Util;->isEnabled(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p1, Leu/faircode/netguard/Rule;->cacheEnabled:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method private static isSystem(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Leu/faircode/netguard/Rule;->cacheSystem:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Leu/faircode/netguard/Rule;->cacheSystem:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p0, p1}, Leu/faircode/netguard/Util;->isSystem(Ljava/lang/String;Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p1, Leu/faircode/netguard/Rule;->cacheSystem:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method private updateChanged(ZZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Leu/faircode/netguard/Rule;->wifi_blocked:Z

    if-ne v0, p1, :cond_5

    iget-boolean p1, p0, Leu/faircode/netguard/Rule;->other_blocked:Z

    if-ne p1, p2, :cond_5

    if-eqz v0, :cond_0

    iget-boolean p2, p0, Leu/faircode/netguard/Rule;->screen_wifi:Z

    iget-boolean v0, p0, Leu/faircode/netguard/Rule;->screen_wifi_default:Z

    if-ne p2, v0, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p2, p0, Leu/faircode/netguard/Rule;->screen_other:Z

    iget-boolean v0, p0, Leu/faircode/netguard/Rule;->screen_other_default:Z

    if-ne p2, v0, :cond_5

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Leu/faircode/netguard/Rule;->screen_other:Z

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Leu/faircode/netguard/Rule;->roaming:Z

    if-ne p1, p3, :cond_5

    :cond_3
    iget-wide p1, p0, Leu/faircode/netguard/Rule;->hosts:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_5

    iget-boolean p1, p0, Leu/faircode/netguard/Rule;->lockdown:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Leu/faircode/netguard/Rule;->apply:Z

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Leu/faircode/netguard/Rule;->changed:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public updateChanged(Landroid/content/Context;)V
    .locals 5

    .line 2
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "screen_on"

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "whitelist_wifi"

    const/4 v3, 0x1

    .line 4
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v4, "whitelist_other"

    .line 5
    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "whitelist_roaming"

    .line 6
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 7
    invoke-direct {p0, v2, v1, p1}, Leu/faircode/netguard/Rule;->updateChanged(ZZZ)V

    return-void
.end method
