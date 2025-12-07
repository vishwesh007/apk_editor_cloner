.class final Landroidx/fragment/app/x;
.super Landroidx/fragment/app/E;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Z;
.implements Landroidx/activity/t;
.implements Landroidx/activity/result/j;
.implements Landroidx/fragment/app/Y;


# instance fields
.field final synthetic e:Landroidx/fragment/app/y;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/fragment/app/E;-><init>(Landroidx/fragment/app/y;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->onAttachFragment(Landroidx/fragment/app/u;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/activity/k;->getActivityResultRegistry()Landroidx/activity/result/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/y;->mFragmentLifecycleRegistry:Landroidx/lifecycle/u;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/s;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/activity/k;->getOnBackPressedDispatcher()Landroidx/activity/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/Y;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/activity/k;->getViewModelStore()Landroidx/lifecycle/Y;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final l(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final w()Landroidx/fragment/app/y;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->supportInvalidateOptionsMenu()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
