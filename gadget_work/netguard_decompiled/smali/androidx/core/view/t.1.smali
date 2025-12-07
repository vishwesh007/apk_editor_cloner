.class public final synthetic Landroidx/core/view/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# instance fields
.field public final synthetic a:Landroidx/core/view/w;

.field public final synthetic b:Landroidx/core/view/y;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/w;Landroidx/core/view/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/t;->a:Landroidx/core/view/w;

    iput-object p2, p0, Landroidx/core/view/t;->b:Landroidx/core/view/y;

    return-void
.end method


# virtual methods
.method public final d(Landroidx/lifecycle/s;Landroidx/lifecycle/k;)V
    .locals 1

    .line 1
    sget-object p1, Landroidx/lifecycle/k;->ON_DESTROY:Landroidx/lifecycle/k;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/core/view/t;->a:Landroidx/core/view/w;

    .line 4
    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/core/view/t;->b:Landroidx/core/view/y;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/core/view/w;->i(Landroidx/core/view/y;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method
