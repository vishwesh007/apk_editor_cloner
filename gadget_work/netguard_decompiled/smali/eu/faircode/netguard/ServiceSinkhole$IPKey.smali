.class Leu/faircode/netguard/ServiceSinkhole$IPKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dport:I

.field protocol:I

.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;

.field uid:I

.field version:I


# direct methods
.method public constructor <init>(Leu/faircode/netguard/ServiceSinkhole;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->version:I

    .line 7
    .line 8
    iput p3, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->protocol:I

    .line 9
    .line 10
    const/4 p1, 0x6

    .line 11
    if-eq p3, p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0x11

    .line 14
    .line 15
    if-ne p3, p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p4, 0x0

    .line 19
    :cond_1
    :goto_0
    iput p4, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->dport:I

    .line 20
    .line 21
    iput p5, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->uid:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Leu/faircode/netguard/ServiceSinkhole$IPKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Leu/faircode/netguard/ServiceSinkhole$IPKey;

    .line 8
    .line 9
    iget v0, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->version:I

    .line 10
    .line 11
    iget v2, p1, Leu/faircode/netguard/ServiceSinkhole$IPKey;->version:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->protocol:I

    .line 16
    .line 17
    iget v2, p1, Leu/faircode/netguard/ServiceSinkhole$IPKey;->protocol:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget v0, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->dport:I

    .line 22
    .line 23
    iget v2, p1, Leu/faircode/netguard/ServiceSinkhole$IPKey;->dport:I

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget v0, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->uid:I

    .line 28
    .line 29
    iget p1, p1, Leu/faircode/netguard/ServiceSinkhole$IPKey;->uid:I

    .line 30
    .line 31
    if-ne v0, p1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->version:I

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x28

    .line 4
    .line 5
    iget v1, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->protocol:I

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x20

    .line 8
    .line 9
    or-int/2addr v0, v1

    .line 10
    iget v1, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->dport:I

    .line 11
    .line 12
    shl-int/lit8 v1, v1, 0x10

    .line 13
    .line 14
    or-int/2addr v0, v1

    .line 15
    iget v1, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->uid:I

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->version:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " p"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->protocol:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " port="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->dport:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " uid="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Leu/faircode/netguard/ServiceSinkhole$IPKey;->uid:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
