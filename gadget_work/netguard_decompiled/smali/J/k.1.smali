.class public final LJ/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/G;


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)LJ/F;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    new-instance p2, LJ/F;

    .line 4
    .line 5
    new-instance p3, LW/b;

    .line 6
    .line 7
    invoke-direct {p3, p1}, LW/b;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance p4, LJ/j;

    .line 11
    .line 12
    invoke-direct {p4, p1}, LJ/j;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p3, p4}, LJ/F;-><init>(LE/e;Lcom/bumptech/glide/load/data/e;)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method
