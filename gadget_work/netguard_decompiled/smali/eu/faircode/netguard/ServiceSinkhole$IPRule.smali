.class Leu/faircode/netguard/ServiceSinkhole$IPRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private block:Z

.field private key:Leu/faircode/netguard/ServiceSinkhole$IPKey;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;

.field private time:J

.field private ttl:J


# direct methods
.method public constructor <init>(Leu/faircode/netguard/ServiceSinkhole;Leu/faircode/netguard/ServiceSinkhole$IPKey;Ljava/lang/String;ZJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->key:Leu/faircode/netguard/ServiceSinkhole$IPKey;

    .line 7
    .line 8
    iput-object p3, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->name:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->block:Z

    .line 11
    .line 12
    iput-wide p5, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->time:J

    .line 13
    .line 14
    iput-wide p7, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->ttl:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Leu/faircode/netguard/ServiceSinkhole$IPRule;

    .line 2
    .line 3
    iget-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->block:Z

    .line 4
    .line 5
    iget-boolean v1, p1, Leu/faircode/netguard/ServiceSinkhole$IPRule;->block:Z

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->time:J

    .line 10
    .line 11
    iget-wide v2, p1, Leu/faircode/netguard/ServiceSinkhole$IPRule;->time:J

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->ttl:J

    .line 18
    .line 19
    iget-wide v2, p1, Leu/faircode/netguard/ServiceSinkhole$IPRule;->ttl:J

    .line 20
    .line 21
    cmp-long p1, v0, v2

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method public isBlocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->block:Z

    .line 2
    .line 3
    return v0
.end method

.method public isExpired()Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->time:J

    .line 6
    .line 7
    iget-wide v4, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->ttl:J

    .line 8
    .line 9
    const-wide/16 v6, 0x2

    .line 10
    .line 11
    mul-long v4, v4, v6

    .line 12
    .line 13
    add-long/2addr v4, v2

    .line 14
    cmp-long v2, v0, v4

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
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
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->key:Leu/faircode/netguard/ServiceSinkhole$IPKey;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->name:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public updateExpires(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->time:J

    .line 2
    .line 3
    iput-wide p3, p0, Leu/faircode/netguard/ServiceSinkhole$IPRule;->ttl:J

    .line 4
    .line 5
    return-void
.end method
