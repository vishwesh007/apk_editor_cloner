.class public final Lkotlinx/coroutines/scheduling/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:I

.field public static final d:J

.field public static e:Lkotlinx/coroutines/scheduling/f;

.field public static final f:Lkotlinx/coroutines/scheduling/i;

.field public static final g:Lkotlinx/coroutines/scheduling/i;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    .line 2
    .line 3
    const-wide/32 v1, 0x186a0

    .line 4
    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    const-wide v5, 0x7fffffffffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/b;->d(Ljava/lang/String;JJJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lkotlinx/coroutines/scheduling/l;->a:J

    .line 18
    .line 19
    invoke-static {}, Lkotlinx/coroutines/internal/b;->b()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-ge v0, v1, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    :cond_0
    const/16 v1, 0x8

    .line 28
    .line 29
    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v2, v0, v3, v4, v1}, Lkotlinx/coroutines/internal/b;->f(Ljava/lang/String;IIII)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sput v0, Lkotlinx/coroutines/scheduling/l;->b:I

    .line 38
    .line 39
    const-string v0, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    const v2, 0x1ffffe

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v2, v4, v2, v1}, Lkotlinx/coroutines/internal/b;->f(Ljava/lang/String;IIII)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sput v0, Lkotlinx/coroutines/scheduling/l;->c:I

    .line 50
    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    .line 53
    const-string v5, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 54
    .line 55
    const-wide/16 v6, 0x3c

    .line 56
    .line 57
    const-wide/16 v8, 0x1

    .line 58
    .line 59
    const-wide v10, 0x7fffffffffffffffL

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    invoke-static/range {v5 .. v11}, Lkotlinx/coroutines/internal/b;->d(Ljava/lang/String;JJJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    sput-wide v0, Lkotlinx/coroutines/scheduling/l;->d:J

    .line 73
    .line 74
    sget-object v0, Lkotlinx/coroutines/scheduling/f;->a:Lkotlinx/coroutines/scheduling/f;

    .line 75
    .line 76
    sput-object v0, Lkotlinx/coroutines/scheduling/l;->e:Lkotlinx/coroutines/scheduling/f;

    .line 77
    .line 78
    new-instance v0, Lkotlinx/coroutines/scheduling/j;

    .line 79
    .line 80
    invoke-direct {v0, v4}, Lkotlinx/coroutines/scheduling/j;-><init>(I)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lkotlinx/coroutines/scheduling/l;->f:Lkotlinx/coroutines/scheduling/i;

    .line 84
    .line 85
    new-instance v0, Lkotlinx/coroutines/scheduling/j;

    .line 86
    .line 87
    invoke-direct {v0, v3}, Lkotlinx/coroutines/scheduling/j;-><init>(I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lkotlinx/coroutines/scheduling/l;->g:Lkotlinx/coroutines/scheduling/i;

    .line 91
    .line 92
    return-void
.end method
