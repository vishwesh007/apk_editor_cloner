.class final Lcom/google/android/gms/internal/play_billing/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/gms/internal/play_billing/q2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/play_billing/r2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/q2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/q2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/s2;->b:Lcom/google/android/gms/internal/play_billing/q2;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/r2;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/play_billing/x2;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/r;->c()Lcom/google/android/gms/internal/play_billing/r;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/play_billing/s2;->b:Lcom/google/android/gms/internal/play_billing/q2;

    .line 14
    .line 15
    sget v3, Lcom/google/android/gms/internal/play_billing/F2;->d:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    aput-object v2, v1, v3

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/r2;-><init>([Lcom/google/android/gms/internal/play_billing/x2;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/s2;->a:Lcom/google/android/gms/internal/play_billing/r2;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/I2;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 2
    .line 3
    const-class v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget v0, Lcom/google/android/gms/internal/play_billing/F2;->d:I

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/s2;->a:Lcom/google/android/gms/internal/play_billing/r2;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/r2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/w2;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/w2;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget v0, Lcom/google/android/gms/internal/play_billing/F2;->d:I

    .line 26
    .line 27
    sget v0, Lcom/google/android/gms/internal/play_billing/D2;->a:I

    .line 28
    .line 29
    sget v0, Lcom/google/android/gms/internal/play_billing/o2;->a:I

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J2;->r()Lcom/google/android/gms/internal/play_billing/q;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/w2;->a()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/lit8 v1, v1, -0x1

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/O1;->a()Lcom/google/android/gms/internal/play_billing/p;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_0
    sget v2, Lcom/google/android/gms/internal/play_billing/v2;->a:I

    .line 51
    .line 52
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/B2;->w(Lcom/google/android/gms/internal/play_billing/w2;Lcom/google/android/gms/internal/play_billing/q;Lcom/google/android/gms/internal/play_billing/p;)Lcom/google/android/gms/internal/play_billing/B2;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_2
    sget v0, Lcom/google/android/gms/internal/play_billing/F2;->d:I

    .line 58
    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J2;->r()Lcom/google/android/gms/internal/play_billing/q;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/O1;->a()Lcom/google/android/gms/internal/play_billing/p;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/w2;->c()Lcom/google/android/gms/internal/play_billing/y2;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/C2;->j(Lcom/google/android/gms/internal/play_billing/q;Lcom/google/android/gms/internal/play_billing/p;Lcom/google/android/gms/internal/play_billing/y2;)Lcom/google/android/gms/internal/play_billing/C2;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method
