.class final Landroidx/core/view/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/lifecycle/m;

.field private b:Landroidx/lifecycle/q;


# direct methods
.method constructor <init>(Landroidx/lifecycle/m;Landroidx/lifecycle/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/v;->a:Landroidx/lifecycle/m;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/view/v;->b:Landroidx/lifecycle/q;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/r;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/v;->a:Landroidx/lifecycle/m;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/v;->b:Landroidx/lifecycle/q;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->c(Landroidx/lifecycle/r;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/core/view/v;->b:Landroidx/lifecycle/q;

    .line 10
    .line 11
    return-void
.end method
