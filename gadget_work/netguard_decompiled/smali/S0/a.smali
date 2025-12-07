.class public LS0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_1

    .line 5
    .line 6
    const/high16 v0, -0x80000000

    .line 7
    .line 8
    if-eq p3, v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, LS0/a;->d:I

    .line 11
    .line 12
    invoke-static {p1, p2, p3}, Lt0/a;->v(III)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, LS0/a;->e:I

    .line 17
    .line 18
    iput p3, p0, LS0/a;->f:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p2, "Step must be non-zero."

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method


# virtual methods
.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, LS0/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, LS0/a;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()LS0/b;
    .locals 4

    .line 1
    new-instance v0, LS0/b;

    .line 2
    .line 3
    iget v1, p0, LS0/a;->f:I

    .line 4
    .line 5
    iget v2, p0, LS0/a;->d:I

    .line 6
    .line 7
    iget v3, p0, LS0/a;->e:I

    .line 8
    .line 9
    invoke-direct {v0, v2, v3, v1}, LS0/b;-><init>(III)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, LS0/a;->g()LS0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
