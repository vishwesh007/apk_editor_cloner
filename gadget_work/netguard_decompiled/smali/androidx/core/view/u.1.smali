.class public final synthetic Landroidx/core/view/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# instance fields
.field public final synthetic a:Landroidx/core/view/w;

.field public final synthetic b:Landroidx/lifecycle/l;

.field public final synthetic c:Landroidx/core/view/y;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/w;Landroidx/lifecycle/l;Landroidx/core/view/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/u;->a:Landroidx/core/view/w;

    iput-object p2, p0, Landroidx/core/view/u;->b:Landroidx/lifecycle/l;

    iput-object p3, p0, Landroidx/core/view/u;->c:Landroidx/core/view/y;

    return-void
.end method


# virtual methods
.method public final d(Landroidx/lifecycle/s;Landroidx/lifecycle/k;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/core/view/u;->c:Landroidx/core/view/y;

    iget-object v0, p0, Landroidx/core/view/u;->a:Landroidx/core/view/w;

    iget-object v1, p0, Landroidx/core/view/u;->b:Landroidx/lifecycle/l;

    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/w;->a(Landroidx/core/view/w;Landroidx/lifecycle/l;Landroidx/core/view/y;Landroidx/lifecycle/k;)V

    return-void
.end method
