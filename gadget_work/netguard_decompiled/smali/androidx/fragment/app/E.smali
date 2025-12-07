.class public abstract Landroidx/fragment/app/E;
.super Landroidx/core/view/accessibility/n;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field final d:Landroidx/fragment/app/T;


# direct methods
.method constructor <init>(Landroidx/fragment/app/y;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/core/view/accessibility/n;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/fragment/app/U;

    .line 10
    .line 11
    invoke-direct {v1}, Landroidx/fragment/app/U;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/fragment/app/E;->d:Landroidx/fragment/app/T;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/fragment/app/E;->a:Landroid/app/Activity;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/fragment/app/E;->b:Landroid/content/Context;

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/fragment/app/E;->c:Landroid/os/Handler;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 26
    .line 27
    const-string v0, "context == null"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method


# virtual methods
.method final t()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/E;->a:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method final u()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/E;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method final v()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/E;->c:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract w()Landroidx/fragment/app/y;
.end method

.method public abstract x()Landroid/view/LayoutInflater;
.end method

.method public abstract y()V
.end method
