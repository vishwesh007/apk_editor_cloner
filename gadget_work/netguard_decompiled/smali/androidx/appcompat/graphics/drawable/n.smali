.class public Landroidx/appcompat/graphics/drawable/n;
.super Landroidx/appcompat/graphics/drawable/k;
.source "SourceFile"


# instance fields
.field private n:Landroidx/appcompat/graphics/drawable/m;

.field private o:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/k;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/m;Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/k;-><init>()V

    .line 2
    new-instance v0, Landroidx/appcompat/graphics/drawable/m;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/m;-><init>(Landroidx/appcompat/graphics/drawable/m;Landroidx/appcompat/graphics/drawable/n;Landroid/content/res/Resources;)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/n;->f(Landroidx/appcompat/graphics/drawable/j;)V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/n;->onStateChange([I)Z

    return-void
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/k;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/n;->onStateChange([I)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method bridge synthetic b()Landroidx/appcompat/graphics/drawable/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/n;->h()Landroidx/appcompat/graphics/drawable/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method f(Landroidx/appcompat/graphics/drawable/j;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/k;->f(Landroidx/appcompat/graphics/drawable/j;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/m;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Landroidx/appcompat/graphics/drawable/m;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/n;->n:Landroidx/appcompat/graphics/drawable/m;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method h()Landroidx/appcompat/graphics/drawable/m;
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/graphics/drawable/m;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/n;->n:Landroidx/appcompat/graphics/drawable/m;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/m;-><init>(Landroidx/appcompat/graphics/drawable/m;Landroidx/appcompat/graphics/drawable/n;Landroid/content/res/Resources;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/n;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/k;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/n;->n:Landroidx/appcompat/graphics/drawable/m;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/m;->i()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/n;->o:Z

    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/k;->onStateChange([I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/n;->n:Landroidx/appcompat/graphics/drawable/m;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroidx/appcompat/graphics/drawable/m;->j([I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/n;->n:Landroidx/appcompat/graphics/drawable/m;

    .line 14
    .line 15
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroidx/appcompat/graphics/drawable/m;->j([I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/k;->e(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method
