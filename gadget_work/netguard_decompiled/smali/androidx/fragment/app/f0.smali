.class final Landroidx/fragment/app/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;
.implements Lv/f;
.implements Landroidx/lifecycle/Z;


# instance fields
.field private final a:Landroidx/lifecycle/Y;

.field private b:Landroidx/lifecycle/u;

.field private c:Lv/e;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/f0;->b:Landroidx/lifecycle/u;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/fragment/app/f0;->c:Lv/e;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/f0;->a:Landroidx/lifecycle/Y;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f0;->b:Landroidx/lifecycle/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/lifecycle/u;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/s;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/fragment/app/f0;->b:Landroidx/lifecycle/u;

    .line 11
    .line 12
    new-instance v0, Lv/e;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lv/e;-><init>(Lv/f;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/fragment/app/f0;->c:Lv/e;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f0;->b:Landroidx/lifecycle/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method final c(Landroidx/lifecycle/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/f0;->b:Landroidx/lifecycle/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Lq/c;
    .locals 1

    .line 1
    sget-object v0, Lq/a;->b:Lq/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f0;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/f0;->b:Landroidx/lifecycle/u;

    .line 5
    .line 6
    return-object v0
.end method

.method public final getSavedStateRegistry()Lv/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f0;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/f0;->c:Lv/e;

    .line 5
    .line 6
    invoke-virtual {v0}, Lv/e;->a()Lv/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/Y;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f0;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/f0;->a:Landroidx/lifecycle/Y;

    .line 5
    .line 6
    return-object v0
.end method
