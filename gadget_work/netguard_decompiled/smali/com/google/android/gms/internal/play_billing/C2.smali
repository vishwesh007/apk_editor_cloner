.class final Lcom/google/android/gms/internal/play_billing/C2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/I2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/play_billing/y2;

.field private final b:Lcom/google/android/gms/internal/play_billing/q;

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/play_billing/p;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/q;Lcom/google/android/gms/internal/play_billing/p;Lcom/google/android/gms/internal/play_billing/y2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/C2;->b:Lcom/google/android/gms/internal/play_billing/q;

    instance-of p1, p3, Lcom/google/android/gms/internal/play_billing/W1;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/C2;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/C2;->d:Lcom/google/android/gms/internal/play_billing/p;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/C2;->a:Lcom/google/android/gms/internal/play_billing/y2;

    return-void
.end method

.method static j(Lcom/google/android/gms/internal/play_billing/q;Lcom/google/android/gms/internal/play_billing/p;Lcom/google/android/gms/internal/play_billing/y2;)Lcom/google/android/gms/internal/play_billing/C2;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/C2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/C2;-><init>(Lcom/google/android/gms/internal/play_billing/q;Lcom/google/android/gms/internal/play_billing/p;Lcom/google/android/gms/internal/play_billing/y2;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/S2;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/C2;->c:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/gms/internal/play_billing/W1;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 17
    .line 18
    mul-int/lit8 v0, v0, 0x35

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/P2;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr v0, p1

    .line 27
    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/C2;->b:Lcom/google/android/gms/internal/play_billing/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/q;->f(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/C2;->d:Lcom/google/android/gms/internal/play_billing/p;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/p;->d(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/z1;)V
    .locals 0

    .line 1
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 3
    .line 4
    iget-object p3, p2, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/S2;->c()Lcom/google/android/gms/internal/play_billing/S2;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    if-eq p3, p4, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/S2;->f()Lcom/google/android/gms/internal/play_billing/S2;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p2, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 18
    .line 19
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/W1;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/S2;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/C2;->c:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/gms/internal/play_billing/W1;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/R1;->b()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    add-int/2addr v0, p1

    .line 23
    :cond_0
    return v0
.end method

.method public final e()Lcom/google/android/gms/internal/play_billing/Z1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/C2;->a:Lcom/google/android/gms/internal/play_billing/y2;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->j(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/y2;->e()Lcom/google/android/gms/internal/play_billing/u1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/play_billing/V1;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/V1;->k()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/J2;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/C2;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p2, Lcom/google/android/gms/internal/play_billing/W1;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/W1;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/K1;)V
    .locals 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/W1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/R1;->d()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map$Entry;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/google/android/gms/internal/play_billing/Q1;

    .line 27
    .line 28
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/Q1;->a()Lcom/google/android/gms/internal/play_billing/b3;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    sget-object v4, Lcom/google/android/gms/internal/play_billing/b3;->d:Lcom/google/android/gms/internal/play_billing/b3;

    .line 33
    .line 34
    if-ne v3, v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/Q1;->e()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/Q1;->d()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    instance-of v3, v1, Lcom/google/android/gms/internal/play_billing/i2;

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/Q1;->c()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    check-cast v1, Lcom/google/android/gms/internal/play_billing/i2;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/i2;->a()Lcom/google/android/gms/internal/play_billing/k2;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/l2;->b()Lcom/google/android/gms/internal/play_billing/F1;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/play_billing/K1;->I(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/Q1;->c()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/play_billing/K1;->I(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string p2, "Found invalid MessageSet item."

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/S2;->j(Lcom/google/android/gms/internal/play_billing/K1;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 5
    .line 6
    move-object v1, p2

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/S2;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/C2;->c:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast p1, Lcom/google/android/gms/internal/play_billing/W1;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 26
    .line 27
    check-cast p2, Lcom/google/android/gms/internal/play_billing/W1;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/R1;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/W1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/R1;->g()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
