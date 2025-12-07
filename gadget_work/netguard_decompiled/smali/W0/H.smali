.class public final LW0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/j;


# static fields
.field private static final d:Lkotlinx/coroutines/internal/t;

.field private static final e:Lkotlinx/coroutines/internal/t;

.field private static final f:Lkotlinx/coroutines/internal/t;

.field public static final g:Lkotlinx/coroutines/internal/t;

.field private static final h:Lkotlinx/coroutines/internal/t;

.field private static final i:Lkotlinx/coroutines/internal/t;

.field private static final j:Lkotlinx/coroutines/internal/t;

.field private static final k:LW0/B;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    const-string v1, "REMOVED_TASK"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LW0/H;->d:Lkotlinx/coroutines/internal/t;

    .line 9
    .line 10
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 11
    .line 12
    const-string v1, "CLOSED_EMPTY"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, LW0/H;->e:Lkotlinx/coroutines/internal/t;

    .line 18
    .line 19
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 20
    .line 21
    const-string v1, "COMPLETING_ALREADY"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, LW0/H;->f:Lkotlinx/coroutines/internal/t;

    .line 27
    .line 28
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 29
    .line 30
    const-string v1, "COMPLETING_WAITING_CHILDREN"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, LW0/H;->g:Lkotlinx/coroutines/internal/t;

    .line 36
    .line 37
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 38
    .line 39
    const-string v1, "COMPLETING_RETRY"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, LW0/H;->h:Lkotlinx/coroutines/internal/t;

    .line 45
    .line 46
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 47
    .line 48
    const-string v1, "TOO_LATE_TO_CANCEL"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, LW0/H;->i:Lkotlinx/coroutines/internal/t;

    .line 54
    .line 55
    new-instance v0, Lkotlinx/coroutines/internal/t;

    .line 56
    .line 57
    const-string v1, "SEALED"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, LW0/H;->j:Lkotlinx/coroutines/internal/t;

    .line 63
    .line 64
    new-instance v0, LW0/B;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {v0, v1}, LW0/B;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    new-instance v0, LW0/B;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-direct {v0, v1}, LW0/B;-><init>(Z)V

    .line 74
    .line 75
    .line 76
    sput-object v0, LW0/H;->k:LW0/B;

    .line 77
    .line 78
    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    sget-object v0, LW0/H;->e:Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    sget-object v0, LW0/H;->f:Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    sget-object v0, LW0/H;->h:Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    sget-object v0, LW0/H;->d:Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()LW0/B;
    .locals 1

    .line 1
    sget-object v0, LW0/H;->k:LW0/B;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    sget-object v0, LW0/H;->j:Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic g()Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    sget-object v0, LW0/H;->i:Lkotlinx/coroutines/internal/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final h(LI0/l;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    sget-object v0, LW0/Q;->c:LW0/P;

    .line 2
    .line 3
    sget-object v0, LW0/P;->d:LW0/P;

    .line 4
    .line 5
    invoke-interface {p0, v0}, LI0/l;->get(LI0/j;)LI0/i;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, LW0/Q;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p0, p1}, LW0/Q;->k(Ljava/util/concurrent/CancellationException;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
