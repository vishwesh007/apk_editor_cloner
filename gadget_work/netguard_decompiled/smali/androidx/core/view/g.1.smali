.class public final Landroidx/core/view/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/core/view/j;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1f

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/core/view/i;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2}, Landroidx/core/view/i;-><init>(Landroid/content/ClipData;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/core/view/g;->a:Landroidx/core/view/j;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroidx/core/view/k;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Landroidx/core/view/k;-><init>(Landroid/content/ClipData;I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/core/view/g;->a:Landroidx/core/view/j;

    .line 24
    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/view/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/g;->a:Landroidx/core/view/j;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/core/view/j;->a()Landroidx/core/view/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/g;->a:Landroidx/core/view/j;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/core/view/j;->b(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/g;->a:Landroidx/core/view/j;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/core/view/j;->d(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/g;->a:Landroidx/core/view/j;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/core/view/j;->c(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
