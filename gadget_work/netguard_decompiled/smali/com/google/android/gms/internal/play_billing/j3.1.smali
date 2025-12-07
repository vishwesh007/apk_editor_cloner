.class public final Lcom/google/android/gms/internal/play_billing/j3;
.super Lcom/google/android/gms/internal/play_billing/Z1;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/z2;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/j3;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/j3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/j3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/j3;->zzb:Lcom/google/android/gms/internal/play_billing/j3;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/play_billing/j3;

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
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzf:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzh:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic t()Lcom/google/android/gms/internal/play_billing/j3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j3;->zzb:Lcom/google/android/gms/internal/play_billing/j3;

    return-object v0
.end method

.method static synthetic u(Lcom/google/android/gms/internal/play_billing/j3;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic v(Lcom/google/android/gms/internal/play_billing/j3;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzd:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzd:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzf:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic w(Lcom/google/android/gms/internal/play_billing/j3;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->zze:I

    return-void
.end method

.method static synthetic x(Lcom/google/android/gms/internal/play_billing/j3;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/j3;->zzd:I

    return-void
.end method

.method public static y()Lcom/google/android/gms/internal/play_billing/h3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j3;->zzb:Lcom/google/android/gms/internal/play_billing/j3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Z1;->k()Lcom/google/android/gms/internal/play_billing/V1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/h3;

    .line 8
    .line 9
    return-object v0
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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/j3;->zzb:Lcom/google/android/gms/internal/play_billing/j3;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/h3;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/play_billing/h3;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/j3;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/j3;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    const/4 p1, 0x6

    .line 37
    new-array p1, p1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v6, "zzd"

    .line 40
    .line 41
    aput-object v6, p1, v1

    .line 42
    .line 43
    const-string v1, "zze"

    .line 44
    .line 45
    aput-object v1, p1, v0

    .line 46
    .line 47
    const-string v0, "zzf"

    .line 48
    .line 49
    aput-object v0, p1, v5

    .line 50
    .line 51
    const-string v0, "zzg"

    .line 52
    .line 53
    aput-object v0, p1, v4

    .line 54
    .line 55
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i3;->a:Lcom/google/android/gms/internal/play_billing/b2;

    .line 56
    .line 57
    aput-object v0, p1, v3

    .line 58
    .line 59
    const-string v0, "zzh"

    .line 60
    .line 61
    aput-object v0, p1, v2

    .line 62
    .line 63
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j3;->zzb:Lcom/google/android/gms/internal/play_billing/j3;

    .line 64
    .line 65
    new-instance v1, Lcom/google/android/gms/internal/play_billing/H2;

    .line 66
    .line 67
    const-string v2, "\u0004\u0004\u0000\u0001\u0001\u0005\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0004\u180c\u0002\u0005\u1008\u0003"

    .line 68
    .line 69
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/H2;-><init>(Lcom/google/android/gms/internal/play_billing/Z1;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method
