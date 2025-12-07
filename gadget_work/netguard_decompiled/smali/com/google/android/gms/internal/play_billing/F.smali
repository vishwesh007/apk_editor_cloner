.class final Lcom/google/android/gms/internal/play_billing/F;
.super Lcom/google/android/gms/internal/play_billing/I;
.source "SourceFile"


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/gms/internal/play_billing/I;
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/I;->e()Lcom/google/android/gms/internal/play_billing/I;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-lez p1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/I;->d()Lcom/google/android/gms/internal/play_billing/I;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/I;->c()Lcom/google/android/gms/internal/play_billing/I;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    return-object p1
.end method
