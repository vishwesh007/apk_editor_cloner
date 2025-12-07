.class final Lcom/google/android/gms/internal/play_billing/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final d:Lcom/google/android/gms/internal/play_billing/K0;

.field final e:Lcom/google/android/gms/internal/play_billing/a1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/K0;Lcom/google/android/gms/internal/play_billing/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/E0;->d:Lcom/google/android/gms/internal/play_billing/K0;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/E0;->e:Lcom/google/android/gms/internal/play_billing/a1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/E0;->d:Lcom/google/android/gms/internal/play_billing/K0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/K0;->e(Lcom/google/android/gms/internal/play_billing/K0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eq v1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/E0;->e:Lcom/google/android/gms/internal/play_billing/a1;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/K0;->g(Lcom/google/android/gms/internal/play_billing/a1;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/K0;->b()Lcom/google/android/gms/internal/play_billing/y0;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v0, p0, v1}, Lcom/google/android/gms/internal/play_billing/y0;->k(Lcom/google/android/gms/internal/play_billing/K0;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/K0;->l(Lcom/google/android/gms/internal/play_billing/K0;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method
