.class public abstract Landroidx/recyclerview/widget/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroidx/recyclerview/widget/B;

.field private b:Ljava/util/ArrayList;

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/recyclerview/widget/U;->a:Landroidx/recyclerview/widget/B;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/U;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    const-wide/16 v0, 0x78

    .line 15
    .line 16
    iput-wide v0, p0, Landroidx/recyclerview/widget/U;->c:J

    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/recyclerview/widget/U;->d:J

    .line 19
    .line 20
    const-wide/16 v0, 0xfa

    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/recyclerview/widget/U;->e:J

    .line 23
    .line 24
    iput-wide v0, p0, Landroidx/recyclerview/widget/U;->f:J

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroidx/recyclerview/widget/U;->g:Z

    .line 28
    .line 29
    return-void
.end method

.method static c(Landroidx/recyclerview/widget/P;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/P;->mFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xe

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/P;->isInvalid()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    and-int/lit8 v0, v0, 0x4

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/P;->getOldPosition()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/P;->getAbsoluteAdapterPosition()I

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/P;Landroidx/recyclerview/widget/P;IIII)Z
.end method

.method public final b(Landroidx/recyclerview/widget/P;Landroidx/recyclerview/widget/P;Lu/n;Lu/n;)Z
    .locals 7

    .line 1
    iget v3, p3, Lu/n;->a:I

    .line 2
    .line 3
    iget v4, p3, Lu/n;->b:I

    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/P;->shouldIgnore()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget p4, p3, Lu/n;->a:I

    .line 12
    .line 13
    iget p3, p3, Lu/n;->b:I

    .line 14
    .line 15
    move v6, p3

    .line 16
    move v5, p4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget p3, p4, Lu/n;->a:I

    .line 19
    .line 20
    iget p4, p4, Lu/n;->b:I

    .line 21
    .line 22
    move v5, p3

    .line 23
    move v6, p4

    .line 24
    :goto_0
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/U;->a(Landroidx/recyclerview/widget/P;Landroidx/recyclerview/widget/P;IIII)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final d(Landroidx/recyclerview/widget/P;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/U;->a:Landroidx/recyclerview/widget/B;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/P;->setIsRecyclable(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p1, Landroidx/recyclerview/widget/P;->mShadowedHolder:Landroidx/recyclerview/widget/P;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p1, Landroidx/recyclerview/widget/P;->mShadowingHolder:Landroidx/recyclerview/widget/P;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iput-object v2, p1, Landroidx/recyclerview/widget/P;->mShadowedHolder:Landroidx/recyclerview/widget/P;

    .line 19
    .line 20
    :cond_0
    iput-object v2, p1, Landroidx/recyclerview/widget/P;->mShadowingHolder:Landroidx/recyclerview/widget/P;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->shouldBeKeptAsChild()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/recyclerview/widget/B;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->s0()V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->n(Landroid/view/View;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->O(Landroid/view/View;)Landroidx/recyclerview/widget/P;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/I;

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/I;->p(Landroidx/recyclerview/widget/P;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/I;->m(Landroidx/recyclerview/widget/P;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    xor-int/lit8 v1, v2, 0x1

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->t0(Z)V

    .line 58
    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/P;->isTmpDetached()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object p1, p1, Landroidx/recyclerview/widget/P;->itemView:Landroid/view/View;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/U;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/U;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lu/m;

    .line 17
    .line 18
    invoke-interface {v2}, Lu/m;->a()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/U;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/U;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/U;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/U;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/U;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method final j(Landroidx/recyclerview/widget/B;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/U;->a:Landroidx/recyclerview/widget/B;

    .line 2
    .line 3
    return-void
.end method
