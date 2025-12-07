.class final Lcom/google/android/gms/internal/play_billing/B2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/I2;


# static fields
.field private static final l:[I

.field private static final m:Lsun/misc/Unsafe;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/play_billing/y2;

.field private final f:Z

.field private final g:[I

.field private final h:I

.field private final i:I

.field private final j:Lcom/google/android/gms/internal/play_billing/q;

.field private final k:Lcom/google/android/gms/internal/play_billing/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/internal/play_billing/B2;->l:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/X2;->k()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/y2;[IIILcom/google/android/gms/internal/play_billing/q;Lcom/google/android/gms/internal/play_billing/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/B2;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/B2;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/B2;->d:I

    if-eqz p10, :cond_0

    instance-of p1, p5, Lcom/google/android/gms/internal/play_billing/W1;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/B2;->f:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/play_billing/B2;->g:[I

    iput p7, p0, Lcom/google/android/gms/internal/play_billing/B2;->h:I

    iput p8, p0, Lcom/google/android/gms/internal/play_billing/B2;->i:I

    iput-object p9, p0, Lcom/google/android/gms/internal/play_billing/B2;->j:Lcom/google/android/gms/internal/play_billing/q;

    iput-object p10, p0, Lcom/google/android/gms/internal/play_billing/B2;->k:Lcom/google/android/gms/internal/play_billing/p;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/B2;->e:Lcom/google/android/gms/internal/play_billing/y2;

    return-void
.end method

.method private static A(JLjava/lang/Object;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private final B(I)Lcom/google/android/gms/internal/play_billing/I2;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object v1, v0, p1

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/play_billing/I2;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/F2;->a()Lcom/google/android/gms/internal/play_billing/F2;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    aget-object v1, v0, v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/F2;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/I2;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    aput-object v1, v0, p1

    .line 28
    .line 29
    return-object v1
.end method

.method private final C(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/I2;->e()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    int-to-long v1, v1

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/B2;->s(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/I2;->e()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private final D(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/I2;->e()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const p2, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr p1, p2

    .line 24
    int-to-long p1, p1

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {v1, p3, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/B2;->s(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/I2;->e()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private static E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Field "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " for "

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, " not found. Known fields are "

    .line 59
    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method

.method private final j(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    int-to-long v0, v0

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 18
    .line 19
    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/B2;->s(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/I2;->e()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v3}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/B2;->s(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/I2;->e()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p3, v4, p2}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p2, v4

    .line 80
    :cond_3
    invoke-interface {p3, p2, v3}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 87
    .line 88
    aget p2, v0, p2

    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Source subfield "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p2, " is present but null: "

    .line 105
    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method private final k(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 2
    .line 3
    aget v1, v0, p2

    .line 4
    .line 5
    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v2, v2

    .line 21
    sget-object v4, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-direct {p0, v1, p2, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/B2;->s(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/I2;->e()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p3, v0, v5}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-direct {p0, v1, p2, p1}, Lcom/google/android/gms/internal/play_billing/B2;->m(IILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/B2;->s(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/I2;->e()Lcom/google/android/gms/internal/play_billing/Z1;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p3, v0, p2}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p2, v0

    .line 84
    :cond_3
    invoke-interface {p3, p2, v5}, Lcom/google/android/gms/internal/play_billing/I2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    aget p2, v0, p2

    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "Source subfield "

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p2, " is present but null: "

    .line 107
    .line 108
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1
.end method

.method private final l(ILjava/lang/Object;)V
    .locals 5

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, p1

    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    .line 21
    .line 22
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    shl-int p1, v3, p1

    .line 28
    .line 29
    or-int/2addr p1, v2

    .line 30
    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/X2;->u(Ljava/lang/Object;JI)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final m(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 4
    .line 5
    aget p2, v0, p2

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p2, v0

    .line 11
    int-to-long v0, p2

    .line 12
    invoke-static {p3, v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/X2;->u(Ljava/lang/Object;JI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final n(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 11
    .line 12
    invoke-virtual {v2, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final o(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 11
    .line 12
    invoke-virtual {v2, p1, v0, v1, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/B2;->m(IILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final p(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method private final q(ILjava/lang/Object;)Z
    .locals 9

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    cmp-long v8, v2, v4

    .line 19
    .line 20
    if-nez v8, :cond_14

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    and-int v0, p1, v1

    .line 27
    .line 28
    ushr-int/lit8 p1, p1, 0x14

    .line 29
    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    return v7

    .line 51
    :cond_0
    return v6

    .line 52
    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    cmp-long v0, p1, v2

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    return v7

    .line 61
    :cond_1
    return v6

    .line 62
    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    return v7

    .line 69
    :cond_2
    return v6

    .line 70
    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    cmp-long v0, p1, v2

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    return v7

    .line 79
    :cond_3
    return v6

    .line 80
    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    return v7

    .line 87
    :cond_4
    return v6

    .line 88
    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    return v7

    .line 95
    :cond_5
    return v6

    .line 96
    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    return v7

    .line 103
    :cond_6
    return v6

    .line 104
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/play_billing/F1;->e:Lcom/google/android/gms/internal/play_billing/F1;

    .line 105
    .line 106
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/F1;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_7

    .line 115
    .line 116
    return v7

    .line 117
    :cond_7
    return v6

    .line 118
    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    return v7

    .line 125
    :cond_8
    return v6

    .line 126
    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    instance-of p2, p1, Ljava/lang/String;

    .line 131
    .line 132
    if-eqz p2, :cond_a

    .line 133
    .line 134
    check-cast p1, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_9

    .line 141
    .line 142
    return v7

    .line 143
    :cond_9
    return v6

    .line 144
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/F1;

    .line 145
    .line 146
    if-eqz p2, :cond_c

    .line 147
    .line 148
    sget-object p2, Lcom/google/android/gms/internal/play_billing/F1;->e:Lcom/google/android/gms/internal/play_billing/F1;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/F1;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    return v7

    .line 157
    :cond_b
    return v6

    .line 158
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :pswitch_a
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->A(JLjava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    return p1

    .line 169
    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_d

    .line 174
    .line 175
    return v7

    .line 176
    :cond_d
    return v6

    .line 177
    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 178
    .line 179
    .line 180
    move-result-wide p1

    .line 181
    cmp-long v0, p1, v2

    .line 182
    .line 183
    if-eqz v0, :cond_e

    .line 184
    .line 185
    return v7

    .line 186
    :cond_e
    return v6

    .line 187
    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_f

    .line 192
    .line 193
    return v7

    .line 194
    :cond_f
    return v6

    .line 195
    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 196
    .line 197
    .line 198
    move-result-wide p1

    .line 199
    cmp-long v0, p1, v2

    .line 200
    .line 201
    if-eqz v0, :cond_10

    .line 202
    .line 203
    return v7

    .line 204
    :cond_10
    return v6

    .line 205
    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 206
    .line 207
    .line 208
    move-result-wide p1

    .line 209
    cmp-long v0, p1, v2

    .line 210
    .line 211
    if-eqz v0, :cond_11

    .line 212
    .line 213
    return v7

    .line 214
    :cond_11
    return v6

    .line 215
    :pswitch_10
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->f(JLjava/lang/Object;)F

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_12

    .line 224
    .line 225
    return v7

    .line 226
    :cond_12
    return v6

    .line 227
    :pswitch_11
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->e(JLjava/lang/Object;)D

    .line 228
    .line 229
    .line 230
    move-result-wide p1

    .line 231
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 232
    .line 233
    .line 234
    move-result-wide p1

    .line 235
    cmp-long v0, p1, v2

    .line 236
    .line 237
    if-eqz v0, :cond_13

    .line 238
    .line 239
    return v7

    .line 240
    :cond_13
    return v6

    .line 241
    :cond_14
    ushr-int/lit8 p1, v0, 0x14

    .line 242
    .line 243
    shl-int p1, v7, p1

    .line 244
    .line 245
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    and-int/2addr p1, p2

    .line 250
    if-eqz p1, :cond_15

    .line 251
    .line 252
    return v7

    .line 253
    :cond_15
    return v6

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final r(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    and-int p1, p4, p5

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method private static s(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/Z1;->i()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private final t(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 4
    .line 5
    aget p2, v0, p2

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p2, v0

    .line 11
    int-to-long v0, p2

    .line 12
    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method static v(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/S2;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/S2;->c()Lcom/google/android/gms/internal/play_billing/S2;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/S2;->f()Lcom/google/android/gms/internal/play_billing/S2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method static w(Lcom/google/android/gms/internal/play_billing/w2;Lcom/google/android/gms/internal/play_billing/q;Lcom/google/android/gms/internal/play_billing/p;)Lcom/google/android/gms/internal/play_billing/B2;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/H2;

    .line 4
    .line 5
    if-eqz v1, :cond_37

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/H2;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/H2;->d()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const v5, 0xd800

    .line 23
    .line 24
    .line 25
    if-lt v4, v5, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-lt v4, v5, :cond_1

    .line 35
    .line 36
    move v4, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v7, 0x1

    .line 39
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 40
    .line 41
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-lt v7, v5, :cond_3

    .line 46
    .line 47
    and-int/lit16 v7, v7, 0x1fff

    .line 48
    .line 49
    const/16 v9, 0xd

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-lt v4, v5, :cond_2

    .line 58
    .line 59
    and-int/lit16 v4, v4, 0x1fff

    .line 60
    .line 61
    shl-int/2addr v4, v9

    .line 62
    or-int/2addr v7, v4

    .line 63
    add-int/lit8 v9, v9, 0xd

    .line 64
    .line 65
    move v4, v10

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    shl-int/2addr v4, v9

    .line 68
    or-int/2addr v7, v4

    .line 69
    move v4, v10

    .line 70
    :cond_3
    if-nez v7, :cond_4

    .line 71
    .line 72
    sget-object v7, Lcom/google/android/gms/internal/play_billing/B2;->l:[I

    .line 73
    .line 74
    move-object v15, v7

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v12, 0x0

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    goto/16 :goto_a

    .line 84
    .line 85
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 86
    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-lt v4, v5, :cond_6

    .line 92
    .line 93
    and-int/lit16 v4, v4, 0x1fff

    .line 94
    .line 95
    const/16 v9, 0xd

    .line 96
    .line 97
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 98
    .line 99
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-lt v7, v5, :cond_5

    .line 104
    .line 105
    and-int/lit16 v7, v7, 0x1fff

    .line 106
    .line 107
    shl-int/2addr v7, v9

    .line 108
    or-int/2addr v4, v7

    .line 109
    add-int/lit8 v9, v9, 0xd

    .line 110
    .line 111
    move v7, v10

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    shl-int/2addr v7, v9

    .line 114
    or-int/2addr v4, v7

    .line 115
    move v7, v10

    .line 116
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 117
    .line 118
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-lt v7, v5, :cond_8

    .line 123
    .line 124
    and-int/lit16 v7, v7, 0x1fff

    .line 125
    .line 126
    const/16 v10, 0xd

    .line 127
    .line 128
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 129
    .line 130
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-lt v9, v5, :cond_7

    .line 135
    .line 136
    and-int/lit16 v9, v9, 0x1fff

    .line 137
    .line 138
    shl-int/2addr v9, v10

    .line 139
    or-int/2addr v7, v9

    .line 140
    add-int/lit8 v10, v10, 0xd

    .line 141
    .line 142
    move v9, v11

    .line 143
    goto :goto_3

    .line 144
    :cond_7
    shl-int/2addr v9, v10

    .line 145
    or-int/2addr v7, v9

    .line 146
    move v9, v11

    .line 147
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 148
    .line 149
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-lt v9, v5, :cond_a

    .line 154
    .line 155
    and-int/lit16 v9, v9, 0x1fff

    .line 156
    .line 157
    const/16 v11, 0xd

    .line 158
    .line 159
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 160
    .line 161
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-lt v10, v5, :cond_9

    .line 166
    .line 167
    and-int/lit16 v10, v10, 0x1fff

    .line 168
    .line 169
    shl-int/2addr v10, v11

    .line 170
    or-int/2addr v9, v10

    .line 171
    add-int/lit8 v11, v11, 0xd

    .line 172
    .line 173
    move v10, v12

    .line 174
    goto :goto_4

    .line 175
    :cond_9
    shl-int/2addr v10, v11

    .line 176
    or-int/2addr v9, v10

    .line 177
    move v10, v12

    .line 178
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 179
    .line 180
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-lt v10, v5, :cond_c

    .line 185
    .line 186
    and-int/lit16 v10, v10, 0x1fff

    .line 187
    .line 188
    const/16 v12, 0xd

    .line 189
    .line 190
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 191
    .line 192
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-lt v11, v5, :cond_b

    .line 197
    .line 198
    and-int/lit16 v11, v11, 0x1fff

    .line 199
    .line 200
    shl-int/2addr v11, v12

    .line 201
    or-int/2addr v10, v11

    .line 202
    add-int/lit8 v12, v12, 0xd

    .line 203
    .line 204
    move v11, v13

    .line 205
    goto :goto_5

    .line 206
    :cond_b
    shl-int/2addr v11, v12

    .line 207
    or-int/2addr v10, v11

    .line 208
    move v11, v13

    .line 209
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 210
    .line 211
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-lt v11, v5, :cond_e

    .line 216
    .line 217
    and-int/lit16 v11, v11, 0x1fff

    .line 218
    .line 219
    const/16 v13, 0xd

    .line 220
    .line 221
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 222
    .line 223
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    if-lt v12, v5, :cond_d

    .line 228
    .line 229
    and-int/lit16 v12, v12, 0x1fff

    .line 230
    .line 231
    shl-int/2addr v12, v13

    .line 232
    or-int/2addr v11, v12

    .line 233
    add-int/lit8 v13, v13, 0xd

    .line 234
    .line 235
    move v12, v14

    .line 236
    goto :goto_6

    .line 237
    :cond_d
    shl-int/2addr v12, v13

    .line 238
    or-int/2addr v11, v12

    .line 239
    move v12, v14

    .line 240
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 241
    .line 242
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    if-lt v12, v5, :cond_10

    .line 247
    .line 248
    and-int/lit16 v12, v12, 0x1fff

    .line 249
    .line 250
    const/16 v14, 0xd

    .line 251
    .line 252
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 253
    .line 254
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    if-lt v13, v5, :cond_f

    .line 259
    .line 260
    and-int/lit16 v13, v13, 0x1fff

    .line 261
    .line 262
    shl-int/2addr v13, v14

    .line 263
    or-int/2addr v12, v13

    .line 264
    add-int/lit8 v14, v14, 0xd

    .line 265
    .line 266
    move v13, v15

    .line 267
    goto :goto_7

    .line 268
    :cond_f
    shl-int/2addr v13, v14

    .line 269
    or-int/2addr v12, v13

    .line 270
    move v13, v15

    .line 271
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 272
    .line 273
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 274
    .line 275
    .line 276
    move-result v13

    .line 277
    if-lt v13, v5, :cond_12

    .line 278
    .line 279
    and-int/lit16 v13, v13, 0x1fff

    .line 280
    .line 281
    const/16 v15, 0xd

    .line 282
    .line 283
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 284
    .line 285
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    if-lt v14, v5, :cond_11

    .line 290
    .line 291
    and-int/lit16 v14, v14, 0x1fff

    .line 292
    .line 293
    shl-int/2addr v14, v15

    .line 294
    or-int/2addr v13, v14

    .line 295
    add-int/lit8 v15, v15, 0xd

    .line 296
    .line 297
    move/from16 v14, v16

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_11
    shl-int/2addr v14, v15

    .line 301
    or-int/2addr v13, v14

    .line 302
    move/from16 v14, v16

    .line 303
    .line 304
    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 305
    .line 306
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-lt v14, v5, :cond_14

    .line 311
    .line 312
    and-int/lit16 v14, v14, 0x1fff

    .line 313
    .line 314
    const/16 v16, 0xd

    .line 315
    .line 316
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 317
    .line 318
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 319
    .line 320
    .line 321
    move-result v15

    .line 322
    if-lt v15, v5, :cond_13

    .line 323
    .line 324
    and-int/lit16 v15, v15, 0x1fff

    .line 325
    .line 326
    shl-int v15, v15, v16

    .line 327
    .line 328
    or-int/2addr v14, v15

    .line 329
    add-int/lit8 v16, v16, 0xd

    .line 330
    .line 331
    move/from16 v15, v17

    .line 332
    .line 333
    goto :goto_9

    .line 334
    :cond_13
    shl-int v15, v15, v16

    .line 335
    .line 336
    or-int/2addr v14, v15

    .line 337
    move/from16 v15, v17

    .line 338
    .line 339
    :cond_14
    add-int v16, v14, v12

    .line 340
    .line 341
    add-int v13, v16, v13

    .line 342
    .line 343
    add-int v16, v4, v4

    .line 344
    .line 345
    add-int v16, v16, v7

    .line 346
    .line 347
    new-array v7, v13, [I

    .line 348
    .line 349
    move v13, v9

    .line 350
    move/from16 v9, v16

    .line 351
    .line 352
    move/from16 v16, v14

    .line 353
    .line 354
    move v14, v10

    .line 355
    move-object/from16 v32, v7

    .line 356
    .line 357
    move v7, v4

    .line 358
    move v4, v15

    .line 359
    move-object/from16 v15, v32

    .line 360
    .line 361
    :goto_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/H2;->e()[Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v10

    .line 365
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/H2;->c()Lcom/google/android/gms/internal/play_billing/y2;

    .line 366
    .line 367
    .line 368
    move-result-object v17

    .line 369
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    add-int v17, v16, v12

    .line 374
    .line 375
    add-int v12, v11, v11

    .line 376
    .line 377
    mul-int/lit8 v11, v11, 0x3

    .line 378
    .line 379
    new-array v11, v11, [I

    .line 380
    .line 381
    new-array v12, v12, [Ljava/lang/Object;

    .line 382
    .line 383
    move/from16 v20, v16

    .line 384
    .line 385
    move/from16 v21, v17

    .line 386
    .line 387
    const/16 v18, 0x0

    .line 388
    .line 389
    const/16 v19, 0x0

    .line 390
    .line 391
    :goto_b
    if-ge v4, v2, :cond_36

    .line 392
    .line 393
    add-int/lit8 v22, v4, 0x1

    .line 394
    .line 395
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-lt v4, v5, :cond_16

    .line 400
    .line 401
    and-int/lit16 v4, v4, 0x1fff

    .line 402
    .line 403
    move/from16 v8, v22

    .line 404
    .line 405
    const/16 v22, 0xd

    .line 406
    .line 407
    :goto_c
    add-int/lit8 v23, v8, 0x1

    .line 408
    .line 409
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 410
    .line 411
    .line 412
    move-result v8

    .line 413
    if-lt v8, v5, :cond_15

    .line 414
    .line 415
    and-int/lit16 v8, v8, 0x1fff

    .line 416
    .line 417
    shl-int v8, v8, v22

    .line 418
    .line 419
    or-int/2addr v4, v8

    .line 420
    add-int/lit8 v22, v22, 0xd

    .line 421
    .line 422
    move/from16 v8, v23

    .line 423
    .line 424
    goto :goto_c

    .line 425
    :cond_15
    shl-int v8, v8, v22

    .line 426
    .line 427
    or-int/2addr v4, v8

    .line 428
    move/from16 v8, v23

    .line 429
    .line 430
    goto :goto_d

    .line 431
    :cond_16
    move/from16 v8, v22

    .line 432
    .line 433
    :goto_d
    add-int/lit8 v22, v8, 0x1

    .line 434
    .line 435
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    if-lt v8, v5, :cond_18

    .line 440
    .line 441
    and-int/lit16 v8, v8, 0x1fff

    .line 442
    .line 443
    move/from16 v6, v22

    .line 444
    .line 445
    const/16 v22, 0xd

    .line 446
    .line 447
    :goto_e
    add-int/lit8 v24, v6, 0x1

    .line 448
    .line 449
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 450
    .line 451
    .line 452
    move-result v6

    .line 453
    if-lt v6, v5, :cond_17

    .line 454
    .line 455
    and-int/lit16 v6, v6, 0x1fff

    .line 456
    .line 457
    shl-int v6, v6, v22

    .line 458
    .line 459
    or-int/2addr v8, v6

    .line 460
    add-int/lit8 v22, v22, 0xd

    .line 461
    .line 462
    move/from16 v6, v24

    .line 463
    .line 464
    goto :goto_e

    .line 465
    :cond_17
    shl-int v6, v6, v22

    .line 466
    .line 467
    or-int/2addr v8, v6

    .line 468
    move/from16 v6, v24

    .line 469
    .line 470
    goto :goto_f

    .line 471
    :cond_18
    move/from16 v6, v22

    .line 472
    .line 473
    :goto_f
    and-int/lit16 v5, v8, 0x400

    .line 474
    .line 475
    if-eqz v5, :cond_19

    .line 476
    .line 477
    add-int/lit8 v5, v18, 0x1

    .line 478
    .line 479
    aput v19, v15, v18

    .line 480
    .line 481
    move/from16 v18, v5

    .line 482
    .line 483
    :cond_19
    and-int/lit16 v5, v8, 0xff

    .line 484
    .line 485
    move/from16 v24, v2

    .line 486
    .line 487
    and-int/lit16 v2, v8, 0x800

    .line 488
    .line 489
    move/from16 v25, v14

    .line 490
    .line 491
    sget-object v14, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 492
    .line 493
    move/from16 v29, v13

    .line 494
    .line 495
    const/16 v13, 0x33

    .line 496
    .line 497
    if-lt v5, v13, :cond_23

    .line 498
    .line 499
    add-int/lit8 v13, v6, 0x1

    .line 500
    .line 501
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    move/from16 v26, v13

    .line 506
    .line 507
    const v13, 0xd800

    .line 508
    .line 509
    .line 510
    if-lt v6, v13, :cond_1b

    .line 511
    .line 512
    and-int/lit16 v6, v6, 0x1fff

    .line 513
    .line 514
    move/from16 v13, v26

    .line 515
    .line 516
    const/16 v26, 0xd

    .line 517
    .line 518
    :goto_10
    add-int/lit8 v30, v13, 0x1

    .line 519
    .line 520
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 521
    .line 522
    .line 523
    move-result v13

    .line 524
    move/from16 v31, v4

    .line 525
    .line 526
    const v4, 0xd800

    .line 527
    .line 528
    .line 529
    if-lt v13, v4, :cond_1a

    .line 530
    .line 531
    and-int/lit16 v4, v13, 0x1fff

    .line 532
    .line 533
    shl-int v4, v4, v26

    .line 534
    .line 535
    or-int/2addr v6, v4

    .line 536
    add-int/lit8 v26, v26, 0xd

    .line 537
    .line 538
    move/from16 v13, v30

    .line 539
    .line 540
    move/from16 v4, v31

    .line 541
    .line 542
    goto :goto_10

    .line 543
    :cond_1a
    shl-int v4, v13, v26

    .line 544
    .line 545
    or-int/2addr v6, v4

    .line 546
    move/from16 v13, v30

    .line 547
    .line 548
    goto :goto_11

    .line 549
    :cond_1b
    move/from16 v31, v4

    .line 550
    .line 551
    move/from16 v13, v26

    .line 552
    .line 553
    :goto_11
    add-int/lit8 v4, v5, -0x33

    .line 554
    .line 555
    move/from16 v26, v13

    .line 556
    .line 557
    const/16 v13, 0x9

    .line 558
    .line 559
    if-eq v4, v13, :cond_1f

    .line 560
    .line 561
    const/16 v13, 0x11

    .line 562
    .line 563
    if-ne v4, v13, :cond_1c

    .line 564
    .line 565
    goto :goto_13

    .line 566
    :cond_1c
    const/16 v13, 0xc

    .line 567
    .line 568
    if-ne v4, v13, :cond_20

    .line 569
    .line 570
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/H2;->a()I

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    const/4 v13, 0x1

    .line 575
    if-eq v4, v13, :cond_1e

    .line 576
    .line 577
    if-eqz v2, :cond_1d

    .line 578
    .line 579
    goto :goto_12

    .line 580
    :cond_1d
    const/4 v2, 0x0

    .line 581
    goto :goto_15

    .line 582
    :cond_1e
    :goto_12
    add-int/lit8 v4, v9, 0x1

    .line 583
    .line 584
    div-int/lit8 v23, v19, 0x3

    .line 585
    .line 586
    add-int v23, v23, v23

    .line 587
    .line 588
    add-int/lit8 v23, v23, 0x1

    .line 589
    .line 590
    aget-object v9, v10, v9

    .line 591
    .line 592
    aput-object v9, v12, v23

    .line 593
    .line 594
    goto :goto_14

    .line 595
    :cond_1f
    :goto_13
    const/4 v13, 0x1

    .line 596
    add-int/lit8 v4, v9, 0x1

    .line 597
    .line 598
    div-int/lit8 v23, v19, 0x3

    .line 599
    .line 600
    add-int v23, v23, v23

    .line 601
    .line 602
    add-int/lit8 v27, v23, 0x1

    .line 603
    .line 604
    aget-object v9, v10, v9

    .line 605
    .line 606
    aput-object v9, v12, v27

    .line 607
    .line 608
    :goto_14
    move v9, v4

    .line 609
    :cond_20
    :goto_15
    add-int/2addr v6, v6

    .line 610
    aget-object v4, v10, v6

    .line 611
    .line 612
    instance-of v13, v4, Ljava/lang/reflect/Field;

    .line 613
    .line 614
    if-eqz v13, :cond_21

    .line 615
    .line 616
    check-cast v4, Ljava/lang/reflect/Field;

    .line 617
    .line 618
    goto :goto_16

    .line 619
    :cond_21
    check-cast v4, Ljava/lang/String;

    .line 620
    .line 621
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/B2;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    aput-object v4, v10, v6

    .line 626
    .line 627
    :goto_16
    move-object v13, v1

    .line 628
    move/from16 v27, v2

    .line 629
    .line 630
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 631
    .line 632
    .line 633
    move-result-wide v1

    .line 634
    long-to-int v2, v1

    .line 635
    add-int/lit8 v6, v6, 0x1

    .line 636
    .line 637
    aget-object v1, v10, v6

    .line 638
    .line 639
    instance-of v4, v1, Ljava/lang/reflect/Field;

    .line 640
    .line 641
    if-eqz v4, :cond_22

    .line 642
    .line 643
    check-cast v1, Ljava/lang/reflect/Field;

    .line 644
    .line 645
    goto :goto_17

    .line 646
    :cond_22
    check-cast v1, Ljava/lang/String;

    .line 647
    .line 648
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/B2;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    aput-object v1, v10, v6

    .line 653
    .line 654
    :goto_17
    move v4, v2

    .line 655
    invoke-virtual {v14, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 656
    .line 657
    .line 658
    move-result-wide v1

    .line 659
    long-to-int v2, v1

    .line 660
    move v6, v2

    .line 661
    move v1, v4

    .line 662
    move-object v4, v13

    .line 663
    move/from16 v28, v26

    .line 664
    .line 665
    move/from16 v2, v27

    .line 666
    .line 667
    move v13, v9

    .line 668
    const/4 v9, 0x0

    .line 669
    goto/16 :goto_23

    .line 670
    .line 671
    :cond_23
    move-object v13, v1

    .line 672
    move/from16 v31, v4

    .line 673
    .line 674
    add-int/lit8 v1, v9, 0x1

    .line 675
    .line 676
    aget-object v4, v10, v9

    .line 677
    .line 678
    check-cast v4, Ljava/lang/String;

    .line 679
    .line 680
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/B2;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    const/16 v9, 0x9

    .line 685
    .line 686
    if-eq v5, v9, :cond_2d

    .line 687
    .line 688
    const/16 v9, 0x11

    .line 689
    .line 690
    if-ne v5, v9, :cond_24

    .line 691
    .line 692
    goto/16 :goto_1c

    .line 693
    .line 694
    :cond_24
    const/16 v9, 0x1b

    .line 695
    .line 696
    if-eq v5, v9, :cond_2c

    .line 697
    .line 698
    const/16 v9, 0x31

    .line 699
    .line 700
    if-ne v5, v9, :cond_25

    .line 701
    .line 702
    add-int/lit8 v9, v1, 0x1

    .line 703
    .line 704
    move-object/from16 v27, v13

    .line 705
    .line 706
    const/4 v13, 0x1

    .line 707
    goto :goto_1a

    .line 708
    :cond_25
    const/16 v9, 0xc

    .line 709
    .line 710
    if-eq v5, v9, :cond_29

    .line 711
    .line 712
    const/16 v9, 0x1e

    .line 713
    .line 714
    if-eq v5, v9, :cond_29

    .line 715
    .line 716
    const/16 v9, 0x2c

    .line 717
    .line 718
    if-ne v5, v9, :cond_26

    .line 719
    .line 720
    goto :goto_18

    .line 721
    :cond_26
    const/16 v9, 0x32

    .line 722
    .line 723
    if-ne v5, v9, :cond_28

    .line 724
    .line 725
    add-int/lit8 v9, v1, 0x1

    .line 726
    .line 727
    add-int/lit8 v27, v20, 0x1

    .line 728
    .line 729
    aput v19, v15, v20

    .line 730
    .line 731
    div-int/lit8 v20, v19, 0x3

    .line 732
    .line 733
    aget-object v1, v10, v1

    .line 734
    .line 735
    add-int v20, v20, v20

    .line 736
    .line 737
    aput-object v1, v12, v20

    .line 738
    .line 739
    if-eqz v2, :cond_27

    .line 740
    .line 741
    add-int/lit8 v20, v20, 0x1

    .line 742
    .line 743
    add-int/lit8 v1, v9, 0x1

    .line 744
    .line 745
    aget-object v9, v10, v9

    .line 746
    .line 747
    aput-object v9, v12, v20

    .line 748
    .line 749
    move v9, v1

    .line 750
    move/from16 v23, v2

    .line 751
    .line 752
    move/from16 v20, v27

    .line 753
    .line 754
    move-object/from16 v27, v13

    .line 755
    .line 756
    const/4 v13, 0x1

    .line 757
    goto :goto_1e

    .line 758
    :cond_27
    move v1, v9

    .line 759
    move/from16 v20, v27

    .line 760
    .line 761
    const/4 v2, 0x0

    .line 762
    :cond_28
    move-object/from16 v27, v13

    .line 763
    .line 764
    const/4 v13, 0x1

    .line 765
    goto :goto_1d

    .line 766
    :cond_29
    :goto_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/H2;->a()I

    .line 767
    .line 768
    .line 769
    move-result v9

    .line 770
    move-object/from16 v27, v13

    .line 771
    .line 772
    const/4 v13, 0x1

    .line 773
    if-eq v9, v13, :cond_2b

    .line 774
    .line 775
    if-eqz v2, :cond_2a

    .line 776
    .line 777
    goto :goto_19

    .line 778
    :cond_2a
    move v9, v1

    .line 779
    const/16 v23, 0x0

    .line 780
    .line 781
    goto :goto_1e

    .line 782
    :cond_2b
    :goto_19
    add-int/lit8 v9, v1, 0x1

    .line 783
    .line 784
    div-int/lit8 v23, v19, 0x3

    .line 785
    .line 786
    add-int v23, v23, v23

    .line 787
    .line 788
    add-int/lit8 v23, v23, 0x1

    .line 789
    .line 790
    aget-object v1, v10, v1

    .line 791
    .line 792
    aput-object v1, v12, v23

    .line 793
    .line 794
    goto :goto_1b

    .line 795
    :cond_2c
    move-object/from16 v27, v13

    .line 796
    .line 797
    const/4 v13, 0x1

    .line 798
    add-int/lit8 v9, v1, 0x1

    .line 799
    .line 800
    :goto_1a
    div-int/lit8 v23, v19, 0x3

    .line 801
    .line 802
    add-int v23, v23, v23

    .line 803
    .line 804
    add-int/lit8 v23, v23, 0x1

    .line 805
    .line 806
    aget-object v1, v10, v1

    .line 807
    .line 808
    aput-object v1, v12, v23

    .line 809
    .line 810
    :goto_1b
    move v1, v9

    .line 811
    goto :goto_1d

    .line 812
    :cond_2d
    :goto_1c
    move-object/from16 v27, v13

    .line 813
    .line 814
    const/4 v13, 0x1

    .line 815
    div-int/lit8 v9, v19, 0x3

    .line 816
    .line 817
    add-int/2addr v9, v9

    .line 818
    add-int/2addr v9, v13

    .line 819
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 820
    .line 821
    .line 822
    move-result-object v23

    .line 823
    aput-object v23, v12, v9

    .line 824
    .line 825
    :goto_1d
    move v9, v1

    .line 826
    move/from16 v23, v2

    .line 827
    .line 828
    :goto_1e
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 829
    .line 830
    .line 831
    move-result-wide v1

    .line 832
    long-to-int v2, v1

    .line 833
    and-int/lit16 v1, v8, 0x1000

    .line 834
    .line 835
    if-eqz v1, :cond_31

    .line 836
    .line 837
    const/16 v1, 0x11

    .line 838
    .line 839
    if-gt v5, v1, :cond_31

    .line 840
    .line 841
    add-int/lit8 v1, v6, 0x1

    .line 842
    .line 843
    move-object/from16 v4, v27

    .line 844
    .line 845
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 846
    .line 847
    .line 848
    move-result v6

    .line 849
    const v13, 0xd800

    .line 850
    .line 851
    .line 852
    if-lt v6, v13, :cond_2f

    .line 853
    .line 854
    and-int/lit16 v6, v6, 0x1fff

    .line 855
    .line 856
    const/16 v22, 0xd

    .line 857
    .line 858
    :goto_1f
    add-int/lit8 v28, v1, 0x1

    .line 859
    .line 860
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 861
    .line 862
    .line 863
    move-result v1

    .line 864
    if-lt v1, v13, :cond_2e

    .line 865
    .line 866
    and-int/lit16 v1, v1, 0x1fff

    .line 867
    .line 868
    shl-int v1, v1, v22

    .line 869
    .line 870
    or-int/2addr v6, v1

    .line 871
    add-int/lit8 v22, v22, 0xd

    .line 872
    .line 873
    move/from16 v1, v28

    .line 874
    .line 875
    goto :goto_1f

    .line 876
    :cond_2e
    shl-int v1, v1, v22

    .line 877
    .line 878
    or-int/2addr v6, v1

    .line 879
    goto :goto_20

    .line 880
    :cond_2f
    move/from16 v28, v1

    .line 881
    .line 882
    :goto_20
    add-int v1, v7, v7

    .line 883
    .line 884
    div-int/lit8 v22, v6, 0x20

    .line 885
    .line 886
    add-int v22, v22, v1

    .line 887
    .line 888
    aget-object v1, v10, v22

    .line 889
    .line 890
    instance-of v13, v1, Ljava/lang/reflect/Field;

    .line 891
    .line 892
    if-eqz v13, :cond_30

    .line 893
    .line 894
    check-cast v1, Ljava/lang/reflect/Field;

    .line 895
    .line 896
    goto :goto_21

    .line 897
    :cond_30
    check-cast v1, Ljava/lang/String;

    .line 898
    .line 899
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/B2;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 900
    .line 901
    .line 902
    move-result-object v1

    .line 903
    aput-object v1, v10, v22

    .line 904
    .line 905
    :goto_21
    invoke-virtual {v14, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 906
    .line 907
    .line 908
    move-result-wide v13

    .line 909
    long-to-int v1, v13

    .line 910
    rem-int/lit8 v6, v6, 0x20

    .line 911
    .line 912
    goto :goto_22

    .line 913
    :cond_31
    move-object/from16 v4, v27

    .line 914
    .line 915
    const v1, 0xfffff

    .line 916
    .line 917
    .line 918
    move/from16 v28, v6

    .line 919
    .line 920
    const/4 v6, 0x0

    .line 921
    :goto_22
    const/16 v13, 0x12

    .line 922
    .line 923
    if-lt v5, v13, :cond_32

    .line 924
    .line 925
    const/16 v13, 0x31

    .line 926
    .line 927
    if-gt v5, v13, :cond_32

    .line 928
    .line 929
    add-int/lit8 v13, v21, 0x1

    .line 930
    .line 931
    aput v2, v15, v21

    .line 932
    .line 933
    move/from16 v21, v13

    .line 934
    .line 935
    :cond_32
    move v13, v9

    .line 936
    move v9, v6

    .line 937
    move v6, v1

    .line 938
    move v1, v2

    .line 939
    move/from16 v2, v23

    .line 940
    .line 941
    :goto_23
    add-int/lit8 v14, v19, 0x1

    .line 942
    .line 943
    aput v31, v11, v19

    .line 944
    .line 945
    add-int/lit8 v19, v14, 0x1

    .line 946
    .line 947
    move-object/from16 v22, v3

    .line 948
    .line 949
    and-int/lit16 v3, v8, 0x200

    .line 950
    .line 951
    if-eqz v3, :cond_33

    .line 952
    .line 953
    const/high16 v3, 0x20000000

    .line 954
    .line 955
    goto :goto_24

    .line 956
    :cond_33
    const/4 v3, 0x0

    .line 957
    :goto_24
    and-int/lit16 v8, v8, 0x100

    .line 958
    .line 959
    if-eqz v8, :cond_34

    .line 960
    .line 961
    const/high16 v8, 0x10000000

    .line 962
    .line 963
    goto :goto_25

    .line 964
    :cond_34
    const/4 v8, 0x0

    .line 965
    :goto_25
    if-eqz v2, :cond_35

    .line 966
    .line 967
    const/high16 v2, -0x80000000

    .line 968
    .line 969
    goto :goto_26

    .line 970
    :cond_35
    const/4 v2, 0x0

    .line 971
    :goto_26
    shl-int/lit8 v5, v5, 0x14

    .line 972
    .line 973
    or-int/2addr v3, v8

    .line 974
    or-int/2addr v2, v3

    .line 975
    or-int/2addr v2, v5

    .line 976
    or-int/2addr v1, v2

    .line 977
    aput v1, v11, v14

    .line 978
    .line 979
    add-int/lit8 v1, v19, 0x1

    .line 980
    .line 981
    shl-int/lit8 v2, v9, 0x14

    .line 982
    .line 983
    or-int/2addr v2, v6

    .line 984
    aput v2, v11, v19

    .line 985
    .line 986
    move/from16 v19, v1

    .line 987
    .line 988
    move-object v1, v4

    .line 989
    move v9, v13

    .line 990
    move-object/from16 v3, v22

    .line 991
    .line 992
    move/from16 v2, v24

    .line 993
    .line 994
    move/from16 v14, v25

    .line 995
    .line 996
    move/from16 v4, v28

    .line 997
    .line 998
    move/from16 v13, v29

    .line 999
    .line 1000
    const v5, 0xd800

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_b

    .line 1004
    .line 1005
    :cond_36
    move/from16 v29, v13

    .line 1006
    .line 1007
    move/from16 v25, v14

    .line 1008
    .line 1009
    new-instance v1, Lcom/google/android/gms/internal/play_billing/B2;

    .line 1010
    .line 1011
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/H2;->c()Lcom/google/android/gms/internal/play_billing/y2;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v14

    .line 1015
    move-object v9, v1

    .line 1016
    move-object v10, v11

    .line 1017
    move-object v11, v12

    .line 1018
    move/from16 v12, v29

    .line 1019
    .line 1020
    move/from16 v13, v25

    .line 1021
    .line 1022
    move-object/from16 v18, p1

    .line 1023
    .line 1024
    move-object/from16 v19, p2

    .line 1025
    .line 1026
    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/play_billing/B2;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/y2;[IIILcom/google/android/gms/internal/play_billing/q;Lcom/google/android/gms/internal/play_billing/p;)V

    .line 1027
    .line 1028
    .line 1029
    return-object v1

    .line 1030
    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Q2;

    .line 1031
    .line 1032
    const/4 v0, 0x0

    .line 1033
    throw v0
.end method

.method private static x(JLjava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final y(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    div-int/lit8 v1, v1, 0x3

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    add-int/2addr v1, v2

    .line 8
    :goto_0
    if-gt p2, v1, :cond_2

    .line 9
    .line 10
    add-int v3, v1, p2

    .line 11
    .line 12
    ushr-int/lit8 v3, v3, 0x1

    .line 13
    .line 14
    mul-int/lit8 v4, v3, 0x3

    .line 15
    .line 16
    aget v5, v0, v4

    .line 17
    .line 18
    if-ne p1, v5, :cond_0

    .line 19
    .line 20
    return v4

    .line 21
    :cond_0
    if-ge p1, v5, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v3, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 p2, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v2
.end method

.method private final z(I)I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_3

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v4, v3

    .line 16
    ushr-int/lit8 v3, v3, 0x14

    .line 17
    .line 18
    and-int/lit16 v3, v3, 0xff

    .line 19
    .line 20
    aget v2, v2, v0

    .line 21
    .line 22
    int-to-long v4, v4

    .line 23
    const/16 v6, 0x4cf

    .line 24
    .line 25
    const/16 v7, 0x4d5

    .line 26
    .line 27
    const/16 v8, 0x25

    .line 28
    .line 29
    packed-switch v3, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :pswitch_0
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    mul-int/lit8 v1, v1, 0x35

    .line 41
    .line 42
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :pswitch_1
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    mul-int/lit8 v1, v1, 0x35

    .line 59
    .line 60
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :pswitch_2
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    mul-int/lit8 v1, v1, 0x35

    .line 75
    .line 76
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :pswitch_3
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    mul-int/lit8 v1, v1, 0x35

    .line 89
    .line 90
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :pswitch_4
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    mul-int/lit8 v1, v1, 0x35

    .line 105
    .line 106
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :pswitch_5
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    mul-int/lit8 v1, v1, 0x35

    .line 119
    .line 120
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :pswitch_6
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_2

    .line 131
    .line 132
    mul-int/lit8 v1, v1, 0x35

    .line 133
    .line 134
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :pswitch_7
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_2

    .line 145
    .line 146
    mul-int/lit8 v1, v1, 0x35

    .line 147
    .line 148
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    goto/16 :goto_4

    .line 157
    .line 158
    :pswitch_8
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_2

    .line 163
    .line 164
    mul-int/lit8 v1, v1, 0x35

    .line 165
    .line 166
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    goto/16 :goto_4

    .line 175
    .line 176
    :pswitch_9
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_2

    .line 181
    .line 182
    mul-int/lit8 v1, v1, 0x35

    .line 183
    .line 184
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    goto/16 :goto_4

    .line 195
    .line 196
    :pswitch_a
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_2

    .line 201
    .line 202
    mul-int/lit8 v1, v1, 0x35

    .line 203
    .line 204
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Ljava/lang/Boolean;

    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    sget-object v3, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 215
    .line 216
    if-eqz v2, :cond_1

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :pswitch_b
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_2

    .line 225
    .line 226
    mul-int/lit8 v1, v1, 0x35

    .line 227
    .line 228
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :pswitch_c
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_2

    .line 239
    .line 240
    mul-int/lit8 v1, v1, 0x35

    .line 241
    .line 242
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 243
    .line 244
    .line 245
    move-result-wide v2

    .line 246
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 247
    .line 248
    goto/16 :goto_5

    .line 249
    .line 250
    :pswitch_d
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_2

    .line 255
    .line 256
    mul-int/lit8 v1, v1, 0x35

    .line 257
    .line 258
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :pswitch_e
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_2

    .line 269
    .line 270
    mul-int/lit8 v1, v1, 0x35

    .line 271
    .line 272
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 273
    .line 274
    .line 275
    move-result-wide v2

    .line 276
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 277
    .line 278
    goto/16 :goto_5

    .line 279
    .line 280
    :pswitch_f
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_2

    .line 285
    .line 286
    mul-int/lit8 v1, v1, 0x35

    .line 287
    .line 288
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 289
    .line 290
    .line 291
    move-result-wide v2

    .line 292
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 293
    .line 294
    goto/16 :goto_5

    .line 295
    .line 296
    :pswitch_10
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_2

    .line 301
    .line 302
    mul-int/lit8 v1, v1, 0x35

    .line 303
    .line 304
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    check-cast v2, Ljava/lang/Float;

    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    goto/16 :goto_4

    .line 319
    .line 320
    :pswitch_11
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_2

    .line 325
    .line 326
    mul-int/lit8 v1, v1, 0x35

    .line 327
    .line 328
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    check-cast v2, Ljava/lang/Double;

    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 335
    .line 336
    .line 337
    move-result-wide v2

    .line 338
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 339
    .line 340
    .line 341
    move-result-wide v2

    .line 342
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 343
    .line 344
    goto/16 :goto_5

    .line 345
    .line 346
    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 347
    .line 348
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    goto/16 :goto_4

    .line 357
    .line 358
    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 359
    .line 360
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    goto/16 :goto_4

    .line 369
    .line 370
    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 371
    .line 372
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    if-eqz v2, :cond_0

    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    goto :goto_1

    .line 383
    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 384
    .line 385
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 386
    .line 387
    .line 388
    move-result-wide v2

    .line 389
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 390
    .line 391
    goto/16 :goto_5

    .line 392
    .line 393
    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 394
    .line 395
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 402
    .line 403
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 404
    .line 405
    .line 406
    move-result-wide v2

    .line 407
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 408
    .line 409
    goto/16 :goto_5

    .line 410
    .line 411
    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 412
    .line 413
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    goto :goto_3

    .line 418
    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 419
    .line 420
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    goto :goto_3

    .line 425
    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 426
    .line 427
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    goto :goto_3

    .line 432
    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 433
    .line 434
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    goto :goto_4

    .line 443
    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 444
    .line 445
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    if-eqz v2, :cond_0

    .line 450
    .line 451
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 452
    .line 453
    .line 454
    move-result v8

    .line 455
    :cond_0
    :goto_1
    add-int/2addr v1, v8

    .line 456
    goto/16 :goto_6

    .line 457
    .line 458
    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 459
    .line 460
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    check-cast v2, Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    goto :goto_4

    .line 471
    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 472
    .line 473
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->A(JLjava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    sget-object v3, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 478
    .line 479
    if-eqz v2, :cond_1

    .line 480
    .line 481
    goto :goto_2

    .line 482
    :cond_1
    const/16 v6, 0x4d5

    .line 483
    .line 484
    :goto_2
    move v2, v6

    .line 485
    goto :goto_4

    .line 486
    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 487
    .line 488
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    goto :goto_3

    .line 493
    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 494
    .line 495
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 496
    .line 497
    .line 498
    move-result-wide v2

    .line 499
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 500
    .line 501
    goto :goto_5

    .line 502
    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 503
    .line 504
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    :goto_3
    add-int/2addr v1, v2

    .line 509
    goto :goto_6

    .line 510
    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 511
    .line 512
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 513
    .line 514
    .line 515
    move-result-wide v2

    .line 516
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 517
    .line 518
    goto :goto_5

    .line 519
    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 520
    .line 521
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 522
    .line 523
    .line 524
    move-result-wide v2

    .line 525
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 526
    .line 527
    goto :goto_5

    .line 528
    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 529
    .line 530
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->f(JLjava/lang/Object;)F

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    :goto_4
    add-int/2addr v2, v1

    .line 539
    move v1, v2

    .line 540
    goto :goto_6

    .line 541
    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 542
    .line 543
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/play_billing/X2;->e(JLjava/lang/Object;)D

    .line 544
    .line 545
    .line 546
    move-result-wide v2

    .line 547
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 548
    .line 549
    .line 550
    move-result-wide v2

    .line 551
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 552
    .line 553
    :goto_5
    const/16 v4, 0x20

    .line 554
    .line 555
    ushr-long v4, v2, v4

    .line 556
    .line 557
    xor-long/2addr v2, v4

    .line 558
    long-to-int v3, v2

    .line 559
    add-int/2addr v1, v3

    .line 560
    :cond_2
    :goto_6
    add-int/lit8 v0, v0, 0x3

    .line 561
    .line 562
    goto/16 :goto_0

    .line 563
    .line 564
    :cond_3
    mul-int/lit8 v1, v1, 0x35

    .line 565
    .line 566
    move-object v0, p1

    .line 567
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 568
    .line 569
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 570
    .line 571
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/S2;->hashCode()I

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    add-int/2addr v0, v1

    .line 576
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/B2;->f:Z

    .line 577
    .line 578
    if-eqz v1, :cond_4

    .line 579
    .line 580
    mul-int/lit8 v0, v0, 0x35

    .line 581
    .line 582
    check-cast p1, Lcom/google/android/gms/internal/play_billing/W1;

    .line 583
    .line 584
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 585
    .line 586
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 587
    .line 588
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/P2;->hashCode()I

    .line 589
    .line 590
    .line 591
    move-result p1

    .line 592
    add-int/2addr v0, p1

    .line 593
    :cond_4
    return v0

    .line 594
    nop

    .line 595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/B2;->s(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Z1;->r()V

    .line 18
    .line 19
    .line 20
    iput v1, v0, Lcom/google/android/gms/internal/play_billing/v1;->zza:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/Z1;->p()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 26
    .line 27
    array-length v2, v0

    .line 28
    if-ge v1, v2, :cond_5

    .line 29
    .line 30
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const v3, 0xfffff

    .line 35
    .line 36
    .line 37
    and-int/2addr v3, v2

    .line 38
    ushr-int/lit8 v2, v2, 0x14

    .line 39
    .line 40
    and-int/lit16 v2, v2, 0xff

    .line 41
    .line 42
    int-to-long v3, v3

    .line 43
    const/16 v5, 0x9

    .line 44
    .line 45
    sget-object v6, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 46
    .line 47
    if-eq v2, v5, :cond_3

    .line 48
    .line 49
    const/16 v5, 0x3c

    .line 50
    .line 51
    if-eq v2, v5, :cond_2

    .line 52
    .line 53
    const/16 v5, 0x44

    .line 54
    .line 55
    if-eq v2, v5, :cond_2

    .line 56
    .line 57
    packed-switch v2, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_0
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    move-object v2, v0

    .line 68
    check-cast v2, Lcom/google/android/gms/internal/play_billing/u2;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/u2;->c()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_1
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/google/android/gms/internal/play_billing/d2;

    .line 82
    .line 83
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/d2;->b()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    aget v0, v0, v1

    .line 88
    .line 89
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/play_billing/I2;->b(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :pswitch_2
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/play_billing/I2;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->j:Lcom/google/android/gms/internal/play_billing/q;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/q;->f(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->f:Z

    .line 136
    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->k:Lcom/google/android/gms/internal/play_billing/p;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/p;->d(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_6
    :goto_2
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/z1;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/B2;->u(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/z1;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    const v1, 0xfffff

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    :goto_0
    iget-object v3, v6, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    if-ge v8, v4, :cond_1c

    .line 20
    .line 21
    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    ushr-int/lit8 v5, v4, 0x14

    .line 26
    .line 27
    and-int/lit16 v5, v5, 0xff

    .line 28
    .line 29
    add-int/lit8 v10, v8, 0x2

    .line 30
    .line 31
    aget v11, v3, v8

    .line 32
    .line 33
    aget v3, v3, v10

    .line 34
    .line 35
    and-int v10, v3, v0

    .line 36
    .line 37
    const/4 v12, 0x1

    .line 38
    const/16 v13, 0x11

    .line 39
    .line 40
    sget-object v14, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 41
    .line 42
    if-gt v5, v13, :cond_2

    .line 43
    .line 44
    if-eq v10, v1, :cond_1

    .line 45
    .line 46
    if-ne v10, v0, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    int-to-long v1, v10

    .line 52
    invoke-virtual {v14, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    move v2, v1

    .line 57
    :goto_1
    move v1, v10

    .line 58
    :cond_1
    ushr-int/lit8 v3, v3, 0x14

    .line 59
    .line 60
    shl-int v3, v12, v3

    .line 61
    .line 62
    move v10, v1

    .line 63
    move v13, v2

    .line 64
    move v15, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const/4 v3, 0x0

    .line 67
    move v10, v1

    .line 68
    move v13, v2

    .line 69
    const/4 v15, 0x0

    .line 70
    :goto_2
    and-int/2addr v0, v4

    .line 71
    sget-object v1, Lcom/google/android/gms/internal/play_billing/S1;->e:Lcom/google/android/gms/internal/play_billing/S1;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/S1;->c()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-lt v5, v1, :cond_3

    .line 78
    .line 79
    sget-object v1, Lcom/google/android/gms/internal/play_billing/S1;->f:Lcom/google/android/gms/internal/play_billing/S1;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    :cond_3
    int-to-long v3, v0

    .line 85
    const/16 v16, 0x3f

    .line 86
    .line 87
    packed-switch v5, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    goto/16 :goto_8

    .line 91
    .line 92
    :pswitch_0
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/google/android/gms/internal/play_billing/y2;

    .line 103
    .line 104
    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v11, v0, v1}, Lcom/google/android/gms/internal/play_billing/J1;->M(ILcom/google/android/gms/internal/play_billing/y2;Lcom/google/android/gms/internal/play_billing/I2;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    goto/16 :goto_18

    .line 113
    .line 114
    :pswitch_1
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    shl-int/lit8 v0, v11, 0x3

    .line 121
    .line 122
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    add-long v3, v1, v1

    .line 127
    .line 128
    shr-long v1, v1, v16

    .line 129
    .line 130
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    xor-long/2addr v1, v3

    .line 135
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/J1;->r(J)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    goto/16 :goto_3

    .line 140
    .line 141
    :pswitch_2
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_8

    .line 146
    .line 147
    shl-int/lit8 v0, v11, 0x3

    .line 148
    .line 149
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    add-int v2, v1, v1

    .line 154
    .line 155
    shr-int/lit8 v1, v1, 0x1f

    .line 156
    .line 157
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    xor-int/2addr v1, v2

    .line 162
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    goto/16 :goto_3

    .line 167
    .line 168
    :pswitch_3
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_8

    .line 173
    .line 174
    shl-int/lit8 v0, v11, 0x3

    .line 175
    .line 176
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    goto/16 :goto_5

    .line 181
    .line 182
    :pswitch_4
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    shl-int/lit8 v0, v11, 0x3

    .line 189
    .line 190
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    goto/16 :goto_4

    .line 195
    .line 196
    :pswitch_5
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_8

    .line 201
    .line 202
    shl-int/lit8 v0, v11, 0x3

    .line 203
    .line 204
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    int-to-long v1, v1

    .line 209
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/J1;->r(J)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :pswitch_6
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_8

    .line 224
    .line 225
    shl-int/lit8 v0, v11, 0x3

    .line 226
    .line 227
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    goto/16 :goto_3

    .line 240
    .line 241
    :pswitch_7
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_8

    .line 246
    .line 247
    shl-int/lit8 v0, v11, 0x3

    .line 248
    .line 249
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Lcom/google/android/gms/internal/play_billing/F1;

    .line 254
    .line 255
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    goto/16 :goto_7

    .line 268
    .line 269
    :pswitch_8
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_8

    .line 274
    .line 275
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-static {v11, v1, v0}, Lcom/google/android/gms/internal/play_billing/J2;->m(ILcom/google/android/gms/internal/play_billing/I2;Ljava/lang/Object;)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    goto/16 :goto_18

    .line 288
    .line 289
    :pswitch_9
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_8

    .line 294
    .line 295
    shl-int/lit8 v0, v11, 0x3

    .line 296
    .line 297
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/F1;

    .line 302
    .line 303
    if-eqz v2, :cond_4

    .line 304
    .line 305
    check-cast v1, Lcom/google/android/gms/internal/play_billing/F1;

    .line 306
    .line 307
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    goto/16 :goto_7

    .line 320
    .line 321
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 322
    .line 323
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->O(Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    goto :goto_3

    .line 332
    :pswitch_a
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_8

    .line 337
    .line 338
    shl-int/lit8 v0, v11, 0x3

    .line 339
    .line 340
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    move/from16 v18, v9

    .line 345
    .line 346
    move/from16 v17, v10

    .line 347
    .line 348
    goto/16 :goto_1b

    .line 349
    .line 350
    :pswitch_b
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_8

    .line 355
    .line 356
    shl-int/lit8 v0, v11, 0x3

    .line 357
    .line 358
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    goto :goto_4

    .line 363
    :pswitch_c
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_8

    .line 368
    .line 369
    shl-int/lit8 v0, v11, 0x3

    .line 370
    .line 371
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    goto :goto_5

    .line 376
    :pswitch_d
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_8

    .line 381
    .line 382
    shl-int/lit8 v0, v11, 0x3

    .line 383
    .line 384
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    int-to-long v1, v1

    .line 389
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/J1;->r(J)I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    goto :goto_3

    .line 398
    :pswitch_e
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-eqz v0, :cond_8

    .line 403
    .line 404
    shl-int/lit8 v0, v11, 0x3

    .line 405
    .line 406
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 407
    .line 408
    .line 409
    move-result-wide v1

    .line 410
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/J1;->r(J)I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    goto :goto_3

    .line 419
    :pswitch_f
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_8

    .line 424
    .line 425
    shl-int/lit8 v0, v11, 0x3

    .line 426
    .line 427
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 428
    .line 429
    .line 430
    move-result-wide v1

    .line 431
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/J1;->r(J)I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    :goto_3
    move/from16 v18, v9

    .line 440
    .line 441
    move/from16 v17, v10

    .line 442
    .line 443
    goto/16 :goto_1c

    .line 444
    .line 445
    :pswitch_10
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-eqz v0, :cond_8

    .line 450
    .line 451
    shl-int/lit8 v0, v11, 0x3

    .line 452
    .line 453
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    :goto_4
    move/from16 v18, v9

    .line 458
    .line 459
    move/from16 v17, v10

    .line 460
    .line 461
    goto/16 :goto_1d

    .line 462
    .line 463
    :pswitch_11
    invoke-direct {v6, v11, v8, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-eqz v0, :cond_8

    .line 468
    .line 469
    shl-int/lit8 v0, v11, 0x3

    .line 470
    .line 471
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    :goto_5
    move/from16 v18, v9

    .line 476
    .line 477
    move/from16 v17, v10

    .line 478
    .line 479
    goto/16 :goto_1e

    .line 480
    .line 481
    :pswitch_12
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    div-int/lit8 v1, v8, 0x3

    .line 486
    .line 487
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/B2;->b:[Ljava/lang/Object;

    .line 488
    .line 489
    add-int/2addr v1, v1

    .line 490
    aget-object v1, v2, v1

    .line 491
    .line 492
    check-cast v0, Lcom/google/android/gms/internal/play_billing/u2;

    .line 493
    .line 494
    check-cast v1, Lcom/google/android/gms/internal/play_billing/t2;

    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    if-nez v1, :cond_8

    .line 501
    .line 502
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/u2;->entrySet()Ljava/util/Set;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    if-nez v1, :cond_5

    .line 515
    .line 516
    goto/16 :goto_8

    .line 517
    .line 518
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    check-cast v0, Ljava/util/Map$Entry;

    .line 523
    .line 524
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    const/4 v0, 0x0

    .line 531
    throw v0

    .line 532
    :pswitch_13
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, Ljava/util/List;

    .line 537
    .line 538
    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    sget v2, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 543
    .line 544
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    if-nez v2, :cond_6

    .line 549
    .line 550
    goto/16 :goto_a

    .line 551
    .line 552
    :cond_6
    const/4 v3, 0x0

    .line 553
    const/4 v4, 0x0

    .line 554
    :goto_6
    if-ge v3, v2, :cond_7

    .line 555
    .line 556
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    check-cast v5, Lcom/google/android/gms/internal/play_billing/y2;

    .line 561
    .line 562
    invoke-static {v11, v5, v1}, Lcom/google/android/gms/internal/play_billing/J1;->M(ILcom/google/android/gms/internal/play_billing/y2;Lcom/google/android/gms/internal/play_billing/I2;)I

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    add-int/2addr v4, v5

    .line 567
    add-int/lit8 v3, v3, 0x1

    .line 568
    .line 569
    goto :goto_6

    .line 570
    :cond_7
    move v0, v4

    .line 571
    goto/16 :goto_d

    .line 572
    .line 573
    :pswitch_14
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    check-cast v0, Ljava/util/List;

    .line 578
    .line 579
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->o(Ljava/util/List;)I

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    if-lez v0, :cond_8

    .line 584
    .line 585
    shl-int/lit8 v1, v11, 0x3

    .line 586
    .line 587
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    goto/16 :goto_7

    .line 596
    .line 597
    :pswitch_15
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    check-cast v0, Ljava/util/List;

    .line 602
    .line 603
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->n(Ljava/util/List;)I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-lez v0, :cond_8

    .line 608
    .line 609
    shl-int/lit8 v1, v11, 0x3

    .line 610
    .line 611
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    goto/16 :goto_7

    .line 620
    .line 621
    :pswitch_16
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    check-cast v0, Ljava/util/List;

    .line 626
    .line 627
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->j(Ljava/util/List;)I

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-lez v0, :cond_8

    .line 632
    .line 633
    shl-int/lit8 v1, v11, 0x3

    .line 634
    .line 635
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    goto/16 :goto_7

    .line 644
    .line 645
    :pswitch_17
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    check-cast v0, Ljava/util/List;

    .line 650
    .line 651
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->h(Ljava/util/List;)I

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    if-lez v0, :cond_8

    .line 656
    .line 657
    shl-int/lit8 v1, v11, 0x3

    .line 658
    .line 659
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    goto/16 :goto_7

    .line 668
    .line 669
    :pswitch_18
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    check-cast v0, Ljava/util/List;

    .line 674
    .line 675
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->f(Ljava/util/List;)I

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-lez v0, :cond_8

    .line 680
    .line 681
    shl-int/lit8 v1, v11, 0x3

    .line 682
    .line 683
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    goto/16 :goto_7

    .line 692
    .line 693
    :pswitch_19
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    check-cast v0, Ljava/util/List;

    .line 698
    .line 699
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->p(Ljava/util/List;)I

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    if-lez v0, :cond_8

    .line 704
    .line 705
    shl-int/lit8 v1, v11, 0x3

    .line 706
    .line 707
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 708
    .line 709
    .line 710
    move-result v1

    .line 711
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 712
    .line 713
    .line 714
    move-result v2

    .line 715
    goto/16 :goto_7

    .line 716
    .line 717
    :pswitch_1a
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    check-cast v0, Ljava/util/List;

    .line 722
    .line 723
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 724
    .line 725
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    if-lez v0, :cond_8

    .line 730
    .line 731
    shl-int/lit8 v1, v11, 0x3

    .line 732
    .line 733
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    goto/16 :goto_7

    .line 742
    .line 743
    :pswitch_1b
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    check-cast v0, Ljava/util/List;

    .line 748
    .line 749
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->h(Ljava/util/List;)I

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    if-lez v0, :cond_8

    .line 754
    .line 755
    shl-int/lit8 v1, v11, 0x3

    .line 756
    .line 757
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 758
    .line 759
    .line 760
    move-result v1

    .line 761
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    goto/16 :goto_7

    .line 766
    .line 767
    :pswitch_1c
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    check-cast v0, Ljava/util/List;

    .line 772
    .line 773
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->j(Ljava/util/List;)I

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-lez v0, :cond_8

    .line 778
    .line 779
    shl-int/lit8 v1, v11, 0x3

    .line 780
    .line 781
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 782
    .line 783
    .line 784
    move-result v1

    .line 785
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    goto/16 :goto_7

    .line 790
    .line 791
    :pswitch_1d
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    check-cast v0, Ljava/util/List;

    .line 796
    .line 797
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->k(Ljava/util/List;)I

    .line 798
    .line 799
    .line 800
    move-result v0

    .line 801
    if-lez v0, :cond_8

    .line 802
    .line 803
    shl-int/lit8 v1, v11, 0x3

    .line 804
    .line 805
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 806
    .line 807
    .line 808
    move-result v1

    .line 809
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 810
    .line 811
    .line 812
    move-result v2

    .line 813
    goto :goto_7

    .line 814
    :pswitch_1e
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    check-cast v0, Ljava/util/List;

    .line 819
    .line 820
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->q(Ljava/util/List;)I

    .line 821
    .line 822
    .line 823
    move-result v0

    .line 824
    if-lez v0, :cond_8

    .line 825
    .line 826
    shl-int/lit8 v1, v11, 0x3

    .line 827
    .line 828
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 833
    .line 834
    .line 835
    move-result v2

    .line 836
    goto :goto_7

    .line 837
    :pswitch_1f
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    check-cast v0, Ljava/util/List;

    .line 842
    .line 843
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->l(Ljava/util/List;)I

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-lez v0, :cond_8

    .line 848
    .line 849
    shl-int/lit8 v1, v11, 0x3

    .line 850
    .line 851
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 856
    .line 857
    .line 858
    move-result v2

    .line 859
    goto :goto_7

    .line 860
    :pswitch_20
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    check-cast v0, Ljava/util/List;

    .line 865
    .line 866
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->h(Ljava/util/List;)I

    .line 867
    .line 868
    .line 869
    move-result v0

    .line 870
    if-lez v0, :cond_8

    .line 871
    .line 872
    shl-int/lit8 v1, v11, 0x3

    .line 873
    .line 874
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 875
    .line 876
    .line 877
    move-result v1

    .line 878
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 879
    .line 880
    .line 881
    move-result v2

    .line 882
    goto :goto_7

    .line 883
    :pswitch_21
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    check-cast v0, Ljava/util/List;

    .line 888
    .line 889
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->j(Ljava/util/List;)I

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    if-lez v0, :cond_8

    .line 894
    .line 895
    shl-int/lit8 v1, v11, 0x3

    .line 896
    .line 897
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 902
    .line 903
    .line 904
    move-result v2

    .line 905
    :goto_7
    move/from16 v18, v9

    .line 906
    .line 907
    move/from16 v17, v10

    .line 908
    .line 909
    goto/16 :goto_1a

    .line 910
    .line 911
    :cond_8
    :goto_8
    move/from16 v18, v9

    .line 912
    .line 913
    move/from16 v17, v10

    .line 914
    .line 915
    goto/16 :goto_1f

    .line 916
    .line 917
    :pswitch_22
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    check-cast v0, Ljava/util/List;

    .line 922
    .line 923
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 924
    .line 925
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 926
    .line 927
    .line 928
    move-result v1

    .line 929
    if-nez v1, :cond_9

    .line 930
    .line 931
    goto/16 :goto_12

    .line 932
    .line 933
    :cond_9
    shl-int/lit8 v2, v11, 0x3

    .line 934
    .line 935
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->o(Ljava/util/List;)I

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 940
    .line 941
    .line 942
    move-result v2

    .line 943
    goto/16 :goto_13

    .line 944
    .line 945
    :pswitch_23
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    check-cast v0, Ljava/util/List;

    .line 950
    .line 951
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 952
    .line 953
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 954
    .line 955
    .line 956
    move-result v1

    .line 957
    if-nez v1, :cond_a

    .line 958
    .line 959
    goto/16 :goto_12

    .line 960
    .line 961
    :cond_a
    shl-int/lit8 v2, v11, 0x3

    .line 962
    .line 963
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->n(Ljava/util/List;)I

    .line 964
    .line 965
    .line 966
    move-result v0

    .line 967
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 968
    .line 969
    .line 970
    move-result v2

    .line 971
    goto/16 :goto_13

    .line 972
    .line 973
    :pswitch_24
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    check-cast v0, Ljava/util/List;

    .line 978
    .line 979
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/J2;->i(ILjava/util/List;)I

    .line 980
    .line 981
    .line 982
    move-result v0

    .line 983
    goto/16 :goto_18

    .line 984
    .line 985
    :pswitch_25
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    check-cast v0, Ljava/util/List;

    .line 990
    .line 991
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/J2;->g(ILjava/util/List;)I

    .line 992
    .line 993
    .line 994
    move-result v0

    .line 995
    goto/16 :goto_18

    .line 996
    .line 997
    :pswitch_26
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    check-cast v0, Ljava/util/List;

    .line 1002
    .line 1003
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 1004
    .line 1005
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1006
    .line 1007
    .line 1008
    move-result v1

    .line 1009
    if-nez v1, :cond_b

    .line 1010
    .line 1011
    goto/16 :goto_12

    .line 1012
    .line 1013
    :cond_b
    shl-int/lit8 v2, v11, 0x3

    .line 1014
    .line 1015
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->f(Ljava/util/List;)I

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1020
    .line 1021
    .line 1022
    move-result v2

    .line 1023
    goto/16 :goto_13

    .line 1024
    .line 1025
    :pswitch_27
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    check-cast v0, Ljava/util/List;

    .line 1030
    .line 1031
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 1032
    .line 1033
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1034
    .line 1035
    .line 1036
    move-result v1

    .line 1037
    if-nez v1, :cond_c

    .line 1038
    .line 1039
    goto/16 :goto_12

    .line 1040
    .line 1041
    :cond_c
    shl-int/lit8 v2, v11, 0x3

    .line 1042
    .line 1043
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->p(Ljava/util/List;)I

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1048
    .line 1049
    .line 1050
    move-result v2

    .line 1051
    goto/16 :goto_13

    .line 1052
    .line 1053
    :pswitch_28
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    check-cast v0, Ljava/util/List;

    .line 1058
    .line 1059
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 1060
    .line 1061
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1062
    .line 1063
    .line 1064
    move-result v1

    .line 1065
    if-nez v1, :cond_d

    .line 1066
    .line 1067
    goto/16 :goto_12

    .line 1068
    .line 1069
    :cond_d
    shl-int/lit8 v2, v11, 0x3

    .line 1070
    .line 1071
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1072
    .line 1073
    .line 1074
    move-result v2

    .line 1075
    mul-int v2, v2, v1

    .line 1076
    .line 1077
    const/4 v1, 0x0

    .line 1078
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1079
    .line 1080
    .line 1081
    move-result v3

    .line 1082
    if-ge v1, v3, :cond_18

    .line 1083
    .line 1084
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v3

    .line 1088
    check-cast v3, Lcom/google/android/gms/internal/play_billing/F1;

    .line 1089
    .line 1090
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 1091
    .line 1092
    .line 1093
    move-result v3

    .line 1094
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1095
    .line 1096
    .line 1097
    move-result v4

    .line 1098
    add-int/2addr v4, v3

    .line 1099
    add-int/2addr v2, v4

    .line 1100
    add-int/lit8 v1, v1, 0x1

    .line 1101
    .line 1102
    goto :goto_9

    .line 1103
    :pswitch_29
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    check-cast v0, Ljava/util/List;

    .line 1108
    .line 1109
    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    sget v2, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 1114
    .line 1115
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1116
    .line 1117
    .line 1118
    move-result v2

    .line 1119
    if-nez v2, :cond_e

    .line 1120
    .line 1121
    :goto_a
    const/4 v0, 0x0

    .line 1122
    goto :goto_d

    .line 1123
    :cond_e
    shl-int/lit8 v3, v11, 0x3

    .line 1124
    .line 1125
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1126
    .line 1127
    .line 1128
    move-result v3

    .line 1129
    mul-int v3, v3, v2

    .line 1130
    .line 1131
    const/4 v4, 0x0

    .line 1132
    :goto_b
    if-ge v4, v2, :cond_10

    .line 1133
    .line 1134
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v5

    .line 1138
    instance-of v11, v5, Lcom/google/android/gms/internal/play_billing/l2;

    .line 1139
    .line 1140
    if-eqz v11, :cond_f

    .line 1141
    .line 1142
    check-cast v5, Lcom/google/android/gms/internal/play_billing/l2;

    .line 1143
    .line 1144
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/l2;->a()I

    .line 1145
    .line 1146
    .line 1147
    move-result v5

    .line 1148
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1149
    .line 1150
    .line 1151
    move-result v11

    .line 1152
    add-int/2addr v11, v5

    .line 1153
    add-int/2addr v11, v3

    .line 1154
    move v3, v11

    .line 1155
    goto :goto_c

    .line 1156
    :cond_f
    check-cast v5, Lcom/google/android/gms/internal/play_billing/y2;

    .line 1157
    .line 1158
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/play_billing/J1;->N(Lcom/google/android/gms/internal/play_billing/y2;Lcom/google/android/gms/internal/play_billing/I2;)I

    .line 1159
    .line 1160
    .line 1161
    move-result v5

    .line 1162
    add-int/2addr v3, v5

    .line 1163
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 1164
    .line 1165
    goto :goto_b

    .line 1166
    :cond_10
    move v0, v3

    .line 1167
    :goto_d
    add-int/2addr v9, v0

    .line 1168
    goto/16 :goto_17

    .line 1169
    .line 1170
    :pswitch_2a
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    check-cast v0, Ljava/util/List;

    .line 1175
    .line 1176
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 1177
    .line 1178
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1179
    .line 1180
    .line 1181
    move-result v1

    .line 1182
    if-nez v1, :cond_11

    .line 1183
    .line 1184
    goto/16 :goto_12

    .line 1185
    .line 1186
    :cond_11
    shl-int/lit8 v2, v11, 0x3

    .line 1187
    .line 1188
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1189
    .line 1190
    .line 1191
    move-result v2

    .line 1192
    mul-int v2, v2, v1

    .line 1193
    .line 1194
    instance-of v3, v0, Lcom/google/android/gms/internal/play_billing/m2;

    .line 1195
    .line 1196
    if-eqz v3, :cond_13

    .line 1197
    .line 1198
    check-cast v0, Lcom/google/android/gms/internal/play_billing/m2;

    .line 1199
    .line 1200
    const/4 v3, 0x0

    .line 1201
    :goto_e
    if-ge v3, v1, :cond_18

    .line 1202
    .line 1203
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/m2;->a()Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v4

    .line 1207
    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/F1;

    .line 1208
    .line 1209
    if-eqz v5, :cond_12

    .line 1210
    .line 1211
    check-cast v4, Lcom/google/android/gms/internal/play_billing/F1;

    .line 1212
    .line 1213
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 1214
    .line 1215
    .line 1216
    move-result v4

    .line 1217
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1218
    .line 1219
    .line 1220
    move-result v5

    .line 1221
    add-int/2addr v5, v4

    .line 1222
    add-int/2addr v5, v2

    .line 1223
    move v2, v5

    .line 1224
    goto :goto_f

    .line 1225
    :cond_12
    check-cast v4, Ljava/lang/String;

    .line 1226
    .line 1227
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/J1;->O(Ljava/lang/String;)I

    .line 1228
    .line 1229
    .line 1230
    move-result v4

    .line 1231
    add-int/2addr v4, v2

    .line 1232
    move v2, v4

    .line 1233
    :goto_f
    add-int/lit8 v3, v3, 0x1

    .line 1234
    .line 1235
    goto :goto_e

    .line 1236
    :cond_13
    const/4 v3, 0x0

    .line 1237
    :goto_10
    if-ge v3, v1, :cond_18

    .line 1238
    .line 1239
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v4

    .line 1243
    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/F1;

    .line 1244
    .line 1245
    if-eqz v5, :cond_14

    .line 1246
    .line 1247
    check-cast v4, Lcom/google/android/gms/internal/play_billing/F1;

    .line 1248
    .line 1249
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 1250
    .line 1251
    .line 1252
    move-result v4

    .line 1253
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1254
    .line 1255
    .line 1256
    move-result v5

    .line 1257
    add-int/2addr v5, v4

    .line 1258
    add-int/2addr v5, v2

    .line 1259
    move v2, v5

    .line 1260
    goto :goto_11

    .line 1261
    :cond_14
    check-cast v4, Ljava/lang/String;

    .line 1262
    .line 1263
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/J1;->O(Ljava/lang/String;)I

    .line 1264
    .line 1265
    .line 1266
    move-result v4

    .line 1267
    add-int/2addr v4, v2

    .line 1268
    move v2, v4

    .line 1269
    :goto_11
    add-int/lit8 v3, v3, 0x1

    .line 1270
    .line 1271
    goto :goto_10

    .line 1272
    :pswitch_2b
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    check-cast v0, Ljava/util/List;

    .line 1277
    .line 1278
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 1279
    .line 1280
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    if-nez v0, :cond_15

    .line 1285
    .line 1286
    goto :goto_15

    .line 1287
    :cond_15
    shl-int/lit8 v1, v11, 0x3

    .line 1288
    .line 1289
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1290
    .line 1291
    .line 1292
    move-result v1

    .line 1293
    add-int/2addr v1, v12

    .line 1294
    mul-int v1, v1, v0

    .line 1295
    .line 1296
    goto/16 :goto_16

    .line 1297
    .line 1298
    :pswitch_2c
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    check-cast v0, Ljava/util/List;

    .line 1303
    .line 1304
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/J2;->g(ILjava/util/List;)I

    .line 1305
    .line 1306
    .line 1307
    move-result v0

    .line 1308
    goto/16 :goto_18

    .line 1309
    .line 1310
    :pswitch_2d
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v0

    .line 1314
    check-cast v0, Ljava/util/List;

    .line 1315
    .line 1316
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/J2;->i(ILjava/util/List;)I

    .line 1317
    .line 1318
    .line 1319
    move-result v0

    .line 1320
    goto/16 :goto_18

    .line 1321
    .line 1322
    :pswitch_2e
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v0

    .line 1326
    check-cast v0, Ljava/util/List;

    .line 1327
    .line 1328
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 1329
    .line 1330
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1331
    .line 1332
    .line 1333
    move-result v1

    .line 1334
    if-nez v1, :cond_16

    .line 1335
    .line 1336
    goto :goto_12

    .line 1337
    :cond_16
    shl-int/lit8 v2, v11, 0x3

    .line 1338
    .line 1339
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->k(Ljava/util/List;)I

    .line 1340
    .line 1341
    .line 1342
    move-result v0

    .line 1343
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1344
    .line 1345
    .line 1346
    move-result v2

    .line 1347
    goto :goto_13

    .line 1348
    :pswitch_2f
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    check-cast v0, Ljava/util/List;

    .line 1353
    .line 1354
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 1355
    .line 1356
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1357
    .line 1358
    .line 1359
    move-result v1

    .line 1360
    if-nez v1, :cond_17

    .line 1361
    .line 1362
    :goto_12
    const/4 v2, 0x0

    .line 1363
    goto :goto_14

    .line 1364
    :cond_17
    shl-int/lit8 v2, v11, 0x3

    .line 1365
    .line 1366
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->q(Ljava/util/List;)I

    .line 1367
    .line 1368
    .line 1369
    move-result v0

    .line 1370
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1371
    .line 1372
    .line 1373
    move-result v2

    .line 1374
    :goto_13
    mul-int v2, v2, v1

    .line 1375
    .line 1376
    add-int/2addr v2, v0

    .line 1377
    :cond_18
    :goto_14
    add-int/2addr v9, v2

    .line 1378
    goto :goto_17

    .line 1379
    :pswitch_30
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v0

    .line 1383
    check-cast v0, Ljava/util/List;

    .line 1384
    .line 1385
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 1386
    .line 1387
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1388
    .line 1389
    .line 1390
    move-result v1

    .line 1391
    if-nez v1, :cond_19

    .line 1392
    .line 1393
    :goto_15
    const/4 v1, 0x0

    .line 1394
    goto :goto_16

    .line 1395
    :cond_19
    shl-int/lit8 v1, v11, 0x3

    .line 1396
    .line 1397
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J2;->l(Ljava/util/List;)I

    .line 1398
    .line 1399
    .line 1400
    move-result v2

    .line 1401
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1402
    .line 1403
    .line 1404
    move-result v0

    .line 1405
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1406
    .line 1407
    .line 1408
    move-result v1

    .line 1409
    mul-int v1, v1, v0

    .line 1410
    .line 1411
    add-int/2addr v1, v2

    .line 1412
    :goto_16
    add-int/2addr v9, v1

    .line 1413
    :goto_17
    move/from16 v17, v10

    .line 1414
    .line 1415
    goto/16 :goto_20

    .line 1416
    .line 1417
    :pswitch_31
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v0

    .line 1421
    check-cast v0, Ljava/util/List;

    .line 1422
    .line 1423
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/J2;->g(ILjava/util/List;)I

    .line 1424
    .line 1425
    .line 1426
    move-result v0

    .line 1427
    goto :goto_18

    .line 1428
    :pswitch_32
    invoke-virtual {v14, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    check-cast v0, Ljava/util/List;

    .line 1433
    .line 1434
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/J2;->i(ILjava/util/List;)I

    .line 1435
    .line 1436
    .line 1437
    move-result v0

    .line 1438
    :goto_18
    move/from16 v18, v9

    .line 1439
    .line 1440
    move/from16 v17, v10

    .line 1441
    .line 1442
    goto/16 :goto_19

    .line 1443
    .line 1444
    :pswitch_33
    move-object/from16 v0, p0

    .line 1445
    .line 1446
    move-object/from16 v1, p1

    .line 1447
    .line 1448
    move v2, v8

    .line 1449
    move-wide v4, v3

    .line 1450
    move v3, v10

    .line 1451
    move/from16 v18, v9

    .line 1452
    .line 1453
    move/from16 v17, v10

    .line 1454
    .line 1455
    move-wide v9, v4

    .line 1456
    move v4, v13

    .line 1457
    move v5, v15

    .line 1458
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1459
    .line 1460
    .line 1461
    move-result v0

    .line 1462
    if-eqz v0, :cond_1b

    .line 1463
    .line 1464
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v0

    .line 1468
    check-cast v0, Lcom/google/android/gms/internal/play_billing/y2;

    .line 1469
    .line 1470
    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v1

    .line 1474
    invoke-static {v11, v0, v1}, Lcom/google/android/gms/internal/play_billing/J1;->M(ILcom/google/android/gms/internal/play_billing/y2;Lcom/google/android/gms/internal/play_billing/I2;)I

    .line 1475
    .line 1476
    .line 1477
    move-result v0

    .line 1478
    goto/16 :goto_19

    .line 1479
    .line 1480
    :pswitch_34
    move/from16 v18, v9

    .line 1481
    .line 1482
    move/from16 v17, v10

    .line 1483
    .line 1484
    move-wide v9, v3

    .line 1485
    move-object/from16 v0, p0

    .line 1486
    .line 1487
    move-object/from16 v1, p1

    .line 1488
    .line 1489
    move v2, v8

    .line 1490
    move/from16 v3, v17

    .line 1491
    .line 1492
    move v4, v13

    .line 1493
    move v5, v15

    .line 1494
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v0

    .line 1498
    if-eqz v0, :cond_1b

    .line 1499
    .line 1500
    shl-int/lit8 v0, v11, 0x3

    .line 1501
    .line 1502
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1503
    .line 1504
    .line 1505
    move-result-wide v1

    .line 1506
    add-long v3, v1, v1

    .line 1507
    .line 1508
    shr-long v1, v1, v16

    .line 1509
    .line 1510
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1511
    .line 1512
    .line 1513
    move-result v0

    .line 1514
    xor-long/2addr v1, v3

    .line 1515
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/J1;->r(J)I

    .line 1516
    .line 1517
    .line 1518
    move-result v1

    .line 1519
    goto/16 :goto_1c

    .line 1520
    .line 1521
    :pswitch_35
    move/from16 v18, v9

    .line 1522
    .line 1523
    move/from16 v17, v10

    .line 1524
    .line 1525
    move-wide v9, v3

    .line 1526
    move-object/from16 v0, p0

    .line 1527
    .line 1528
    move-object/from16 v1, p1

    .line 1529
    .line 1530
    move v2, v8

    .line 1531
    move/from16 v3, v17

    .line 1532
    .line 1533
    move v4, v13

    .line 1534
    move v5, v15

    .line 1535
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1536
    .line 1537
    .line 1538
    move-result v0

    .line 1539
    if-eqz v0, :cond_1b

    .line 1540
    .line 1541
    shl-int/lit8 v0, v11, 0x3

    .line 1542
    .line 1543
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1544
    .line 1545
    .line 1546
    move-result v1

    .line 1547
    add-int v2, v1, v1

    .line 1548
    .line 1549
    shr-int/lit8 v1, v1, 0x1f

    .line 1550
    .line 1551
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1552
    .line 1553
    .line 1554
    move-result v0

    .line 1555
    xor-int/2addr v1, v2

    .line 1556
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1557
    .line 1558
    .line 1559
    move-result v1

    .line 1560
    goto/16 :goto_1c

    .line 1561
    .line 1562
    :pswitch_36
    move/from16 v18, v9

    .line 1563
    .line 1564
    move/from16 v17, v10

    .line 1565
    .line 1566
    move-object/from16 v0, p0

    .line 1567
    .line 1568
    move-object/from16 v1, p1

    .line 1569
    .line 1570
    move v2, v8

    .line 1571
    move/from16 v3, v17

    .line 1572
    .line 1573
    move v4, v13

    .line 1574
    move v5, v15

    .line 1575
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1576
    .line 1577
    .line 1578
    move-result v0

    .line 1579
    if-eqz v0, :cond_1b

    .line 1580
    .line 1581
    shl-int/lit8 v0, v11, 0x3

    .line 1582
    .line 1583
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1584
    .line 1585
    .line 1586
    move-result v0

    .line 1587
    goto/16 :goto_1e

    .line 1588
    .line 1589
    :pswitch_37
    move/from16 v18, v9

    .line 1590
    .line 1591
    move/from16 v17, v10

    .line 1592
    .line 1593
    move-object/from16 v0, p0

    .line 1594
    .line 1595
    move-object/from16 v1, p1

    .line 1596
    .line 1597
    move v2, v8

    .line 1598
    move/from16 v3, v17

    .line 1599
    .line 1600
    move v4, v13

    .line 1601
    move v5, v15

    .line 1602
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1603
    .line 1604
    .line 1605
    move-result v0

    .line 1606
    if-eqz v0, :cond_1b

    .line 1607
    .line 1608
    shl-int/lit8 v0, v11, 0x3

    .line 1609
    .line 1610
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1611
    .line 1612
    .line 1613
    move-result v0

    .line 1614
    goto/16 :goto_1d

    .line 1615
    .line 1616
    :pswitch_38
    move/from16 v18, v9

    .line 1617
    .line 1618
    move/from16 v17, v10

    .line 1619
    .line 1620
    move-wide v9, v3

    .line 1621
    move-object/from16 v0, p0

    .line 1622
    .line 1623
    move-object/from16 v1, p1

    .line 1624
    .line 1625
    move v2, v8

    .line 1626
    move/from16 v3, v17

    .line 1627
    .line 1628
    move v4, v13

    .line 1629
    move v5, v15

    .line 1630
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1631
    .line 1632
    .line 1633
    move-result v0

    .line 1634
    if-eqz v0, :cond_1b

    .line 1635
    .line 1636
    shl-int/lit8 v0, v11, 0x3

    .line 1637
    .line 1638
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1639
    .line 1640
    .line 1641
    move-result v1

    .line 1642
    int-to-long v1, v1

    .line 1643
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1644
    .line 1645
    .line 1646
    move-result v0

    .line 1647
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/J1;->r(J)I

    .line 1648
    .line 1649
    .line 1650
    move-result v1

    .line 1651
    goto/16 :goto_1c

    .line 1652
    .line 1653
    :pswitch_39
    move/from16 v18, v9

    .line 1654
    .line 1655
    move/from16 v17, v10

    .line 1656
    .line 1657
    move-wide v9, v3

    .line 1658
    move-object/from16 v0, p0

    .line 1659
    .line 1660
    move-object/from16 v1, p1

    .line 1661
    .line 1662
    move v2, v8

    .line 1663
    move/from16 v3, v17

    .line 1664
    .line 1665
    move v4, v13

    .line 1666
    move v5, v15

    .line 1667
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1668
    .line 1669
    .line 1670
    move-result v0

    .line 1671
    if-eqz v0, :cond_1b

    .line 1672
    .line 1673
    shl-int/lit8 v0, v11, 0x3

    .line 1674
    .line 1675
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1676
    .line 1677
    .line 1678
    move-result v1

    .line 1679
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1680
    .line 1681
    .line 1682
    move-result v0

    .line 1683
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1684
    .line 1685
    .line 1686
    move-result v1

    .line 1687
    goto/16 :goto_1c

    .line 1688
    .line 1689
    :pswitch_3a
    move/from16 v18, v9

    .line 1690
    .line 1691
    move/from16 v17, v10

    .line 1692
    .line 1693
    move-wide v9, v3

    .line 1694
    move-object/from16 v0, p0

    .line 1695
    .line 1696
    move-object/from16 v1, p1

    .line 1697
    .line 1698
    move v2, v8

    .line 1699
    move/from16 v3, v17

    .line 1700
    .line 1701
    move v4, v13

    .line 1702
    move v5, v15

    .line 1703
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1704
    .line 1705
    .line 1706
    move-result v0

    .line 1707
    if-eqz v0, :cond_1b

    .line 1708
    .line 1709
    shl-int/lit8 v0, v11, 0x3

    .line 1710
    .line 1711
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v1

    .line 1715
    check-cast v1, Lcom/google/android/gms/internal/play_billing/F1;

    .line 1716
    .line 1717
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1718
    .line 1719
    .line 1720
    move-result v0

    .line 1721
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 1722
    .line 1723
    .line 1724
    move-result v1

    .line 1725
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1726
    .line 1727
    .line 1728
    move-result v2

    .line 1729
    goto :goto_1a

    .line 1730
    :pswitch_3b
    move/from16 v18, v9

    .line 1731
    .line 1732
    move/from16 v17, v10

    .line 1733
    .line 1734
    move-wide v9, v3

    .line 1735
    move-object/from16 v0, p0

    .line 1736
    .line 1737
    move-object/from16 v1, p1

    .line 1738
    .line 1739
    move v2, v8

    .line 1740
    move/from16 v3, v17

    .line 1741
    .line 1742
    move v4, v13

    .line 1743
    move v5, v15

    .line 1744
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1745
    .line 1746
    .line 1747
    move-result v0

    .line 1748
    if-eqz v0, :cond_1b

    .line 1749
    .line 1750
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v0

    .line 1754
    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v1

    .line 1758
    invoke-static {v11, v1, v0}, Lcom/google/android/gms/internal/play_billing/J2;->m(ILcom/google/android/gms/internal/play_billing/I2;Ljava/lang/Object;)I

    .line 1759
    .line 1760
    .line 1761
    move-result v0

    .line 1762
    :goto_19
    add-int v9, v18, v0

    .line 1763
    .line 1764
    goto/16 :goto_20

    .line 1765
    .line 1766
    :pswitch_3c
    move/from16 v18, v9

    .line 1767
    .line 1768
    move/from16 v17, v10

    .line 1769
    .line 1770
    move-wide v9, v3

    .line 1771
    move-object/from16 v0, p0

    .line 1772
    .line 1773
    move-object/from16 v1, p1

    .line 1774
    .line 1775
    move v2, v8

    .line 1776
    move/from16 v3, v17

    .line 1777
    .line 1778
    move v4, v13

    .line 1779
    move v5, v15

    .line 1780
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1781
    .line 1782
    .line 1783
    move-result v0

    .line 1784
    if-eqz v0, :cond_1b

    .line 1785
    .line 1786
    shl-int/lit8 v0, v11, 0x3

    .line 1787
    .line 1788
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v1

    .line 1792
    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/F1;

    .line 1793
    .line 1794
    if-eqz v2, :cond_1a

    .line 1795
    .line 1796
    check-cast v1, Lcom/google/android/gms/internal/play_billing/F1;

    .line 1797
    .line 1798
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1799
    .line 1800
    .line 1801
    move-result v0

    .line 1802
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 1803
    .line 1804
    .line 1805
    move-result v1

    .line 1806
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1807
    .line 1808
    .line 1809
    move-result v2

    .line 1810
    :goto_1a
    add-int/2addr v2, v1

    .line 1811
    add-int/2addr v2, v0

    .line 1812
    add-int v2, v2, v18

    .line 1813
    .line 1814
    move v9, v2

    .line 1815
    goto/16 :goto_20

    .line 1816
    .line 1817
    :cond_1a
    check-cast v1, Ljava/lang/String;

    .line 1818
    .line 1819
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1820
    .line 1821
    .line 1822
    move-result v0

    .line 1823
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->O(Ljava/lang/String;)I

    .line 1824
    .line 1825
    .line 1826
    move-result v1

    .line 1827
    goto/16 :goto_1c

    .line 1828
    .line 1829
    :pswitch_3d
    move/from16 v18, v9

    .line 1830
    .line 1831
    move/from16 v17, v10

    .line 1832
    .line 1833
    move-object/from16 v0, p0

    .line 1834
    .line 1835
    move-object/from16 v1, p1

    .line 1836
    .line 1837
    move v2, v8

    .line 1838
    move/from16 v3, v17

    .line 1839
    .line 1840
    move v4, v13

    .line 1841
    move v5, v15

    .line 1842
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1843
    .line 1844
    .line 1845
    move-result v0

    .line 1846
    if-eqz v0, :cond_1b

    .line 1847
    .line 1848
    shl-int/lit8 v0, v11, 0x3

    .line 1849
    .line 1850
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1851
    .line 1852
    .line 1853
    move-result v0

    .line 1854
    :goto_1b
    add-int/2addr v0, v12

    .line 1855
    goto :goto_19

    .line 1856
    :pswitch_3e
    move/from16 v18, v9

    .line 1857
    .line 1858
    move/from16 v17, v10

    .line 1859
    .line 1860
    move-object/from16 v0, p0

    .line 1861
    .line 1862
    move-object/from16 v1, p1

    .line 1863
    .line 1864
    move v2, v8

    .line 1865
    move/from16 v3, v17

    .line 1866
    .line 1867
    move v4, v13

    .line 1868
    move v5, v15

    .line 1869
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1870
    .line 1871
    .line 1872
    move-result v0

    .line 1873
    if-eqz v0, :cond_1b

    .line 1874
    .line 1875
    shl-int/lit8 v0, v11, 0x3

    .line 1876
    .line 1877
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1878
    .line 1879
    .line 1880
    move-result v0

    .line 1881
    goto/16 :goto_1d

    .line 1882
    .line 1883
    :pswitch_3f
    move/from16 v18, v9

    .line 1884
    .line 1885
    move/from16 v17, v10

    .line 1886
    .line 1887
    move-object/from16 v0, p0

    .line 1888
    .line 1889
    move-object/from16 v1, p1

    .line 1890
    .line 1891
    move v2, v8

    .line 1892
    move/from16 v3, v17

    .line 1893
    .line 1894
    move v4, v13

    .line 1895
    move v5, v15

    .line 1896
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1897
    .line 1898
    .line 1899
    move-result v0

    .line 1900
    if-eqz v0, :cond_1b

    .line 1901
    .line 1902
    shl-int/lit8 v0, v11, 0x3

    .line 1903
    .line 1904
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1905
    .line 1906
    .line 1907
    move-result v0

    .line 1908
    goto/16 :goto_1e

    .line 1909
    .line 1910
    :pswitch_40
    move/from16 v18, v9

    .line 1911
    .line 1912
    move/from16 v17, v10

    .line 1913
    .line 1914
    move-wide v9, v3

    .line 1915
    move-object/from16 v0, p0

    .line 1916
    .line 1917
    move-object/from16 v1, p1

    .line 1918
    .line 1919
    move v2, v8

    .line 1920
    move/from16 v3, v17

    .line 1921
    .line 1922
    move v4, v13

    .line 1923
    move v5, v15

    .line 1924
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1925
    .line 1926
    .line 1927
    move-result v0

    .line 1928
    if-eqz v0, :cond_1b

    .line 1929
    .line 1930
    shl-int/lit8 v0, v11, 0x3

    .line 1931
    .line 1932
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1933
    .line 1934
    .line 1935
    move-result v1

    .line 1936
    int-to-long v1, v1

    .line 1937
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1938
    .line 1939
    .line 1940
    move-result v0

    .line 1941
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/J1;->r(J)I

    .line 1942
    .line 1943
    .line 1944
    move-result v1

    .line 1945
    goto :goto_1c

    .line 1946
    :pswitch_41
    move/from16 v18, v9

    .line 1947
    .line 1948
    move/from16 v17, v10

    .line 1949
    .line 1950
    move-wide v9, v3

    .line 1951
    move-object/from16 v0, p0

    .line 1952
    .line 1953
    move-object/from16 v1, p1

    .line 1954
    .line 1955
    move v2, v8

    .line 1956
    move/from16 v3, v17

    .line 1957
    .line 1958
    move v4, v13

    .line 1959
    move v5, v15

    .line 1960
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1961
    .line 1962
    .line 1963
    move-result v0

    .line 1964
    if-eqz v0, :cond_1b

    .line 1965
    .line 1966
    shl-int/lit8 v0, v11, 0x3

    .line 1967
    .line 1968
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1969
    .line 1970
    .line 1971
    move-result-wide v1

    .line 1972
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 1973
    .line 1974
    .line 1975
    move-result v0

    .line 1976
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/J1;->r(J)I

    .line 1977
    .line 1978
    .line 1979
    move-result v1

    .line 1980
    goto :goto_1c

    .line 1981
    :pswitch_42
    move/from16 v18, v9

    .line 1982
    .line 1983
    move/from16 v17, v10

    .line 1984
    .line 1985
    move-wide v9, v3

    .line 1986
    move-object/from16 v0, p0

    .line 1987
    .line 1988
    move-object/from16 v1, p1

    .line 1989
    .line 1990
    move v2, v8

    .line 1991
    move/from16 v3, v17

    .line 1992
    .line 1993
    move v4, v13

    .line 1994
    move v5, v15

    .line 1995
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1996
    .line 1997
    .line 1998
    move-result v0

    .line 1999
    if-eqz v0, :cond_1b

    .line 2000
    .line 2001
    shl-int/lit8 v0, v11, 0x3

    .line 2002
    .line 2003
    invoke-virtual {v14, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2004
    .line 2005
    .line 2006
    move-result-wide v1

    .line 2007
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 2008
    .line 2009
    .line 2010
    move-result v0

    .line 2011
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/J1;->r(J)I

    .line 2012
    .line 2013
    .line 2014
    move-result v1

    .line 2015
    :goto_1c
    add-int/2addr v1, v0

    .line 2016
    add-int v1, v1, v18

    .line 2017
    .line 2018
    move v9, v1

    .line 2019
    goto :goto_20

    .line 2020
    :pswitch_43
    move/from16 v18, v9

    .line 2021
    .line 2022
    move/from16 v17, v10

    .line 2023
    .line 2024
    move-object/from16 v0, p0

    .line 2025
    .line 2026
    move-object/from16 v1, p1

    .line 2027
    .line 2028
    move v2, v8

    .line 2029
    move/from16 v3, v17

    .line 2030
    .line 2031
    move v4, v13

    .line 2032
    move v5, v15

    .line 2033
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 2034
    .line 2035
    .line 2036
    move-result v0

    .line 2037
    if-eqz v0, :cond_1b

    .line 2038
    .line 2039
    shl-int/lit8 v0, v11, 0x3

    .line 2040
    .line 2041
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 2042
    .line 2043
    .line 2044
    move-result v0

    .line 2045
    :goto_1d
    add-int/lit8 v0, v0, 0x4

    .line 2046
    .line 2047
    goto/16 :goto_19

    .line 2048
    .line 2049
    :pswitch_44
    move/from16 v18, v9

    .line 2050
    .line 2051
    move/from16 v17, v10

    .line 2052
    .line 2053
    move-object/from16 v0, p0

    .line 2054
    .line 2055
    move-object/from16 v1, p1

    .line 2056
    .line 2057
    move v2, v8

    .line 2058
    move/from16 v3, v17

    .line 2059
    .line 2060
    move v4, v13

    .line 2061
    move v5, v15

    .line 2062
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 2063
    .line 2064
    .line 2065
    move-result v0

    .line 2066
    if-eqz v0, :cond_1b

    .line 2067
    .line 2068
    shl-int/lit8 v0, v11, 0x3

    .line 2069
    .line 2070
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 2071
    .line 2072
    .line 2073
    move-result v0

    .line 2074
    :goto_1e
    add-int/lit8 v0, v0, 0x8

    .line 2075
    .line 2076
    goto/16 :goto_19

    .line 2077
    .line 2078
    :cond_1b
    :goto_1f
    move/from16 v9, v18

    .line 2079
    .line 2080
    :goto_20
    add-int/lit8 v8, v8, 0x3

    .line 2081
    .line 2082
    const v0, 0xfffff

    .line 2083
    .line 2084
    .line 2085
    move v2, v13

    .line 2086
    move/from16 v1, v17

    .line 2087
    .line 2088
    goto/16 :goto_0

    .line 2089
    .line 2090
    :cond_1c
    move/from16 v18, v9

    .line 2091
    .line 2092
    move-object v0, v7

    .line 2093
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 2094
    .line 2095
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 2096
    .line 2097
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/S2;->a()I

    .line 2098
    .line 2099
    .line 2100
    move-result v0

    .line 2101
    add-int v0, v0, v18

    .line 2102
    .line 2103
    iget-boolean v1, v6, Lcom/google/android/gms/internal/play_billing/B2;->f:Z

    .line 2104
    .line 2105
    if-eqz v1, :cond_1f

    .line 2106
    .line 2107
    move-object v1, v7

    .line 2108
    check-cast v1, Lcom/google/android/gms/internal/play_billing/W1;

    .line 2109
    .line 2110
    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 2111
    .line 2112
    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 2113
    .line 2114
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/P2;->c()I

    .line 2115
    .line 2116
    .line 2117
    move-result v2

    .line 2118
    const/4 v3, 0x0

    .line 2119
    const/4 v4, 0x0

    .line 2120
    :goto_21
    iget-object v5, v1, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 2121
    .line 2122
    if-ge v3, v2, :cond_1d

    .line 2123
    .line 2124
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/play_billing/P2;->g(I)Ljava/util/Map$Entry;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v5

    .line 2128
    move-object v7, v5

    .line 2129
    check-cast v7, Lcom/google/android/gms/internal/play_billing/M2;

    .line 2130
    .line 2131
    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/M2;->f()Ljava/lang/Comparable;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v7

    .line 2135
    check-cast v7, Lcom/google/android/gms/internal/play_billing/Q1;

    .line 2136
    .line 2137
    check-cast v5, Lcom/google/android/gms/internal/play_billing/M2;

    .line 2138
    .line 2139
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/M2;->getValue()Ljava/lang/Object;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v5

    .line 2143
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/R1;->a(Lcom/google/android/gms/internal/play_billing/Q1;Ljava/lang/Object;)I

    .line 2144
    .line 2145
    .line 2146
    move-result v5

    .line 2147
    add-int/2addr v4, v5

    .line 2148
    add-int/lit8 v3, v3, 0x1

    .line 2149
    .line 2150
    goto :goto_21

    .line 2151
    :cond_1d
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/P2;->d()Ljava/util/Set;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v1

    .line 2155
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v1

    .line 2159
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2160
    .line 2161
    .line 2162
    move-result v2

    .line 2163
    if-eqz v2, :cond_1e

    .line 2164
    .line 2165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v2

    .line 2169
    check-cast v2, Ljava/util/Map$Entry;

    .line 2170
    .line 2171
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2172
    .line 2173
    .line 2174
    move-result-object v3

    .line 2175
    check-cast v3, Lcom/google/android/gms/internal/play_billing/Q1;

    .line 2176
    .line 2177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2178
    .line 2179
    .line 2180
    move-result-object v2

    .line 2181
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/R1;->a(Lcom/google/android/gms/internal/play_billing/Q1;Ljava/lang/Object;)I

    .line 2182
    .line 2183
    .line 2184
    move-result v2

    .line 2185
    add-int/2addr v4, v2

    .line 2186
    goto :goto_22

    .line 2187
    :cond_1e
    add-int/2addr v0, v4

    .line 2188
    :cond_1f
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lcom/google/android/gms/internal/play_billing/Z1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->e:Lcom/google/android/gms/internal/play_billing/y2;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/Z1;->j(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 11
    .line 12
    return-object v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/B2;->s(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_4

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v3, v2

    .line 24
    ushr-int/lit8 v2, v2, 0x14

    .line 25
    .line 26
    and-int/lit16 v2, v2, 0xff

    .line 27
    .line 28
    aget v1, v1, v0

    .line 29
    .line 30
    int-to-long v3, v3

    .line 31
    packed-switch v2, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :pswitch_0
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :pswitch_1
    invoke-direct {p0, v1, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/X2;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->m(IILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :pswitch_2
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :pswitch_3
    invoke-direct {p0, v1, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/X2;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->m(IILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 83
    .line 84
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/q;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u2;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :pswitch_5
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/google/android/gms/internal/play_billing/d2;

    .line 106
    .line 107
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/google/android/gms/internal/play_billing/d2;

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-lez v5, :cond_1

    .line 122
    .line 123
    if-lez v6, :cond_1

    .line 124
    .line 125
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/d2;->a()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_0

    .line 130
    .line 131
    add-int/2addr v6, v5

    .line 132
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/play_billing/d2;->d(I)Lcom/google/android/gms/internal/play_billing/d2;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    .line 138
    .line 139
    :cond_1
    if-gtz v5, :cond_2

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    move-object v2, v1

    .line 143
    :goto_1
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/X2;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :pswitch_6
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->j(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :pswitch_7
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v1

    .line 163
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/X2;->v(Ljava/lang/Object;JJ)V

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_2

    .line 170
    .line 171
    :pswitch_8
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_3

    .line 176
    .line 177
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->u(Ljava/lang/Object;JI)V

    .line 182
    .line 183
    .line 184
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_2

    .line 188
    .line 189
    :pswitch_9
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_3

    .line 194
    .line 195
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v1

    .line 199
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/X2;->v(Ljava/lang/Object;JJ)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :pswitch_a
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_3

    .line 212
    .line 213
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->u(Ljava/lang/Object;JI)V

    .line 218
    .line 219
    .line 220
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :pswitch_b
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_3

    .line 230
    .line 231
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->u(Ljava/lang/Object;JI)V

    .line 236
    .line 237
    .line 238
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :pswitch_c
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_3

    .line 248
    .line 249
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->u(Ljava/lang/Object;JI)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :pswitch_d
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_3

    .line 266
    .line 267
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_2

    .line 278
    .line 279
    :pswitch_e
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->j(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :pswitch_f
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_3

    .line 289
    .line 290
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :pswitch_10
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_3

    .line 307
    .line 308
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->A(JLjava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->q(Ljava/lang/Object;JZ)V

    .line 313
    .line 314
    .line 315
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_2

    .line 319
    .line 320
    :pswitch_11
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_3

    .line 325
    .line 326
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->u(Ljava/lang/Object;JI)V

    .line 331
    .line 332
    .line 333
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    goto :goto_2

    .line 337
    :pswitch_12
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_3

    .line 342
    .line 343
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 344
    .line 345
    .line 346
    move-result-wide v1

    .line 347
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/X2;->v(Ljava/lang/Object;JJ)V

    .line 348
    .line 349
    .line 350
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    goto :goto_2

    .line 354
    :pswitch_13
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_3

    .line 359
    .line 360
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->u(Ljava/lang/Object;JI)V

    .line 365
    .line 366
    .line 367
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    goto :goto_2

    .line 371
    :pswitch_14
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-eqz v1, :cond_3

    .line 376
    .line 377
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 378
    .line 379
    .line 380
    move-result-wide v1

    .line 381
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/X2;->v(Ljava/lang/Object;JJ)V

    .line 382
    .line 383
    .line 384
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    goto :goto_2

    .line 388
    :pswitch_15
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-eqz v1, :cond_3

    .line 393
    .line 394
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 395
    .line 396
    .line 397
    move-result-wide v1

    .line 398
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/X2;->v(Ljava/lang/Object;JJ)V

    .line 399
    .line 400
    .line 401
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    goto :goto_2

    .line 405
    :pswitch_16
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_3

    .line 410
    .line 411
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->f(JLjava/lang/Object;)F

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/X2;->t(Ljava/lang/Object;JF)V

    .line 416
    .line 417
    .line 418
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    goto :goto_2

    .line 422
    :pswitch_17
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/B2;->q(ILjava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-eqz v1, :cond_3

    .line 427
    .line 428
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/X2;->e(JLjava/lang/Object;)D

    .line 429
    .line 430
    .line 431
    move-result-wide v1

    .line 432
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/X2;->s(Ljava/lang/Object;JD)V

    .line 433
    .line 434
    .line 435
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/B2;->l(ILjava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 439
    .line 440
    goto/16 :goto_0

    .line 441
    .line 442
    :cond_4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/J2;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->f:Z

    .line 446
    .line 447
    if-eqz v0, :cond_6

    .line 448
    .line 449
    check-cast p2, Lcom/google/android/gms/internal/play_billing/W1;

    .line 450
    .line 451
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 452
    .line 453
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 454
    .line 455
    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 456
    .line 457
    .line 458
    move-result p2

    .line 459
    if-eqz p2, :cond_5

    .line 460
    .line 461
    goto :goto_3

    .line 462
    :cond_5
    check-cast p1, Lcom/google/android/gms/internal/play_billing/W1;

    .line 463
    .line 464
    const/4 p1, 0x0

    .line 465
    throw p1

    .line 466
    :cond_6
    :goto_3
    return-void

    .line 467
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 468
    .line 469
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    const-string v0, "Mutating immutable message: "

    .line 474
    .line 475
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw p2

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/K1;)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/B2;->f:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, v7

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/play_billing/W1;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/R1;->d()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/util/Map$Entry;

    .line 33
    .line 34
    move-object v10, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v10, 0x0

    .line 37
    :goto_0
    const v11, 0xfffff

    .line 38
    .line 39
    .line 40
    const v0, 0xfffff

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v13, 0x0

    .line 45
    :goto_1
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 46
    .line 47
    array-length v3, v2

    .line 48
    if-ge v13, v3, :cond_a

    .line 49
    .line 50
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    ushr-int/lit8 v4, v3, 0x14

    .line 55
    .line 56
    and-int/lit16 v4, v4, 0xff

    .line 57
    .line 58
    aget v14, v2, v13

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    const/16 v15, 0x11

    .line 62
    .line 63
    sget-object v12, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 64
    .line 65
    if-gt v4, v15, :cond_3

    .line 66
    .line 67
    add-int/lit8 v15, v13, 0x2

    .line 68
    .line 69
    aget v15, v2, v15

    .line 70
    .line 71
    and-int v9, v15, v11

    .line 72
    .line 73
    if-eq v9, v0, :cond_2

    .line 74
    .line 75
    if-ne v9, v11, :cond_1

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    int-to-long v0, v9

    .line 80
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    :goto_2
    move v1, v0

    .line 85
    move v0, v9

    .line 86
    :cond_2
    ushr-int/lit8 v9, v15, 0x14

    .line 87
    .line 88
    shl-int v9, v5, v9

    .line 89
    .line 90
    move v15, v1

    .line 91
    move/from16 v17, v9

    .line 92
    .line 93
    move v9, v0

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    move v9, v0

    .line 96
    move v15, v1

    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    :goto_3
    if-nez v10, :cond_9

    .line 100
    .line 101
    and-int v0, v3, v11

    .line 102
    .line 103
    int-to-long v0, v0

    .line 104
    packed-switch v4, :pswitch_data_0

    .line 105
    .line 106
    .line 107
    goto/16 :goto_6

    .line 108
    .line 109
    :pswitch_0
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v8, v14, v1, v0}, Lcom/google/android/gms/internal/play_billing/K1;->C(ILcom/google/android/gms/internal/play_billing/I2;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :pswitch_1
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->d(IJ)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :pswitch_2
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->b(II)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :pswitch_3
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_6

    .line 163
    .line 164
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v0

    .line 168
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->L(IJ)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_6

    .line 172
    .line 173
    :pswitch_4
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_6

    .line 178
    .line 179
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->J(II)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :pswitch_5
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_6

    .line 193
    .line 194
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->u(II)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_6

    .line 202
    .line 203
    :pswitch_6
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_6

    .line 208
    .line 209
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->i(II)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_6

    .line 217
    .line 218
    :pswitch_7
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_6

    .line 223
    .line 224
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lcom/google/android/gms/internal/play_billing/F1;

    .line 229
    .line 230
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->p(ILcom/google/android/gms/internal/play_billing/F1;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_6

    .line 234
    .line 235
    :pswitch_8
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_6

    .line 240
    .line 241
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v8, v14, v1, v0}, Lcom/google/android/gms/internal/play_billing/K1;->H(ILcom/google/android/gms/internal/play_billing/I2;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_6

    .line 253
    .line 254
    :pswitch_9
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_6

    .line 259
    .line 260
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    instance-of v1, v0, Ljava/lang/String;

    .line 265
    .line 266
    if-eqz v1, :cond_4

    .line 267
    .line 268
    check-cast v0, Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->g(ILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_6

    .line 274
    .line 275
    :cond_4
    check-cast v0, Lcom/google/android/gms/internal/play_billing/F1;

    .line 276
    .line 277
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->p(ILcom/google/android/gms/internal/play_billing/F1;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_6

    .line 281
    .line 282
    :pswitch_a
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_6

    .line 287
    .line 288
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Ljava/lang/Boolean;

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->n(IZ)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_6

    .line 302
    .line 303
    :pswitch_b
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_6

    .line 308
    .line 309
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->w(II)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_6

    .line 317
    .line 318
    :pswitch_c
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_6

    .line 323
    .line 324
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 325
    .line 326
    .line 327
    move-result-wide v0

    .line 328
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->y(IJ)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_6

    .line 332
    .line 333
    :pswitch_d
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_6

    .line 338
    .line 339
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->x(JLjava/lang/Object;)I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->D(II)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_6

    .line 347
    .line 348
    :pswitch_e
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-eqz v2, :cond_6

    .line 353
    .line 354
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 355
    .line 356
    .line 357
    move-result-wide v0

    .line 358
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->k(IJ)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_6

    .line 362
    .line 363
    :pswitch_f
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_6

    .line 368
    .line 369
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/B2;->A(JLjava/lang/Object;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v0

    .line 373
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->F(IJ)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_6

    .line 377
    .line 378
    :pswitch_10
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_6

    .line 383
    .line 384
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Ljava/lang/Float;

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->A(IF)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_6

    .line 398
    .line 399
    :pswitch_11
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_6

    .line 404
    .line 405
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    check-cast v0, Ljava/lang/Double;

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 412
    .line 413
    .line 414
    move-result-wide v0

    .line 415
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->r(ID)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_6

    .line 419
    .line 420
    :pswitch_12
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    if-nez v0, :cond_5

    .line 425
    .line 426
    goto/16 :goto_6

    .line 427
    .line 428
    :cond_5
    div-int/lit8 v13, v13, 0x3

    .line 429
    .line 430
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/B2;->b:[Ljava/lang/Object;

    .line 431
    .line 432
    add-int/2addr v13, v13

    .line 433
    aget-object v0, v0, v13

    .line 434
    .line 435
    check-cast v0, Lcom/google/android/gms/internal/play_billing/t2;

    .line 436
    .line 437
    const/4 v0, 0x0

    .line 438
    throw v0

    .line 439
    :pswitch_13
    aget v2, v2, v13

    .line 440
    .line 441
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    check-cast v0, Ljava/util/List;

    .line 446
    .line 447
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    sget v3, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 452
    .line 453
    if-eqz v0, :cond_6

    .line 454
    .line 455
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    if-nez v3, :cond_6

    .line 460
    .line 461
    const/4 v3, 0x0

    .line 462
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-ge v3, v4, :cond_6

    .line 467
    .line 468
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    invoke-virtual {v8, v2, v1, v4}, Lcom/google/android/gms/internal/play_billing/K1;->C(ILcom/google/android/gms/internal/play_billing/I2;Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    add-int/lit8 v3, v3, 0x1

    .line 476
    .line 477
    goto :goto_4

    .line 478
    :pswitch_14
    aget v2, v2, v13

    .line 479
    .line 480
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Ljava/util/List;

    .line 485
    .line 486
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->b(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_6

    .line 490
    .line 491
    :pswitch_15
    aget v2, v2, v13

    .line 492
    .line 493
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    check-cast v0, Ljava/util/List;

    .line 498
    .line 499
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->a(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 500
    .line 501
    .line 502
    goto/16 :goto_6

    .line 503
    .line 504
    :pswitch_16
    aget v2, v2, v13

    .line 505
    .line 506
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, Ljava/util/List;

    .line 511
    .line 512
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->D(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 513
    .line 514
    .line 515
    goto/16 :goto_6

    .line 516
    .line 517
    :pswitch_17
    aget v2, v2, v13

    .line 518
    .line 519
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    check-cast v0, Ljava/util/List;

    .line 524
    .line 525
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->C(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_6

    .line 529
    .line 530
    :pswitch_18
    aget v2, v2, v13

    .line 531
    .line 532
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, Ljava/util/List;

    .line 537
    .line 538
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->w(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_6

    .line 542
    .line 543
    :pswitch_19
    aget v2, v2, v13

    .line 544
    .line 545
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    check-cast v0, Ljava/util/List;

    .line 550
    .line 551
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->c(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_6

    .line 555
    .line 556
    :pswitch_1a
    aget v2, v2, v13

    .line 557
    .line 558
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    check-cast v0, Ljava/util/List;

    .line 563
    .line 564
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->u(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_6

    .line 568
    .line 569
    :pswitch_1b
    aget v2, v2, v13

    .line 570
    .line 571
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    check-cast v0, Ljava/util/List;

    .line 576
    .line 577
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->x(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_6

    .line 581
    .line 582
    :pswitch_1c
    aget v2, v2, v13

    .line 583
    .line 584
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    check-cast v0, Ljava/util/List;

    .line 589
    .line 590
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->y(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 591
    .line 592
    .line 593
    goto/16 :goto_6

    .line 594
    .line 595
    :pswitch_1d
    aget v2, v2, v13

    .line 596
    .line 597
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    check-cast v0, Ljava/util/List;

    .line 602
    .line 603
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->A(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 604
    .line 605
    .line 606
    goto/16 :goto_6

    .line 607
    .line 608
    :pswitch_1e
    aget v2, v2, v13

    .line 609
    .line 610
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    check-cast v0, Ljava/util/List;

    .line 615
    .line 616
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->d(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 617
    .line 618
    .line 619
    goto/16 :goto_6

    .line 620
    .line 621
    :pswitch_1f
    aget v2, v2, v13

    .line 622
    .line 623
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    check-cast v0, Ljava/util/List;

    .line 628
    .line 629
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->B(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 630
    .line 631
    .line 632
    goto/16 :goto_6

    .line 633
    .line 634
    :pswitch_20
    aget v2, v2, v13

    .line 635
    .line 636
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    check-cast v0, Ljava/util/List;

    .line 641
    .line 642
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->z(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_6

    .line 646
    .line 647
    :pswitch_21
    aget v2, v2, v13

    .line 648
    .line 649
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    check-cast v0, Ljava/util/List;

    .line 654
    .line 655
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->v(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 656
    .line 657
    .line 658
    goto/16 :goto_6

    .line 659
    .line 660
    :pswitch_22
    aget v2, v2, v13

    .line 661
    .line 662
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    check-cast v0, Ljava/util/List;

    .line 667
    .line 668
    const/4 v3, 0x0

    .line 669
    invoke-static {v2, v0, v8, v3}, Lcom/google/android/gms/internal/play_billing/J2;->b(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 670
    .line 671
    .line 672
    goto/16 :goto_6

    .line 673
    .line 674
    :pswitch_23
    const/4 v3, 0x0

    .line 675
    aget v2, v2, v13

    .line 676
    .line 677
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    check-cast v0, Ljava/util/List;

    .line 682
    .line 683
    invoke-static {v2, v0, v8, v3}, Lcom/google/android/gms/internal/play_billing/J2;->a(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 684
    .line 685
    .line 686
    goto/16 :goto_6

    .line 687
    .line 688
    :pswitch_24
    const/4 v3, 0x0

    .line 689
    aget v2, v2, v13

    .line 690
    .line 691
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    check-cast v0, Ljava/util/List;

    .line 696
    .line 697
    invoke-static {v2, v0, v8, v3}, Lcom/google/android/gms/internal/play_billing/J2;->D(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 698
    .line 699
    .line 700
    goto/16 :goto_6

    .line 701
    .line 702
    :pswitch_25
    const/4 v3, 0x0

    .line 703
    aget v2, v2, v13

    .line 704
    .line 705
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    check-cast v0, Ljava/util/List;

    .line 710
    .line 711
    invoke-static {v2, v0, v8, v3}, Lcom/google/android/gms/internal/play_billing/J2;->C(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 712
    .line 713
    .line 714
    goto/16 :goto_6

    .line 715
    .line 716
    :pswitch_26
    const/4 v3, 0x0

    .line 717
    aget v2, v2, v13

    .line 718
    .line 719
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    check-cast v0, Ljava/util/List;

    .line 724
    .line 725
    invoke-static {v2, v0, v8, v3}, Lcom/google/android/gms/internal/play_billing/J2;->w(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 726
    .line 727
    .line 728
    goto/16 :goto_6

    .line 729
    .line 730
    :pswitch_27
    const/4 v3, 0x0

    .line 731
    aget v2, v2, v13

    .line 732
    .line 733
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    check-cast v0, Ljava/util/List;

    .line 738
    .line 739
    invoke-static {v2, v0, v8, v3}, Lcom/google/android/gms/internal/play_billing/J2;->c(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 740
    .line 741
    .line 742
    goto/16 :goto_6

    .line 743
    .line 744
    :pswitch_28
    aget v2, v2, v13

    .line 745
    .line 746
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    check-cast v0, Ljava/util/List;

    .line 751
    .line 752
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 753
    .line 754
    if-eqz v0, :cond_6

    .line 755
    .line 756
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 757
    .line 758
    .line 759
    move-result v1

    .line 760
    if-nez v1, :cond_6

    .line 761
    .line 762
    invoke-virtual {v8, v0, v2}, Lcom/google/android/gms/internal/play_billing/K1;->q(Ljava/util/List;I)V

    .line 763
    .line 764
    .line 765
    goto/16 :goto_6

    .line 766
    .line 767
    :pswitch_29
    aget v2, v2, v13

    .line 768
    .line 769
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    check-cast v0, Ljava/util/List;

    .line 774
    .line 775
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    sget v3, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 780
    .line 781
    if-eqz v0, :cond_6

    .line 782
    .line 783
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 784
    .line 785
    .line 786
    move-result v3

    .line 787
    if-nez v3, :cond_6

    .line 788
    .line 789
    const/4 v3, 0x0

    .line 790
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 791
    .line 792
    .line 793
    move-result v4

    .line 794
    if-ge v3, v4, :cond_6

    .line 795
    .line 796
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    invoke-virtual {v8, v2, v1, v4}, Lcom/google/android/gms/internal/play_billing/K1;->H(ILcom/google/android/gms/internal/play_billing/I2;Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    add-int/lit8 v3, v3, 0x1

    .line 804
    .line 805
    goto :goto_5

    .line 806
    :pswitch_2a
    aget v2, v2, v13

    .line 807
    .line 808
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    check-cast v0, Ljava/util/List;

    .line 813
    .line 814
    sget v1, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    .line 815
    .line 816
    if-eqz v0, :cond_6

    .line 817
    .line 818
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 819
    .line 820
    .line 821
    move-result v1

    .line 822
    if-nez v1, :cond_6

    .line 823
    .line 824
    invoke-virtual {v8, v0, v2}, Lcom/google/android/gms/internal/play_billing/K1;->h(Ljava/util/List;I)V

    .line 825
    .line 826
    .line 827
    goto :goto_6

    .line 828
    :pswitch_2b
    aget v2, v2, v13

    .line 829
    .line 830
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    check-cast v0, Ljava/util/List;

    .line 835
    .line 836
    const/4 v5, 0x0

    .line 837
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->u(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 838
    .line 839
    .line 840
    goto :goto_6

    .line 841
    :pswitch_2c
    const/4 v5, 0x0

    .line 842
    aget v2, v2, v13

    .line 843
    .line 844
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    check-cast v0, Ljava/util/List;

    .line 849
    .line 850
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->x(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 851
    .line 852
    .line 853
    goto :goto_6

    .line 854
    :pswitch_2d
    const/4 v5, 0x0

    .line 855
    aget v2, v2, v13

    .line 856
    .line 857
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    check-cast v0, Ljava/util/List;

    .line 862
    .line 863
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->y(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 864
    .line 865
    .line 866
    goto :goto_6

    .line 867
    :pswitch_2e
    const/4 v5, 0x0

    .line 868
    aget v2, v2, v13

    .line 869
    .line 870
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    check-cast v0, Ljava/util/List;

    .line 875
    .line 876
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->A(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 877
    .line 878
    .line 879
    goto :goto_6

    .line 880
    :pswitch_2f
    const/4 v5, 0x0

    .line 881
    aget v2, v2, v13

    .line 882
    .line 883
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    check-cast v0, Ljava/util/List;

    .line 888
    .line 889
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->d(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 890
    .line 891
    .line 892
    goto :goto_6

    .line 893
    :pswitch_30
    const/4 v5, 0x0

    .line 894
    aget v2, v2, v13

    .line 895
    .line 896
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    check-cast v0, Ljava/util/List;

    .line 901
    .line 902
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->B(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 903
    .line 904
    .line 905
    goto :goto_6

    .line 906
    :pswitch_31
    const/4 v5, 0x0

    .line 907
    aget v2, v2, v13

    .line 908
    .line 909
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    check-cast v0, Ljava/util/List;

    .line 914
    .line 915
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->z(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 916
    .line 917
    .line 918
    goto :goto_6

    .line 919
    :pswitch_32
    const/4 v5, 0x0

    .line 920
    aget v2, v2, v13

    .line 921
    .line 922
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    check-cast v0, Ljava/util/List;

    .line 927
    .line 928
    invoke-static {v2, v0, v8, v5}, Lcom/google/android/gms/internal/play_billing/J2;->v(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/K1;Z)V

    .line 929
    .line 930
    .line 931
    :cond_6
    :goto_6
    move-object/from16 v16, v10

    .line 932
    .line 933
    const/16 v18, 0x0

    .line 934
    .line 935
    goto/16 :goto_7

    .line 936
    .line 937
    :pswitch_33
    move-wide v3, v0

    .line 938
    const/4 v5, 0x0

    .line 939
    move-object/from16 v0, p0

    .line 940
    .line 941
    move-object/from16 v1, p1

    .line 942
    .line 943
    move v2, v13

    .line 944
    move-object/from16 v16, v10

    .line 945
    .line 946
    move-wide v10, v3

    .line 947
    move v3, v9

    .line 948
    move v4, v15

    .line 949
    const/16 v18, 0x0

    .line 950
    .line 951
    move/from16 v5, v17

    .line 952
    .line 953
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 954
    .line 955
    .line 956
    move-result v0

    .line 957
    if-eqz v0, :cond_8

    .line 958
    .line 959
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    invoke-virtual {v8, v14, v1, v0}, Lcom/google/android/gms/internal/play_billing/K1;->C(ILcom/google/android/gms/internal/play_billing/I2;Ljava/lang/Object;)V

    .line 968
    .line 969
    .line 970
    goto/16 :goto_7

    .line 971
    .line 972
    :pswitch_34
    move-object/from16 v16, v10

    .line 973
    .line 974
    const/16 v18, 0x0

    .line 975
    .line 976
    move-wide v10, v0

    .line 977
    move-object/from16 v0, p0

    .line 978
    .line 979
    move-object/from16 v1, p1

    .line 980
    .line 981
    move v2, v13

    .line 982
    move v3, v9

    .line 983
    move v4, v15

    .line 984
    move/from16 v5, v17

    .line 985
    .line 986
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 987
    .line 988
    .line 989
    move-result v0

    .line 990
    if-eqz v0, :cond_8

    .line 991
    .line 992
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 993
    .line 994
    .line 995
    move-result-wide v0

    .line 996
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->d(IJ)V

    .line 997
    .line 998
    .line 999
    goto/16 :goto_7

    .line 1000
    .line 1001
    :pswitch_35
    move-object/from16 v16, v10

    .line 1002
    .line 1003
    const/16 v18, 0x0

    .line 1004
    .line 1005
    move-wide v10, v0

    .line 1006
    move-object/from16 v0, p0

    .line 1007
    .line 1008
    move-object/from16 v1, p1

    .line 1009
    .line 1010
    move v2, v13

    .line 1011
    move v3, v9

    .line 1012
    move v4, v15

    .line 1013
    move/from16 v5, v17

    .line 1014
    .line 1015
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    if-eqz v0, :cond_8

    .line 1020
    .line 1021
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1022
    .line 1023
    .line 1024
    move-result v0

    .line 1025
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->b(II)V

    .line 1026
    .line 1027
    .line 1028
    goto/16 :goto_7

    .line 1029
    .line 1030
    :pswitch_36
    move-object/from16 v16, v10

    .line 1031
    .line 1032
    const/16 v18, 0x0

    .line 1033
    .line 1034
    move-wide v10, v0

    .line 1035
    move-object/from16 v0, p0

    .line 1036
    .line 1037
    move-object/from16 v1, p1

    .line 1038
    .line 1039
    move v2, v13

    .line 1040
    move v3, v9

    .line 1041
    move v4, v15

    .line 1042
    move/from16 v5, v17

    .line 1043
    .line 1044
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v0

    .line 1048
    if-eqz v0, :cond_8

    .line 1049
    .line 1050
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1051
    .line 1052
    .line 1053
    move-result-wide v0

    .line 1054
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->L(IJ)V

    .line 1055
    .line 1056
    .line 1057
    goto/16 :goto_7

    .line 1058
    .line 1059
    :pswitch_37
    move-object/from16 v16, v10

    .line 1060
    .line 1061
    const/16 v18, 0x0

    .line 1062
    .line 1063
    move-wide v10, v0

    .line 1064
    move-object/from16 v0, p0

    .line 1065
    .line 1066
    move-object/from16 v1, p1

    .line 1067
    .line 1068
    move v2, v13

    .line 1069
    move v3, v9

    .line 1070
    move v4, v15

    .line 1071
    move/from16 v5, v17

    .line 1072
    .line 1073
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v0

    .line 1077
    if-eqz v0, :cond_8

    .line 1078
    .line 1079
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1080
    .line 1081
    .line 1082
    move-result v0

    .line 1083
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->J(II)V

    .line 1084
    .line 1085
    .line 1086
    goto/16 :goto_7

    .line 1087
    .line 1088
    :pswitch_38
    move-object/from16 v16, v10

    .line 1089
    .line 1090
    const/16 v18, 0x0

    .line 1091
    .line 1092
    move-wide v10, v0

    .line 1093
    move-object/from16 v0, p0

    .line 1094
    .line 1095
    move-object/from16 v1, p1

    .line 1096
    .line 1097
    move v2, v13

    .line 1098
    move v3, v9

    .line 1099
    move v4, v15

    .line 1100
    move/from16 v5, v17

    .line 1101
    .line 1102
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v0

    .line 1106
    if-eqz v0, :cond_8

    .line 1107
    .line 1108
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1109
    .line 1110
    .line 1111
    move-result v0

    .line 1112
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->u(II)V

    .line 1113
    .line 1114
    .line 1115
    goto/16 :goto_7

    .line 1116
    .line 1117
    :pswitch_39
    move-object/from16 v16, v10

    .line 1118
    .line 1119
    const/16 v18, 0x0

    .line 1120
    .line 1121
    move-wide v10, v0

    .line 1122
    move-object/from16 v0, p0

    .line 1123
    .line 1124
    move-object/from16 v1, p1

    .line 1125
    .line 1126
    move v2, v13

    .line 1127
    move v3, v9

    .line 1128
    move v4, v15

    .line 1129
    move/from16 v5, v17

    .line 1130
    .line 1131
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1132
    .line 1133
    .line 1134
    move-result v0

    .line 1135
    if-eqz v0, :cond_8

    .line 1136
    .line 1137
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1138
    .line 1139
    .line 1140
    move-result v0

    .line 1141
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->i(II)V

    .line 1142
    .line 1143
    .line 1144
    goto/16 :goto_7

    .line 1145
    .line 1146
    :pswitch_3a
    move-object/from16 v16, v10

    .line 1147
    .line 1148
    const/16 v18, 0x0

    .line 1149
    .line 1150
    move-wide v10, v0

    .line 1151
    move-object/from16 v0, p0

    .line 1152
    .line 1153
    move-object/from16 v1, p1

    .line 1154
    .line 1155
    move v2, v13

    .line 1156
    move v3, v9

    .line 1157
    move v4, v15

    .line 1158
    move/from16 v5, v17

    .line 1159
    .line 1160
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1161
    .line 1162
    .line 1163
    move-result v0

    .line 1164
    if-eqz v0, :cond_8

    .line 1165
    .line 1166
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    check-cast v0, Lcom/google/android/gms/internal/play_billing/F1;

    .line 1171
    .line 1172
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->p(ILcom/google/android/gms/internal/play_billing/F1;)V

    .line 1173
    .line 1174
    .line 1175
    goto/16 :goto_7

    .line 1176
    .line 1177
    :pswitch_3b
    move-object/from16 v16, v10

    .line 1178
    .line 1179
    const/16 v18, 0x0

    .line 1180
    .line 1181
    move-wide v10, v0

    .line 1182
    move-object/from16 v0, p0

    .line 1183
    .line 1184
    move-object/from16 v1, p1

    .line 1185
    .line 1186
    move v2, v13

    .line 1187
    move v3, v9

    .line 1188
    move v4, v15

    .line 1189
    move/from16 v5, v17

    .line 1190
    .line 1191
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v0

    .line 1195
    if-eqz v0, :cond_8

    .line 1196
    .line 1197
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    invoke-direct {v6, v13}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v1

    .line 1205
    invoke-virtual {v8, v14, v1, v0}, Lcom/google/android/gms/internal/play_billing/K1;->H(ILcom/google/android/gms/internal/play_billing/I2;Ljava/lang/Object;)V

    .line 1206
    .line 1207
    .line 1208
    goto/16 :goto_7

    .line 1209
    .line 1210
    :pswitch_3c
    move-object/from16 v16, v10

    .line 1211
    .line 1212
    const/16 v18, 0x0

    .line 1213
    .line 1214
    move-wide v10, v0

    .line 1215
    move-object/from16 v0, p0

    .line 1216
    .line 1217
    move-object/from16 v1, p1

    .line 1218
    .line 1219
    move v2, v13

    .line 1220
    move v3, v9

    .line 1221
    move v4, v15

    .line 1222
    move/from16 v5, v17

    .line 1223
    .line 1224
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1225
    .line 1226
    .line 1227
    move-result v0

    .line 1228
    if-eqz v0, :cond_8

    .line 1229
    .line 1230
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    instance-of v1, v0, Ljava/lang/String;

    .line 1235
    .line 1236
    if-eqz v1, :cond_7

    .line 1237
    .line 1238
    check-cast v0, Ljava/lang/String;

    .line 1239
    .line 1240
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->g(ILjava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    goto/16 :goto_7

    .line 1244
    .line 1245
    :cond_7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/F1;

    .line 1246
    .line 1247
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->p(ILcom/google/android/gms/internal/play_billing/F1;)V

    .line 1248
    .line 1249
    .line 1250
    goto/16 :goto_7

    .line 1251
    .line 1252
    :pswitch_3d
    move-object/from16 v16, v10

    .line 1253
    .line 1254
    const/16 v18, 0x0

    .line 1255
    .line 1256
    move-wide v10, v0

    .line 1257
    move-object/from16 v0, p0

    .line 1258
    .line 1259
    move-object/from16 v1, p1

    .line 1260
    .line 1261
    move v2, v13

    .line 1262
    move v3, v9

    .line 1263
    move v4, v15

    .line 1264
    move/from16 v5, v17

    .line 1265
    .line 1266
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v0

    .line 1270
    if-eqz v0, :cond_8

    .line 1271
    .line 1272
    invoke-static {v10, v11, v7}, Lcom/google/android/gms/internal/play_billing/X2;->A(JLjava/lang/Object;)Z

    .line 1273
    .line 1274
    .line 1275
    move-result v0

    .line 1276
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->n(IZ)V

    .line 1277
    .line 1278
    .line 1279
    goto/16 :goto_7

    .line 1280
    .line 1281
    :pswitch_3e
    move-object/from16 v16, v10

    .line 1282
    .line 1283
    const/16 v18, 0x0

    .line 1284
    .line 1285
    move-wide v10, v0

    .line 1286
    move-object/from16 v0, p0

    .line 1287
    .line 1288
    move-object/from16 v1, p1

    .line 1289
    .line 1290
    move v2, v13

    .line 1291
    move v3, v9

    .line 1292
    move v4, v15

    .line 1293
    move/from16 v5, v17

    .line 1294
    .line 1295
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1296
    .line 1297
    .line 1298
    move-result v0

    .line 1299
    if-eqz v0, :cond_8

    .line 1300
    .line 1301
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1302
    .line 1303
    .line 1304
    move-result v0

    .line 1305
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->w(II)V

    .line 1306
    .line 1307
    .line 1308
    goto/16 :goto_7

    .line 1309
    .line 1310
    :pswitch_3f
    move-object/from16 v16, v10

    .line 1311
    .line 1312
    const/16 v18, 0x0

    .line 1313
    .line 1314
    move-wide v10, v0

    .line 1315
    move-object/from16 v0, p0

    .line 1316
    .line 1317
    move-object/from16 v1, p1

    .line 1318
    .line 1319
    move v2, v13

    .line 1320
    move v3, v9

    .line 1321
    move v4, v15

    .line 1322
    move/from16 v5, v17

    .line 1323
    .line 1324
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1325
    .line 1326
    .line 1327
    move-result v0

    .line 1328
    if-eqz v0, :cond_8

    .line 1329
    .line 1330
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1331
    .line 1332
    .line 1333
    move-result-wide v0

    .line 1334
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->y(IJ)V

    .line 1335
    .line 1336
    .line 1337
    goto/16 :goto_7

    .line 1338
    .line 1339
    :pswitch_40
    move-object/from16 v16, v10

    .line 1340
    .line 1341
    const/16 v18, 0x0

    .line 1342
    .line 1343
    move-wide v10, v0

    .line 1344
    move-object/from16 v0, p0

    .line 1345
    .line 1346
    move-object/from16 v1, p1

    .line 1347
    .line 1348
    move v2, v13

    .line 1349
    move v3, v9

    .line 1350
    move v4, v15

    .line 1351
    move/from16 v5, v17

    .line 1352
    .line 1353
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v0

    .line 1357
    if-eqz v0, :cond_8

    .line 1358
    .line 1359
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1360
    .line 1361
    .line 1362
    move-result v0

    .line 1363
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->D(II)V

    .line 1364
    .line 1365
    .line 1366
    goto/16 :goto_7

    .line 1367
    .line 1368
    :pswitch_41
    move-object/from16 v16, v10

    .line 1369
    .line 1370
    const/16 v18, 0x0

    .line 1371
    .line 1372
    move-wide v10, v0

    .line 1373
    move-object/from16 v0, p0

    .line 1374
    .line 1375
    move-object/from16 v1, p1

    .line 1376
    .line 1377
    move v2, v13

    .line 1378
    move v3, v9

    .line 1379
    move v4, v15

    .line 1380
    move/from16 v5, v17

    .line 1381
    .line 1382
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v0

    .line 1386
    if-eqz v0, :cond_8

    .line 1387
    .line 1388
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1389
    .line 1390
    .line 1391
    move-result-wide v0

    .line 1392
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->k(IJ)V

    .line 1393
    .line 1394
    .line 1395
    goto/16 :goto_7

    .line 1396
    .line 1397
    :pswitch_42
    move-object/from16 v16, v10

    .line 1398
    .line 1399
    const/16 v18, 0x0

    .line 1400
    .line 1401
    move-wide v10, v0

    .line 1402
    move-object/from16 v0, p0

    .line 1403
    .line 1404
    move-object/from16 v1, p1

    .line 1405
    .line 1406
    move v2, v13

    .line 1407
    move v3, v9

    .line 1408
    move v4, v15

    .line 1409
    move/from16 v5, v17

    .line 1410
    .line 1411
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v0

    .line 1415
    if-eqz v0, :cond_8

    .line 1416
    .line 1417
    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1418
    .line 1419
    .line 1420
    move-result-wide v0

    .line 1421
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->F(IJ)V

    .line 1422
    .line 1423
    .line 1424
    goto :goto_7

    .line 1425
    :pswitch_43
    move-object/from16 v16, v10

    .line 1426
    .line 1427
    const/16 v18, 0x0

    .line 1428
    .line 1429
    move-wide v10, v0

    .line 1430
    move-object/from16 v0, p0

    .line 1431
    .line 1432
    move-object/from16 v1, p1

    .line 1433
    .line 1434
    move v2, v13

    .line 1435
    move v3, v9

    .line 1436
    move v4, v15

    .line 1437
    move/from16 v5, v17

    .line 1438
    .line 1439
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1440
    .line 1441
    .line 1442
    move-result v0

    .line 1443
    if-eqz v0, :cond_8

    .line 1444
    .line 1445
    invoke-static {v10, v11, v7}, Lcom/google/android/gms/internal/play_billing/X2;->f(JLjava/lang/Object;)F

    .line 1446
    .line 1447
    .line 1448
    move-result v0

    .line 1449
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/play_billing/K1;->A(IF)V

    .line 1450
    .line 1451
    .line 1452
    goto :goto_7

    .line 1453
    :pswitch_44
    move-object/from16 v16, v10

    .line 1454
    .line 1455
    const/16 v18, 0x0

    .line 1456
    .line 1457
    move-wide v10, v0

    .line 1458
    move-object/from16 v0, p0

    .line 1459
    .line 1460
    move-object/from16 v1, p1

    .line 1461
    .line 1462
    move v2, v13

    .line 1463
    move v3, v9

    .line 1464
    move v4, v15

    .line 1465
    move/from16 v5, v17

    .line 1466
    .line 1467
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 1468
    .line 1469
    .line 1470
    move-result v0

    .line 1471
    if-eqz v0, :cond_8

    .line 1472
    .line 1473
    invoke-static {v10, v11, v7}, Lcom/google/android/gms/internal/play_billing/X2;->e(JLjava/lang/Object;)D

    .line 1474
    .line 1475
    .line 1476
    move-result-wide v0

    .line 1477
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/play_billing/K1;->r(ID)V

    .line 1478
    .line 1479
    .line 1480
    :cond_8
    :goto_7
    add-int/lit8 v13, v13, 0x3

    .line 1481
    .line 1482
    move v0, v9

    .line 1483
    move v1, v15

    .line 1484
    move-object/from16 v10, v16

    .line 1485
    .line 1486
    const v11, 0xfffff

    .line 1487
    .line 1488
    .line 1489
    goto/16 :goto_1

    .line 1490
    .line 1491
    :cond_9
    move-object/from16 v16, v10

    .line 1492
    .line 1493
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v0

    .line 1497
    check-cast v0, Lcom/google/android/gms/internal/play_billing/X1;

    .line 1498
    .line 1499
    const/4 v0, 0x0

    .line 1500
    throw v0

    .line 1501
    :cond_a
    move-object/from16 v16, v10

    .line 1502
    .line 1503
    const/4 v0, 0x0

    .line 1504
    if-nez v16, :cond_b

    .line 1505
    .line 1506
    move-object v0, v7

    .line 1507
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 1508
    .line 1509
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 1510
    .line 1511
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/play_billing/S2;->k(Lcom/google/android/gms/internal/play_billing/K1;)V

    .line 1512
    .line 1513
    .line 1514
    return-void

    .line 1515
    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v1

    .line 1519
    check-cast v1, Lcom/google/android/gms/internal/play_billing/X1;

    .line 1520
    .line 1521
    throw v0

    .line 1522
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    ushr-int/lit8 v3, v3, 0x14

    .line 18
    .line 19
    and-int/lit16 v3, v3, 0xff

    .line 20
    .line 21
    int-to-long v5, v5

    .line 22
    packed-switch v3, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    .line 28
    .line 29
    aget v2, v2, v3

    .line 30
    .line 31
    and-int/2addr v2, v4

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v4, v2, :cond_0

    .line 42
    .line 43
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/J2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :pswitch_1
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/J2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/J2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_1
    if-nez v2, :cond_1

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :pswitch_3
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/J2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_0

    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :pswitch_4
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    .line 116
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    cmp-long v6, v2, v4

    .line 125
    .line 126
    if-nez v6, :cond_0

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :pswitch_5
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_0

    .line 135
    .line 136
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ne v2, v3, :cond_0

    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :pswitch_6
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_0

    .line 153
    .line 154
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    cmp-long v6, v2, v4

    .line 163
    .line 164
    if-nez v6, :cond_0

    .line 165
    .line 166
    goto/16 :goto_3

    .line 167
    .line 168
    :pswitch_7
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_0

    .line 173
    .line 174
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v2, v3, :cond_0

    .line 183
    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :pswitch_8
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_0

    .line 191
    .line 192
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ne v2, v3, :cond_0

    .line 201
    .line 202
    goto/16 :goto_3

    .line 203
    .line 204
    :pswitch_9
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_0

    .line 209
    .line 210
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-ne v2, v3, :cond_0

    .line 219
    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :pswitch_a
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_0

    .line 227
    .line 228
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/J2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_0

    .line 241
    .line 242
    goto/16 :goto_3

    .line 243
    .line 244
    :pswitch_b
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_0

    .line 249
    .line 250
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/J2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_0

    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :pswitch_c
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_0

    .line 271
    .line 272
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/J2;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_0

    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :pswitch_d
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_0

    .line 293
    .line 294
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->A(JLjava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->A(JLjava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-ne v2, v3, :cond_0

    .line 303
    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    :pswitch_e
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_0

    .line 311
    .line 312
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-ne v2, v3, :cond_0

    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :pswitch_f
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_0

    .line 329
    .line 330
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 335
    .line 336
    .line 337
    move-result-wide v4

    .line 338
    cmp-long v6, v2, v4

    .line 339
    .line 340
    if-nez v6, :cond_0

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :pswitch_10
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_0

    .line 349
    .line 350
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->g(JLjava/lang/Object;)I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-ne v2, v3, :cond_0

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :pswitch_11
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_0

    .line 366
    .line 367
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 368
    .line 369
    .line 370
    move-result-wide v2

    .line 371
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 372
    .line 373
    .line 374
    move-result-wide v4

    .line 375
    cmp-long v6, v2, v4

    .line 376
    .line 377
    if-nez v6, :cond_0

    .line 378
    .line 379
    goto :goto_3

    .line 380
    :pswitch_12
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_0

    .line 385
    .line 386
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 387
    .line 388
    .line 389
    move-result-wide v2

    .line 390
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->h(JLjava/lang/Object;)J

    .line 391
    .line 392
    .line 393
    move-result-wide v4

    .line 394
    cmp-long v6, v2, v4

    .line 395
    .line 396
    if-nez v6, :cond_0

    .line 397
    .line 398
    goto :goto_3

    .line 399
    :pswitch_13
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_0

    .line 404
    .line 405
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->f(JLjava/lang/Object;)F

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->f(JLjava/lang/Object;)F

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-ne v2, v3, :cond_0

    .line 422
    .line 423
    goto :goto_3

    .line 424
    :pswitch_14
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/B2;->p(Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_0

    .line 429
    .line 430
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/play_billing/X2;->e(JLjava/lang/Object;)D

    .line 431
    .line 432
    .line 433
    move-result-wide v2

    .line 434
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 435
    .line 436
    .line 437
    move-result-wide v2

    .line 438
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/play_billing/X2;->e(JLjava/lang/Object;)D

    .line 439
    .line 440
    .line 441
    move-result-wide v4

    .line 442
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 443
    .line 444
    .line 445
    move-result-wide v4

    .line 446
    cmp-long v6, v2, v4

    .line 447
    .line 448
    if-nez v6, :cond_0

    .line 449
    .line 450
    goto :goto_3

    .line 451
    :cond_0
    :goto_2
    return v0

    .line 452
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    .line 453
    .line 454
    goto/16 :goto_0

    .line 455
    .line 456
    :cond_2
    move-object v1, p1

    .line 457
    check-cast v1, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 458
    .line 459
    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 460
    .line 461
    move-object v2, p2

    .line 462
    check-cast v2, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 463
    .line 464
    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 465
    .line 466
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/S2;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-nez v1, :cond_3

    .line 471
    .line 472
    return v0

    .line 473
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/B2;->f:Z

    .line 474
    .line 475
    if-eqz v0, :cond_4

    .line 476
    .line 477
    check-cast p1, Lcom/google/android/gms/internal/play_billing/W1;

    .line 478
    .line 479
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 480
    .line 481
    check-cast p2, Lcom/google/android/gms/internal/play_billing/W1;

    .line 482
    .line 483
    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 484
    .line 485
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/R1;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result p1

    .line 489
    return p1

    .line 490
    :cond_4
    const/4 p1, 0x1

    .line 491
    return p1

    .line 492
    nop

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const v9, 0xfffff

    .line 7
    .line 8
    .line 9
    const v0, 0xfffff

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/play_billing/B2;->h:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ge v10, v2, :cond_b

    .line 18
    .line 19
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/B2;->g:[I

    .line 20
    .line 21
    aget v11, v2, v10

    .line 22
    .line 23
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    .line 24
    .line 25
    aget v12, v2, v11

    .line 26
    .line 27
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    add-int/lit8 v4, v11, 0x2

    .line 32
    .line 33
    aget v2, v2, v4

    .line 34
    .line 35
    and-int v4, v2, v9

    .line 36
    .line 37
    ushr-int/lit8 v2, v2, 0x14

    .line 38
    .line 39
    shl-int v14, v3, v2

    .line 40
    .line 41
    if-eq v4, v0, :cond_1

    .line 42
    .line 43
    if-eq v4, v9, :cond_0

    .line 44
    .line 45
    int-to-long v0, v4

    .line 46
    sget-object v2, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    .line 47
    .line 48
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_0
    move/from16 v16, v1

    .line 53
    .line 54
    move v15, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v15, v0

    .line 57
    move/from16 v16, v1

    .line 58
    .line 59
    :goto_1
    const/high16 v0, 0x10000000

    .line 60
    .line 61
    and-int/2addr v0, v13

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    move-object/from16 v0, p0

    .line 65
    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    move v2, v11

    .line 69
    move v3, v15

    .line 70
    move/from16 v4, v16

    .line 71
    .line 72
    move v5, v14

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    return v8

    .line 81
    :cond_3
    :goto_2
    ushr-int/lit8 v0, v13, 0x14

    .line 82
    .line 83
    and-int/lit16 v0, v0, 0xff

    .line 84
    .line 85
    const/16 v1, 0x9

    .line 86
    .line 87
    if-eq v0, v1, :cond_9

    .line 88
    .line 89
    const/16 v1, 0x11

    .line 90
    .line 91
    if-eq v0, v1, :cond_9

    .line 92
    .line 93
    const/16 v1, 0x1b

    .line 94
    .line 95
    if-eq v0, v1, :cond_7

    .line 96
    .line 97
    const/16 v1, 0x3c

    .line 98
    .line 99
    if-eq v0, v1, :cond_6

    .line 100
    .line 101
    const/16 v1, 0x44

    .line 102
    .line 103
    if-eq v0, v1, :cond_6

    .line 104
    .line 105
    const/16 v1, 0x31

    .line 106
    .line 107
    if-eq v0, v1, :cond_7

    .line 108
    .line 109
    const/16 v1, 0x32

    .line 110
    .line 111
    if-eq v0, v1, :cond_4

    .line 112
    .line 113
    goto/16 :goto_4

    .line 114
    .line 115
    :cond_4
    and-int v0, v13, v9

    .line 116
    .line 117
    int-to-long v0, v0

    .line 118
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/google/android/gms/internal/play_billing/u2;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_5
    div-int/lit8 v11, v11, 0x3

    .line 133
    .line 134
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/B2;->b:[Ljava/lang/Object;

    .line 135
    .line 136
    add-int/2addr v11, v11

    .line 137
    aget-object v0, v0, v11

    .line 138
    .line 139
    check-cast v0, Lcom/google/android/gms/internal/play_billing/t2;

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    throw v0

    .line 143
    :cond_6
    invoke-direct {v6, v12, v11, v7}, Lcom/google/android/gms/internal/play_billing/B2;->t(IILjava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_a

    .line 148
    .line 149
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    and-int v1, v13, v9

    .line 154
    .line 155
    int-to-long v1, v1

    .line 156
    invoke-static {v1, v2, v7}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/I2;->i(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_a

    .line 165
    .line 166
    return v8

    .line 167
    :cond_7
    and-int v0, v13, v9

    .line 168
    .line 169
    int-to-long v0, v0

    .line 170
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Ljava/util/List;

    .line 175
    .line 176
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_a

    .line 181
    .line 182
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const/4 v2, 0x0

    .line 187
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-ge v2, v3, :cond_a

    .line 192
    .line 193
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/play_billing/I2;->i(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-nez v3, :cond_8

    .line 202
    .line 203
    return v8

    .line 204
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_9
    move-object/from16 v0, p0

    .line 208
    .line 209
    move-object/from16 v1, p1

    .line 210
    .line 211
    move v2, v11

    .line 212
    move v3, v15

    .line 213
    move/from16 v4, v16

    .line 214
    .line 215
    move v5, v14

    .line 216
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/B2;->r(Ljava/lang/Object;IIII)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_a

    .line 221
    .line 222
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    and-int v1, v13, v9

    .line 227
    .line 228
    int-to-long v1, v1

    .line 229
    invoke-static {v1, v2, v7}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/I2;->i(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_a

    .line 238
    .line 239
    return v8

    .line 240
    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 241
    .line 242
    move v0, v15

    .line 243
    move/from16 v1, v16

    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/B2;->f:Z

    .line 248
    .line 249
    if-eqz v0, :cond_c

    .line 250
    .line 251
    move-object v0, v7

    .line 252
    check-cast v0, Lcom/google/android/gms/internal/play_billing/W1;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/W1;->zzb:Lcom/google/android/gms/internal/play_billing/R1;

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/R1;->g()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-nez v0, :cond_c

    .line 261
    .line 262
    return v8

    .line 263
    :cond_c
    return v3
.end method

.method final u(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/z1;)I
    .locals 39

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/B2;->s(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/play_billing/B2;->m:Lsun/misc/Unsafe;

    move-object/from16 v12, p0

    move-object/from16 v22, v12

    move-object/from16 v4, p1

    move-object v5, v4

    move-object/from16 v6, p2

    move-object v14, v6

    move/from16 v7, p3

    move/from16 v8, p4

    move v15, v8

    move/from16 v9, p5

    move/from16 v16, v9

    move-object/from16 v13, p6

    move-object/from16 v17, v13

    move-object/from16 v18, v0

    const/4 v2, -0x1

    const v10, 0xfffff

    const/4 v11, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    const/16 v23, 0x0

    iget-object v1, v12, Lcom/google/android/gms/internal/play_billing/B2;->a:[I

    if-ge v7, v8, :cond_84

    add-int/lit8 v8, v7, 0x1

    .line 3
    aget-byte v7, v6, v7

    if-gez v7, :cond_0

    .line 4
    invoke-static {v7, v6, v8, v13}, Lcom/google/android/gms/internal/play_billing/p;->n(I[BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v7

    iget v8, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    move v9, v7

    goto :goto_1

    :cond_0
    move v9, v8

    move v8, v7

    :goto_1
    ushr-int/lit8 v7, v8, 0x3

    iget v3, v12, Lcom/google/android/gms/internal/play_billing/B2;->d:I

    move-object/from16 v25, v0

    iget v0, v12, Lcom/google/android/gms/internal/play_billing/B2;->c:I

    if-le v7, v2, :cond_1

    move/from16 v26, v15

    const/4 v2, 0x3

    div-int/lit8 v15, v20, 0x3

    if-lt v7, v0, :cond_2

    if-gt v7, v3, :cond_2

    .line 5
    invoke-direct {v12, v7, v15}, Lcom/google/android/gms/internal/play_billing/B2;->y(II)I

    move-result v0

    goto :goto_2

    :cond_1
    move/from16 v26, v15

    if-lt v7, v0, :cond_2

    if-gt v7, v3, :cond_2

    const/4 v0, 0x0

    .line 6
    invoke-direct {v12, v7, v0}, Lcom/google/android/gms/internal/play_billing/B2;->y(II)I

    move-result v2

    move v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    move v2, v7

    move/from16 v24, v10

    move/from16 v0, v16

    move-object/from16 v33, v18

    move-object/from16 v3, v22

    move/from16 v15, v26

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v10, v5

    move-object/from16 v5, v25

    goto/16 :goto_5b

    :cond_3
    and-int/lit8 v3, v8, 0x7

    add-int/lit8 v15, v0, 0x1

    .line 7
    aget v15, v1, v15

    ushr-int/lit8 v2, v15, 0x14

    and-int/lit16 v2, v2, 0xff

    move/from16 v20, v7

    const v19, 0xfffff

    and-int v7, v15, v19

    move/from16 v21, v8

    int-to-long v7, v7

    move-object/from16 v27, v14

    iget-object v14, v12, Lcom/google/android/gms/internal/play_billing/B2;->b:[Ljava/lang/Object;

    const/high16 v29, 0x20000000

    move-object/from16 v30, v12

    const-string v12, "Protocol message had invalid UTF-8."

    const-wide/16 v31, 0x0

    move-object/from16 p5, v12

    const-string v12, ""

    move-object/from16 p6, v12

    const-string v12, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v33, v12

    const/16 v12, 0x11

    if-gt v2, v12, :cond_1d

    add-int/lit8 v12, v0, 0x2

    .line 8
    aget v12, v1, v12

    ushr-int/lit8 v34, v12, 0x14

    const/16 v28, 0x1

    shl-int v34, v28, v34

    move-object/from16 v35, v1

    const v1, 0xfffff

    and-int/2addr v12, v1

    if-eq v12, v10, :cond_6

    move/from16 p2, v2

    if-eq v10, v1, :cond_4

    int-to-long v1, v10

    move-object/from16 v10, v18

    .line 9
    invoke-virtual {v10, v4, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v1, 0xfffff

    goto :goto_3

    :cond_4
    move-object/from16 v10, v18

    :goto_3
    if-ne v12, v1, :cond_5

    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    int-to-long v1, v12

    .line 10
    invoke-virtual {v10, v4, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v11, v1

    :goto_4
    move-object v1, v10

    move v2, v12

    goto :goto_5

    :cond_6
    move/from16 p2, v2

    move-object/from16 v1, v18

    move v2, v10

    :goto_5
    packed-switch p2, :pswitch_data_0

    move/from16 v18, v2

    move-object/from16 v12, v30

    const/4 v2, 0x3

    const/4 v15, 0x0

    if-ne v3, v2, :cond_1c

    or-int v2, v11, v34

    .line 11
    invoke-direct {v12, v0, v4}, Lcom/google/android/gms/internal/play_billing/B2;->C(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v7, v20, 0x3

    or-int/lit8 v13, v7, 0x4

    .line 12
    invoke-direct {v12, v0}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    move-result-object v8

    move/from16 v14, v20

    move-object v7, v3

    move/from16 v11, v21

    move v10, v9

    move-object/from16 v9, v27

    move/from16 v11, v26

    move-object/from16 v20, v5

    move-object v5, v12

    move v12, v13

    move-object/from16 v13, v17

    .line 13
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/play_billing/p;->q(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/I2;[BIIILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v7

    .line 14
    invoke-direct {v5, v4, v0, v3}, Lcom/google/android/gms/internal/play_billing/B2;->n(Ljava/lang/Object;ILjava/lang/Object;)V

    move v11, v2

    move-object v12, v5

    move v2, v14

    move/from16 v9, v16

    move/from16 v10, v18

    move-object/from16 v5, v20

    move/from16 v8, v26

    move v15, v8

    move-object/from16 v14, v27

    move/from16 v20, v0

    move-object/from16 v18, v1

    goto/16 :goto_19

    :pswitch_0
    if-nez v3, :cond_7

    or-int v11, v11, v34

    .line 15
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget-wide v9, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    .line 16
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/play_billing/p;->i(J)J

    move-result-wide v9

    move-object/from16 p1, v1

    move-object/from16 p2, v5

    move-wide/from16 p3, v7

    move-wide/from16 p5, v9

    .line 17
    invoke-virtual/range {p1 .. p6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_7

    :cond_7
    move/from16 v18, v2

    move v10, v9

    move/from16 v14, v20

    const/4 v15, 0x0

    :goto_6
    move-object/from16 v20, v5

    goto/16 :goto_17

    :pswitch_1
    if-nez v3, :cond_a

    or-int v11, v11, v34

    .line 18
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v9, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    .line 19
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/p;->e(I)I

    move-result v9

    .line 20
    invoke-virtual {v1, v4, v7, v8, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7
    move/from16 v18, v2

    goto :goto_a

    :pswitch_2
    if-nez v3, :cond_a

    .line 21
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v9, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    .line 22
    div-int/lit8 v10, v0, 0x3

    add-int/2addr v10, v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aget-object v10, v14, v10

    check-cast v10, Lcom/google/android/gms/internal/play_billing/b2;

    const/high16 v12, -0x80000000

    and-int/2addr v12, v15

    if-eqz v12, :cond_9

    if-eqz v10, :cond_9

    .line 23
    invoke-interface {v10, v9}, Lcom/google/android/gms/internal/play_billing/b2;->c(I)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_8

    .line 24
    :cond_8
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/B2;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/S2;

    move-result-object v7

    int-to-long v8, v9

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move/from16 v10, v21

    invoke-virtual {v7, v10, v8}, Lcom/google/android/gms/internal/play_billing/S2;->i(ILjava/lang/Object;)V

    goto :goto_7

    :cond_9
    :goto_8
    move/from16 v10, v21

    or-int v11, v11, v34

    .line 25
    invoke-virtual {v1, v4, v7, v8, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :cond_a
    move/from16 v10, v21

    goto :goto_c

    :pswitch_3
    move/from16 v10, v21

    const/4 v12, 0x2

    if-ne v3, v12, :cond_b

    or-int v11, v11, v34

    .line 26
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->a([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget-object v9, v13, Lcom/google/android/gms/internal/play_billing/z1;->c:Ljava/lang/Object;

    .line 27
    invoke-virtual {v1, v4, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9
    move/from16 v18, v2

    move/from16 v21, v10

    :goto_a
    move-object/from16 v12, v30

    :goto_b
    const/4 v15, 0x0

    goto/16 :goto_16

    :pswitch_4
    move/from16 v10, v21

    const/4 v12, 0x2

    if-ne v3, v12, :cond_b

    or-int v3, v11, v34

    move-object/from16 v12, v30

    .line 28
    invoke-direct {v12, v0, v4}, Lcom/google/android/gms/internal/play_billing/B2;->C(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 29
    invoke-direct {v12, v0}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    move-result-object v8

    move-object/from16 p1, v7

    move-object/from16 p2, v8

    move-object/from16 p3, v27

    move/from16 p4, v9

    move/from16 p5, v26

    move-object/from16 p6, v17

    .line 30
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/internal/play_billing/p;->r(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/I2;[BIILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v8

    .line 31
    invoke-direct {v12, v4, v0, v7}, Lcom/google/android/gms/internal/play_billing/B2;->n(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v18, v2

    move v11, v3

    move v3, v8

    move/from16 v21, v10

    goto :goto_b

    :cond_b
    :goto_c
    move/from16 v18, v2

    move/from16 v21, v10

    move/from16 v14, v20

    const/4 v15, 0x0

    goto/16 :goto_14

    :pswitch_5
    move/from16 v10, v21

    move-object/from16 v12, v30

    const/4 v14, 0x2

    if-ne v3, v14, :cond_1a

    and-int v3, v15, v29

    if-eqz v3, :cond_17

    or-int v3, v11, v34

    .line 32
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v9

    iget v11, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ltz v11, :cond_16

    if-nez v11, :cond_c

    move-object/from16 v14, p6

    .line 33
    iput-object v14, v13, Lcom/google/android/gms/internal/play_billing/z1;->c:Ljava/lang/Object;

    move/from16 v18, v2

    move/from16 p2, v3

    move/from16 v21, v10

    const/4 v15, 0x0

    goto/16 :goto_11

    .line 34
    :cond_c
    sget v14, Lcom/google/android/gms/internal/play_billing/Z2;->a:I

    .line 35
    array-length v14, v6

    sub-int v15, v14, v9

    or-int v18, v9, v11

    sub-int/2addr v15, v11

    or-int v15, v15, v18

    if-ltz v15, :cond_15

    add-int v14, v9, v11

    .line 36
    new-array v11, v11, [C

    move v15, v9

    const/4 v9, 0x0

    :goto_d
    move/from16 v18, v2

    if-ge v15, v14, :cond_d

    .line 37
    aget-byte v2, v6, v15

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/r;->n(B)Z

    move-result v21

    if-eqz v21, :cond_d

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v9, 0x1

    int-to-char v2, v2

    .line 38
    aput-char v2, v11, v9

    move/from16 v2, v18

    move/from16 v9, v21

    goto :goto_d

    :cond_d
    :goto_e
    if-ge v15, v14, :cond_14

    add-int/lit8 v2, v15, 0x1

    .line 39
    aget-byte v15, v6, v15

    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/r;->n(B)Z

    move-result v21

    if-eqz v21, :cond_e

    add-int/lit8 v21, v9, 0x1

    int-to-char v15, v15

    .line 40
    aput-char v15, v11, v9

    move v15, v2

    :goto_f
    move/from16 v9, v21

    if-ge v15, v14, :cond_d

    .line 41
    aget-byte v2, v6, v15

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/r;->n(B)Z

    move-result v21

    if-eqz v21, :cond_d

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v9, 0x1

    int-to-char v2, v2

    .line 42
    aput-char v2, v11, v9

    goto :goto_f

    :cond_e
    move/from16 p2, v3

    const/16 v3, -0x20

    if-ge v15, v3, :cond_10

    if-ge v2, v14, :cond_f

    add-int/lit8 v3, v9, 0x1

    add-int/lit8 v21, v2, 0x1

    .line 43
    aget-byte v2, v6, v2

    invoke-static {v15, v2, v11, v9}, Lcom/google/android/gms/internal/play_billing/r;->m(BB[CI)V

    move v9, v3

    move/from16 v15, v21

    move-object/from16 v3, p5

    move/from16 v21, v10

    goto :goto_10

    .line 44
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    move-object/from16 v3, p5

    .line 45
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    :cond_10
    move-object/from16 v3, p5

    move/from16 v21, v10

    const/16 v10, -0x10

    if-ge v15, v10, :cond_12

    add-int/lit8 v10, v14, -0x1

    if-ge v2, v10, :cond_11

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v23, v2, 0x1

    .line 47
    aget-byte v2, v6, v2

    add-int/lit8 v28, v23, 0x1

    move/from16 p1, v10

    aget-byte v10, v6, v23

    invoke-static {v15, v2, v10, v11, v9}, Lcom/google/android/gms/internal/play_billing/r;->j(BBB[CI)V

    move/from16 v9, p1

    move/from16 v15, v28

    goto :goto_10

    .line 48
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 49
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0

    :cond_12
    add-int/lit8 v10, v14, -0x2

    if-ge v2, v10, :cond_13

    add-int/lit8 v10, v2, 0x1

    .line 51
    aget-byte v29, v6, v2

    add-int/lit8 v2, v10, 0x1

    aget-byte v30, v6, v10

    add-int/lit8 v10, v2, 0x1

    aget-byte v31, v6, v2

    move/from16 v28, v15

    move-object/from16 v32, v11

    move/from16 v33, v9

    invoke-static/range {v28 .. v33}, Lcom/google/android/gms/internal/play_billing/r;->d(BBBB[CI)V

    add-int/lit8 v9, v9, 0x2

    move v15, v10

    :goto_10
    move-object/from16 p5, v3

    move/from16 v10, v21

    move/from16 v3, p2

    goto/16 :goto_e

    .line 52
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 53
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    :cond_14
    move/from16 p2, v3

    move/from16 v21, v10

    .line 55
    new-instance v2, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v2, v11, v15, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v13, Lcom/google/android/gms/internal/play_billing/z1;->c:Ljava/lang/Object;

    move v9, v14

    :goto_11
    move/from16 v11, p2

    move v3, v9

    goto :goto_13

    :cond_15
    const/4 v15, 0x0

    .line 56
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "buffer length=%d, index=%d, size=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    move-object/from16 v2, v33

    .line 59
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0

    :cond_17
    move-object/from16 v14, p6

    move/from16 v18, v2

    move/from16 v21, v10

    move-object/from16 v2, v33

    const/4 v15, 0x0

    .line 61
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v9, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ltz v9, :cond_19

    or-int v2, v11, v34

    if-nez v9, :cond_18

    .line 62
    iput-object v14, v13, Lcom/google/android/gms/internal/play_billing/z1;->c:Ljava/lang/Object;

    goto :goto_12

    :cond_18
    new-instance v10, Ljava/lang/String;

    .line 63
    sget-object v11, Lcom/google/android/gms/internal/play_billing/e2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v10, v6, v3, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v10, v13, Lcom/google/android/gms/internal/play_billing/z1;->c:Ljava/lang/Object;

    add-int/2addr v3, v9

    :goto_12
    move v11, v2

    .line 64
    :goto_13
    iget-object v2, v13, Lcom/google/android/gms/internal/play_billing/z1;->c:Ljava/lang/Object;

    .line 65
    invoke-virtual {v1, v4, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_16

    .line 66
    :cond_19
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 67
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0

    :cond_1a
    move/from16 v18, v2

    const/4 v15, 0x0

    move/from16 v21, v10

    move/from16 v14, v20

    :goto_14
    move-object/from16 v20, v5

    move v10, v9

    goto/16 :goto_17

    :pswitch_6
    move/from16 v18, v2

    move-object/from16 v12, v30

    const/4 v15, 0x0

    if-nez v3, :cond_1c

    or-int v11, v11, v34

    .line 69
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget-wide v9, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    cmp-long v2, v9, v31

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_15

    :cond_1b
    const/4 v2, 0x0

    .line 70
    :goto_15
    invoke-static {v4, v7, v8, v2}, Lcom/google/android/gms/internal/play_billing/X2;->q(Ljava/lang/Object;JZ)V

    goto/16 :goto_16

    :pswitch_7
    move/from16 v18, v2

    move-object/from16 v12, v30

    const/4 v2, 0x5

    const/4 v15, 0x0

    if-ne v3, v2, :cond_1c

    add-int/lit8 v3, v9, 0x4

    or-int v11, v11, v34

    .line 71
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/play_billing/p;->f([BI)I

    move-result v2

    invoke-virtual {v1, v4, v7, v8, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_16

    :pswitch_8
    move/from16 v18, v2

    move-object/from16 v12, v30

    const/4 v2, 0x1

    const/4 v15, 0x0

    if-ne v3, v2, :cond_1c

    add-int/lit8 v2, v9, 0x8

    or-int v3, v11, v34

    .line 72
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/play_billing/p;->s([BI)J

    move-result-wide v9

    move-object/from16 p1, v1

    move-object/from16 p2, v5

    move-wide/from16 p3, v7

    move-wide/from16 p5, v9

    invoke-virtual/range {p1 .. p6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v11, v3

    move v3, v2

    goto :goto_16

    :pswitch_9
    move/from16 v18, v2

    move-object/from16 v12, v30

    const/4 v15, 0x0

    if-nez v3, :cond_1c

    or-int v11, v11, v34

    .line 73
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v2, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    .line 74
    invoke-virtual {v1, v4, v7, v8, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_16

    :pswitch_a
    move/from16 v18, v2

    move-object/from16 v12, v30

    const/4 v15, 0x0

    if-nez v3, :cond_1c

    or-int v11, v11, v34

    .line 75
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget-wide v9, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    move-object/from16 p1, v1

    move-object/from16 p2, v5

    move-wide/from16 p3, v7

    move-wide/from16 p5, v9

    .line 76
    invoke-virtual/range {p1 .. p6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_16

    :pswitch_b
    move/from16 v18, v2

    move-object/from16 v12, v30

    const/4 v2, 0x5

    const/4 v15, 0x0

    if-ne v3, v2, :cond_1c

    add-int/lit8 v3, v9, 0x4

    or-int v11, v11, v34

    .line 77
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/play_billing/p;->f([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 78
    invoke-static {v4, v7, v8, v2}, Lcom/google/android/gms/internal/play_billing/X2;->t(Ljava/lang/Object;JF)V

    goto :goto_16

    :pswitch_c
    move/from16 v18, v2

    move-object/from16 v12, v30

    const/4 v2, 0x1

    const/4 v15, 0x0

    if-ne v3, v2, :cond_1c

    add-int/lit8 v3, v9, 0x8

    or-int v11, v11, v34

    .line 79
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/play_billing/p;->s([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 80
    invoke-static {v4, v7, v8, v9, v10}, Lcom/google/android/gms/internal/play_billing/X2;->s(Ljava/lang/Object;JD)V

    :goto_16
    move v7, v3

    move/from16 v10, v18

    move/from16 v2, v20

    move/from16 v8, v26

    move v15, v8

    move-object/from16 v14, v27

    const/16 v18, 0x0

    move-object/from16 v20, v5

    move-object/from16 v5, v25

    goto/16 :goto_49

    :cond_1c
    move v10, v9

    move/from16 v14, v20

    goto/16 :goto_6

    :goto_17
    move-object/from16 v33, v1

    move v9, v10

    move v2, v14

    move/from16 v24, v18

    move-object/from16 v10, v20

    move/from16 v8, v21

    move-object/from16 v3, v22

    move-object/from16 v5, v25

    move/from16 v15, v26

    move-object/from16 v14, v27

    move-object/from16 v1, v35

    const/16 v18, 0x0

    goto/16 :goto_4c

    :cond_1d
    move-object/from16 v35, v1

    move/from16 p2, v2

    move/from16 v24, v10

    move-object/from16 v1, v18

    move/from16 v12, v20

    move-object/from16 v2, v33

    const/16 v18, 0x0

    move-object/from16 v10, p6

    move-object/from16 v20, v5

    move-object/from16 v5, v30

    move/from16 v30, v11

    move/from16 v38, v9

    move-object/from16 v9, p5

    move/from16 p5, v38

    const/16 v11, 0x1b

    move/from16 p6, v12

    move/from16 v12, p2

    if-ne v12, v11, :cond_21

    const/4 v11, 0x2

    if-ne v3, v11, :cond_20

    .line 81
    invoke-virtual {v1, v4, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/d2;

    .line 82
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/d2;->a()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 83
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1e

    const/16 v3, 0xa

    goto :goto_18

    :cond_1e
    add-int/2addr v3, v3

    .line 84
    :goto_18
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/d2;->d(I)Lcom/google/android/gms/internal/play_billing/d2;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v4, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1f
    move-object v12, v2

    .line 86
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    move-result-object v7

    move/from16 v8, v21

    move/from16 v11, p5

    move-object/from16 v9, v27

    move v10, v11

    move/from16 v11, v26

    move/from16 v2, p6

    move-object v3, v13

    move-object/from16 v13, v17

    .line 87
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/play_billing/p;->j(Lcom/google/android/gms/internal/play_billing/I2;I[BIILcom/google/android/gms/internal/play_billing/d2;Lcom/google/android/gms/internal/play_billing/z1;)I

    move-result v7

    move-object/from16 v18, v1

    move-object v13, v3

    move-object v12, v5

    move/from16 v9, v16

    move-object/from16 v5, v20

    move/from16 v10, v24

    move/from16 v8, v26

    move v15, v8

    move-object/from16 v14, v27

    move/from16 v11, v30

    move/from16 v20, v0

    :goto_19
    move-object/from16 v0, v25

    goto/16 :goto_0

    :cond_20
    move/from16 v11, p5

    move-object/from16 v33, v1

    move-object/from16 v10, v20

    move/from16 v2, v21

    move-object/from16 v21, v22

    move-object/from16 v5, v25

    move/from16 v1, p6

    goto/16 :goto_4a

    :cond_21
    move/from16 v11, p5

    move-object/from16 v33, v1

    move-object/from16 v34, v5

    move/from16 v1, p6

    const/16 v5, 0x31

    if-gt v12, v5, :cond_70

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    int-to-long v9, v15

    move-object/from16 v5, v25

    .line 88
    invoke-virtual {v5, v4, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/play_billing/d2;

    .line 89
    invoke-interface {v15}, Lcom/google/android/gms/internal/play_billing/d2;->a()Z

    move-result v25

    if-nez v25, :cond_22

    .line 90
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    move-wide/from16 v36, v9

    add-int v9, v25, v25

    .line 91
    invoke-interface {v15, v9}, Lcom/google/android/gms/internal/play_billing/d2;->d(I)Lcom/google/android/gms/internal/play_billing/d2;

    move-result-object v9

    .line 92
    invoke-virtual {v5, v4, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v15, v9

    goto :goto_1a

    :cond_22
    move-wide/from16 v36, v9

    :goto_1a
    const-string v7, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    packed-switch v12, :pswitch_data_1

    move/from16 v14, v21

    move-object/from16 v21, v22

    move/from16 v10, v26

    const/4 v2, 0x3

    if-ne v3, v2, :cond_6e

    and-int/lit8 v2, v14, -0x8

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v4, v34

    .line 93
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    move-result-object v3

    move-object/from16 p1, v3

    move-object/from16 p2, v27

    move/from16 p3, v11

    move/from16 p4, v10

    move/from16 p5, v2

    move-object/from16 p6, v17

    .line 94
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/internal/play_billing/p;->h(Lcom/google/android/gms/internal/play_billing/I2;[BIIILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v7

    iget-object v8, v13, Lcom/google/android/gms/internal/play_billing/z1;->c:Ljava/lang/Object;

    .line 95
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42

    :pswitch_d
    const/4 v8, 0x2

    if-ne v3, v8, :cond_25

    .line 96
    check-cast v15, Lcom/google/android/gms/internal/play_billing/p2;

    .line 97
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    add-int/2addr v3, v2

    :goto_1b
    if-ge v2, v3, :cond_23

    .line 98
    invoke-static {v6, v2, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget-wide v8, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    .line 99
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/play_billing/p;->i(J)J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/play_billing/p2;->g(J)V

    goto :goto_1b

    :cond_23
    if-ne v2, v3, :cond_24

    move/from16 v10, v21

    move/from16 v12, v26

    goto/16 :goto_1f

    .line 100
    :cond_24
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 101
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 102
    throw v0

    :cond_25
    if-nez v3, :cond_27

    .line 103
    check-cast v15, Lcom/google/android/gms/internal/play_billing/p2;

    .line 104
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget-wide v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    .line 105
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/p;->i(J)J

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Lcom/google/android/gms/internal/play_billing/p2;->g(J)V

    move/from16 v12, v26

    :goto_1c
    if-ge v2, v12, :cond_26

    .line 106
    invoke-static {v6, v2, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v4, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    move/from16 v10, v21

    if-ne v10, v4, :cond_2b

    .line 107
    invoke-static {v6, v3, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget-wide v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/p;->i(J)J

    move-result-wide v3

    .line 108
    invoke-virtual {v15, v3, v4}, Lcom/google/android/gms/internal/play_billing/p2;->g(J)V

    move/from16 v21, v10

    goto :goto_1c

    :cond_26
    move/from16 v10, v21

    goto :goto_1f

    :cond_27
    move/from16 v10, v21

    move/from16 v12, v26

    goto/16 :goto_25

    :pswitch_e
    move/from16 v10, v21

    move/from16 v12, v26

    const/4 v2, 0x2

    if-ne v3, v2, :cond_2a

    .line 109
    check-cast v15, Lcom/google/android/gms/internal/play_billing/a2;

    .line 110
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    add-int/2addr v3, v2

    :goto_1d
    if-ge v2, v3, :cond_28

    .line 111
    invoke-static {v6, v2, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v4, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    .line 112
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/p;->e(I)I

    move-result v4

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/play_billing/a2;->h(I)V

    goto :goto_1d

    :cond_28
    if-ne v2, v3, :cond_29

    goto :goto_1f

    .line 113
    :cond_29
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 114
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 115
    throw v0

    :cond_2a
    if-nez v3, :cond_35

    .line 116
    check-cast v15, Lcom/google/android/gms/internal/play_billing/a2;

    .line 117
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    .line 118
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/p;->e(I)I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/a2;->h(I)V

    :goto_1e
    if-ge v2, v12, :cond_2b

    .line 119
    invoke-static {v6, v2, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v4, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v10, v4, :cond_2b

    .line 120
    invoke-static {v6, v3, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/p;->e(I)I

    move-result v3

    .line 121
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/a2;->h(I)V

    goto :goto_1e

    :cond_2b
    :goto_1f
    move v7, v1

    move v9, v2

    move v8, v10

    move v15, v12

    move/from16 v21, v16

    move/from16 v10, v24

    move-object/from16 v14, v27

    move-object/from16 v1, v35

    move/from16 v16, v15

    move-object/from16 v12, v34

    goto/16 :goto_48

    :pswitch_f
    move/from16 v10, v21

    move/from16 v12, v26

    const/4 v2, 0x2

    if-ne v3, v2, :cond_2c

    .line 122
    invoke-static {v6, v11, v15, v13}, Lcom/google/android/gms/internal/play_billing/p;->k([BILcom/google/android/gms/internal/play_billing/d2;Lcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    goto :goto_20

    :cond_2c
    if-nez v3, :cond_34

    move/from16 p1, v10

    move-object/from16 p2, v27

    move/from16 p3, v11

    move/from16 p4, v12

    move-object/from16 p5, v15

    move-object/from16 p6, v17

    .line 123
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/internal/play_billing/p;->o(I[BIILcom/google/android/gms/internal/play_billing/d2;Lcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    .line 124
    :goto_20
    div-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v3

    const/4 v7, 0x1

    add-int/2addr v3, v7

    aget-object v3, v14, v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/b2;

    .line 125
    sget v7, Lcom/google/android/gms/internal/play_billing/J2;->b:I

    if-eqz v3, :cond_32

    .line 126
    instance-of v7, v15, Ljava/util/RandomAccess;

    if-eqz v7, :cond_30

    .line 127
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    move-object/from16 v14, v23

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_21
    if-ge v8, v7, :cond_2f

    .line 128
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    move/from16 p1, v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/play_billing/b2;->c(I)Z

    move-result v21

    if-eqz v21, :cond_2e

    if-eq v8, v9, :cond_2d

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v9, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 130
    :cond_2e
    invoke-static {v4, v1, v2, v14}, Lcom/google/android/gms/internal/play_billing/J2;->s(Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    :goto_22
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p1

    goto :goto_21

    :cond_2f
    move/from16 p1, v2

    if-eq v9, v7, :cond_33

    .line 131
    invoke-interface {v15, v9, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_24

    :cond_30
    move/from16 p1, v2

    .line 132
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v7, v23

    :cond_31
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_33

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v3, v8}, Lcom/google/android/gms/internal/play_billing/b2;->c(I)Z

    move-result v9

    if-nez v9, :cond_31

    .line 134
    invoke-static {v4, v1, v8, v7}, Lcom/google/android/gms/internal/play_billing/J2;->s(Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_23

    :cond_32
    move/from16 p1, v2

    :cond_33
    :goto_24
    move/from16 v2, p1

    move v7, v1

    move v8, v10

    move v9, v11

    move v15, v12

    move/from16 v21, v16

    move/from16 v10, v24

    move-object/from16 v14, v27

    move/from16 v11, v30

    move-object/from16 v1, v35

    move/from16 v16, v15

    move-object/from16 v12, v22

    goto/16 :goto_28

    :cond_34
    move-object/from16 v34, v22

    :cond_35
    :goto_25
    move v14, v10

    move v10, v12

    move-object/from16 v21, v22

    move-object/from16 v12, v34

    goto/16 :goto_43

    :pswitch_10
    move/from16 v10, v21

    move/from16 v12, v26

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3e

    .line 136
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v4, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ltz v4, :cond_3d

    .line 137
    array-length v8, v6

    sub-int/2addr v8, v3

    if-gt v4, v8, :cond_3c

    if-nez v4, :cond_36

    .line 138
    sget-object v4, Lcom/google/android/gms/internal/play_billing/F1;->e:Lcom/google/android/gms/internal/play_billing/F1;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 p1, v0

    move v8, v10

    move v9, v11

    move v0, v12

    move-object v4, v15

    move/from16 v21, v16

    move/from16 v10, v24

    move-object/from16 v14, v27

    move/from16 v11, v30

    move v15, v0

    move-object/from16 v24, v22

    move-object v12, v2

    move v2, v3

    move-object/from16 v22, v17

    move v3, v1

    move-object/from16 v1, v35

    goto :goto_27

    .line 139
    :cond_36
    invoke-static {v6, v3, v4}, Lcom/google/android/gms/internal/play_billing/F1;->m([BII)Lcom/google/android/gms/internal/play_billing/F1;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v10

    move v9, v11

    move/from16 v21, v16

    move/from16 v10, v24

    move-object/from16 v14, v27

    move/from16 v11, v30

    move-object/from16 v16, v15

    move-object/from16 v24, v22

    move v15, v12

    move-object/from16 v22, v17

    move/from16 v17, v15

    move-object v12, v2

    move v2, v1

    move-object/from16 v1, v35

    :goto_26
    add-int/2addr v3, v4

    move/from16 p1, v0

    move-object/from16 v4, v16

    move/from16 v0, v17

    move/from16 v38, v3

    move v3, v2

    move/from16 v2, v38

    :goto_27
    move/from16 v16, v0

    if-ge v2, v0, :cond_3a

    .line 140
    invoke-static {v6, v2, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v0

    move-object/from16 p2, v1

    iget v1, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v8, v1, :cond_3b

    .line 141
    invoke-static {v6, v0, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v0, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ltz v0, :cond_39

    .line 142
    array-length v1, v6

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_38

    if-nez v0, :cond_37

    .line 143
    sget-object v0, Lcom/google/android/gms/internal/play_billing/F1;->e:Lcom/google/android/gms/internal/play_billing/F1;

    .line 144
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move/from16 v0, v16

    goto :goto_27

    .line 145
    :cond_37
    invoke-static {v6, v2, v0}, Lcom/google/android/gms/internal/play_billing/F1;->m([BII)Lcom/google/android/gms/internal/play_billing/F1;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move/from16 v17, v16

    move-object/from16 v16, v4

    move v4, v0

    move/from16 v0, p1

    move/from16 v38, v3

    move v3, v2

    move/from16 v2, v38

    goto :goto_26

    .line 146
    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 147
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 148
    throw v0

    .line 149
    :cond_39
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 150
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 151
    throw v0

    :cond_3a
    move-object/from16 p2, v1

    :cond_3b
    move/from16 v0, p1

    move-object/from16 v1, p2

    move v7, v3

    move-object/from16 v17, v22

    move-object/from16 v12, v24

    :goto_28
    move/from16 v30, v11

    move-object/from16 v22, v12

    move v11, v9

    move v9, v2

    goto/16 :goto_48

    .line 152
    :cond_3c
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 153
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 154
    throw v0

    .line 155
    :cond_3d
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 156
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 157
    throw v0

    :pswitch_11
    move/from16 v10, v21

    move/from16 v12, v26

    const/4 v2, 0x2

    if-ne v3, v2, :cond_3e

    move-object/from16 v4, v22

    .line 158
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    move-result-object v7

    move v8, v10

    move-object/from16 v9, v27

    move v14, v10

    move v10, v11

    move v2, v11

    move v11, v12

    move v3, v12

    move-object v12, v15

    move-object v15, v13

    move-object/from16 v13, v17

    .line 159
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/play_billing/p;->j(Lcom/google/android/gms/internal/play_billing/I2;I[BIILcom/google/android/gms/internal/play_billing/d2;Lcom/google/android/gms/internal/play_billing/z1;)I

    move-result v7

    move v9, v2

    move-object v12, v4

    move-object/from16 v22, v12

    move v8, v14

    move-object v13, v15

    move/from16 v10, v24

    move-object/from16 v14, v27

    move/from16 v11, v30

    move v2, v1

    move v15, v3

    move-object/from16 v1, v35

    goto/16 :goto_2b

    :cond_3e
    move v14, v10

    move v2, v11

    move v3, v12

    move-object v15, v13

    move-object/from16 v4, v22

    move v11, v2

    move v10, v3

    move-object/from16 v21, v4

    move-object v13, v15

    goto/16 :goto_39

    :pswitch_12
    move/from16 v14, v21

    move-object/from16 v4, v22

    move/from16 v10, v26

    const/4 v7, 0x2

    if-ne v3, v7, :cond_4c

    const-wide/32 v7, 0x20000000

    and-long v7, v36, v7

    cmp-long v3, v7, v31

    if-nez v3, :cond_45

    .line 160
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v7, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ltz v7, :cond_44

    if-nez v7, :cond_3f

    move-object/from16 v9, p6

    .line 161
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v12, v2

    move v7, v3

    move v3, v10

    move v8, v14

    move/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v14, v27

    move v2, v1

    move/from16 v16, v3

    move/from16 v10, v24

    move-object/from16 v1, v35

    move-object/from16 v24, v4

    move-object v4, v9

    move v9, v11

    move/from16 v11, v30

    goto :goto_2a

    :cond_3f
    move-object/from16 v9, p6

    .line 162
    new-instance v8, Ljava/lang/String;

    .line 163
    sget-object v12, Lcom/google/android/gms/internal/play_billing/e2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v6, v3, v7, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 164
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v12, v2

    move v8, v14

    move/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v14, v27

    move v2, v1

    move/from16 v16, v10

    move/from16 v17, v16

    move/from16 v10, v24

    move-object/from16 v1, v35

    move-object/from16 v24, v4

    move-object v4, v9

    move v9, v11

    move/from16 v11, v30

    :goto_29
    add-int/2addr v3, v7

    move v7, v3

    move/from16 v3, v17

    :goto_2a
    move/from16 p1, v0

    if-ge v7, v3, :cond_42

    .line 165
    invoke-static {v6, v7, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v0

    move-object/from16 p2, v1

    iget v1, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v8, v1, :cond_43

    .line 166
    invoke-static {v6, v0, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v7

    iget v0, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ltz v0, :cond_41

    if-nez v0, :cond_40

    .line 167
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_2a

    :cond_40
    new-instance v1, Ljava/lang/String;

    move/from16 p3, v2

    .line 168
    sget-object v2, Lcom/google/android/gms/internal/play_billing/e2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v6, v7, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 169
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v17, v3

    move v3, v7

    move v7, v0

    move/from16 v0, p1

    goto :goto_29

    .line 170
    :cond_41
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 171
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 172
    throw v0

    :cond_42
    move-object/from16 p2, v1

    :cond_43
    move/from16 p3, v2

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v15, v16

    move/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v22, v24

    move-object/from16 v12, v34

    :goto_2b
    move/from16 v30, v11

    move/from16 v21, v16

    move/from16 v16, v3

    move v11, v9

    move v9, v7

    move v7, v2

    goto/16 :goto_48

    .line 173
    :cond_44
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 174
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 175
    throw v0

    :cond_45
    move-object/from16 v9, p6

    .line 176
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v7, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ltz v7, :cond_4b

    if-nez v7, :cond_46

    .line 177
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v4

    goto :goto_2c

    :cond_46
    add-int v8, v3, v7

    .line 178
    invoke-static {v6, v3, v8}, Lcom/google/android/gms/internal/play_billing/Z2;->d([BII)Z

    move-result v12

    if-eqz v12, :cond_4a

    .line 179
    new-instance v12, Ljava/lang/String;

    move-object/from16 v21, v4

    .line 180
    sget-object v4, Lcom/google/android/gms/internal/play_billing/e2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v12, v6, v3, v7, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 181
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v8

    :goto_2c
    if-ge v3, v10, :cond_5d

    .line 182
    invoke-static {v6, v3, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v4

    iget v7, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v14, v7, :cond_5d

    .line 183
    invoke-static {v6, v4, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v4, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ltz v4, :cond_49

    if-nez v4, :cond_47

    .line 184
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_47
    add-int v7, v3, v4

    .line 185
    invoke-static {v6, v3, v7}, Lcom/google/android/gms/internal/play_billing/Z2;->d([BII)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 186
    new-instance v8, Ljava/lang/String;

    .line 187
    sget-object v12, Lcom/google/android/gms/internal/play_billing/e2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v6, v3, v4, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 188
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v7

    goto :goto_2c

    .line 189
    :cond_48
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    move-object/from16 v2, p5

    .line 190
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 191
    throw v0

    .line 192
    :cond_49
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 193
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 194
    throw v0

    :cond_4a
    move-object/from16 v2, p5

    .line 195
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 196
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 197
    throw v0

    .line 198
    :cond_4b
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 199
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 200
    throw v0

    :cond_4c
    move-object/from16 v21, v4

    goto/16 :goto_39

    :pswitch_13
    move/from16 v14, v21

    move-object/from16 v21, v22

    move/from16 v10, v26

    const/4 v2, 0x2

    if-ne v3, v2, :cond_51

    .line 201
    check-cast v15, Lcom/google/android/gms/internal/play_billing/B1;

    .line 202
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    add-int/2addr v3, v2

    :goto_2d
    if-ge v2, v3, :cond_4e

    .line 203
    invoke-static {v6, v2, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget-wide v8, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    cmp-long v4, v8, v31

    if-eqz v4, :cond_4d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_4d
    const/4 v4, 0x0

    .line 204
    :goto_2e
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/play_billing/B1;->f(Z)V

    goto :goto_2d

    :cond_4e
    if-ne v2, v3, :cond_50

    :cond_4f
    :goto_2f
    move v3, v2

    goto/16 :goto_38

    .line 205
    :cond_50
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 206
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 207
    throw v0

    :cond_51
    if-nez v3, :cond_5f

    .line 208
    check-cast v15, Lcom/google/android/gms/internal/play_billing/B1;

    .line 209
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget-wide v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    cmp-long v7, v3, v31

    if-eqz v7, :cond_52

    const/4 v3, 0x1

    goto :goto_30

    :cond_52
    const/4 v3, 0x0

    .line 210
    :goto_30
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/B1;->f(Z)V

    :goto_31
    if-ge v2, v10, :cond_4f

    .line 211
    invoke-static {v6, v2, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v4, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v14, v4, :cond_4f

    .line 212
    invoke-static {v6, v3, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget-wide v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    cmp-long v7, v3, v31

    if-eqz v7, :cond_53

    const/4 v3, 0x1

    goto :goto_32

    :cond_53
    const/4 v3, 0x0

    .line 213
    :goto_32
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/B1;->f(Z)V

    goto :goto_31

    :pswitch_14
    move/from16 v14, v21

    move-object/from16 v21, v22

    move/from16 v10, v26

    const/4 v2, 0x2

    if-ne v3, v2, :cond_57

    .line 214
    check-cast v15, Lcom/google/android/gms/internal/play_billing/a2;

    .line 215
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    add-int v4, v2, v3

    .line 216
    array-length v8, v6

    if-gt v4, v8, :cond_56

    .line 217
    invoke-virtual {v15}, Lcom/google/android/gms/internal/play_billing/a2;->size()I

    move-result v8

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v8

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/a2;->i(I)V

    :goto_33
    if-ge v2, v4, :cond_54

    .line 218
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/play_billing/p;->f([BI)I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/a2;->h(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_33

    :cond_54
    if-ne v2, v4, :cond_55

    goto :goto_36

    .line 219
    :cond_55
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 220
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 221
    throw v0

    .line 222
    :cond_56
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 223
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 224
    throw v0

    :cond_57
    const/4 v2, 0x5

    if-ne v3, v2, :cond_5f

    add-int/lit8 v9, v11, 0x4

    .line 225
    check-cast v15, Lcom/google/android/gms/internal/play_billing/a2;

    .line 226
    invoke-static {v6, v11}, Lcom/google/android/gms/internal/play_billing/p;->f([BI)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/play_billing/a2;->h(I)V

    :goto_34
    if-ge v9, v10, :cond_5c

    .line 227
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v14, v3, :cond_5c

    .line 228
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/play_billing/p;->f([BI)I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/a2;->h(I)V

    add-int/lit8 v9, v2, 0x4

    goto :goto_34

    :pswitch_15
    move/from16 v14, v21

    move-object/from16 v21, v22

    move/from16 v10, v26

    const/4 v2, 0x2

    if-ne v3, v2, :cond_5b

    .line 229
    check-cast v15, Lcom/google/android/gms/internal/play_billing/p2;

    .line 230
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    add-int v4, v2, v3

    .line 231
    array-length v8, v6

    if-gt v4, v8, :cond_5a

    .line 232
    invoke-virtual {v15}, Lcom/google/android/gms/internal/play_billing/p2;->size()I

    move-result v8

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v8

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/p2;->h(I)V

    :goto_35
    if-ge v2, v4, :cond_58

    .line 233
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/play_billing/p;->s([BI)J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/play_billing/p2;->g(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_35

    :cond_58
    if-ne v2, v4, :cond_59

    :goto_36
    goto/16 :goto_2f

    .line 234
    :cond_59
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 235
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 236
    throw v0

    .line 237
    :cond_5a
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 238
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 239
    throw v0

    :cond_5b
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5f

    add-int/lit8 v9, v11, 0x8

    .line 240
    check-cast v15, Lcom/google/android/gms/internal/play_billing/p2;

    .line 241
    invoke-static {v6, v11}, Lcom/google/android/gms/internal/play_billing/p;->s([BI)J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lcom/google/android/gms/internal/play_billing/p2;->g(J)V

    :goto_37
    if-ge v9, v10, :cond_5c

    .line 242
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v14, v3, :cond_5c

    .line 243
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/play_billing/p;->s([BI)J

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Lcom/google/android/gms/internal/play_billing/p2;->g(J)V

    add-int/lit8 v9, v2, 0x8

    goto :goto_37

    :cond_5c
    move v3, v9

    goto :goto_38

    :pswitch_16
    move/from16 v14, v21

    move-object/from16 v21, v22

    move/from16 v10, v26

    const/4 v2, 0x2

    if-ne v3, v2, :cond_5e

    .line 244
    invoke-static {v6, v11, v15, v13}, Lcom/google/android/gms/internal/play_billing/p;->k([BILcom/google/android/gms/internal/play_billing/d2;Lcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    goto/16 :goto_2f

    :cond_5d
    :goto_38
    move v7, v1

    move v9, v3

    move v15, v10

    move v8, v14

    move-object/from16 v12, v21

    move-object/from16 v22, v12

    goto/16 :goto_45

    :cond_5e
    if-nez v3, :cond_5f

    move/from16 p1, v14

    move-object/from16 p2, v27

    move/from16 p3, v11

    move/from16 p4, v10

    move-object/from16 p5, v15

    move-object/from16 p6, v17

    .line 245
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/internal/play_billing/p;->o(I[BIILcom/google/android/gms/internal/play_billing/d2;Lcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    move-object/from16 v12, v21

    goto/16 :goto_40

    :cond_5f
    :goto_39
    move-object/from16 v12, v21

    goto/16 :goto_43

    :pswitch_17
    move/from16 v14, v21

    move-object/from16 v21, v22

    move/from16 v10, v26

    const/4 v2, 0x2

    if-ne v3, v2, :cond_62

    .line 246
    check-cast v15, Lcom/google/android/gms/internal/play_billing/p2;

    .line 247
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    add-int/2addr v3, v2

    :goto_3a
    if-ge v2, v3, :cond_60

    .line 248
    invoke-static {v6, v2, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget-wide v8, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    .line 249
    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/play_billing/p2;->g(J)V

    goto :goto_3a

    :cond_60
    if-ne v2, v3, :cond_61

    goto :goto_3c

    .line 250
    :cond_61
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 251
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 252
    throw v0

    :cond_62
    if-nez v3, :cond_6e

    .line 253
    check-cast v15, Lcom/google/android/gms/internal/play_billing/p2;

    .line 254
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget-wide v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    .line 255
    invoke-virtual {v15, v3, v4}, Lcom/google/android/gms/internal/play_billing/p2;->g(J)V

    :goto_3b
    if-ge v2, v10, :cond_63

    .line 256
    invoke-static {v6, v2, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v4, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v14, v4, :cond_63

    .line 257
    invoke-static {v6, v3, v13}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget-wide v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    .line 258
    invoke-virtual {v15, v3, v4}, Lcom/google/android/gms/internal/play_billing/p2;->g(J)V

    goto :goto_3b

    :cond_63
    :goto_3c
    move-object/from16 v12, v34

    goto/16 :goto_40

    :pswitch_18
    move/from16 v14, v21

    move-object/from16 v21, v22

    move/from16 v10, v26

    const/4 v2, 0x2

    if-ne v3, v2, :cond_67

    .line 259
    check-cast v15, Lcom/google/android/gms/internal/play_billing/T1;

    .line 260
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    add-int v4, v2, v3

    .line 261
    array-length v8, v6

    if-gt v4, v8, :cond_66

    .line 262
    invoke-virtual {v15}, Lcom/google/android/gms/internal/play_billing/T1;->size()I

    move-result v8

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v8

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/T1;->h(I)V

    :goto_3d
    if-ge v2, v4, :cond_64

    .line 263
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/play_billing/p;->f([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 264
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/T1;->g(F)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_3d

    :cond_64
    if-ne v2, v4, :cond_65

    goto :goto_3c

    .line 265
    :cond_65
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 266
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 267
    throw v0

    .line 268
    :cond_66
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 269
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 270
    throw v0

    :cond_67
    const/4 v2, 0x5

    if-ne v3, v2, :cond_6e

    add-int/lit8 v9, v11, 0x4

    .line 271
    check-cast v15, Lcom/google/android/gms/internal/play_billing/T1;

    .line 272
    invoke-static {v6, v11}, Lcom/google/android/gms/internal/play_billing/p;->f([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 273
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/play_billing/T1;->g(F)V

    :goto_3e
    if-ge v9, v10, :cond_6c

    .line 274
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v14, v3, :cond_6c

    .line 275
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/play_billing/p;->f([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 276
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/T1;->g(F)V

    add-int/lit8 v9, v2, 0x4

    goto :goto_3e

    :pswitch_19
    move/from16 v14, v21

    move-object/from16 v21, v22

    move/from16 v10, v26

    const/4 v2, 0x2

    if-ne v3, v2, :cond_6b

    .line 277
    check-cast v15, Lcom/google/android/gms/internal/play_billing/L1;

    .line 278
    invoke-static {v6, v11, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    add-int v4, v2, v3

    .line 279
    array-length v8, v6

    if-gt v4, v8, :cond_6a

    .line 280
    invoke-virtual {v15}, Lcom/google/android/gms/internal/play_billing/L1;->size()I

    move-result v8

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v8

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/play_billing/L1;->h(I)V

    :goto_3f
    if-ge v2, v4, :cond_68

    .line 281
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/play_billing/p;->s([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 282
    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/play_billing/L1;->g(D)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_3f

    :cond_68
    if-ne v2, v4, :cond_69

    goto/16 :goto_3c

    :goto_40
    move v7, v1

    move v9, v2

    move v15, v10

    goto/16 :goto_44

    .line 283
    :cond_69
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 284
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 285
    throw v0

    .line 286
    :cond_6a
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    .line 287
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 288
    throw v0

    :cond_6b
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6e

    add-int/lit8 v9, v11, 0x8

    .line 289
    check-cast v15, Lcom/google/android/gms/internal/play_billing/L1;

    .line 290
    invoke-static {v6, v11}, Lcom/google/android/gms/internal/play_billing/p;->s([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 291
    invoke-virtual {v15, v2, v3}, Lcom/google/android/gms/internal/play_billing/L1;->g(D)V

    :goto_41
    if-ge v9, v10, :cond_6c

    .line 292
    invoke-static {v6, v9, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v2

    iget v3, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v14, v3, :cond_6c

    .line 293
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/play_billing/p;->s([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 294
    invoke-virtual {v15, v3, v4}, Lcom/google/android/gms/internal/play_billing/L1;->g(D)V

    add-int/lit8 v9, v2, 0x8

    goto :goto_41

    :cond_6c
    move v7, v1

    move v15, v10

    move v8, v14

    move-object/from16 v22, v21

    move-object/from16 v14, v27

    move-object/from16 v12, v34

    goto :goto_46

    :goto_42
    if-ge v7, v10, :cond_6d

    .line 295
    invoke-static {v6, v7, v13}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v8

    iget v9, v13, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-ne v14, v9, :cond_6d

    move-object/from16 p1, v3

    move-object/from16 p2, v27

    move/from16 p3, v8

    move/from16 p4, v10

    move/from16 p5, v2

    move-object/from16 p6, v17

    .line 296
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/internal/play_billing/p;->h(Lcom/google/android/gms/internal/play_billing/I2;[BIIILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v7

    iget-object v8, v13, Lcom/google/android/gms/internal/play_billing/z1;->c:Ljava/lang/Object;

    .line 297
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_6d
    move-object v12, v4

    move v9, v7

    move v15, v10

    move v8, v14

    move-object/from16 v22, v21

    move-object/from16 v14, v27

    move v7, v1

    move/from16 v21, v16

    move-object/from16 v1, v35

    goto :goto_47

    :cond_6e
    move-object/from16 v4, v34

    move-object v12, v4

    :goto_43
    move v7, v1

    move v15, v10

    move v9, v11

    :goto_44
    move v8, v14

    move-object/from16 v22, v21

    :goto_45
    move-object/from16 v14, v27

    :goto_46
    move-object/from16 v1, v35

    move/from16 v21, v16

    :goto_47
    move/from16 v16, v15

    move/from16 v10, v24

    :goto_48
    if-eq v9, v11, :cond_6f

    move v2, v7

    move v7, v9

    move-object/from16 v4, v20

    move/from16 v11, v30

    move-object/from16 v1, v33

    move/from16 v38, v21

    move/from16 v21, v8

    move/from16 v8, v16

    move/from16 v16, v38

    :goto_49
    move-object/from16 v18, v1

    move/from16 v9, v16

    move-object/from16 v38, v20

    move/from16 v20, v0

    move-object v0, v5

    move-object/from16 v5, v38

    goto/16 :goto_0

    :cond_6f
    move/from16 v24, v10

    move-object/from16 v10, v20

    move/from16 v16, v21

    move/from16 v11, v30

    goto :goto_4b

    :cond_70
    move-object/from16 p5, v9

    move-object v9, v10

    move/from16 v2, v21

    move-object/from16 v21, v22

    move-object/from16 v5, v25

    move-object/from16 v4, v34

    const/16 v10, 0x32

    if-ne v12, v10, :cond_73

    const/4 v10, 0x2

    if-ne v3, v10, :cond_72

    const/4 v1, 0x3

    .line 298
    div-int/2addr v0, v1

    add-int/2addr v0, v0

    aget-object v0, v14, v0

    move-object/from16 v10, v20

    .line 299
    invoke-virtual {v5, v10, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 300
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/play_billing/u2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/u2;->e()Z

    move-result v2

    if-nez v2, :cond_71

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/u2;->a()Lcom/google/android/gms/internal/play_billing/u2;

    move-result-object v2

    .line 301
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/u2;->b()Lcom/google/android/gms/internal/play_billing/u2;

    move-result-object v2

    .line 302
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/q;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u2;

    .line 303
    invoke-virtual {v5, v10, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 304
    :cond_71
    check-cast v0, Lcom/google/android/gms/internal/play_billing/t2;

    .line 305
    throw v23

    :cond_72
    move-object/from16 v10, v20

    move-object v4, v10

    :goto_4a
    move v7, v1

    move v8, v2

    move-object/from16 v20, v4

    move v9, v11

    move-object/from16 v22, v21

    move/from16 v15, v26

    move-object/from16 v14, v27

    move/from16 v11, v30

    move-object/from16 v1, v35

    :goto_4b
    move v2, v7

    move-object/from16 v4, v20

    move-object/from16 v3, v22

    :goto_4c
    move/from16 v20, v0

    move/from16 v0, v16

    goto/16 :goto_5b

    :cond_73
    move-object/from16 v10, v20

    add-int/lit8 v20, v0, 0x2

    .line 306
    aget v20, v35, v20

    move-object/from16 v22, v13

    const v19, 0xfffff

    and-int v13, v20, v19

    move-object/from16 v20, v14

    int-to-long v13, v13

    packed-switch v12, :pswitch_data_2

    move/from16 v20, v0

    move/from16 v25, v2

    move-object v4, v10

    move v10, v11

    move-object/from16 v2, v22

    goto/16 :goto_59

    :pswitch_1a
    const/4 v12, 0x3

    if-ne v3, v12, :cond_74

    and-int/lit8 v3, v2, -0x8

    or-int/lit8 v12, v3, 0x4

    .line 307
    invoke-direct {v4, v1, v0, v10}, Lcom/google/android/gms/internal/play_billing/B2;->D(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 308
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    move-result-object v8

    move-object v7, v3

    move-object/from16 v9, v27

    move-object v15, v10

    move v10, v11

    move v14, v11

    move/from16 v11, v26

    move/from16 v25, v2

    move-object/from16 v2, v22

    move-object/from16 v13, v17

    .line 309
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/play_billing/p;->q(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/I2;[BIIILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v7

    .line 310
    invoke-direct {v4, v15, v1, v0, v3}, Lcom/google/android/gms/internal/play_billing/B2;->o(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v20, v0

    move v10, v14

    goto/16 :goto_50

    :cond_74
    move/from16 v25, v2

    move-object/from16 v2, v22

    move/from16 v20, v0

    move-object v4, v10

    move v10, v11

    goto/16 :goto_59

    :pswitch_1b
    move/from16 v25, v2

    move-object v15, v10

    move v10, v11

    move-object/from16 v2, v22

    if-nez v3, :cond_77

    .line 311
    invoke-static {v6, v10, v2}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget-wide v11, v2, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    .line 312
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/play_billing/p;->i(J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v15, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 313
    invoke-virtual {v5, v15, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4d

    :pswitch_1c
    move/from16 v25, v2

    move-object v15, v10

    move v10, v11

    move-object/from16 v2, v22

    if-nez v3, :cond_77

    .line 314
    invoke-static {v6, v10, v2}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v4, v2, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    .line 315
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/p;->e(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v15, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 316
    invoke-virtual {v5, v15, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4d
    move/from16 v11, v25

    goto :goto_4f

    :pswitch_1d
    move/from16 v25, v2

    move-object v15, v10

    move v10, v11

    move-object/from16 v2, v22

    if-nez v3, :cond_77

    .line 317
    invoke-static {v6, v10, v2}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v4, v2, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    .line 318
    div-int/lit8 v9, v0, 0x3

    add-int/2addr v9, v9

    const/4 v11, 0x1

    add-int/2addr v9, v11

    aget-object v9, v20, v9

    check-cast v9, Lcom/google/android/gms/internal/play_billing/b2;

    if-eqz v9, :cond_76

    .line 319
    invoke-interface {v9, v4}, Lcom/google/android/gms/internal/play_billing/b2;->c(I)Z

    move-result v9

    if-eqz v9, :cond_75

    goto :goto_4e

    .line 320
    :cond_75
    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/B2;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/S2;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move/from16 v11, v25

    invoke-virtual {v7, v11, v4}, Lcom/google/android/gms/internal/play_billing/S2;->i(ILjava/lang/Object;)V

    goto :goto_4f

    :cond_76
    :goto_4e
    move/from16 v11, v25

    .line 321
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v15, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 322
    invoke-virtual {v5, v15, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4f

    :cond_77
    move/from16 v11, v25

    goto :goto_51

    :pswitch_1e
    move-object v15, v10

    move v10, v11

    const/4 v9, 0x2

    move v11, v2

    move-object/from16 v2, v22

    if-ne v3, v9, :cond_78

    .line 323
    invoke-static {v6, v10, v2}, Lcom/google/android/gms/internal/play_billing/p;->a([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget-object v4, v2, Lcom/google/android/gms/internal/play_billing/z1;->c:Ljava/lang/Object;

    .line 324
    invoke-virtual {v5, v15, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 325
    invoke-virtual {v5, v15, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4f
    move/from16 v20, v0

    move-object v4, v15

    goto/16 :goto_54

    :pswitch_1f
    move-object v15, v10

    move v10, v11

    const/4 v9, 0x2

    move v11, v2

    move-object/from16 v2, v22

    if-ne v3, v9, :cond_78

    .line 326
    invoke-direct {v4, v1, v0, v15}, Lcom/google/android/gms/internal/play_billing/B2;->D(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 327
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/play_billing/B2;->B(I)Lcom/google/android/gms/internal/play_billing/I2;

    move-result-object v7

    move-object/from16 p1, v3

    move-object/from16 p2, v7

    move-object/from16 p3, v27

    move/from16 p4, v10

    move/from16 p5, v26

    move-object/from16 p6, v17

    .line 328
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/internal/play_billing/p;->r(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/I2;[BIILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v7

    .line 329
    invoke-direct {v4, v15, v1, v0, v3}, Lcom/google/android/gms/internal/play_billing/B2;->o(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v20, v0

    move/from16 v25, v11

    :goto_50
    move-object v4, v15

    goto/16 :goto_5a

    :cond_78
    :goto_51
    move/from16 v20, v0

    move/from16 v25, v11

    move-object v4, v15

    goto/16 :goto_59

    :pswitch_20
    move-object v4, v10

    move v10, v11

    const/4 v12, 0x2

    move v11, v2

    move-object/from16 v2, v22

    if-ne v3, v12, :cond_7c

    .line 330
    invoke-static {v6, v10, v2}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v3

    iget v12, v2, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    if-nez v12, :cond_79

    .line 331
    invoke-virtual {v5, v4, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v20, v0

    goto :goto_53

    :cond_79
    and-int v9, v15, v29

    add-int v15, v3, v12

    if-eqz v9, :cond_7b

    .line 332
    invoke-static {v6, v3, v15}, Lcom/google/android/gms/internal/play_billing/Z2;->d([BII)Z

    move-result v9

    if-eqz v9, :cond_7a

    goto :goto_52

    .line 333
    :cond_7a
    new-instance v0, Lcom/google/android/gms/internal/play_billing/g2;

    move-object/from16 v1, p5

    .line 334
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 335
    throw v0

    .line 336
    :cond_7b
    :goto_52
    new-instance v9, Ljava/lang/String;

    move/from16 v20, v0

    .line 337
    sget-object v0, Lcom/google/android/gms/internal/play_billing/e2;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v6, v3, v12, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 338
    invoke-virtual {v5, v4, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v3, v15

    .line 339
    :goto_53
    invoke-virtual {v5, v4, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_54
    move v7, v3

    move/from16 v25, v11

    goto/16 :goto_5a

    :cond_7c
    move/from16 v20, v0

    goto :goto_56

    :pswitch_21
    move/from16 v20, v0

    move-object v4, v10

    move v10, v11

    move v11, v2

    move-object/from16 v2, v22

    if-nez v3, :cond_7e

    .line 340
    invoke-static {v6, v10, v2}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v0

    move/from16 v25, v11

    iget-wide v11, v2, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    cmp-long v3, v11, v31

    if-eqz v3, :cond_7d

    const/16 v28, 0x1

    goto :goto_55

    :cond_7d
    const/16 v28, 0x0

    .line 341
    :goto_55
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v4, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 342
    invoke-virtual {v5, v4, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_57

    :cond_7e
    :goto_56
    move/from16 v25, v11

    goto/16 :goto_59

    :pswitch_22
    move/from16 v20, v0

    move/from16 v25, v2

    move-object v4, v10

    move v10, v11

    move-object/from16 v2, v22

    const/4 v0, 0x5

    if-ne v3, v0, :cond_7f

    add-int/lit8 v9, v10, 0x4

    .line 343
    invoke-static {v6, v10}, Lcom/google/android/gms/internal/play_billing/p;->f([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v4, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 344
    invoke-virtual {v5, v4, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_58

    :pswitch_23
    move/from16 v20, v0

    move/from16 v25, v2

    move-object v4, v10

    move v10, v11

    move-object/from16 v2, v22

    const/4 v0, 0x1

    if-ne v3, v0, :cond_7f

    add-int/lit8 v9, v10, 0x8

    .line 345
    invoke-static {v6, v10}, Lcom/google/android/gms/internal/play_billing/p;->s([BI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v4, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 346
    invoke-virtual {v5, v4, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_58

    :pswitch_24
    move/from16 v20, v0

    move/from16 v25, v2

    move-object v4, v10

    move v10, v11

    move-object/from16 v2, v22

    if-nez v3, :cond_7f

    .line 347
    invoke-static {v6, v10, v2}, Lcom/google/android/gms/internal/play_billing/p;->m([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v0

    iget v3, v2, Lcom/google/android/gms/internal/play_billing/z1;->a:I

    .line 348
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 349
    invoke-virtual {v5, v4, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_57

    :pswitch_25
    move/from16 v20, v0

    move/from16 v25, v2

    move-object v4, v10

    move v10, v11

    move-object/from16 v2, v22

    if-nez v3, :cond_7f

    .line 350
    invoke-static {v6, v10, v2}, Lcom/google/android/gms/internal/play_billing/p;->p([BILcom/google/android/gms/internal/play_billing/z1;)I

    move-result v0

    iget-wide v11, v2, Lcom/google/android/gms/internal/play_billing/z1;->b:J

    .line 351
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v4, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 352
    invoke-virtual {v5, v4, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_57
    move v7, v0

    goto :goto_5a

    :pswitch_26
    move/from16 v20, v0

    move/from16 v25, v2

    move-object v4, v10

    move v10, v11

    move-object/from16 v2, v22

    const/4 v0, 0x5

    if-ne v3, v0, :cond_7f

    add-int/lit8 v9, v10, 0x4

    .line 353
    invoke-static {v6, v10}, Lcom/google/android/gms/internal/play_billing/p;->f([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 354
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v4, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 355
    invoke-virtual {v5, v4, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_58

    :pswitch_27
    move/from16 v20, v0

    move/from16 v25, v2

    move-object v4, v10

    move v10, v11

    move-object/from16 v2, v22

    const/4 v0, 0x1

    if-ne v3, v0, :cond_7f

    add-int/lit8 v9, v10, 0x8

    .line 356
    invoke-static {v6, v10}, Lcom/google/android/gms/internal/play_billing/p;->s([BI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    .line 357
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v4, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 358
    invoke-virtual {v5, v4, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_58
    move v7, v9

    goto :goto_5a

    :cond_7f
    :goto_59
    move v7, v10

    :goto_5a
    move-object v13, v2

    if-eq v7, v10, :cond_80

    move-object v0, v5

    move/from16 v9, v16

    move-object/from16 v12, v21

    move-object/from16 v22, v12

    move/from16 v10, v24

    move/from16 v21, v25

    move/from16 v8, v26

    move v15, v8

    move-object/from16 v14, v27

    move/from16 v11, v30

    move-object/from16 v18, v33

    move v2, v1

    move-object v5, v4

    goto/16 :goto_0

    :cond_80
    move-object v10, v4

    move v9, v7

    move/from16 v0, v16

    move-object/from16 v3, v21

    move/from16 v8, v25

    move/from16 v15, v26

    move-object/from16 v14, v27

    move/from16 v11, v30

    move v2, v1

    move-object/from16 v1, v35

    :goto_5b
    if-ne v8, v0, :cond_81

    if-eqz v0, :cond_81

    move-object v12, v3

    move v7, v9

    move/from16 v10, v24

    const v2, 0xfffff

    move v9, v0

    move-object/from16 v0, v33

    goto/16 :goto_5d

    .line 359
    :cond_81
    iget-boolean v1, v3, Lcom/google/android/gms/internal/play_billing/B2;->f:Z

    if-eqz v1, :cond_83

    iget-object v1, v13, Lcom/google/android/gms/internal/play_billing/z1;->d:Lcom/google/android/gms/internal/play_billing/N1;

    .line 360
    sget-object v7, Lcom/google/android/gms/internal/play_billing/N1;->c:Lcom/google/android/gms/internal/play_billing/N1;

    .line 361
    sget v7, Lcom/google/android/gms/internal/play_billing/F2;->d:I

    sget-object v7, Lcom/google/android/gms/internal/play_billing/N1;->c:Lcom/google/android/gms/internal/play_billing/N1;

    if-eq v1, v7, :cond_83

    iget-object v7, v3, Lcom/google/android/gms/internal/play_billing/B2;->e:Lcom/google/android/gms/internal/play_billing/y2;

    .line 362
    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/internal/play_billing/N1;->b(ILcom/google/android/gms/internal/play_billing/y2;)Lcom/google/android/gms/internal/play_billing/Y1;

    move-result-object v1

    if-nez v1, :cond_82

    .line 363
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/B2;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/S2;

    move-result-object v1

    move/from16 p1, v8

    move-object/from16 p2, v14

    move/from16 p3, v9

    move/from16 p4, v15

    move-object/from16 p5, v1

    move-object/from16 p6, v17

    .line 364
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/internal/play_billing/p;->l(I[BIILcom/google/android/gms/internal/play_billing/S2;Lcom/google/android/gms/internal/play_billing/z1;)I

    move-result v1

    goto :goto_5c

    .line 365
    :cond_82
    check-cast v4, Lcom/google/android/gms/internal/play_billing/W1;

    .line 366
    throw v23

    .line 367
    :cond_83
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/B2;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/S2;

    move-result-object v1

    move/from16 p1, v8

    move-object/from16 p2, v14

    move/from16 p3, v9

    move/from16 p4, v15

    move-object/from16 p5, v1

    move-object/from16 p6, v17

    .line 368
    invoke-static/range {p1 .. p6}, Lcom/google/android/gms/internal/play_billing/p;->l(I[BIILcom/google/android/gms/internal/play_billing/S2;Lcom/google/android/gms/internal/play_billing/z1;)I

    move-result v1

    :goto_5c
    move v7, v1

    move v9, v0

    move/from16 v16, v9

    move-object v12, v3

    move-object/from16 v22, v12

    move-object v0, v5

    move/from16 v21, v8

    move-object v5, v10

    move v8, v15

    move/from16 v10, v24

    move-object/from16 v18, v33

    goto/16 :goto_0

    :cond_84
    move-object/from16 v35, v1

    move/from16 v24, v10

    move/from16 v30, v11

    move/from16 v26, v15

    move-object/from16 v33, v18

    move/from16 v8, v21

    move-object/from16 v0, v33

    const v2, 0xfffff

    :goto_5d
    if-eq v10, v2, :cond_85

    int-to-long v2, v10

    .line 369
    invoke-virtual {v0, v4, v2, v3, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_85
    iget v0, v12, Lcom/google/android/gms/internal/play_billing/B2;->h:I

    :goto_5e
    iget v2, v12, Lcom/google/android/gms/internal/play_billing/B2;->i:I

    if-ge v0, v2, :cond_88

    iget-object v2, v12, Lcom/google/android/gms/internal/play_billing/B2;->g:[I

    .line 370
    aget v2, v2, v0

    .line 371
    aget v3, v1, v2

    .line 372
    invoke-direct {v12, v2}, Lcom/google/android/gms/internal/play_billing/B2;->z(I)I

    move-result v3

    const v5, 0xfffff

    and-int/2addr v3, v5

    int-to-long v10, v3

    .line 373
    invoke-static {v10, v11, v4}, Lcom/google/android/gms/internal/play_billing/X2;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_86

    goto :goto_5f

    .line 374
    :cond_86
    div-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v2

    add-int/lit8 v6, v2, 0x1

    iget-object v10, v12, Lcom/google/android/gms/internal/play_billing/B2;->b:[Ljava/lang/Object;

    aget-object v6, v10, v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/b2;

    if-nez v6, :cond_87

    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 375
    :cond_87
    check-cast v3, Lcom/google/android/gms/internal/play_billing/u2;

    .line 376
    aget-object v0, v10, v2

    .line 377
    check-cast v0, Lcom/google/android/gms/internal/play_billing/t2;

    .line 378
    throw v23

    :cond_88
    const-string v0, "Failed to parse the message."

    if-nez v9, :cond_8a

    if-ne v7, v15, :cond_89

    goto :goto_60

    .line 379
    :cond_89
    new-instance v1, Lcom/google/android/gms/internal/play_billing/g2;

    .line 380
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 381
    throw v1

    :cond_8a
    if-gt v7, v15, :cond_8b

    if-ne v8, v9, :cond_8b

    :goto_60
    return v7

    :cond_8b
    new-instance v1, Lcom/google/android/gms/internal/play_billing/g2;

    .line 382
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/g2;-><init>(Ljava/lang/String;)V

    .line 383
    throw v1

    .line 384
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 385
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mutating immutable message: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method
