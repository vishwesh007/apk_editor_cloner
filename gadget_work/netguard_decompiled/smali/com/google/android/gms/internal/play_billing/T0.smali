.class public Lcom/google/android/gms/internal/play_billing/T0;
.super Lcom/google/android/gms/internal/play_billing/S0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/a1;


# instance fields
.field private final d:Lcom/google/android/gms/internal/play_billing/a1;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/play_billing/K0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/S0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/T0;->d:Lcom/google/android/gms/internal/play_billing/a1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/T0;->d:Lcom/google/android/gms/internal/play_billing/a1;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/a1;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected final synthetic g()Lcom/google/android/gms/internal/play_billing/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/T0;->d:Lcom/google/android/gms/internal/play_billing/a1;

    return-object v0
.end method

.method protected final synthetic h()Lcom/google/android/gms/internal/play_billing/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/T0;->d:Lcom/google/android/gms/internal/play_billing/a1;

    return-object v0
.end method
