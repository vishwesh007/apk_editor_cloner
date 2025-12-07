.class final Landroidx/lifecycle/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroidx/lifecycle/l;

.field b:Landroidx/lifecycle/q;


# direct methods
.method constructor <init>(Landroidx/lifecycle/r;Landroidx/lifecycle/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/lifecycle/w;->d(Ljava/lang/Object;)Landroidx/lifecycle/q;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/lifecycle/t;->b:Landroidx/lifecycle/q;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method final a(Landroidx/lifecycle/s;Landroidx/lifecycle/k;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroidx/lifecycle/k;->f()Landroidx/lifecycle/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/lifecycle/t;->b:Landroidx/lifecycle/q;

    .line 17
    .line 18
    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/q;->d(Landroidx/lifecycle/s;Landroidx/lifecycle/k;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/l;

    .line 22
    .line 23
    return-void
.end method
