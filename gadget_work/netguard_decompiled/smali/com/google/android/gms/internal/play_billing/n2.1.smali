.class final Lcom/google/android/gms/internal/play_billing/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n2;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/play_billing/P1;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/play_billing/P1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/n2;-><init>(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/M3;->g:Z

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/n2;->a:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method
