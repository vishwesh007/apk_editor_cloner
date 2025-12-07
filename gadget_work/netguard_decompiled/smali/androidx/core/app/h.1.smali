.class final Landroidx/core/app/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroid/app/Application;

.field final synthetic e:Landroidx/core/app/j;


# direct methods
.method constructor <init>(Landroid/app/Application;Landroidx/core/app/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/h;->d:Landroid/app/Application;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/core/app/h;->e:Landroidx/core/app/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/h;->d:Landroid/app/Application;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/app/h;->e:Landroidx/core/app/j;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
