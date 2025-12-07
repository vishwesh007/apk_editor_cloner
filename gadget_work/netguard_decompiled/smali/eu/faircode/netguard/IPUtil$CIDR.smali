.class public Leu/faircode/netguard/IPUtil$CIDR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public address:Ljava/net/InetAddress;

.field public prefix:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Leu/faircode/netguard/IPUtil$CIDR;->address:Ljava/net/InetAddress;

    .line 6
    iput p2, p0, Leu/faircode/netguard/IPUtil$CIDR;->prefix:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetGuard.IPUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leu/faircode/netguard/IPUtil$CIDR;->address:Ljava/net/InetAddress;

    .line 3
    iput p2, p0, Leu/faircode/netguard/IPUtil$CIDR;->prefix:I

    return-void
.end method


# virtual methods
.method public compareTo(Leu/faircode/netguard/IPUtil$CIDR;)I
    .locals 3

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/IPUtil$CIDR;->address:Ljava/net/InetAddress;

    invoke-static {v0}, Leu/faircode/netguard/IPUtil;->access$000(Ljava/net/InetAddress;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3
    iget-object p1, p1, Leu/faircode/netguard/IPUtil$CIDR;->address:Ljava/net/InetAddress;

    invoke-static {p1}, Leu/faircode/netguard/IPUtil;->access$000(Ljava/net/InetAddress;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Leu/faircode/netguard/IPUtil$CIDR;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/IPUtil$CIDR;->compareTo(Leu/faircode/netguard/IPUtil$CIDR;)I

    move-result p1

    return p1
.end method

.method public getEnd()Ljava/net/InetAddress;
    .locals 7

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/IPUtil$CIDR;->address:Ljava/net/InetAddress;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/IPUtil;->access$000(Ljava/net/InetAddress;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget v2, p0, Leu/faircode/netguard/IPUtil$CIDR;->prefix:I

    .line 8
    .line 9
    invoke-static {v2}, Leu/faircode/netguard/IPUtil;->access$100(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    and-long/2addr v0, v2

    .line 14
    iget v2, p0, Leu/faircode/netguard/IPUtil$CIDR;->prefix:I

    .line 15
    .line 16
    rsub-int/lit8 v2, v2, 0x20

    .line 17
    .line 18
    const-wide/16 v3, 0x1

    .line 19
    .line 20
    shl-long v5, v3, v2

    .line 21
    .line 22
    add-long/2addr v0, v5

    .line 23
    sub-long/2addr v0, v3

    .line 24
    invoke-static {v0, v1}, Leu/faircode/netguard/IPUtil;->access$200(J)Ljava/net/InetAddress;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getStart()Ljava/net/InetAddress;
    .locals 4

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/IPUtil$CIDR;->address:Ljava/net/InetAddress;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/IPUtil;->access$000(Ljava/net/InetAddress;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget v2, p0, Leu/faircode/netguard/IPUtil$CIDR;->prefix:I

    .line 8
    .line 9
    invoke-static {v2}, Leu/faircode/netguard/IPUtil;->access$100(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    and-long/2addr v0, v2

    .line 14
    invoke-static {v0, v1}, Leu/faircode/netguard/IPUtil;->access$200(J)Ljava/net/InetAddress;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Leu/faircode/netguard/IPUtil$CIDR;->address:Ljava/net/InetAddress;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "/"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Leu/faircode/netguard/IPUtil$CIDR;->prefix:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Leu/faircode/netguard/IPUtil$CIDR;->getStart()Ljava/net/InetAddress;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "..."

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Leu/faircode/netguard/IPUtil$CIDR;->getEnd()Ljava/net/InetAddress;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method
