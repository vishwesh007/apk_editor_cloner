.class final Landroidx/core/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/j;


# instance fields
.field a:Landroid/content/ClipData;

.field b:I

.field c:I

.field d:Landroid/net/Uri;

.field e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/k;->a:Landroid/content/ClipData;

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/view/k;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/view/n;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/n;

    .line 2
    .line 3
    new-instance v1, Landroidx/core/view/m;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/core/view/m;-><init>(Landroidx/core/view/k;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/core/view/n;-><init>(Landroidx/core/view/l;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/k;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/k;->d:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/k;->c:I

    .line 2
    .line 3
    return-void
.end method
