.class final La0/p;
.super La0/x;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:La0/w;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private g:La0/E;


# virtual methods
.method public final C()La0/x;
    .locals 1

    .line 1
    sget-object v0, La0/E;->d:La0/E;

    .line 2
    .line 3
    iput-object v0, p0, La0/p;->g:La0/E;

    .line 4
    .line 5
    return-object p0
.end method

.method public final D(J)La0/x;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, La0/p;->a:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public final E(J)La0/x;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, La0/p;->b:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public final d()La0/z;
    .locals 12

    .line 1
    iget-object v0, p0, La0/p;->a:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " requestTimeMs"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, La0/p;->b:Ljava/lang/Long;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " requestUptimeMs"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    new-instance v0, La0/q;

    .line 27
    .line 28
    iget-object v1, p0, La0/p;->a:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    iget-object v1, p0, La0/p;->b:Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    iget-object v7, p0, La0/p;->c:La0/w;

    .line 41
    .line 42
    iget-object v8, p0, La0/p;->d:Ljava/lang/Integer;

    .line 43
    .line 44
    iget-object v9, p0, La0/p;->e:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v10, p0, La0/p;->f:Ljava/util/List;

    .line 47
    .line 48
    iget-object v11, p0, La0/p;->g:La0/E;

    .line 49
    .line 50
    move-object v2, v0

    .line 51
    invoke-direct/range {v2 .. v11}, La0/q;-><init>(JJLa0/w;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;La0/E;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v2, "Missing required properties:"

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public final h(La0/w;)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/p;->c:La0/w;

    .line 2
    .line 3
    return-object p0
.end method

.method public final r(Ljava/util/ArrayList;)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/p;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method final s(Ljava/lang/Integer;)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/p;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method final t(Ljava/lang/String;)La0/x;
    .locals 0

    .line 1
    iput-object p1, p0, La0/p;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
