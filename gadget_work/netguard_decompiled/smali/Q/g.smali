.class public final LQ/g;
.super LO/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(LQ/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LO/e;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, LO/e;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast v0, LQ/f;

    .line 4
    .line 5
    invoke-virtual {v0}, LQ/f;->c()Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, LO/e;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast v0, LQ/f;

    .line 4
    .line 5
    invoke-virtual {v0}, LQ/f;->d()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, LQ/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, LO/e;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LQ/f;

    .line 5
    .line 6
    invoke-virtual {v1}, LQ/f;->stop()V

    .line 7
    .line 8
    .line 9
    check-cast v0, LQ/f;

    .line 10
    .line 11
    invoke-virtual {v0}, LQ/f;->e()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
