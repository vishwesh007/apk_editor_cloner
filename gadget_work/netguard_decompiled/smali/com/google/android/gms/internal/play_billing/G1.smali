.class final Lcom/google/android/gms/internal/play_billing/G1;
.super Lcom/google/android/gms/internal/play_billing/p;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/p;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/G1;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final t()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/G1;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/G1;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/G1;->a:I

    if-lez v1, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/G1;->b:I

    sub-int/2addr v1, v1

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/G1;->a:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/G1;->b:I

    :goto_0
    return-void
.end method
