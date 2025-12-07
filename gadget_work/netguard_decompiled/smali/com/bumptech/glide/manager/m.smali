.class final Lcom/bumptech/glide/manager/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/t;


# instance fields
.field private final a:Landroidx/fragment/app/T;

.field final synthetic b:Lcom/bumptech/glide/manager/n;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/n;Landroidx/fragment/app/T;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/manager/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/manager/m;->a:Landroidx/fragment/app/T;

    .line 7
    .line 8
    return-void
.end method

.method private a(Landroidx/fragment/app/T;Ljava/util/HashSet;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/T;->U()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/fragment/app/u;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/fragment/app/u;->f()Landroidx/fragment/app/T;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {p0, v3, p2}, Lcom/bumptech/glide/manager/m;->a(Landroidx/fragment/app/T;Ljava/util/HashSet;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/fragment/app/u;->getLifecycle()Landroidx/lifecycle/m;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/manager/n;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, LX/s;->a()V

    .line 35
    .line 36
    .line 37
    iget-object v3, v3, Lcom/bumptech/glide/manager/n;->a:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/bumptech/glide/x;

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method public final d()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/manager/m;->a:Landroidx/fragment/app/T;

    .line 7
    .line 8
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/manager/m;->a(Landroidx/fragment/app/T;Ljava/util/HashSet;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
