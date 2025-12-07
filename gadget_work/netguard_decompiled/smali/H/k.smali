.class public final LH/k;
.super LX/o;
.source "SourceFile"


# instance fields
.field private d:LH/l;


# virtual methods
.method protected final d(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/engine/V;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/V;->b()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :goto_0
    return p1
.end method

.method protected final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, LE/e;

    .line 2
    .line 3
    check-cast p2, Lcom/bumptech/glide/load/engine/V;

    .line 4
    .line 5
    iget-object p1, p0, LH/k;->d:LH/l;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/bumptech/glide/load/engine/C;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/engine/C;->g(Lcom/bumptech/glide/load/engine/V;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final i(LH/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, LH/k;->d:LH/l;

    .line 2
    .line 3
    return-void
.end method

.method public final j(I)V
    .locals 4

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LX/o;->a()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v0, 0x14

    .line 10
    .line 11
    if-ge p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xf

    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, LX/o;->c()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, 0x2

    .line 22
    .line 23
    div-long/2addr v0, v2

    .line 24
    invoke-virtual {p0, v0, v1}, LX/o;->h(J)V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method
