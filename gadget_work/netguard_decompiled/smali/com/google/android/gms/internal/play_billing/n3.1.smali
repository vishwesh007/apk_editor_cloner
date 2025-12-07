.class public final enum Lcom/google/android/gms/internal/play_billing/n3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:Lcom/google/android/gms/internal/play_billing/n3;

.field public static final enum f:Lcom/google/android/gms/internal/play_billing/n3;

.field public static final enum g:Lcom/google/android/gms/internal/play_billing/n3;

.field public static final enum h:Lcom/google/android/gms/internal/play_billing/n3;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n3;

    .line 2
    .line 3
    const-string v1, "BROADCAST_ACTION_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/google/android/gms/internal/play_billing/n3;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/play_billing/n3;->e:Lcom/google/android/gms/internal/play_billing/n3;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n3;

    .line 12
    .line 13
    const-string v1, "PURCHASES_UPDATED_ACTION"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v2, v2, v1}, Lcom/google/android/gms/internal/play_billing/n3;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/gms/internal/play_billing/n3;->f:Lcom/google/android/gms/internal/play_billing/n3;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n3;

    .line 22
    .line 23
    const-string v1, "LOCAL_PURCHASES_UPDATED_ACTION"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v2, v2, v1}, Lcom/google/android/gms/internal/play_billing/n3;-><init>(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/gms/internal/play_billing/n3;->g:Lcom/google/android/gms/internal/play_billing/n3;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n3;

    .line 32
    .line 33
    const-string v1, "ALTERNATIVE_BILLING_ACTION"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v2, v2, v1}, Lcom/google/android/gms/internal/play_billing/n3;-><init>(IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/gms/internal/play_billing/n3;->h:Lcom/google/android/gms/internal/play_billing/n3;

    .line 40
    .line 41
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/play_billing/n3;->d:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/n3;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
