.class public final synthetic Lcom/google/android/gms/internal/play_billing/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/Z;

    .line 2
    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/play_billing/M;->b:I

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/M;->a:[Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/a0;->m(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/a0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, p1, Lcom/google/android/gms/internal/play_billing/M;->b:I

    .line 21
    .line 22
    iput-boolean v1, p1, Lcom/google/android/gms/internal/play_billing/M;->c:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/M;->a:[Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    aget-object p1, p1, v0

    .line 29
    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/google/android/gms/internal/play_billing/u0;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/u0;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/s0;->l:Lcom/google/android/gms/internal/play_billing/s0;

    .line 40
    .line 41
    :goto_0
    return-object v0
.end method
