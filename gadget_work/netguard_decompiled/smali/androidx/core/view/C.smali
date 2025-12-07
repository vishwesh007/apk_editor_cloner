.class public final Landroidx/core/view/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/view/C;->a:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/view/C;->b:I

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final b(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Landroidx/core/view/C;->b:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput p1, p0, Landroidx/core/view/C;->a:I

    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iput v1, p0, Landroidx/core/view/C;->b:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput v1, p0, Landroidx/core/view/C;->a:I

    .line 9
    .line 10
    :goto_0
    return-void
.end method
