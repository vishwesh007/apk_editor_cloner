.class Leu/faircode/netguard/ServiceSinkhole$Builder;
.super Landroid/net/VpnService$Builder;
.source "SourceFile"


# instance fields
.field private activeNetwork:Landroid/net/Network;

.field private listAddress:Ljava/util/List;

.field private listAllowed:Ljava/util/List;

.field private listDisallowed:Ljava/util/List;

.field private listDns:Ljava/util/List;

.field private listRoute:Ljava/util/List;

.field private mtu:I

.field private networkInfo:Landroid/net/NetworkInfo;

.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;


# direct methods
.method private constructor <init>(Leu/faircode/netguard/ServiceSinkhole;)V
    .locals 2

    .line 2
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 3
    invoke-direct {p0, p1}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAddress:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listRoute:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDns:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAllowed:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDisallowed:Ljava/util/List;

    const-string v0, "connectivity"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, LE0/c;->c(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->activeNetwork:Landroid/net/Network;

    .line 11
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->networkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method synthetic constructor <init>(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ServiceSinkhole$Builder;-><init>(Leu/faircode/netguard/ServiceSinkhole;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addAddress(Ljava/lang/String;I)Leu/faircode/netguard/ServiceSinkhole$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAddress(Ljava/lang/String;I)Leu/faircode/netguard/ServiceSinkhole$Builder;
    .locals 3

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAddress:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-super {p0, p1, p2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    return-object p0
.end method

.method public addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAllowed:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public bridge synthetic addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addDisallowedApplication(Ljava/lang/String;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDisallowedApplication(Ljava/lang/String;)Leu/faircode/netguard/ServiceSinkhole$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDisallowed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    return-object p0
.end method

.method public bridge synthetic addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addDnsServer(Ljava/net/InetAddress;)Leu/faircode/netguard/ServiceSinkhole$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDnsServer(Ljava/net/InetAddress;)Leu/faircode/netguard/ServiceSinkhole$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;

    return-object p0
.end method

.method public bridge synthetic addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addRoute(Ljava/lang/String;I)Leu/faircode/netguard/ServiceSinkhole$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole$Builder;->addRoute(Ljava/net/InetAddress;I)Leu/faircode/netguard/ServiceSinkhole$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRoute(Ljava/lang/String;I)Leu/faircode/netguard/ServiceSinkhole$Builder;
    .locals 3

    .line 3
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listRoute:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-super {p0, p1, p2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    return-object p0
.end method

.method public addRoute(Ljava/net/InetAddress;I)Leu/faircode/netguard/ServiceSinkhole$Builder;
    .locals 3

    .line 5
    iget-object v0, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listRoute:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-super {p0, p1, p2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    check-cast p1, Leu/faircode/netguard/ServiceSinkhole$Builder;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->activeNetwork:Landroid/net/Network;

    .line 8
    .line 9
    iget-object v2, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->activeNetwork:Landroid/net/Network;

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->networkInfo:Landroid/net/NetworkInfo;

    .line 19
    .line 20
    if-eqz v1, :cond_13

    .line 21
    .line 22
    iget-object v2, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->networkInfo:Landroid/net/NetworkInfo;

    .line 23
    .line 24
    if-eqz v2, :cond_13

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->networkInfo:Landroid/net/NetworkInfo;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v1, v2, :cond_2

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_2
    iget v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->mtu:I

    .line 41
    .line 42
    iget v2, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->mtu:I

    .line 43
    .line 44
    if-eq v1, v2, :cond_3

    .line 45
    .line 46
    return v0

    .line 47
    :cond_3
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAddress:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object v2, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAddress:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eq v1, v2, :cond_4

    .line 60
    .line 61
    return v0

    .line 62
    :cond_4
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listRoute:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget-object v2, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->listRoute:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eq v1, v2, :cond_5

    .line 75
    .line 76
    return v0

    .line 77
    :cond_5
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDns:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iget-object v2, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDns:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eq v1, v2, :cond_6

    .line 90
    .line 91
    return v0

    .line 92
    :cond_6
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAllowed:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget-object v2, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAllowed:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eq v1, v2, :cond_7

    .line 105
    .line 106
    return v0

    .line 107
    :cond_7
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDisallowed:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget-object v2, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDisallowed:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eq v1, v2, :cond_8

    .line 120
    .line 121
    return v0

    .line 122
    :cond_8
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAddress:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_a

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Ljava/lang/String;

    .line 139
    .line 140
    iget-object v3, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAddress:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_9

    .line 147
    .line 148
    return v0

    .line 149
    :cond_a
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listRoute:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_c

    .line 160
    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Ljava/lang/String;

    .line 166
    .line 167
    iget-object v3, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->listRoute:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_b

    .line 174
    .line 175
    return v0

    .line 176
    :cond_c
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDns:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_e

    .line 187
    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Ljava/net/InetAddress;

    .line 193
    .line 194
    iget-object v3, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDns:Ljava/util/List;

    .line 195
    .line 196
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_d

    .line 201
    .line 202
    return v0

    .line 203
    :cond_e
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAllowed:Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_10

    .line 214
    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Ljava/lang/String;

    .line 220
    .line 221
    iget-object v3, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->listAllowed:Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-nez v2, :cond_f

    .line 228
    .line 229
    return v0

    .line 230
    :cond_10
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDisallowed:Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_12

    .line 241
    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Ljava/lang/String;

    .line 247
    .line 248
    iget-object v3, p1, Leu/faircode/netguard/ServiceSinkhole$Builder;->listDisallowed:Ljava/util/List;

    .line 249
    .line 250
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_11

    .line 255
    .line 256
    return v0

    .line 257
    :cond_12
    const/4 p1, 0x1

    .line 258
    return p1

    .line 259
    :cond_13
    :goto_0
    return v0
.end method

.method public setMtu(I)Landroid/net/VpnService$Builder;
    .locals 0

    .line 1
    iput p1, p0, Leu/faircode/netguard/ServiceSinkhole$Builder;->mtu:I

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
