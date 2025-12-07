.class public final Landroidx/appcompat/view/menu/N;
.super Landroidx/appcompat/view/menu/q;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private A:Landroidx/appcompat/view/menu/t;

.field private z:Landroidx/appcompat/view/menu/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/q;Landroidx/appcompat/view/menu/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/q;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/appcompat/view/menu/N;->A:Landroidx/appcompat/view/menu/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final C(Landroidx/appcompat/view/menu/o;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final O()Landroidx/appcompat/view/menu/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Landroidx/appcompat/view/menu/t;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q;->f(Landroidx/appcompat/view/menu/t;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method final g(Landroidx/appcompat/view/menu/q;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/q;->g(Landroidx/appcompat/view/menu/q;Landroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/q;->g(Landroidx/appcompat/view/menu/q;Landroid/view/MenuItem;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->A:Landroidx/appcompat/view/menu/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroidx/appcompat/view/menu/t;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q;->h(Landroidx/appcompat/view/menu/t;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->A:Landroidx/appcompat/view/menu/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/t;->getItemId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_1
    const-string v1, "android:menu:actionviewstates:"

    .line 16
    .line 17
    invoke-static {v1, v0}, LB/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final q()Landroidx/appcompat/view/menu/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->q()Landroidx/appcompat/view/menu/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->s()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setGroupDividerEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q;->setGroupDividerEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q;->F(I)V

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q;->G(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q;->I(I)V

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q;->J(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q;->K(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->A:Landroidx/appcompat/view/menu/t;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/t;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->A:Landroidx/appcompat/view/menu/t;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/t;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/q;->setQwertyMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/N;->z:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->u()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
