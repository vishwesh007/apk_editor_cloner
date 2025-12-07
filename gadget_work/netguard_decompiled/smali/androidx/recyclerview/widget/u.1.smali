.class final Landroidx/recyclerview/widget/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/f0;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/u;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/u;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/E;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/E;->x(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/u;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroidx/recyclerview/widget/E;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/E;->M()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    check-cast v0, Landroidx/recyclerview/widget/E;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/E;->G()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr v1, v0

    .line 17
    return v1
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/u;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/E;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/E;->F()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final d(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/F;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/u;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroidx/recyclerview/widget/E;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/recyclerview/widget/F;

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/recyclerview/widget/F;->b:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 27
    .line 28
    add-int/2addr v1, p1

    .line 29
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 30
    .line 31
    add-int/2addr v1, p1

    .line 32
    return v1
.end method

.method public final e(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/F;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/u;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroidx/recyclerview/widget/E;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/recyclerview/widget/F;

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/recyclerview/widget/F;->b:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    sub-int/2addr v1, p1

    .line 29
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 30
    .line 31
    sub-int/2addr v1, p1

    .line 32
    return v1
.end method

.method public final f(Landroidx/recyclerview/widget/P;Lu/n;Lu/n;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/u;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/P;->setIsRecyclable(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->L:Lu/i;

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget v4, p2, Lu/n;->a:I

    .line 20
    .line 21
    iget v6, p3, Lu/n;->a:I

    .line 22
    .line 23
    if-ne v4, v6, :cond_0

    .line 24
    .line 25
    iget v1, p2, Lu/n;->b:I

    .line 26
    .line 27
    iget v3, p3, Lu/n;->b:I

    .line 28
    .line 29
    if-eq v1, v3, :cond_1

    .line 30
    .line 31
    :cond_0
    iget v5, p2, Lu/n;->b:I

    .line 32
    .line 33
    iget v7, p3, Lu/n;->b:I

    .line 34
    .line 35
    move-object v3, p1

    .line 36
    invoke-virtual/range {v2 .. v7}, Lu/i;->l(Landroidx/recyclerview/widget/P;IIII)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v2, p1}, Lu/i;->k(Landroidx/recyclerview/widget/P;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    :goto_0
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->Z()V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method
