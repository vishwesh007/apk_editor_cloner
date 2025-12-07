.class public abstract Lb0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb0/r;->f()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb0/r;->f()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "tz-offset"

    .line 10
    .line 11
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb0/r;->f()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract d()Lb0/s;
.end method

.method public abstract e()Lb0/z;
.end method

.method protected abstract f()Ljava/util/Map;
.end method

.method public abstract g(Ljava/lang/String;)Lb0/r;
.end method

.method public abstract h(Ljava/lang/Integer;)Lb0/r;
.end method

.method public abstract i(Lb0/q;)Lb0/r;
.end method

.method public abstract j(J)Lb0/r;
.end method

.method public abstract k([B)Lb0/r;
.end method

.method public abstract l(LZ/d;)Lb0/r;
.end method

.method public abstract m(Ljava/lang/String;)Lb0/r;
.end method

.method public abstract n(J)Lb0/r;
.end method
