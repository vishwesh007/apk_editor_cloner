.class public Lcom/google/android/gms/internal/play_billing/V1;
.super Lcom/google/android/gms/internal/play_billing/u1;
.source "SourceFile"


# instance fields
.field private final d:Lcom/google/android/gms/internal/play_billing/Z1;

.field protected e:Lcom/google/android/gms/internal/play_billing/Z1;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/play_billing/Z1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/u1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/V1;->d:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/Z1;->i()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->j(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Default instance must be immutable."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->s(Lcom/google/android/gms/internal/play_billing/Z1;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->d:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->j(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/play_billing/V1;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/V1;->k()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 15
    .line 16
    return-object v0
.end method

.method public final i(Lcom/google/android/gms/internal/play_billing/s3;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->d:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/Z1;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/Z1;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->j(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/F2;->a()Lcom/google/android/gms/internal/play_billing/F2;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/F2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/I2;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/F2;->a()Lcom/google/android/gms/internal/play_billing/F2;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/F2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/I2;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final j()Lcom/google/android/gms/internal/play_billing/Z1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/V1;->k()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->s(Lcom/google/android/gms/internal/play_billing/Z1;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/R2;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/R2;-><init>()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public final k()Lcom/google/android/gms/internal/play_billing/Z1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Z1;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Z1;->o()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 18
    .line 19
    return-object v0
.end method

.method protected final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Z1;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/V1;->d:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/Z1;->j(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/F2;->a()Lcom/google/android/gms/internal/play_billing/F2;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/F2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/I2;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/V1;->e:Lcom/google/android/gms/internal/play_billing/Z1;

    .line 36
    .line 37
    :cond_0
    return-void
.end method
