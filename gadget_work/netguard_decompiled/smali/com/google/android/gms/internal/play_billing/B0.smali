.class final Lcom/google/android/gms/internal/play_billing/B0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:Lcom/google/android/gms/internal/play_billing/B0;


# instance fields
.field final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/B0;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/play_billing/A0;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/play_billing/A0;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/B0;-><init>(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/internal/play_billing/B0;->b:Lcom/google/android/gms/internal/play_billing/B0;

    .line 12
    .line 13
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/B0;->a:Ljava/lang/Throwable;

    .line 8
    .line 9
    return-void
.end method
