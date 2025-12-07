.class final Landroidx/activity/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/a;


# instance fields
.field private final a:Landroidx/activity/n;

.field final synthetic b:Landroidx/activity/s;


# direct methods
.method constructor <init>(Landroidx/activity/s;Landroidx/activity/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/r;->b:Landroidx/activity/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/r;->a:Landroidx/activity/n;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/r;->b:Landroidx/activity/s;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/activity/s;->b:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/activity/r;->a:Landroidx/activity/n;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, p0}, Landroidx/activity/n;->e(Landroidx/activity/a;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, LE/d;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v2, v1}, Landroidx/activity/n;->g(Landroidx/activity/o;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/activity/s;->e()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
