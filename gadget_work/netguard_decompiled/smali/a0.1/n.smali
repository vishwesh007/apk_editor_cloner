.class final La0/n;
.super La0/x;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Long;

.field private d:[B

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Long;

.field private g:La0/D;


# virtual methods
.method public final I(J)La0/x;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, La0/n;->f:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method final J([B)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/n;->d:[B

    .line 2
    .line 3
    return-object p0
.end method

.method final K(Ljava/lang/String;)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/n;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()La0/y;
    .locals 13

    .line 1
    iget-object v0, p0, La0/n;->a:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " eventTimeMs"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, La0/n;->c:Ljava/lang/Long;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " eventUptimeMs"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    iget-object v1, p0, La0/n;->f:Ljava/lang/Long;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    const-string v1, " timezoneOffsetSeconds"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    new-instance v0, La0/o;

    .line 37
    .line 38
    iget-object v1, p0, La0/n;->a:Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    iget-object v5, p0, La0/n;->b:Ljava/lang/Integer;

    .line 45
    .line 46
    iget-object v1, p0, La0/n;->c:Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    iget-object v8, p0, La0/n;->d:[B

    .line 53
    .line 54
    iget-object v9, p0, La0/n;->e:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, p0, La0/n;->f:Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v10

    .line 62
    iget-object v12, p0, La0/n;->g:La0/D;

    .line 63
    .line 64
    move-object v2, v0

    .line 65
    invoke-direct/range {v2 .. v12}, La0/o;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLa0/D;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v2, "Missing required properties:"

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1
.end method

.method public final l(Ljava/lang/Integer;)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/n;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final m(J)La0/x;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, La0/n;->a:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public final n(J)La0/x;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, La0/n;->c:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public final y(La0/D;)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/n;->g:La0/D;

    .line 2
    .line 3
    return-object p0
.end method
