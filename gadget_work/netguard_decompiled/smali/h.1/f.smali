.class abstract Lh/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lh/g;


# instance fields
.field d:Lh/d;

.field e:Lh/d;


# direct methods
.method constructor <init>(Lh/d;Lh/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lh/f;->d:Lh/d;

    .line 5
    .line 6
    iput-object p1, p0, Lh/f;->e:Lh/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lh/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh/f;->d:Lh/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lh/f;->e:Lh/d;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Lh/f;->e:Lh/d;

    .line 11
    .line 12
    iput-object v1, p0, Lh/f;->d:Lh/d;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lh/f;->d:Lh/d;

    .line 15
    .line 16
    if-ne v0, p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lh/f;->b(Lh/d;)Lh/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lh/f;->d:Lh/d;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lh/f;->e:Lh/d;

    .line 25
    .line 26
    if-ne v0, p1, :cond_4

    .line 27
    .line 28
    iget-object p1, p0, Lh/f;->d:Lh/d;

    .line 29
    .line 30
    if-eq v0, p1, :cond_3

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0, v0}, Lh/f;->c(Lh/d;)Lh/d;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_3
    :goto_0
    iput-object v1, p0, Lh/f;->e:Lh/d;

    .line 40
    .line 41
    :cond_4
    return-void
.end method

.method abstract b(Lh/d;)Lh/d;
.end method

.method abstract c(Lh/d;)Lh/d;
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh/f;->e:Lh/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lh/f;->e:Lh/d;

    .line 2
    .line 3
    iget-object v1, p0, Lh/f;->d:Lh/d;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Lh/f;->c(Lh/d;)Lh/d;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 16
    :goto_1
    iput-object v1, p0, Lh/f;->e:Lh/d;

    .line 17
    .line 18
    return-object v0
.end method
