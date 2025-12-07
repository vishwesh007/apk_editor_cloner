.class public final LJ/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/G;


# instance fields
.field private final a:LJ/l;


# direct methods
.method public constructor <init>(LJ/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ/p;->a:LJ/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)LJ/F;
    .locals 1

    .line 1
    new-instance p2, LJ/F;

    .line 2
    .line 3
    new-instance p3, LW/b;

    .line 4
    .line 5
    invoke-direct {p3, p1}, LW/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p4, LJ/m;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, LJ/p;->a:LJ/l;

    .line 15
    .line 16
    invoke-direct {p4, p1, v0}, LJ/m;-><init>(Ljava/lang/String;LJ/l;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p3, p4}, LJ/F;-><init>(LE/e;Lcom/bumptech/glide/load/data/e;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "data:image"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
