.class final Lcom/android/billingclient/api/A;
.super Lcom/google/android/gms/internal/play_billing/k;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/play_billing/N3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/N3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/k;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/A;->a:Lcom/google/android/gms/internal/play_billing/N3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/A;->a:Lcom/google/android/gms/internal/play_billing/N3;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/N3;->b(Ljava/lang/Integer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
