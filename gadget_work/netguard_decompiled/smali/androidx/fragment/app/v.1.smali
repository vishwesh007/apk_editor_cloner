.class final Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/c;


# instance fields
.field final synthetic a:Landroidx/fragment/app/y;


# direct methods
.method constructor <init>(Landroidx/fragment/app/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/y;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/y;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/y;->markFragmentsCreated()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v1, Landroidx/fragment/app/y;->mFragmentLifecycleRegistry:Landroidx/lifecycle/u;

    .line 12
    .line 13
    sget-object v3, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroidx/lifecycle/u;->f(Landroidx/lifecycle/k;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Landroidx/fragment/app/y;->mFragments:Landroidx/fragment/app/C;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/fragment/app/C;->x()Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v2, "android:support:fragments"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v0
.end method
