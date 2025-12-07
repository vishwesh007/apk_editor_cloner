.class public final Landroidx/core/view/I0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/core/view/I0;


# instance fields
.field private final a:Landroidx/core/view/H0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/core/view/G0;->l:Landroidx/core/view/I0;

    .line 8
    .line 9
    sput-object v0, Landroidx/core/view/I0;->b:Landroidx/core/view/I0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Landroidx/core/view/H0;->b:Landroidx/core/view/I0;

    .line 13
    .line 14
    sput-object v0, Landroidx/core/view/I0;->b:Landroidx/core/view/I0;

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroidx/core/view/H0;

    invoke-direct {v0, p0}, Landroidx/core/view/H0;-><init>(Landroidx/core/view/I0;)V

    iput-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/core/view/G0;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/G0;-><init>(Landroidx/core/view/I0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Landroidx/core/view/E0;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/E0;-><init>(Landroidx/core/view/I0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, Landroidx/core/view/D0;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/D0;-><init>(Landroidx/core/view/I0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Landroidx/core/view/C0;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/C0;-><init>(Landroidx/core/view/I0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    :goto_0
    return-void
.end method

.method static j(Landroidx/core/graphics/c;IIII)Landroidx/core/graphics/c;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/core/graphics/c;->a:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v2, p0, Landroidx/core/graphics/c;->b:I

    .line 10
    .line 11
    sub-int/2addr v2, p2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, Landroidx/core/graphics/c;->c:I

    .line 17
    .line 18
    sub-int/2addr v3, p3

    .line 19
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget v4, p0, Landroidx/core/graphics/c;->d:I

    .line 24
    .line 25
    sub-int/2addr v4, p4

    .line 26
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v0, p1, :cond_0

    .line 31
    .line 32
    if-ne v2, p2, :cond_0

    .line 33
    .line 34
    if-ne v3, p3, :cond_0

    .line 35
    .line 36
    if-ne v1, p4, :cond_0

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/c;->a(IIII)Landroidx/core/graphics/c;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static p(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/I0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/view/I0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/core/view/I0;-><init>(Landroid/view/WindowInsets;)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget p0, Landroidx/core/view/f0;->g:I

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/core/view/Q;->b(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/core/view/f0;->r(Landroid/view/View;)Landroidx/core/view/I0;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroidx/core/view/I0;->m(Landroidx/core/view/I0;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Landroidx/core/view/I0;->d(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/core/view/I0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/H0;->a()Landroidx/core/view/I0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b()Landroidx/core/view/I0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/H0;->b()Landroidx/core/view/I0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()Landroidx/core/view/I0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/H0;->c()Landroidx/core/view/I0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/H0;->d(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/H0;->g()Landroidx/core/graphics/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroidx/core/graphics/c;->d:I

    .line 8
    .line 9
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/core/view/I0;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Landroidx/core/view/I0;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroidx/core/util/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final f()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/H0;->g()Landroidx/core/graphics/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroidx/core/graphics/c;->a:I

    .line 8
    .line 9
    return v0
.end method

.method public final g()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/H0;->g()Landroidx/core/graphics/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroidx/core/graphics/c;->c:I

    .line 8
    .line 9
    return v0
.end method

.method public final h()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/H0;->g()Landroidx/core/graphics/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroidx/core/graphics/c;->b:I

    .line 8
    .line 9
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/core/view/H0;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public final i(IIII)Landroidx/core/view/I0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/H0;->h(IIII)Landroidx/core/view/I0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/H0;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/core/view/H0;->k([Landroidx/core/graphics/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method final m(Landroidx/core/view/I0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/H0;->l(Landroidx/core/view/I0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final n(Landroidx/core/graphics/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/H0;->m(Landroidx/core/graphics/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o()Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/I0;->a:Landroidx/core/view/H0;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/core/view/B0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroidx/core/view/B0;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/core/view/B0;->c:Landroid/view/WindowInsets;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method
