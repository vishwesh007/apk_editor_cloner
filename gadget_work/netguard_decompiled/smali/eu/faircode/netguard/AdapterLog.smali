.class public Leu/faircode/netguard/AdapterLog;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "NetGuard.Log"


# instance fields
.field private colAllowed:I

.field private colConnection:I

.field private colDAddr:I

.field private colDName:I

.field private colDPort:I

.field private colData:I

.field private colFlags:I

.field private colInteractive:I

.field private colProtocol:I

.field private colSAddr:I

.field private colSPort:I

.field private colTime:I

.field private colUid:I

.field private colVersion:I

.field private colorOff:I

.field private colorOn:I

.field private dns1:Ljava/net/InetAddress;

.field private dns2:Ljava/net/InetAddress;

.field private iconSize:I

.field private organization:Z

.field private resolve:Z

.field private vpn4:Ljava/net/InetAddress;

.field private vpn6:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZZ)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Leu/faircode/netguard/AdapterLog;->dns1:Ljava/net/InetAddress;

    .line 7
    .line 8
    iput-object v1, p0, Leu/faircode/netguard/AdapterLog;->dns2:Ljava/net/InetAddress;

    .line 9
    .line 10
    iput-object v1, p0, Leu/faircode/netguard/AdapterLog;->vpn4:Ljava/net/InetAddress;

    .line 11
    .line 12
    iput-object v1, p0, Leu/faircode/netguard/AdapterLog;->vpn6:Ljava/net/InetAddress;

    .line 13
    .line 14
    iput-boolean p3, p0, Leu/faircode/netguard/AdapterLog;->resolve:Z

    .line 15
    .line 16
    iput-boolean p4, p0, Leu/faircode/netguard/AdapterLog;->organization:Z

    .line 17
    .line 18
    const-string p3, "time"

    .line 19
    .line 20
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colTime:I

    .line 25
    .line 26
    const-string p3, "version"

    .line 27
    .line 28
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colVersion:I

    .line 33
    .line 34
    const-string p3, "protocol"

    .line 35
    .line 36
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colProtocol:I

    .line 41
    .line 42
    const-string p3, "flags"

    .line 43
    .line 44
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colFlags:I

    .line 49
    .line 50
    const-string p3, "saddr"

    .line 51
    .line 52
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colSAddr:I

    .line 57
    .line 58
    const-string p3, "sport"

    .line 59
    .line 60
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colSPort:I

    .line 65
    .line 66
    const-string p3, "daddr"

    .line 67
    .line 68
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colDAddr:I

    .line 73
    .line 74
    const-string p3, "dport"

    .line 75
    .line 76
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colDPort:I

    .line 81
    .line 82
    const-string p3, "dname"

    .line 83
    .line 84
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colDName:I

    .line 89
    .line 90
    const-string p3, "uid"

    .line 91
    .line 92
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colUid:I

    .line 97
    .line 98
    const-string p3, "data"

    .line 99
    .line 100
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colData:I

    .line 105
    .line 106
    const-string p3, "allowed"

    .line 107
    .line 108
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colAllowed:I

    .line 113
    .line 114
    const-string p3, "connection"

    .line 115
    .line 116
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colConnection:I

    .line 121
    .line 122
    const-string p3, "interactive"

    .line 123
    .line 124
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    iput p2, p0, Leu/faircode/netguard/AdapterLog;->colInteractive:I

    .line 129
    .line 130
    new-instance p2, Landroid/util/TypedValue;

    .line 131
    .line 132
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    const p4, 0x7f040064

    .line 140
    .line 141
    .line 142
    const/4 v2, 0x1

    .line 143
    invoke-virtual {p3, p4, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 144
    .line 145
    .line 146
    iget p3, p2, Landroid/util/TypedValue;->data:I

    .line 147
    .line 148
    iput p3, p0, Leu/faircode/netguard/AdapterLog;->colorOn:I

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    const p4, 0x7f040063

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p4, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 158
    .line 159
    .line 160
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 161
    .line 162
    iput p2, p0, Leu/faircode/netguard/AdapterLog;->colorOff:I

    .line 163
    .line 164
    const/16 p2, 0x18

    .line 165
    .line 166
    invoke-static {p2, p1}, Leu/faircode/netguard/Util;->dips2pixels(ILandroid/content/Context;)I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    iput p2, p0, Leu/faircode/netguard/AdapterLog;->iconSize:I

    .line 171
    .line 172
    :try_start_0
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->getDns(Landroid/content/Context;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    if-lez p3, :cond_0

    .line 181
    .line 182
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    check-cast p3, Ljava/net/InetAddress;

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_0
    move-object p3, v1

    .line 190
    :goto_0
    iput-object p3, p0, Leu/faircode/netguard/AdapterLog;->dns1:Ljava/net/InetAddress;

    .line 191
    .line 192
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result p3

    .line 196
    if-le p3, v2, :cond_1

    .line 197
    .line 198
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    move-object v1, p2

    .line 203
    check-cast v1, Ljava/net/InetAddress;

    .line 204
    .line 205
    :cond_1
    iput-object v1, p0, Leu/faircode/netguard/AdapterLog;->dns2:Ljava/net/InetAddress;

    .line 206
    .line 207
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    const-string p2, "vpn4"

    .line 212
    .line 213
    const-string p3, "10.1.10.1"

    .line 214
    .line 215
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    iput-object p2, p0, Leu/faircode/netguard/AdapterLog;->vpn4:Ljava/net/InetAddress;

    .line 224
    .line 225
    const-string p2, "vpn6"

    .line 226
    .line 227
    const-string p3, "fd00:1:fd00:1:fd00:1:fd00:1"

    .line 228
    .line 229
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iput-object p1, p0, Leu/faircode/netguard/AdapterLog;->vpn6:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :catch_0
    move-exception p1

    .line 241
    sget-object p2, Leu/faircode/netguard/AdapterLog;->TAG:Ljava/lang/String;

    .line 242
    .line 243
    new-instance p3, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p4

    .line 252
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string p4, "\n"

    .line 256
    .line 257
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    :goto_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Leu/faircode/netguard/AdapterLog;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private getKnownAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Leu/faircode/netguard/AdapterLog;->dns1:Ljava/net/InetAddress;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string p1, "dns1"

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v1, p0, Leu/faircode/netguard/AdapterLog;->dns2:Ljava/net/InetAddress;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string p1, "dns2"

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    iget-object v1, p0, Leu/faircode/netguard/AdapterLog;->vpn4:Ljava/net/InetAddress;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Leu/faircode/netguard/AdapterLog;->vpn6:Ljava/net/InetAddress;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    :cond_2
    const-string p1, "vpn"
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    :catch_0
    :cond_3
    return-object p1
.end method

.method private getKnownPort(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    if-eq p1, v0, :cond_9

    .line 3
    .line 4
    const/16 v0, 0x19

    .line 5
    .line 6
    if-eq p1, v0, :cond_8

    .line 7
    .line 8
    const/16 v0, 0x35

    .line 9
    .line 10
    if-eq p1, v0, :cond_7

    .line 11
    .line 12
    const/16 v0, 0x50

    .line 13
    .line 14
    if-eq p1, v0, :cond_6

    .line 15
    .line 16
    const/16 v0, 0x6e

    .line 17
    .line 18
    if-eq p1, v0, :cond_5

    .line 19
    .line 20
    const/16 v0, 0x8f

    .line 21
    .line 22
    if-eq p1, v0, :cond_4

    .line 23
    .line 24
    const/16 v0, 0x1bb

    .line 25
    .line 26
    if-eq p1, v0, :cond_3

    .line 27
    .line 28
    const/16 v0, 0x1d1

    .line 29
    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    const/16 v0, 0x3e1

    .line 33
    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    const/16 v0, 0x3e3

    .line 37
    .line 38
    if-eq p1, v0, :cond_0

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_0
    const-string p1, "pop3s"

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_1
    const-string p1, "imaps"

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_2
    const-string p1, "smtps"

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_3
    const-string p1, "https"

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_4
    const-string p1, "imap"

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    const-string p1, "pop3"

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_6
    const-string p1, "http"

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_7
    const-string p1, "dns"

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_8
    const-string p1, "smtp"

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_9
    const-string p1, "echo"

    .line 73
    .line 74
    return-object p1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget v3, v0, Leu/faircode/netguard/AdapterLog;->colTime:I

    .line 8
    .line 9
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget v5, v0, Leu/faircode/netguard/AdapterLog;->colVersion:I

    .line 14
    .line 15
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    const/4 v5, -0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v5, v0, Leu/faircode/netguard/AdapterLog;->colVersion:I

    .line 24
    .line 25
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    :goto_0
    iget v7, v0, Leu/faircode/netguard/AdapterLog;->colProtocol:I

    .line 30
    .line 31
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    const/4 v7, -0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget v7, v0, Leu/faircode/netguard/AdapterLog;->colProtocol:I

    .line 40
    .line 41
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    :goto_1
    iget v8, v0, Leu/faircode/netguard/AdapterLog;->colFlags:I

    .line 46
    .line 47
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    iget v9, v0, Leu/faircode/netguard/AdapterLog;->colSAddr:I

    .line 52
    .line 53
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    iget v10, v0, Leu/faircode/netguard/AdapterLog;->colSPort:I

    .line 58
    .line 59
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-eqz v10, :cond_2

    .line 64
    .line 65
    const/4 v10, -0x1

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget v10, v0, Leu/faircode/netguard/AdapterLog;->colSPort:I

    .line 68
    .line 69
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    :goto_2
    iget v11, v0, Leu/faircode/netguard/AdapterLog;->colDAddr:I

    .line 74
    .line 75
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    iget v12, v0, Leu/faircode/netguard/AdapterLog;->colDPort:I

    .line 80
    .line 81
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    if-eqz v12, :cond_3

    .line 86
    .line 87
    const/4 v12, -0x1

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    iget v12, v0, Leu/faircode/netguard/AdapterLog;->colDPort:I

    .line 90
    .line 91
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    :goto_3
    iget v13, v0, Leu/faircode/netguard/AdapterLog;->colDName:I

    .line 96
    .line 97
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_4

    .line 102
    .line 103
    const/4 v13, 0x0

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    iget v13, v0, Leu/faircode/netguard/AdapterLog;->colDName:I

    .line 106
    .line 107
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    :goto_4
    iget v15, v0, Leu/faircode/netguard/AdapterLog;->colUid:I

    .line 112
    .line 113
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    if-eqz v15, :cond_5

    .line 118
    .line 119
    const/4 v15, -0x1

    .line 120
    goto :goto_5

    .line 121
    :cond_5
    iget v15, v0, Leu/faircode/netguard/AdapterLog;->colUid:I

    .line 122
    .line 123
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    :goto_5
    iget v6, v0, Leu/faircode/netguard/AdapterLog;->colData:I

    .line 128
    .line 129
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    iget v14, v0, Leu/faircode/netguard/AdapterLog;->colAllowed:I

    .line 134
    .line 135
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-eqz v14, :cond_6

    .line 140
    .line 141
    move-object/from16 v16, v6

    .line 142
    .line 143
    const/4 v14, -0x1

    .line 144
    goto :goto_6

    .line 145
    :cond_6
    iget v14, v0, Leu/faircode/netguard/AdapterLog;->colAllowed:I

    .line 146
    .line 147
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    move-object/from16 v16, v6

    .line 152
    .line 153
    :goto_6
    iget v6, v0, Leu/faircode/netguard/AdapterLog;->colConnection:I

    .line 154
    .line 155
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_7

    .line 160
    .line 161
    move-object/from16 v17, v13

    .line 162
    .line 163
    const/4 v6, -0x1

    .line 164
    goto :goto_7

    .line 165
    :cond_7
    iget v6, v0, Leu/faircode/netguard/AdapterLog;->colConnection:I

    .line 166
    .line 167
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    move-object/from16 v17, v13

    .line 172
    .line 173
    :goto_7
    iget v13, v0, Leu/faircode/netguard/AdapterLog;->colInteractive:I

    .line 174
    .line 175
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    if-eqz v13, :cond_8

    .line 180
    .line 181
    const/4 v2, -0x1

    .line 182
    goto :goto_8

    .line 183
    :cond_8
    iget v13, v0, Leu/faircode/netguard/AdapterLog;->colInteractive:I

    .line 184
    .line 185
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    :goto_8
    const v13, 0x7f09018c

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    check-cast v13, Landroid/widget/TextView;

    .line 197
    .line 198
    move-object/from16 v18, v11

    .line 199
    .line 200
    const v11, 0x7f090179

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    check-cast v11, Landroid/widget/TextView;

    .line 208
    .line 209
    move-object/from16 v19, v9

    .line 210
    .line 211
    const v9, 0x7f090169

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    check-cast v9, Landroid/widget/TextView;

    .line 219
    .line 220
    move/from16 v20, v15

    .line 221
    .line 222
    const v15, 0x7f090183

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    check-cast v15, Landroid/widget/TextView;

    .line 230
    .line 231
    move-object/from16 p3, v15

    .line 232
    .line 233
    const v15, 0x7f090184

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v15

    .line 240
    check-cast v15, Landroid/widget/TextView;

    .line 241
    .line 242
    const v0, 0x7f090155

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Landroid/widget/TextView;

    .line 250
    .line 251
    move-object/from16 v21, v0

    .line 252
    .line 253
    const v0, 0x7f090156

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Landroid/widget/TextView;

    .line 261
    .line 262
    move-object/from16 v22, v0

    .line 263
    .line 264
    const v0, 0x7f090176

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroid/widget/TextView;

    .line 272
    .line 273
    move-object/from16 v23, v0

    .line 274
    .line 275
    const v0, 0x7f090098

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Landroid/widget/ImageView;

    .line 283
    .line 284
    move-object/from16 v24, v0

    .line 285
    .line 286
    const v0, 0x7f090190

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Landroid/widget/TextView;

    .line 294
    .line 295
    move-object/from16 v25, v0

    .line 296
    .line 297
    const v0, 0x7f090157

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Landroid/widget/TextView;

    .line 305
    .line 306
    move-object/from16 v26, v0

    .line 307
    .line 308
    const v0, 0x7f090093

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Landroid/widget/ImageView;

    .line 316
    .line 317
    move/from16 v27, v12

    .line 318
    .line 319
    const v12, 0x7f090099

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    check-cast v1, Landroid/widget/ImageView;

    .line 327
    .line 328
    new-instance v12, Ljava/text/SimpleDateFormat;

    .line 329
    .line 330
    move-object/from16 v28, v15

    .line 331
    .line 332
    const-string v15, "HH:mm:ss"

    .line 333
    .line 334
    invoke-direct {v12, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v12, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    const/4 v3, 0x1

    .line 349
    if-gtz v6, :cond_a

    .line 350
    .line 351
    if-lez v14, :cond_9

    .line 352
    .line 353
    const v4, 0x7f08006f

    .line 354
    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_9
    const v4, 0x7f080070

    .line 358
    .line 359
    .line 360
    :goto_9
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_c

    .line 364
    :cond_a
    if-lez v14, :cond_c

    .line 365
    .line 366
    if-ne v6, v3, :cond_b

    .line 367
    .line 368
    const v4, 0x7f0800c0

    .line 369
    .line 370
    .line 371
    goto :goto_a

    .line 372
    :cond_b
    const v4, 0x7f0800b2

    .line 373
    .line 374
    .line 375
    :goto_a
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    .line 377
    .line 378
    goto :goto_c

    .line 379
    :cond_c
    if-ne v6, v3, :cond_d

    .line 380
    .line 381
    const v4, 0x7f0800be

    .line 382
    .line 383
    .line 384
    goto :goto_b

    .line 385
    :cond_d
    const v4, 0x7f0800b0

    .line 386
    .line 387
    .line 388
    :goto_b
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    .line 390
    .line 391
    :goto_c
    if-gtz v2, :cond_e

    .line 392
    .line 393
    const/4 v0, 0x0

    .line 394
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    .line 396
    .line 397
    goto :goto_d

    .line 398
    :cond_e
    const v0, 0x7f0800b6

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 402
    .line 403
    .line 404
    :goto_d
    const/4 v0, 0x0

    .line 405
    invoke-static {v7, v5, v0}, Leu/faircode/netguard/Util;->getProtocolName(IIZ)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    .line 414
    .line 415
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    const/16 v2, 0x8

    .line 420
    .line 421
    if-eqz v1, :cond_f

    .line 422
    .line 423
    const/16 v1, 0x8

    .line 424
    .line 425
    goto :goto_e

    .line 426
    :cond_f
    const/4 v1, 0x0

    .line 427
    :goto_e
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    .line 429
    .line 430
    const/4 v1, 0x6

    .line 431
    const-string v4, ""

    .line 432
    .line 433
    if-eq v7, v1, :cond_13

    .line 434
    .line 435
    const/16 v1, 0x11

    .line 436
    .line 437
    if-ne v7, v1, :cond_10

    .line 438
    .line 439
    goto :goto_11

    .line 440
    :cond_10
    if-gez v10, :cond_11

    .line 441
    .line 442
    move-object v1, v4

    .line 443
    goto :goto_f

    .line 444
    :cond_11
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    :goto_f
    move-object/from16 v15, v28

    .line 449
    .line 450
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .line 452
    .line 453
    if-gez v27, :cond_12

    .line 454
    .line 455
    move-object v1, v4

    .line 456
    goto :goto_10

    .line 457
    :cond_12
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    :goto_10
    move-object/from16 v5, v22

    .line 462
    .line 463
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .line 465
    .line 466
    move-object/from16 v1, p0

    .line 467
    .line 468
    goto :goto_14

    .line 469
    :cond_13
    :goto_11
    move-object/from16 v5, v22

    .line 470
    .line 471
    move-object/from16 v15, v28

    .line 472
    .line 473
    move-object/from16 v1, p0

    .line 474
    .line 475
    if-gez v10, :cond_14

    .line 476
    .line 477
    move-object v6, v4

    .line 478
    goto :goto_12

    .line 479
    :cond_14
    invoke-direct {v1, v10}, Leu/faircode/netguard/AdapterLog;->getKnownPort(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    :goto_12
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    .line 485
    .line 486
    if-gez v27, :cond_15

    .line 487
    .line 488
    move-object v6, v4

    .line 489
    goto :goto_13

    .line 490
    :cond_15
    move/from16 v12, v27

    .line 491
    .line 492
    invoke-direct {v1, v12}, Leu/faircode/netguard/AdapterLog;->getKnownPort(I)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v6

    .line 496
    :goto_13
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    .line 498
    .line 499
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 500
    .line 501
    .line 502
    move-result-object v5

    .line 503
    move/from16 v15, v20

    .line 504
    .line 505
    :try_start_0
    invoke-virtual {v5, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    goto :goto_15

    .line 510
    :catch_0
    nop

    .line 511
    const/4 v6, 0x0

    .line 512
    :goto_15
    if-eqz v6, :cond_16

    .line 513
    .line 514
    array-length v7, v6

    .line 515
    if-lez v7, :cond_16

    .line 516
    .line 517
    :try_start_1
    aget-object v6, v6, v0

    .line 518
    .line 519
    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 520
    .line 521
    .line 522
    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 523
    goto :goto_16

    .line 524
    :catch_1
    nop

    .line 525
    :cond_16
    const/4 v5, 0x0

    .line 526
    :goto_16
    if-nez v5, :cond_17

    .line 527
    .line 528
    move-object/from16 v6, v24

    .line 529
    .line 530
    const/4 v7, 0x0

    .line 531
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    .line 533
    .line 534
    goto :goto_17

    .line 535
    :cond_17
    move-object/from16 v6, v24

    .line 536
    .line 537
    iget v7, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 538
    .line 539
    if-gtz v7, :cond_18

    .line 540
    .line 541
    const v5, 0x1080093

    .line 542
    .line 543
    .line 544
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    .line 546
    .line 547
    goto :goto_17

    .line 548
    :cond_18
    new-instance v7, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    const-string v8, "android.resource://"

    .line 551
    .line 552
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 556
    .line 557
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v8, "/"

    .line 561
    .line 562
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 566
    .line 567
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    invoke-static/range {p2 .. p2}, Leu/faircode/netguard/GlideApp;->with(Landroid/content/Context;)Leu/faircode/netguard/GlideRequests;

    .line 579
    .line 580
    .line 581
    move-result-object v7

    .line 582
    invoke-virtual {v7, v5}, Leu/faircode/netguard/GlideRequests;->load(Landroid/net/Uri;)Leu/faircode/netguard/GlideRequest;

    .line 583
    .line 584
    .line 585
    move-result-object v5

    .line 586
    iget v7, v1, Leu/faircode/netguard/AdapterLog;->iconSize:I

    .line 587
    .line 588
    invoke-virtual {v5, v7, v7}, Leu/faircode/netguard/GlideRequest;->override(II)Leu/faircode/netguard/GlideRequest;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/u;->into(Landroid/widget/ImageView;)LU/j;

    .line 593
    .line 594
    .line 595
    :goto_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 596
    .line 597
    .line 598
    move-result v5

    .line 599
    if-ne v5, v15, :cond_19

    .line 600
    .line 601
    goto :goto_18

    .line 602
    :cond_19
    const/4 v3, 0x0

    .line 603
    :goto_18
    const v5, 0x186a0

    .line 604
    .line 605
    .line 606
    rem-int/2addr v15, v5

    .line 607
    const/4 v5, -0x1

    .line 608
    if-ne v15, v5, :cond_1a

    .line 609
    .line 610
    move-object/from16 v5, v25

    .line 611
    .line 612
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    .line 614
    .line 615
    :goto_19
    move-object/from16 v5, v19

    .line 616
    .line 617
    goto :goto_1a

    .line 618
    :cond_1a
    move-object/from16 v5, v25

    .line 619
    .line 620
    if-nez v15, :cond_1b

    .line 621
    .line 622
    const v6, 0x7f10014b

    .line 623
    .line 624
    .line 625
    move-object/from16 v7, p2

    .line 626
    .line 627
    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v6

    .line 631
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    .line 633
    .line 634
    goto :goto_19

    .line 635
    :cond_1b
    const/16 v6, 0x270f

    .line 636
    .line 637
    if-ne v15, v6, :cond_1c

    .line 638
    .line 639
    const-string v6, "-"

    .line 640
    .line 641
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    .line 643
    .line 644
    goto :goto_19

    .line 645
    :cond_1c
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    .line 651
    .line 652
    goto :goto_19

    .line 653
    :goto_1a
    invoke-direct {v1, v5}, Leu/faircode/netguard/AdapterLog;->getKnownAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v5

    .line 657
    move-object/from16 v15, p3

    .line 658
    .line 659
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    .line 661
    .line 662
    if-nez v3, :cond_1e

    .line 663
    .line 664
    iget-boolean v5, v1, Leu/faircode/netguard/AdapterLog;->resolve:Z

    .line 665
    .line 666
    if-eqz v5, :cond_1e

    .line 667
    .line 668
    move-object/from16 v5, v18

    .line 669
    .line 670
    invoke-virtual {v1, v5}, Leu/faircode/netguard/AdapterLog;->isKnownAddress(Ljava/lang/String;)Z

    .line 671
    .line 672
    .line 673
    move-result v6

    .line 674
    if-nez v6, :cond_1f

    .line 675
    .line 676
    if-nez v17, :cond_1d

    .line 677
    .line 678
    move-object/from16 v6, v21

    .line 679
    .line 680
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    .line 682
    .line 683
    new-instance v7, Leu/faircode/netguard/AdapterLog$1;

    .line 684
    .line 685
    invoke-direct {v7, v1, v6}, Leu/faircode/netguard/AdapterLog$1;-><init>(Leu/faircode/netguard/AdapterLog;Landroid/widget/TextView;)V

    .line 686
    .line 687
    .line 688
    filled-new-array {v5}, [Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v6

    .line 692
    invoke-virtual {v7, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 693
    .line 694
    .line 695
    goto :goto_1b

    .line 696
    :cond_1d
    move-object/from16 v13, v17

    .line 697
    .line 698
    move-object/from16 v6, v21

    .line 699
    .line 700
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    .line 702
    .line 703
    goto :goto_1b

    .line 704
    :cond_1e
    move-object/from16 v5, v18

    .line 705
    .line 706
    :cond_1f
    move-object/from16 v6, v21

    .line 707
    .line 708
    invoke-direct {v1, v5}, Leu/faircode/netguard/AdapterLog;->getKnownAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v7

    .line 712
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    .line 714
    .line 715
    :goto_1b
    move-object/from16 v6, v23

    .line 716
    .line 717
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 718
    .line 719
    .line 720
    if-nez v3, :cond_20

    .line 721
    .line 722
    iget-boolean v3, v1, Leu/faircode/netguard/AdapterLog;->organization:Z

    .line 723
    .line 724
    if-eqz v3, :cond_20

    .line 725
    .line 726
    invoke-virtual {v1, v5}, Leu/faircode/netguard/AdapterLog;->isKnownAddress(Ljava/lang/String;)Z

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    if-nez v3, :cond_20

    .line 731
    .line 732
    new-instance v3, Leu/faircode/netguard/AdapterLog$2;

    .line 733
    .line 734
    invoke-direct {v3, v1, v6}, Leu/faircode/netguard/AdapterLog$2;-><init>(Leu/faircode/netguard/AdapterLog;Landroid/widget/TextView;)V

    .line 735
    .line 736
    .line 737
    filled-new-array {v5}, [Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    invoke-virtual {v3, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 742
    .line 743
    .line 744
    :cond_20
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    if-eqz v3, :cond_21

    .line 749
    .line 750
    move-object/from16 v3, v26

    .line 751
    .line 752
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 756
    .line 757
    .line 758
    goto :goto_1c

    .line 759
    :cond_21
    move-object/from16 v2, v16

    .line 760
    .line 761
    move-object/from16 v3, v26

    .line 762
    .line 763
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 767
    .line 768
    .line 769
    :goto_1c
    return-void
.end method

.method public isKnownAddress(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Leu/faircode/netguard/AdapterLog;->dns1:Ljava/net/InetAddress;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Leu/faircode/netguard/AdapterLog;->dns2:Ljava/net/InetAddress;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Leu/faircode/netguard/AdapterLog;->vpn4:Ljava/net/InetAddress;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Leu/faircode/netguard/AdapterLog;->vpn6:Ljava/net/InetAddress;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 40
    return p1
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
    const p2, 0x7f0c0030

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

.method public setOrganization(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Leu/faircode/netguard/AdapterLog;->organization:Z

    .line 2
    .line 3
    return-void
.end method

.method public setResolve(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Leu/faircode/netguard/AdapterLog;->resolve:Z

    .line 2
    .line 3
    return-void
.end method
