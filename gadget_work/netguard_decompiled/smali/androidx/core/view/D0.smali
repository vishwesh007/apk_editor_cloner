.class Landroidx/core/view/D0;
.super Landroidx/core/view/C0;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroidx/core/view/I0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/C0;-><init>(Landroidx/core/view/I0;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a()Landroidx/core/view/I0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/B0;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0}, LL/c;->h(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroidx/core/view/I0;->p(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/I0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method e()Landroidx/core/view/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/B0;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0}, LL/a;->g(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/core/view/o;->a(Landroid/view/DisplayCutout;)Landroidx/core/view/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/core/view/D0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/core/view/D0;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/core/view/B0;->c:Landroid/view/WindowInsets;

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/core/view/B0;->c:Landroid/view/WindowInsets;

    .line 16
    .line 17
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/core/view/B0;->e:Landroidx/core/graphics/c;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/core/view/B0;->e:Landroidx/core/graphics/c;

    .line 26
    .line 27
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/B0;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
