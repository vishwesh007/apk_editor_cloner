.class public final Lcom/android/billingclient/api/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/E;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/s3;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/billingclient/api/G;

    invoke-direct {v0, p1}, Lcom/android/billingclient/api/G;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/k;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/billingclient/api/k;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/android/billingclient/api/l;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/android/billingclient/api/l;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/android/billingclient/api/l;->d(Lcom/android/billingclient/api/l;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/billingclient/api/k;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/util/List;

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/android/billingclient/api/l;->f(Lcom/android/billingclient/api/l;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v1, "SKU list must be set"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string v1, "SKU type must be set"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/billingclient/api/k;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/play_billing/d3;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/B3;->A()Lcom/google/android/gms/internal/play_billing/A3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/play_billing/s3;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/A3;->p(Lcom/google/android/gms/internal/play_billing/s3;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/A3;->m(Lcom/google/android/gms/internal/play_billing/d3;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/billingclient/api/k;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lcom/android/billingclient/api/G;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/play_billing/B3;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/G;->a(Lcom/google/android/gms/internal/play_billing/B3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    const-string v0, "BillingLogger"

    .line 34
    .line 35
    const-string v1, "Unable to log."

    .line 36
    .line 37
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/play_billing/d3;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/play_billing/s3;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Z1;->l()Lcom/google/android/gms/internal/play_billing/V1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/play_billing/r3;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/r3;->m(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/google/android/gms/internal/play_billing/s3;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/k;->d(Lcom/google/android/gms/internal/play_billing/d3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    const-string p2, "BillingLogger"

    .line 28
    .line 29
    const-string v0, "Unable to log."

    .line 30
    .line 31
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/play_billing/g3;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/B3;->A()Lcom/google/android/gms/internal/play_billing/A3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/play_billing/s3;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/A3;->p(Lcom/google/android/gms/internal/play_billing/s3;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/A3;->n(Lcom/google/android/gms/internal/play_billing/g3;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/billingclient/api/k;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lcom/android/billingclient/api/G;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/play_billing/B3;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/G;->a(Lcom/google/android/gms/internal/play_billing/B3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    const-string v0, "BillingLogger"

    .line 34
    .line 35
    const-string v1, "Unable to log."

    .line 36
    .line 37
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/play_billing/g3;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/play_billing/s3;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Z1;->l()Lcom/google/android/gms/internal/play_billing/V1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/play_billing/r3;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/r3;->m(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/google/android/gms/internal/play_billing/s3;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/k;->f(Lcom/google/android/gms/internal/play_billing/g3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    const-string p2, "BillingLogger"

    .line 28
    .line 29
    const-string v0, "Unable to log."

    .line 30
    .line 31
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/play_billing/l3;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/B3;->A()Lcom/google/android/gms/internal/play_billing/A3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/gms/internal/play_billing/s3;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/A3;->p(Lcom/google/android/gms/internal/play_billing/s3;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/A3;->o(Lcom/google/android/gms/internal/play_billing/l3;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/play_billing/B3;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/billingclient/api/k;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/android/billingclient/api/G;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/G;->a(Lcom/google/android/gms/internal/play_billing/B3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    const-string v0, "BillingLogger"

    .line 31
    .line 32
    const-string v1, "Unable to log."

    .line 33
    .line 34
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/play_billing/E3;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/k;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/android/billingclient/api/G;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/B3;->A()Lcom/google/android/gms/internal/play_billing/A3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lcom/google/android/gms/internal/play_billing/s3;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/A3;->p(Lcom/google/android/gms/internal/play_billing/s3;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/A3;->q(Lcom/google/android/gms/internal/play_billing/E3;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/play_billing/B3;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/G;->a(Lcom/google/android/gms/internal/play_billing/B3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    const-string v0, "BillingLogger"

    .line 31
    .line 32
    const-string v1, "Unable to log."

    .line 33
    .line 34
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/play_billing/G3;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/B3;->A()Lcom/google/android/gms/internal/play_billing/A3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/k;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/play_billing/s3;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/A3;->p(Lcom/google/android/gms/internal/play_billing/s3;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/A3;->r(Lcom/google/android/gms/internal/play_billing/G3;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/billingclient/api/k;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lcom/android/billingclient/api/G;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/V1;->j()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/play_billing/B3;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/G;->a(Lcom/google/android/gms/internal/play_billing/B3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    const-string v0, "BillingLogger"

    .line 34
    .line 35
    const-string v1, "Unable to log."

    .line 36
    .line 37
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
