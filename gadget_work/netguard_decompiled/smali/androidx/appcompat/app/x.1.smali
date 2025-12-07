.class final Landroidx/appcompat/app/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/D;
.implements Landroidx/appcompat/view/menu/E;
.implements Landroidx/core/view/u0;


# instance fields
.field public final synthetic a:I

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/app/x;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/app/x;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/x;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/app/h0;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/app/h0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b(Landroid/view/View;Landroidx/core/view/I0;)Landroidx/core/view/I0;
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroidx/core/view/I0;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/app/x;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/appcompat/app/U;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Landroidx/appcompat/app/U;->l0(Landroidx/core/view/I0;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/core/view/I0;->f()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p2}, Landroidx/core/view/I0;->g()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p2}, Landroidx/core/view/I0;->e()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    new-instance v4, Landroidx/core/view/w0;

    .line 28
    .line 29
    invoke-direct {v4, p2}, Landroidx/core/view/w0;-><init>(Landroidx/core/view/I0;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/c;->a(IIII)Landroidx/core/graphics/c;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {v4, p2}, Landroidx/core/view/w0;->g(Landroidx/core/graphics/c;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Landroidx/core/view/w0;->e()Landroidx/core/view/I0;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/view/f0;->D(Landroid/view/View;Landroidx/core/view/I0;)Landroidx/core/view/I0;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/q;Z)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/appcompat/app/x;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/x;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Landroidx/appcompat/app/U;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/U;->L(Landroidx/appcompat/view/menu/q;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->q()Landroidx/appcompat/view/menu/q;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    :goto_1
    check-cast v1, Landroidx/appcompat/app/U;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/U;->T(Landroidx/appcompat/view/menu/q;)Landroidx/appcompat/app/T;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    iget p2, p1, Landroidx/appcompat/app/T;->a:I

    .line 39
    .line 40
    invoke-virtual {v1, p2, p1, v0}, Landroidx/appcompat/app/U;->K(ILandroidx/appcompat/app/T;Landroidx/appcompat/view/menu/q;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/U;->M(Landroidx/appcompat/app/T;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v1, p1, p2}, Landroidx/appcompat/app/U;->M(Landroidx/appcompat/app/T;Z)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_2
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onOpenSubMenu(Landroidx/appcompat/view/menu/q;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/appcompat/app/x;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x6c

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/appcompat/app/x;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    check-cast v3, Landroidx/appcompat/app/U;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroidx/appcompat/app/U;->W()Landroid/view/Window$Callback;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return v1

    .line 24
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->q()Landroidx/appcompat/view/menu/q;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    check-cast v3, Landroidx/appcompat/app/U;

    .line 31
    .line 32
    iget-boolean v0, v3, Landroidx/appcompat/app/U;->G:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Landroidx/appcompat/app/U;->W()Landroid/view/Window$Callback;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-boolean v3, v3, Landroidx/appcompat/app/U;->R:Z

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    return v1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
