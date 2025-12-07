.class public abstract LQ0/a;
.super LQ0/e;
.source "SourceFile"


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LQ0/a;->c()Ljava/util/Random;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public abstract c()Ljava/util/Random;
.end method
