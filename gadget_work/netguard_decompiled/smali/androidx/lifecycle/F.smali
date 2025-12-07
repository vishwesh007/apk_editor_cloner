.class final Landroidx/lifecycle/F;
.super Landroidx/lifecycle/e;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/G;


# direct methods
.method constructor <init>(Landroidx/lifecycle/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/F;->this$0:Landroidx/lifecycle/G;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1d

    .line 4
    .line 5
    if-ge p2, v0, :cond_0

    .line 6
    .line 7
    sget p2, Landroidx/lifecycle/I;->b:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroidx/lifecycle/I;

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/lifecycle/F;->this$0:Landroidx/lifecycle/G;

    .line 22
    .line 23
    iget-object p2, p2, Landroidx/lifecycle/G;->h:Landroidx/lifecycle/D;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroidx/lifecycle/I;->d(Landroidx/lifecycle/D;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/F;->this$0:Landroidx/lifecycle/G;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/lifecycle/G;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/lifecycle/E;

    .line 2
    .line 3
    invoke-direct {p2, p0}, Landroidx/lifecycle/E;-><init>(Landroidx/lifecycle/F;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroidx/appcompat/widget/a;->f(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/F;->this$0:Landroidx/lifecycle/G;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/lifecycle/G;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
