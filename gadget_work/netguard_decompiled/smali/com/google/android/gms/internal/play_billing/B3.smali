.class public final Lcom/google/android/gms/internal/play_billing/B3;
.super Lcom/google/android/gms/internal/play_billing/Z1;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/z2;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/B3;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Lcom/google/android/gms/internal/play_billing/s3;

.field private zzh:Lcom/google/android/gms/internal/play_billing/t3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/B3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/B3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/B3;->zzb:Lcom/google/android/gms/internal/play_billing/B3;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/play_billing/B3;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->q(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/Z1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/Z1;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/B3;->zze:I

    .line 6
    .line 7
    return-void
.end method

.method public static A()Lcom/google/android/gms/internal/play_billing/A3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/B3;->zzb:Lcom/google/android/gms/internal/play_billing/B3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Z1;->k()Lcom/google/android/gms/internal/play_billing/V1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/A3;

    .line 8
    .line 9
    return-object v0
.end method

.method static bridge synthetic t()Lcom/google/android/gms/internal/play_billing/B3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/B3;->zzb:Lcom/google/android/gms/internal/play_billing/B3;

    return-object v0
.end method

.method static synthetic u(Lcom/google/android/gms/internal/play_billing/B3;Lcom/google/android/gms/internal/play_billing/d3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zzf:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zze:I

    return-void
.end method

.method static synthetic v(Lcom/google/android/gms/internal/play_billing/B3;Lcom/google/android/gms/internal/play_billing/g3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zze:I

    return-void
.end method

.method static synthetic w(Lcom/google/android/gms/internal/play_billing/B3;Lcom/google/android/gms/internal/play_billing/l3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zzf:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x7

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zze:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic x(Lcom/google/android/gms/internal/play_billing/B3;Lcom/google/android/gms/internal/play_billing/s3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zzg:Lcom/google/android/gms/internal/play_billing/s3;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zzd:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zzd:I

    .line 11
    .line 12
    return-void
.end method

.method static synthetic y(Lcom/google/android/gms/internal/play_billing/B3;Lcom/google/android/gms/internal/play_billing/E3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zzf:Ljava/lang/Object;

    .line 2
    .line 3
    const/16 p1, 0x8

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zze:I

    .line 6
    .line 7
    return-void
.end method

.method static synthetic z(Lcom/google/android/gms/internal/play_billing/B3;Lcom/google/android/gms/internal/play_billing/G3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/B3;->zze:I

    return-void
.end method


# virtual methods
.method protected final j(I)Ljava/lang/Object;
    .locals 7

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    if-eq p1, v5, :cond_3

    .line 12
    .line 13
    if-eq p1, v4, :cond_2

    .line 14
    .line 15
    if-eq p1, v3, :cond_1

    .line 16
    .line 17
    if-eq p1, v2, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/B3;->zzb:Lcom/google/android/gms/internal/play_billing/B3;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/A3;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/play_billing/A3;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/B3;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/B3;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    const/16 p1, 0xb

    .line 37
    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v6, "zzf"

    .line 41
    .line 42
    aput-object v6, p1, v1

    .line 43
    .line 44
    const-string v1, "zze"

    .line 45
    .line 46
    aput-object v1, p1, v0

    .line 47
    .line 48
    const-string v0, "zzd"

    .line 49
    .line 50
    aput-object v0, p1, v5

    .line 51
    .line 52
    const-string v0, "zzg"

    .line 53
    .line 54
    aput-object v0, p1, v4

    .line 55
    .line 56
    const-class v0, Lcom/google/android/gms/internal/play_billing/d3;

    .line 57
    .line 58
    aput-object v0, p1, v3

    .line 59
    .line 60
    const-class v0, Lcom/google/android/gms/internal/play_billing/g3;

    .line 61
    .line 62
    aput-object v0, p1, v2

    .line 63
    .line 64
    const/4 v0, 0x6

    .line 65
    const-class v1, Lcom/google/android/gms/internal/play_billing/G3;

    .line 66
    .line 67
    aput-object v1, p1, v0

    .line 68
    .line 69
    const/4 v0, 0x7

    .line 70
    const-class v1, Lcom/google/android/gms/internal/play_billing/q3;

    .line 71
    .line 72
    aput-object v1, p1, v0

    .line 73
    .line 74
    const/16 v0, 0x8

    .line 75
    .line 76
    const-string v1, "zzh"

    .line 77
    .line 78
    aput-object v1, p1, v0

    .line 79
    .line 80
    const/16 v0, 0x9

    .line 81
    .line 82
    const-class v1, Lcom/google/android/gms/internal/play_billing/l3;

    .line 83
    .line 84
    aput-object v1, p1, v0

    .line 85
    .line 86
    const/16 v0, 0xa

    .line 87
    .line 88
    const-class v1, Lcom/google/android/gms/internal/play_billing/E3;

    .line 89
    .line 90
    aput-object v1, p1, v0

    .line 91
    .line 92
    sget-object v0, Lcom/google/android/gms/internal/play_billing/B3;->zzb:Lcom/google/android/gms/internal/play_billing/B3;

    .line 93
    .line 94
    new-instance v1, Lcom/google/android/gms/internal/play_billing/H2;

    .line 95
    .line 96
    const-string v2, "\u0004\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1009\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006\u1009\u0001\u0007<\u0000\u0008<\u0000"

    .line 97
    .line 98
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/H2;-><init>(Lcom/google/android/gms/internal/play_billing/Z1;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1
.end method
