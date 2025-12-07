.class public final LI0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LI0/l;LI0/l;)LI0/l;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, LI0/m;->d:LI0/m;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, LI0/k;->e:LI0/k;

    .line 12
    .line 13
    invoke-interface {p1, p0, v0}, LI0/l;->fold(Ljava/lang/Object;LO0/p;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, LI0/l;

    .line 18
    .line 19
    :goto_0
    return-object p0
.end method
