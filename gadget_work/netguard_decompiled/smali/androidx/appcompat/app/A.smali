.class final Landroidx/appcompat/app/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroidx/appcompat/app/U;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/U;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/A;->d:Landroidx/appcompat/app/U;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/A;->d:Landroidx/appcompat/app/U;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/app/U;->w:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    .line 7
    const/16 v3, 0x37

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/core/view/r0;->b()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/U;->h0()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 35
    .line 36
    invoke-static {v1}, Landroidx/core/view/f0;->a(Landroid/view/View;)Landroidx/core/view/r0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v2}, Landroidx/core/view/r0;->a(F)V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Landroidx/appcompat/app/U;->y:Landroidx/core/view/r0;

    .line 44
    .line 45
    new-instance v0, Landroidx/appcompat/app/z;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Landroidx/appcompat/app/z;-><init>(Landroidx/appcompat/app/A;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroidx/core/view/r0;->f(Landroidx/core/view/s0;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, v0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Landroidx/appcompat/app/U;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method
