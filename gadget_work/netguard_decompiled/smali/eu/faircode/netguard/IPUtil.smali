.class public Leu/faircode/netguard/IPUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic access$000(Ljava/net/InetAddress;)J
    .locals 2

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/IPUtil;->inet2long(Ljava/net/InetAddress;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic access$100(I)J
    .locals 2

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/IPUtil;->prefix2mask(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic access$200(J)Ljava/net/InetAddress;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Leu/faircode/netguard/IPUtil;->long2inet(J)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static inet2long(Ljava/net/InetAddress;)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    array-length v2, p0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_0

    .line 12
    .line 13
    aget-byte v4, p0, v3

    .line 14
    .line 15
    const/16 v5, 0x8

    .line 16
    .line 17
    shl-long/2addr v0, v5

    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    int-to-long v4, v4

    .line 21
    or-long/2addr v0, v4

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-wide v0
.end method

.method private static long2inet(J)Ljava/net/InetAddress;
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_0
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    :goto_0
    if-ltz v1, :cond_0

    .line 6
    .line 7
    const-wide/16 v2, 0xff

    .line 8
    .line 9
    and-long/2addr v2, p0

    .line 10
    long-to-int v3, v2

    .line 11
    int-to-byte v2, v3

    .line 12
    aput-byte v2, v0, v1

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    shr-long/2addr p0, v2

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public static minus1(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 4

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/IPUtil;->inet2long(Ljava/net/InetAddress;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Leu/faircode/netguard/IPUtil;->long2inet(J)Ljava/net/InetAddress;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static plus1(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 4

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/IPUtil;->inet2long(Ljava/net/InetAddress;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Leu/faircode/netguard/IPUtil;->long2inet(J)Ljava/net/InetAddress;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static prefix2mask(I)J
    .locals 4

    const-wide v0, -0x100000000L

    shr-long/2addr v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toCIDR(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p0, p1}, Leu/faircode/netguard/IPUtil;->toCIDR(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toCIDR(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/util/List;
    .locals 12

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toCIDR("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetGuard.IPUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0}, Leu/faircode/netguard/IPUtil;->inet2long(Ljava/net/InetAddress;)J

    move-result-wide v3

    .line 5
    invoke-static {p1}, Leu/faircode/netguard/IPUtil;->inet2long(Ljava/net/InetAddress;)J

    move-result-wide p0

    :goto_0
    cmp-long v1, p0, v3

    if-ltz v1, :cond_3

    const/16 v1, 0x20

    const/16 v5, 0x20

    :goto_1
    if-lez v5, :cond_1

    add-int/lit8 v6, v5, -0x1

    .line 6
    invoke-static {v6}, Leu/faircode/netguard/IPUtil;->prefix2mask(I)J

    move-result-wide v7

    and-long/2addr v7, v3

    cmp-long v9, v7, v3

    if-eqz v9, :cond_0

    goto :goto_2

    :cond_0
    int-to-byte v5, v6

    goto :goto_1

    :cond_1
    :goto_2
    sub-long v6, p0, v3

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-double v6, v6

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4040000000000000L    # 32.0

    sub-double/2addr v10, v6

    double-to-int v6, v10

    int-to-byte v6, v6

    if-ge v5, v6, :cond_2

    move v5, v6

    .line 8
    :cond_2
    new-instance v6, Leu/faircode/netguard/IPUtil$CIDR;

    invoke-static {v3, v4}, Leu/faircode/netguard/IPUtil;->long2inet(J)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Leu/faircode/netguard/IPUtil$CIDR;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    long-to-double v3, v3

    sub-int/2addr v1, v5

    int-to-double v5, v1

    .line 9
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v3

    double-to-long v3, v5

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/faircode/netguard/IPUtil$CIDR;

    .line 11
    invoke-virtual {p1}, Leu/faircode/netguard/IPUtil$CIDR;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    return-object v0
.end method
