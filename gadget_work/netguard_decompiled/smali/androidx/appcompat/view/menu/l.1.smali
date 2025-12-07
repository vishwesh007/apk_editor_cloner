.class final Landroidx/appcompat/view/menu/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:I

.field final synthetic b:Landroidx/appcompat/view/menu/m;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->b:Landroidx/appcompat/view/menu/m;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/appcompat/view/menu/l;->a:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->b:Landroidx/appcompat/view/menu/m;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/view/menu/m;->c:Landroidx/appcompat/view/menu/q;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q;->o()Landroidx/appcompat/view/menu/t;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/appcompat/view/menu/m;->c:Landroidx/appcompat/view/menu/q;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q;->p()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroidx/appcompat/view/menu/t;

    .line 29
    .line 30
    if-ne v4, v1, :cond_0

    .line 31
    .line 32
    iput v3, p0, Landroidx/appcompat/view/menu/l;->a:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/appcompat/view/menu/l;->a:I

    .line 40
    .line 41
    return-void
.end method

.method public final b(I)Landroidx/appcompat/view/menu/t;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->b:Landroidx/appcompat/view/menu/m;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/view/menu/m;->c:Landroidx/appcompat/view/menu/q;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q;->p()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x0

    .line 13
    .line 14
    iget v0, p0, Landroidx/appcompat/view/menu/l;->a:I

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    if-lt p1, v0, :cond_0

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/appcompat/view/menu/t;

    .line 27
    .line 28
    return-object p1
.end method

.method public final getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->b:Landroidx/appcompat/view/menu/m;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/view/menu/m;->c:Landroidx/appcompat/view/menu/q;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q;->p()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x0

    .line 17
    .line 18
    iget v0, p0, Landroidx/appcompat/view/menu/l;->a:I

    .line 19
    .line 20
    if-gez v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    return v1
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/l;->b(I)Landroidx/appcompat/view/menu/t;

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
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/appcompat/view/menu/l;->b:Landroidx/appcompat/view/menu/m;

    .line 4
    .line 5
    iget-object p2, p2, Landroidx/appcompat/view/menu/m;->b:Landroid/view/LayoutInflater;

    .line 6
    .line 7
    const v0, 0x7f0c0010

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    move-object p3, p2

    .line 16
    check-cast p3, Landroidx/appcompat/view/menu/G;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/l;->b(I)Landroidx/appcompat/view/menu/t;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p3, p1}, Landroidx/appcompat/view/menu/G;->a(Landroidx/appcompat/view/menu/t;)V

    .line 23
    .line 24
    .line 25
    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
