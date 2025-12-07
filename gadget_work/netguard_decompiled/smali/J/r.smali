.class public final LJ/r;
.super LJ/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_0

    .line 4
    .line 5
    new-instance p1, LJ/q;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p1, v1}, LJ/q;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, p1}, LJ/b;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, LJ/q;

    .line 16
    .line 17
    invoke-direct {p1, v1}, LJ/q;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, p1}, LJ/b;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
