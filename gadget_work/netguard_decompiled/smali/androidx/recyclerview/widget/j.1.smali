.class final Landroidx/recyclerview/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/l;

    .line 2
    .line 3
    check-cast p2, Landroidx/recyclerview/widget/l;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    iget-object v4, p2, Landroidx/recyclerview/widget/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v4, 0x0

    .line 21
    :goto_1
    const/4 v5, -0x1

    .line 22
    if-eq v3, v4, :cond_2

    .line 23
    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget-boolean v0, p1, Landroidx/recyclerview/widget/l;->a:Z

    .line 28
    .line 29
    iget-boolean v3, p2, Landroidx/recyclerview/widget/l;->a:Z

    .line 30
    .line 31
    if-eq v0, v3, :cond_5

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    :cond_3
    const/4 v1, -0x1

    .line 36
    :cond_4
    :goto_2
    move v2, v1

    .line 37
    goto :goto_3

    .line 38
    :cond_5
    iget v0, p2, Landroidx/recyclerview/widget/l;->b:I

    .line 39
    .line 40
    iget v1, p1, Landroidx/recyclerview/widget/l;->b:I

    .line 41
    .line 42
    sub-int/2addr v0, v1

    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    move v2, v0

    .line 46
    goto :goto_3

    .line 47
    :cond_6
    iget p1, p1, Landroidx/recyclerview/widget/l;->c:I

    .line 48
    .line 49
    iget p2, p2, Landroidx/recyclerview/widget/l;->c:I

    .line 50
    .line 51
    sub-int/2addr p1, p2

    .line 52
    if-eqz p1, :cond_7

    .line 53
    .line 54
    move v2, p1

    .line 55
    :cond_7
    :goto_3
    return v2
.end method
