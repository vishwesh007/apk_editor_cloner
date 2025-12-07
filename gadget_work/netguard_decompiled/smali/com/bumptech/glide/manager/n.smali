.class final Lcom/bumptech/glide/manager/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/HashMap;

.field private final b:Lcom/bumptech/glide/manager/r;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/manager/n;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bumptech/glide/manager/n;->b:Lcom/bumptech/glide/manager/r;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Lcom/bumptech/glide/d;Landroidx/lifecycle/m;Landroidx/fragment/app/T;Z)Lcom/bumptech/glide/x;
    .locals 3

    .line 1
    invoke-static {}, LX/s;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LX/s;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/manager/n;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/bumptech/glide/x;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    .line 18
    .line 19
    invoke-direct {v1, p3}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Landroidx/lifecycle/m;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/bumptech/glide/manager/m;

    .line 23
    .line 24
    invoke-direct {v2, p0, p4}, Lcom/bumptech/glide/manager/m;-><init>(Lcom/bumptech/glide/manager/n;Landroidx/fragment/app/T;)V

    .line 25
    .line 26
    .line 27
    iget-object p4, p0, Lcom/bumptech/glide/manager/n;->b:Lcom/bumptech/glide/manager/r;

    .line 28
    .line 29
    invoke-interface {p4, p2, v1, v2, p1}, Lcom/bumptech/glide/manager/r;->b(Lcom/bumptech/glide/d;Lcom/bumptech/glide/manager/j;Lcom/bumptech/glide/manager/t;Landroid/content/Context;)Lcom/bumptech/glide/x;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance p2, Lcom/bumptech/glide/manager/l;

    .line 37
    .line 38
    invoke-direct {p2, p0, p3}, Lcom/bumptech/glide/manager/l;-><init>(Lcom/bumptech/glide/manager/n;Landroidx/lifecycle/m;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->c(Lcom/bumptech/glide/manager/k;)V

    .line 42
    .line 43
    .line 44
    if-eqz p5, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/bumptech/glide/x;->onStart()V

    .line 47
    .line 48
    .line 49
    :cond_0
    move-object v1, p1

    .line 50
    :cond_1
    return-object v1
.end method
