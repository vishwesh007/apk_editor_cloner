.class public Lkotlinx/coroutines/scheduling/g;
.super LW0/K;
.source "SourceFile"


# instance fields
.field private e:Lkotlinx/coroutines/scheduling/b;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 7

    .line 1
    const-string v5, "DefaultDispatcher"

    .line 2
    .line 3
    invoke-direct {p0}, LW0/K;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v6, Lkotlinx/coroutines/scheduling/b;

    .line 7
    .line 8
    move-object v0, v6

    .line 9
    move v1, p1

    .line 10
    move v2, p2

    .line 11
    move-wide v3, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/b;-><init>(IIJLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v6, p0, Lkotlinx/coroutines/scheduling/g;->e:Lkotlinx/coroutines/scheduling/b;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final t(LI0/l;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/g;->e:Lkotlinx/coroutines/scheduling/b;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->n:Lkotlinx/coroutines/internal/t;

    .line 4
    .line 5
    sget-object v0, Lkotlinx/coroutines/scheduling/l;->f:Lkotlinx/coroutines/scheduling/i;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/b;->b(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final v(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/g;->e:Lkotlinx/coroutines/scheduling/b;

    .line 3
    .line 4
    invoke-virtual {v1, p1, p2, v0}, Lkotlinx/coroutines/scheduling/b;->b(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
