.class public final Lcom/google/android/gms/internal/play_billing/G3;
.super Lcom/google/android/gms/internal/play_billing/Z1;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/z2;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/G3;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/G3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/G3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/G3;->zzb:Lcom/google/android/gms/internal/play_billing/G3;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/play_billing/G3;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->q(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/Z1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/Z1;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static t()Lcom/google/android/gms/internal/play_billing/G3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/G3;->zzb:Lcom/google/android/gms/internal/play_billing/G3;

    return-object v0
.end method

.method static bridge synthetic u()Lcom/google/android/gms/internal/play_billing/G3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/G3;->zzb:Lcom/google/android/gms/internal/play_billing/G3;

    return-object v0
.end method


# virtual methods
.method protected final j(I)Ljava/lang/Object;
    .locals 4

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_3

    .line 9
    .line 10
    if-eq p1, v1, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/G3;->zzb:Lcom/google/android/gms/internal/play_billing/G3;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/o3;

    .line 24
    .line 25
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/play_billing/o3;-><init>(LE0/a;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/G3;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/G3;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    const-string v3, "zzd"

    .line 39
    .line 40
    aput-object v3, p1, v1

    .line 41
    .line 42
    const-string v1, "zze"

    .line 43
    .line 44
    aput-object v1, p1, v0

    .line 45
    .line 46
    sget-object v0, Lcom/google/android/gms/internal/play_billing/F3;->a:Lcom/google/android/gms/internal/play_billing/b2;

    .line 47
    .line 48
    aput-object v0, p1, v2

    .line 49
    .line 50
    sget-object v0, Lcom/google/android/gms/internal/play_billing/G3;->zzb:Lcom/google/android/gms/internal/play_billing/G3;

    .line 51
    .line 52
    new-instance v1, Lcom/google/android/gms/internal/play_billing/H2;

    .line 53
    .line 54
    const-string v2, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u180c\u0000"

    .line 55
    .line 56
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/H2;-><init>(Lcom/google/android/gms/internal/play_billing/Z1;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method
