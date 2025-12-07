.class final Landroidx/activity/result/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/lifecycle/m;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/lifecycle/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/result/h;->a:Landroidx/lifecycle/m;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/activity/result/h;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method final a(Landroidx/lifecycle/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/result/h;->a:Landroidx/lifecycle/m;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/r;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/result/h;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/activity/result/h;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/lifecycle/q;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/activity/result/h;->a:Landroidx/lifecycle/m;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Landroidx/lifecycle/m;->c(Landroidx/lifecycle/r;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
