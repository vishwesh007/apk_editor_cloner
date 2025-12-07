.class final Landroidx/appcompat/view/menu/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroidx/appcompat/view/menu/j;

.field final synthetic e:Landroid/view/MenuItem;

.field final synthetic f:Landroidx/appcompat/view/menu/q;

.field final synthetic g:Landroidx/appcompat/view/menu/i;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/j;Landroid/view/MenuItem;Landroidx/appcompat/view/menu/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->g:Landroidx/appcompat/view/menu/i;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/view/menu/h;->d:Landroidx/appcompat/view/menu/j;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/appcompat/view/menu/h;->e:Landroid/view/MenuItem;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/appcompat/view/menu/h;->f:Landroidx/appcompat/view/menu/q;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->d:Landroidx/appcompat/view/menu/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->g:Landroidx/appcompat/view/menu/i;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/k;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    iput-boolean v3, v2, Landroidx/appcompat/view/menu/k;->A:Z

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/appcompat/view/menu/j;->b:Landroidx/appcompat/view/menu/q;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/q;->e(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v1, Landroidx/appcompat/view/menu/i;->a:Landroidx/appcompat/view/menu/k;

    .line 19
    .line 20
    iput-boolean v2, v0, Landroidx/appcompat/view/menu/k;->A:Z

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->e:Landroid/view/MenuItem;

    .line 23
    .line 24
    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->f:Landroidx/appcompat/view/menu/q;

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    invoke-virtual {v2, v0, v1, v3}, Landroidx/appcompat/view/menu/q;->y(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/F;I)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
