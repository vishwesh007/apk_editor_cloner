.class final Lcom/google/android/gms/internal/play_billing/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/stream/Collector;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/v;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/v;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/google/android/gms/internal/play_billing/y;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/google/android/gms/internal/play_billing/y;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/google/android/gms/internal/play_billing/w;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/play_billing/w;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Lcom/google/android/gms/internal/play_billing/x;

    .line 19
    .line 20
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/play_billing/x;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-array v6, v1, [Ljava/util/stream/Collector$Characteristics;

    .line 24
    .line 25
    invoke-static {v0, v2, v3, v5, v6}, LB/e;->g(Lcom/google/android/gms/internal/play_billing/v;Lcom/google/android/gms/internal/play_billing/y;Lcom/google/android/gms/internal/play_billing/w;Lcom/google/android/gms/internal/play_billing/x;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/play_billing/E;->a:Ljava/util/stream/Collector;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/gms/internal/play_billing/v;

    .line 32
    .line 33
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/play_billing/v;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/google/android/gms/internal/play_billing/z;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/google/android/gms/internal/play_billing/z;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lcom/google/android/gms/internal/play_billing/A;

    .line 42
    .line 43
    invoke-direct {v3}, Lcom/google/android/gms/internal/play_billing/A;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lcom/google/android/gms/internal/play_billing/B;

    .line 47
    .line 48
    invoke-direct {v4}, Lcom/google/android/gms/internal/play_billing/B;-><init>()V

    .line 49
    .line 50
    .line 51
    new-array v5, v1, [Ljava/util/stream/Collector$Characteristics;

    .line 52
    .line 53
    invoke-static {v0, v2, v3, v4, v5}, LB/f;->l(Lcom/google/android/gms/internal/play_billing/v;Lcom/google/android/gms/internal/play_billing/z;Lcom/google/android/gms/internal/play_billing/A;Lcom/google/android/gms/internal/play_billing/B;[Ljava/util/stream/Collector$Characteristics;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/google/android/gms/internal/play_billing/C;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/C;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lcom/google/android/gms/internal/play_billing/D;

    .line 62
    .line 63
    invoke-direct {v2}, Lcom/google/android/gms/internal/play_billing/D;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lcom/google/android/gms/internal/play_billing/w;

    .line 67
    .line 68
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/play_billing/w;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Lcom/google/android/gms/internal/play_billing/x;

    .line 72
    .line 73
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/play_billing/x;-><init>(I)V

    .line 74
    .line 75
    .line 76
    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    .line 77
    .line 78
    invoke-static {v0, v2, v3, v4, v1}, LB/d;->n(Lcom/google/android/gms/internal/play_billing/C;Lcom/google/android/gms/internal/play_billing/D;Lcom/google/android/gms/internal/play_billing/w;Lcom/google/android/gms/internal/play_billing/x;[Ljava/util/stream/Collector$Characteristics;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method static a()Ljava/util/stream/Collector;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/E;->a:Ljava/util/stream/Collector;

    return-object v0
.end method
