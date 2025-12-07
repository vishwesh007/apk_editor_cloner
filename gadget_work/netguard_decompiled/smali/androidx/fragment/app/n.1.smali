.class final Landroidx/fragment/app/n;
.super Landroidx/core/view/accessibility/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroidx/core/view/accessibility/n;

.field final synthetic b:Landroidx/fragment/app/o;


# direct methods
.method constructor <init>(Landroidx/fragment/app/o;Landroidx/core/view/accessibility/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n;->b:Landroidx/fragment/app/o;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/n;->a:Landroidx/core/view/accessibility/n;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/view/accessibility/n;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final l(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/core/view/accessibility/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/accessibility/n;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/n;->l(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->b:Landroidx/fragment/app/o;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/fragment/app/o;->h0(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Landroidx/core/view/accessibility/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/accessibility/n;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/n;->b:Landroidx/fragment/app/o;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/o;->i0()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method
