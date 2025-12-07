.class Leu/faircode/netguard/ServiceSinkhole$9;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field private last_active:Landroid/net/Network;

.field private last_connected:Ljava/lang/Boolean;

.field private last_dns:Ljava/util/List;

.field private last_generation:Ljava/lang/String;

.field private last_metered:Ljava/lang/Boolean;

.field private last_network:Landroid/net/Network;

.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ServiceSinkhole;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_active:Landroid/net/Network;

    .line 8
    .line 9
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_network:Landroid/net/Network;

    .line 10
    .line 11
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_connected:Ljava/lang/Boolean;

    .line 12
    .line 13
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_metered:Ljava/lang/Boolean;

    .line 14
    .line 15
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_generation:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_dns:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Available network="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetGuard.Service"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 21
    .line 22
    invoke-static {v0, p1}, Leu/faircode/netguard/ServiceSinkhole;->access$4200(Leu/faircode/netguard/ServiceSinkhole;Landroid/net/Network;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_active:Landroid/net/Network;

    .line 30
    .line 31
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 32
    .line 33
    invoke-static {p1}, Leu/faircode/netguard/Util;->isConnected(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_connected:Ljava/lang/Boolean;

    .line 42
    .line 43
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 44
    .line 45
    invoke-static {p1}, Leu/faircode/netguard/Util;->isMeteredNetwork(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_metered:Ljava/lang/Boolean;

    .line 54
    .line 55
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    const-string v1, "network available"

    .line 59
    .line 60
    invoke-static {v1, p1, v0}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Changed capabilities="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " caps="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "NetGuard.Service"

    .line 24
    .line 25
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 29
    .line 30
    invoke-static {p2, p1}, Leu/faircode/netguard/ServiceSinkhole;->access$4200(Leu/faircode/netguard/ServiceSinkhole;Landroid/net/Network;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 38
    .line 39
    invoke-static {p2}, Leu/faircode/netguard/Util;->isConnected(Landroid/content/Context;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 44
    .line 45
    invoke-static {v1}, Leu/faircode/netguard/Util;->isMeteredNetwork(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 50
    .line 51
    invoke-static {v2}, Leu/faircode/netguard/Util;->getNetworkGeneration(Landroid/content/Context;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v4, "Connected="

    .line 58
    .line 59
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, "/"

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_connected:Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v5, " unmetered="

    .line 76
    .line 77
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v5, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_metered:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v5, " generation="

    .line 92
    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_generation:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_network:Landroid/net/Network;

    .line 115
    .line 116
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_1

    .line 121
    .line 122
    const-string v0, "Network changed"

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    .line 126
    :goto_0
    if-nez v0, :cond_2

    .line 127
    .line 128
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_connected:Ljava/lang/Boolean;

    .line 129
    .line 130
    if-eqz v3, :cond_2

    .line 131
    .line 132
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_2

    .line 141
    .line 142
    const-string v0, "Connected state changed"

    .line 143
    .line 144
    :cond_2
    if-nez v0, :cond_3

    .line 145
    .line 146
    iget-object v3, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_metered:Ljava/lang/Boolean;

    .line 147
    .line 148
    if-eqz v3, :cond_3

    .line 149
    .line 150
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_3

    .line 159
    .line 160
    const-string v0, "Unmetered state changed"

    .line 161
    .line 162
    :cond_3
    const/4 v3, 0x0

    .line 163
    if-nez v0, :cond_5

    .line 164
    .line 165
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_generation:Ljava/lang/String;

    .line 166
    .line 167
    if-eqz v4, :cond_5

    .line 168
    .line 169
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-nez v4, :cond_5

    .line 174
    .line 175
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 176
    .line 177
    invoke-static {v4}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    const-string v5, "unmetered_2g"

    .line 182
    .line 183
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-nez v5, :cond_4

    .line 188
    .line 189
    const-string v5, "unmetered_3g"

    .line 190
    .line 191
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-nez v5, :cond_4

    .line 196
    .line 197
    const-string v5, "unmetered_4g"

    .line 198
    .line 199
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_5

    .line 204
    .line 205
    :cond_4
    const-string v0, "Generation changed"

    .line 206
    .line 207
    :cond_5
    if-eqz v0, :cond_6

    .line 208
    .line 209
    iget-object v4, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 210
    .line 211
    invoke-static {v0, v4, v3}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 212
    .line 213
    .line 214
    :cond_6
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_network:Landroid/net/Network;

    .line 215
    .line 216
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_connected:Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_metered:Ljava/lang/Boolean;

    .line 227
    .line 228
    iput-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_generation:Ljava/lang/String;

    .line 229
    .line 230
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Changed properties="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " props="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "NetGuard.Service"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 29
    .line 30
    invoke-static {v0, p1}, Leu/faircode/netguard/ServiceSinkhole;->access$4200(Leu/faircode/netguard/ServiceSinkhole;Landroid/net/Network;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 42
    .line 43
    invoke-static {v0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v3, 0x1a

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    if-lt v2, v3, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_dns:Ljava/util/List;

    .line 55
    .line 56
    invoke-virtual {p0, v0, p1}, Leu/faircode/netguard/ServiceSinkhole$9;->same(Ljava/util/List;Ljava/util/List;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v2, "reload_onconnectivity"

    .line 64
    .line 65
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "Changed link properties="

    .line 74
    .line 75
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p2, "DNS cur="

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p2, ","

    .line 87
    .line 88
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, "DNS prv="

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_dns:Ljava/util/List;

    .line 101
    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    const/4 p2, 0x0

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_dns:Ljava/util/List;

    .line 121
    .line 122
    const-string p1, "link properties changed"

    .line 123
    .line 124
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 125
    .line 126
    invoke-static {p1, p2, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 127
    .line 128
    .line 129
    :cond_3
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Lost network="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " active="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 17
    .line 18
    invoke-static {v1, p1}, Leu/faircode/netguard/ServiceSinkhole;->access$4200(Leu/faircode/netguard/ServiceSinkhole;Landroid/net/Network;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "NetGuard.Service"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_active:Landroid/net/Network;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_active:Landroid/net/Network;

    .line 47
    .line 48
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 49
    .line 50
    invoke-static {p1}, Leu/faircode/netguard/Util;->isConnected(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->last_connected:Ljava/lang/Boolean;

    .line 59
    .line 60
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$9;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    const-string v1, "network lost"

    .line 64
    .line 65
    invoke-static {v1, p1, v0}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method same(Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_3

    .line 24
    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/net/InetAddress;

    .line 30
    .line 31
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    return v0

    .line 42
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_4
    :goto_1
    return v0
.end method
