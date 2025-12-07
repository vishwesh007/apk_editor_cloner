.class public final LP/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/j;


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)Lcom/bumptech/glide/load/engine/V;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    new-instance p2, LP/b;

    .line 4
    .line 5
    invoke-direct {p2, p1}, LP/b;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final bridge synthetic b(Ljava/lang/Object;LE/i;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method
