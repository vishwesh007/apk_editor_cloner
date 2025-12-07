.class public final Lcom/google/android/gms/internal/play_billing/d3;
.super Lcom/google/android/gms/internal/play_billing/Z1;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/z2;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/d3;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/play_billing/j3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/d3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/d3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/play_billing/d3;

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
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/d3;->zze:I

    .line 6
    .line 7
    return-void
.end method

.method static bridge synthetic t()Lcom/google/android/gms/internal/play_billing/d3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    return-object v0
.end method

.method public static u([BLcom/google/android/gms/internal/play_billing/N1;)Lcom/google/android/gms/internal/play_billing/d3;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    .line 2
    .line 3
    array-length v5, p0

    .line 4
    if-nez v5, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/d3;->j(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/F2;->a()Lcom/google/android/gms/internal/play_billing/F2;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/F2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/I2;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const/4 v4, 0x0

    .line 27
    new-instance v6, Lcom/google/android/gms/internal/play_billing/z1;

    .line 28
    .line 29
    invoke-direct {v6, p1}, Lcom/google/android/gms/internal/play_billing/z1;-><init>(Lcom/google/android/gms/internal/play_billing/N1;)V

    .line 30
    .line 31
    .line 32
    move-object v1, v7

    .line 33
    move-object v2, v0

    .line 34
    move-object v3, p0

    .line 35
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/I2;->c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/z1;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/play_billing/I2;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/g2; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/play_billing/R2; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :goto_0
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/Z1;->s(Lcom/google/android/gms/internal/play_billing/Z1;Z)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/R2;

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/R2;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lcom/google/android/gms/internal/play_billing/g2;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_2
    :goto_1
    check-cast v0, Lcom/google/android/gms/internal/play_billing/d3;

    .line 67
    .line 68
    return-object v0

    .line 69
    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 70
    .line 71
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :catch_1
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    instance-of p1, p1, Lcom/google/android/gms/internal/play_billing/g2;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 91
    .line 92
    throw p0

    .line 93
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/play_billing/g2;

    .line 94
    .line 95
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/io/IOException;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :catch_2
    move-exception p0

    .line 100
    new-instance p1, Lcom/google/android/gms/internal/play_billing/g2;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :catch_3
    move-exception p0

    .line 111
    throw p0
.end method

.method static synthetic v(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/j3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzh:Lcom/google/android/gms/internal/play_billing/j3;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzd:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzd:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic w(Lcom/google/android/gms/internal/play_billing/d3;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/d3;->zzd:I

    return-void
.end method

.method public static x()Lcom/google/android/gms/internal/play_billing/c3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Z1;->k()Lcom/google/android/gms/internal/play_billing/V1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/c3;

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/c3;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/play_billing/c3;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/d3;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/d3;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    const/4 p1, 0x7

    .line 37
    new-array p1, p1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v6, "zzf"

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
    const-string v0, "zzd"

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
    sget-object v0, Lcom/google/android/gms/internal/play_billing/e3;->a:Lcom/google/android/gms/internal/play_billing/b2;

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
    const/4 v0, 0x6

    .line 64
    const-class v1, Lcom/google/android/gms/internal/play_billing/w3;

    .line 65
    .line 66
    aput-object v1, p1, v0

    .line 67
    .line 68
    sget-object v0, Lcom/google/android/gms/internal/play_billing/d3;->zzb:Lcom/google/android/gms/internal/play_billing/d3;

    .line 69
    .line 70
    new-instance v1, Lcom/google/android/gms/internal/play_billing/H2;

    .line 71
    .line 72
    const-string v2, "\u0004\u0003\u0001\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0004<\u0000"

    .line 73
    .line 74
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/H2;-><init>(Lcom/google/android/gms/internal/play_billing/Z1;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method
