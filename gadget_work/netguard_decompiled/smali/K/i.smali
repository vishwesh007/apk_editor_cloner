.class public final LK/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/G;


# instance fields
.field private final a:LJ/G;


# direct methods
.method public constructor <init>(LJ/G;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK/i;->a:LJ/G;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)LJ/F;
    .locals 1

    .line 1
    check-cast p1, Ljava/net/URL;

    .line 2
    .line 3
    new-instance v0, LJ/u;

    .line 4
    .line 5
    invoke-direct {v0, p1}, LJ/u;-><init>(Ljava/net/URL;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LK/i;->a:LJ/G;

    .line 9
    .line 10
    invoke-interface {p1, v0, p2, p3, p4}, LJ/G;->a(Ljava/lang/Object;IILE/i;)LJ/F;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/net/URL;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method
