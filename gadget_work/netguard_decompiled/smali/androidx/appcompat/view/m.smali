.class final Landroidx/appcompat/view/m;
.super Landroidx/core/view/t0;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field final synthetic c:Landroidx/appcompat/view/n;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/m;->c:Landroidx/appcompat/view/n;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/view/t0;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/view/m;->a:Z

    .line 8
    .line 9
    iput p1, p0, Landroidx/appcompat/view/m;->b:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Landroidx/appcompat/view/m;->b:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Landroidx/appcompat/view/m;->b:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/m;->c:Landroidx/appcompat/view/n;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/appcompat/view/n;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    iget-object p1, v0, Landroidx/appcompat/view/n;->d:Landroidx/core/view/s0;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-interface {p1, v1}, Landroidx/core/view/s0;->onAnimationEnd(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Landroidx/appcompat/view/m;->b:I

    .line 27
    .line 28
    iput-boolean p1, p0, Landroidx/appcompat/view/m;->a:Z

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/appcompat/view/n;->b()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/view/m;->a:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/view/m;->a:Z

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/appcompat/view/m;->c:Landroidx/appcompat/view/n;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/appcompat/view/n;->d:Landroidx/core/view/s0;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Landroidx/core/view/s0;->onAnimationStart(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
