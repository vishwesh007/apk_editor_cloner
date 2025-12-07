.class public final Landroidx/appcompat/view/menu/n;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Landroidx/appcompat/view/menu/q;

.field private b:I

.field private c:Z

.field private final d:Z

.field private final e:Landroid/view/LayoutInflater;

.field private final f:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/q;Landroid/view/LayoutInflater;ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/appcompat/view/menu/n;->b:I

    .line 6
    .line 7
    iput-boolean p3, p0, Landroidx/appcompat/view/menu/n;->d:Z

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/appcompat/view/menu/n;->e:Landroid/view/LayoutInflater;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/appcompat/view/menu/n;->a:Landroidx/appcompat/view/menu/q;

    .line 12
    .line 13
    iput p4, p0, Landroidx/appcompat/view/menu/n;->f:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/n;->a()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/n;->a:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->o()Landroidx/appcompat/view/menu/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/appcompat/view/menu/n;->a:Landroidx/appcompat/view/menu/q;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q;->p()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroidx/appcompat/view/menu/t;

    .line 27
    .line 28
    if-ne v4, v0, :cond_0

    .line 29
    .line 30
    iput v3, p0, Landroidx/appcompat/view/menu/n;->b:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, -0x1

    .line 37
    iput v0, p0, Landroidx/appcompat/view/menu/n;->b:I

    .line 38
    .line 39
    return-void
.end method

.method public final b()Landroidx/appcompat/view/menu/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/n;->a:Landroidx/appcompat/view/menu/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(I)Landroidx/appcompat/view/menu/t;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/n;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/n;->a:Landroidx/appcompat/view/menu/q;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->p()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/n;->a:Landroidx/appcompat/view/menu/q;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->r()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    iget v1, p0, Landroidx/appcompat/view/menu/n;->b:I

    .line 19
    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    if-lt p1, v1, :cond_1

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/appcompat/view/menu/t;

    .line 31
    .line 32
    return-object p1
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/n;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public final getCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/n;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/n;->a:Landroidx/appcompat/view/menu/q;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->p()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/n;->a:Landroidx/appcompat/view/menu/q;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->r()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    iget v1, p0, Landroidx/appcompat/view/menu/n;->b:I

    .line 19
    .line 20
    if-gez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/n;->c(I)Landroidx/appcompat/view/menu/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Landroidx/appcompat/view/menu/n;->e:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    iget v1, p0, Landroidx/appcompat/view/menu/n;->f:I

    .line 7
    .line 8
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/n;->c(I)Landroidx/appcompat/view/menu/t;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/t;->getGroupId()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    add-int/lit8 v1, p1, -0x1

    .line 21
    .line 22
    if-ltz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/n;->c(I)Landroidx/appcompat/view/menu/t;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/t;->getGroupId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v1, p3

    .line 34
    :goto_0
    move-object v2, p2

    .line 35
    check-cast v2, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/appcompat/view/menu/n;->a:Landroidx/appcompat/view/menu/q;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/q;->s()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    if-eq p3, v1, :cond_2

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    :cond_2
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->f(Z)V

    .line 49
    .line 50
    .line 51
    move-object p3, p2

    .line 52
    check-cast p3, Landroidx/appcompat/view/menu/G;

    .line 53
    .line 54
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/n;->c:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ListMenuItemView;->e()V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/n;->c(I)Landroidx/appcompat/view/menu/t;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p3, p1}, Landroidx/appcompat/view/menu/G;->a(Landroidx/appcompat/view/menu/t;)V

    .line 66
    .line 67
    .line 68
    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/n;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
