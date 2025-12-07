.class public final Lcom/google/android/gms/internal/play_billing/j0;
.super Lcom/google/android/gms/internal/play_billing/k0;
.source "SourceFile"


# static fields
.field private static final f:Lcom/google/android/gms/internal/play_billing/j0;

.field public static final synthetic g:I


# instance fields
.field final d:Lcom/google/android/gms/internal/play_billing/L;

.field final e:Lcom/google/android/gms/internal/play_billing/L;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/j0;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/K;->i()Lcom/google/android/gms/internal/play_billing/K;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J;->i()Lcom/google/android/gms/internal/play_billing/J;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/j0;-><init>(Lcom/google/android/gms/internal/play_billing/L;Lcom/google/android/gms/internal/play_billing/L;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/play_billing/j0;->f:Lcom/google/android/gms/internal/play_billing/j0;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/L;Lcom/google/android/gms/internal/play_billing/L;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/k0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/L;->f(Lcom/google/android/gms/internal/play_billing/L;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J;->i()Lcom/google/android/gms/internal/play_billing/J;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/K;->i()Lcom/google/android/gms/internal/play_billing/K;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eq p2, v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const/16 v2, 0x10

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/play_billing/L;->g(Ljava/lang/StringBuilder;)V

    .line 37
    .line 38
    .line 39
    const-string p1, ".."

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/play_billing/L;->h(Ljava/lang/StringBuilder;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "Invalid range: "

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public static a()Lcom/google/android/gms/internal/play_billing/j0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j0;->f:Lcom/google/android/gms/internal/play_billing/j0;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/play_billing/j0;)Lcom/google/android/gms/internal/play_billing/j0;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/L;->f(Lcom/google/android/gms/internal/play_billing/L;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 10
    .line 11
    iget-object v4, p1, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/play_billing/L;->f(Lcom/google/android/gms/internal/play_billing/L;)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-ltz v2, :cond_1

    .line 18
    .line 19
    if-lez v5, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p0

    .line 23
    :cond_1
    :goto_0
    if-gtz v2, :cond_3

    .line 24
    .line 25
    if-gez v5, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    return-object p1

    .line 29
    :cond_3
    :goto_1
    if-ltz v2, :cond_4

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_4
    move-object v0, v1

    .line 33
    :goto_2
    if-gtz v5, :cond_5

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_5
    move-object v3, v4

    .line 37
    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/L;->f(Lcom/google/android/gms/internal/play_billing/L;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x1

    .line 42
    const/4 v4, 0x0

    .line 43
    if-gtz v1, :cond_6

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    goto :goto_4

    .line 47
    :cond_6
    const/4 v1, 0x0

    .line 48
    :goto_4
    if-eqz v1, :cond_7

    .line 49
    .line 50
    new-instance p1, Lcom/google/android/gms/internal/play_billing/j0;

    .line 51
    .line 52
    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/internal/play_billing/j0;-><init>(Lcom/google/android/gms/internal/play_billing/L;Lcom/google/android/gms/internal/play_billing/L;)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object p0, v1, v4

    .line 62
    .line 63
    aput-object p1, v1, v2

    .line 64
    .line 65
    const-string p1, "intersection is undefined for disconnected ranges %s and %s"

    .line 66
    .line 67
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0
.end method

.method public final c(Lcom/google/android/gms/internal/play_billing/j0;)Lcom/google/android/gms/internal/play_billing/j0;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/L;->f(Lcom/google/android/gms/internal/play_billing/L;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 10
    .line 11
    iget-object v3, p1, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/L;->f(Lcom/google/android/gms/internal/play_billing/L;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-gtz v0, :cond_1

    .line 18
    .line 19
    if-gez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p0

    .line 23
    :cond_1
    :goto_0
    if-ltz v0, :cond_3

    .line 24
    .line 25
    if-lez v2, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    return-object p1

    .line 29
    :cond_3
    :goto_1
    if-gtz v0, :cond_4

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_4
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 33
    .line 34
    :goto_2
    if-gez v2, :cond_5

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_5
    move-object p1, p0

    .line 38
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/play_billing/j0;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 41
    .line 42
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/j0;-><init>(Lcom/google/android/gms/internal/play_billing/L;Lcom/google/android/gms/internal/play_billing/L;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/j0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/play_billing/j0;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/L;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/L;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/L;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/L;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/j0;->d:Lcom/google/android/gms/internal/play_billing/L;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/L;->g(Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    const-string v1, ".."

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/j0;->e:Lcom/google/android/gms/internal/play_billing/L;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/L;->h(Ljava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
