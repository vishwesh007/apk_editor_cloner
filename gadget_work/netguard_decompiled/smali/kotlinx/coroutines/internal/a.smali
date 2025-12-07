.class public final Lkotlinx/coroutines/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v0, p0, Lkotlinx/coroutines/internal/a;->a:[Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/a;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/internal/a;->c:I

    .line 4
    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    array-length p1, v0

    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    and-int/2addr p1, v1

    .line 13
    iput p1, p0, Lkotlinx/coroutines/internal/a;->c:I

    .line 14
    .line 15
    iget v3, p0, Lkotlinx/coroutines/internal/a;->b:I

    .line 16
    .line 17
    if-ne p1, v3, :cond_0

    .line 18
    .line 19
    array-length p1, v0

    .line 20
    shl-int/lit8 v1, p1, 0x1

    .line 21
    .line 22
    new-array v10, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/16 v5, 0xa

    .line 27
    .line 28
    move-object v1, v10

    .line 29
    invoke-static/range {v0 .. v5}, LH0/a;->b([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 30
    .line 31
    .line 32
    iget-object v4, p0, Lkotlinx/coroutines/internal/a;->a:[Ljava/lang/Object;

    .line 33
    .line 34
    array-length v0, v4

    .line 35
    iget v8, p0, Lkotlinx/coroutines/internal/a;->b:I

    .line 36
    .line 37
    sub-int v6, v0, v8

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v9, 0x4

    .line 41
    move-object v5, v10

    .line 42
    invoke-static/range {v4 .. v9}, LH0/a;->b([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 43
    .line 44
    .line 45
    iput-object v10, p0, Lkotlinx/coroutines/internal/a;->a:[Ljava/lang/Object;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lkotlinx/coroutines/internal/a;->b:I

    .line 49
    .line 50
    iput p1, p0, Lkotlinx/coroutines/internal/a;->c:I

    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/internal/a;->b:I

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/internal/a;->c:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lkotlinx/coroutines/internal/a;->b:I

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/internal/a;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/a;->a:[Ljava/lang/Object;

    .line 10
    .line 11
    aget-object v3, v1, v0

    .line 12
    .line 13
    aput-object v2, v1, v0

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    array-length v1, v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    and-int/2addr v0, v1

    .line 21
    iput v0, p0, Lkotlinx/coroutines/internal/a;->b:I

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 27
    .line 28
    const-string v1, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method
