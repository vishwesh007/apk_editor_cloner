.class public final LE/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/e;


# instance fields
.field private final b:LX/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LX/d;

    .line 5
    .line 6
    invoke-direct {v0}, LX/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LE/i;->b:LX/d;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LE/i;->b:LX/d;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroidx/collection/n;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/collection/n;->h(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, LE/h;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroidx/collection/n;->l(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v2, v1, p1}, LE/h;->e(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final c(LE/h;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LE/i;->b:LX/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/n;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Landroidx/collection/n;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, LE/h;->b()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    return-object p1
.end method

.method public final d(LE/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, LE/i;->b:LX/d;

    .line 2
    .line 3
    iget-object p1, p1, LE/i;->b:LX/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LX/d;->i(Landroidx/collection/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e(LE/h;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, LE/i;->b:LX/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LX/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LE/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LE/i;

    .line 6
    .line 7
    iget-object v0, p0, LE/i;->b:LX/d;

    .line 8
    .line 9
    iget-object p1, p1, LE/i;->b:LX/d;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/collection/n;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, LE/i;->b:LX/d;

    .line 2
    .line 3
    invoke-virtual {v0}, LX/d;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Options{values="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LE/i;->b:LX/d;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
