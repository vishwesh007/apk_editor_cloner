.class final Lcom/google/android/gms/internal/play_billing/H1;
.super Lcom/google/android/gms/internal/play_billing/J1;
.source "SourceFile"


# instance fields
.field private final e:[B

.field private final f:I

.field private g:I


# direct methods
.method constructor <init>([BI)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/J1;-><init>(I)V

    .line 3
    .line 4
    .line 5
    array-length v1, p1

    .line 6
    sub-int v2, v1, p2

    .line 7
    .line 8
    or-int/2addr v2, p2

    .line 9
    if-ltz v2, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/H1;->e:[B

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 14
    .line 15
    iput p2, p0, Lcom/google/android/gms/internal/play_billing/H1;->f:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    aput-object v1, v3, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    aput-object v0, v3, v1

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    aput-object p2, v3, v0

    .line 44
    .line 45
    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 46
    .line 47
    invoke-static {v2, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method


# virtual methods
.method public final A(J)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/H1;->e:[B

    .line 4
    .line 5
    long-to-int v2, p1

    .line 6
    and-int/lit16 v2, v2, 0xff

    .line 7
    .line 8
    int-to-byte v2, v2

    .line 9
    aput-byte v2, v1, v0

    .line 10
    .line 11
    add-int/lit8 v2, v0, 0x1

    .line 12
    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    shr-long v4, p1, v3

    .line 16
    .line 17
    long-to-int v5, v4

    .line 18
    and-int/lit16 v4, v5, 0xff

    .line 19
    .line 20
    int-to-byte v4, v4

    .line 21
    aput-byte v4, v1, v2

    .line 22
    .line 23
    add-int/lit8 v2, v0, 0x2

    .line 24
    .line 25
    const/16 v4, 0x10

    .line 26
    .line 27
    shr-long v4, p1, v4

    .line 28
    .line 29
    long-to-int v5, v4

    .line 30
    and-int/lit16 v4, v5, 0xff

    .line 31
    .line 32
    int-to-byte v4, v4

    .line 33
    aput-byte v4, v1, v2

    .line 34
    .line 35
    add-int/lit8 v2, v0, 0x3

    .line 36
    .line 37
    const/16 v4, 0x18

    .line 38
    .line 39
    shr-long v4, p1, v4

    .line 40
    .line 41
    long-to-int v5, v4

    .line 42
    and-int/lit16 v4, v5, 0xff

    .line 43
    .line 44
    int-to-byte v4, v4

    .line 45
    aput-byte v4, v1, v2

    .line 46
    .line 47
    add-int/lit8 v2, v0, 0x4

    .line 48
    .line 49
    const/16 v4, 0x20

    .line 50
    .line 51
    shr-long v4, p1, v4

    .line 52
    .line 53
    long-to-int v5, v4

    .line 54
    and-int/lit16 v4, v5, 0xff

    .line 55
    .line 56
    int-to-byte v4, v4

    .line 57
    aput-byte v4, v1, v2

    .line 58
    .line 59
    add-int/lit8 v2, v0, 0x5

    .line 60
    .line 61
    const/16 v4, 0x28

    .line 62
    .line 63
    shr-long v4, p1, v4

    .line 64
    .line 65
    long-to-int v5, v4

    .line 66
    and-int/lit16 v4, v5, 0xff

    .line 67
    .line 68
    int-to-byte v4, v4

    .line 69
    aput-byte v4, v1, v2

    .line 70
    .line 71
    add-int/lit8 v2, v0, 0x6

    .line 72
    .line 73
    const/16 v4, 0x30

    .line 74
    .line 75
    shr-long v4, p1, v4

    .line 76
    .line 77
    long-to-int v5, v4

    .line 78
    and-int/lit16 v4, v5, 0xff

    .line 79
    .line 80
    int-to-byte v4, v4

    .line 81
    aput-byte v4, v1, v2

    .line 82
    .line 83
    add-int/lit8 v2, v0, 0x7

    .line 84
    .line 85
    const/16 v4, 0x38

    .line 86
    .line 87
    shr-long/2addr p1, v4

    .line 88
    long-to-int p2, p1

    .line 89
    and-int/lit16 p1, p2, 0xff

    .line 90
    .line 91
    int-to-byte p1, p1

    .line 92
    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    add-int/2addr v0, v3

    .line 95
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 96
    .line 97
    return-void

    .line 98
    :catch_0
    move-exception p1

    .line 99
    move-object v7, p1

    .line 100
    int-to-long v2, v0

    .line 101
    new-instance p1, Lcom/google/android/gms/internal/play_billing/I1;

    .line 102
    .line 103
    iget p2, p0, Lcom/google/android/gms/internal/play_billing/H1;->f:I

    .line 104
    .line 105
    int-to-long v4, p2

    .line 106
    const/16 v6, 0x8

    .line 107
    .line 108
    move-object v1, p1

    .line 109
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/I1;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method public final B(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/H1;->C(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final C(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/H1;->L(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method final D(ILcom/google/android/gms/internal/play_billing/y2;Lcom/google/android/gms/internal/play_billing/I2;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 6
    .line 7
    .line 8
    move-object p1, p2

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/play_billing/v1;

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/v1;->g(Lcom/google/android/gms/internal/play_billing/I2;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/J1;->b:Lcom/google/android/gms/internal/play_billing/K1;

    .line 19
    .line 20
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/play_billing/I2;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/K1;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final E(ILcom/google/android/gms/internal/play_billing/y2;)V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->I(II)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1a

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/y2;->d()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/play_billing/y2;->a(Lcom/google/android/gms/internal/play_billing/J1;)V

    .line 23
    .line 24
    .line 25
    const/16 p1, 0xc

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final F(ILcom/google/android/gms/internal/play_billing/F1;)V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->I(II)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/H1;->w(ILcom/google/android/gms/internal/play_billing/F1;)V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0xc

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final G(ILjava/lang/String;)V
    .locals 4

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-int/lit8 v0, v0, 0x3

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/Y2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/H1;->f:I

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/H1;->e:[B

    .line 31
    .line 32
    if-ne v1, v0, :cond_0

    .line 33
    .line 34
    add-int v0, p1, v1

    .line 35
    .line 36
    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 37
    .line 38
    sub-int/2addr v2, v0

    .line 39
    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/play_billing/Z2;->b(Ljava/lang/String;[BII)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 44
    .line 45
    sub-int v2, v0, p1

    .line 46
    .line 47
    sub-int/2addr v2, v1

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 49
    .line 50
    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/Z2;->c(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 62
    .line 63
    sub-int/2addr v2, v0

    .line 64
    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/play_billing/Z2;->b(Ljava/lang/String;[BII)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/play_billing/Y2; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    new-instance p2, Lcom/google/android/gms/internal/play_billing/I1;

    .line 73
    .line 74
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/I1;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 75
    .line 76
    .line 77
    throw p2

    .line 78
    :catch_1
    move-exception v0

    .line 79
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 80
    .line 81
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/J1;->s(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/Y2;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method public final H(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final I(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final J(I)V
    .locals 7

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/H1;->e:[B

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    iput v2, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 12
    .line 13
    int-to-byte p1, p1

    .line 14
    aput-byte p1, v1, v0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 18
    .line 19
    add-int/lit8 v2, v0, 0x1

    .line 20
    .line 21
    iput v2, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 22
    .line 23
    or-int/lit16 v2, p1, 0x80

    .line 24
    .line 25
    and-int/lit16 v2, v2, 0xff

    .line 26
    .line 27
    int-to-byte v2, v2

    .line 28
    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    ushr-int/lit8 p1, p1, 0x7

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    move-object v6, p1

    .line 35
    new-instance p1, Lcom/google/android/gms/internal/play_billing/I1;

    .line 36
    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 38
    .line 39
    int-to-long v1, v0

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->f:I

    .line 41
    .line 42
    int-to-long v3, v0

    .line 43
    const/4 v5, 0x1

    .line 44
    move-object v0, p1

    .line 45
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/I1;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public final K(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/H1;->L(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final L(J)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J1;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v2, 0x7

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    const-wide/16 v5, -0x80

    .line 11
    .line 12
    iget v7, v1, Lcom/google/android/gms/internal/play_billing/H1;->f:I

    .line 13
    .line 14
    iget-object v8, v1, Lcom/google/android/gms/internal/play_billing/H1;->e:[B

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, v1, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 19
    .line 20
    sub-int v0, v7, v0

    .line 21
    .line 22
    const/16 v9, 0xa

    .line 23
    .line 24
    if-lt v0, v9, :cond_1

    .line 25
    .line 26
    move-wide/from16 v9, p1

    .line 27
    .line 28
    :goto_0
    and-long v11, v9, v5

    .line 29
    .line 30
    cmp-long v0, v11, v3

    .line 31
    .line 32
    long-to-int v7, v9

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget v0, v1, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 36
    .line 37
    add-int/lit8 v2, v0, 0x1

    .line 38
    .line 39
    iput v2, v1, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 40
    .line 41
    int-to-long v2, v0

    .line 42
    int-to-byte v0, v7

    .line 43
    invoke-static {v8, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/X2;->r([BJB)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget v0, v1, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 48
    .line 49
    add-int/lit8 v11, v0, 0x1

    .line 50
    .line 51
    iput v11, v1, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 52
    .line 53
    int-to-long v11, v0

    .line 54
    or-int/lit16 v0, v7, 0x80

    .line 55
    .line 56
    and-int/lit16 v0, v0, 0xff

    .line 57
    .line 58
    int-to-byte v0, v0

    .line 59
    invoke-static {v8, v11, v12, v0}, Lcom/google/android/gms/internal/play_billing/X2;->r([BJB)V

    .line 60
    .line 61
    .line 62
    ushr-long/2addr v9, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move-wide/from16 v9, p1

    .line 65
    .line 66
    :goto_1
    and-long v11, v9, v5

    .line 67
    .line 68
    cmp-long v0, v11, v3

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    :try_start_0
    iget v0, v1, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 73
    .line 74
    add-int/lit8 v2, v0, 0x1

    .line 75
    .line 76
    iput v2, v1, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 77
    .line 78
    long-to-int v2, v9

    .line 79
    int-to-byte v2, v2

    .line 80
    aput-byte v2, v8, v0

    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    iget v0, v1, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 84
    .line 85
    add-int/lit8 v11, v0, 0x1

    .line 86
    .line 87
    iput v11, v1, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 88
    .line 89
    long-to-int v11, v9

    .line 90
    or-int/lit16 v11, v11, 0x80

    .line 91
    .line 92
    and-int/lit16 v11, v11, 0xff

    .line 93
    .line 94
    int-to-byte v11, v11

    .line 95
    aput-byte v11, v8, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    ushr-long/2addr v9, v2

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    move-object/from16 v17, v0

    .line 101
    .line 102
    new-instance v0, Lcom/google/android/gms/internal/play_billing/I1;

    .line 103
    .line 104
    iget v2, v1, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 105
    .line 106
    int-to-long v12, v2

    .line 107
    int-to-long v14, v7

    .line 108
    const/16 v16, 0x1

    .line 109
    .line 110
    move-object v11, v0

    .line 111
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/play_billing/I1;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 112
    .line 113
    .line 114
    throw v0
.end method

.method public final Q()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final R([BI)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->e:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 10
    .line 11
    add-int/2addr p1, p2

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    move-object v6, p1

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/play_billing/I1;

    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 20
    .line 21
    int-to-long v1, v0

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->f:I

    .line 23
    .line 24
    int-to-long v3, v0

    .line 25
    move-object v0, p1

    .line 26
    move v5, p2

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/I1;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final u(B)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/H1;->e:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    add-int/lit8 v2, v0, 0x1

    .line 6
    .line 7
    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    .line 9
    iput v2, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    move-object v7, p1

    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p1

    .line 17
    move-object v7, p1

    .line 18
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/play_billing/I1;

    .line 19
    .line 20
    int-to-long v2, v0

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->f:I

    .line 22
    .line 23
    int-to-long v4, v0

    .line 24
    const/4 v6, 0x1

    .line 25
    move-object v1, p1

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/I1;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final v(IZ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/H1;->u(B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final w(ILcom/google/android/gms/internal/play_billing/F1;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/F1;->j(Lcom/google/android/gms/internal/play_billing/r;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final x(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/H1;->y(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final y(I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/H1;->e:[B

    .line 4
    .line 5
    and-int/lit16 v2, p1, 0xff

    .line 6
    .line 7
    int-to-byte v2, v2

    .line 8
    aput-byte v2, v1, v0

    .line 9
    .line 10
    add-int/lit8 v2, v0, 0x1

    .line 11
    .line 12
    shr-int/lit8 v3, p1, 0x8

    .line 13
    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    int-to-byte v3, v3

    .line 17
    aput-byte v3, v1, v2

    .line 18
    .line 19
    add-int/lit8 v2, v0, 0x2

    .line 20
    .line 21
    shr-int/lit8 v3, p1, 0x10

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v1, v2

    .line 27
    .line 28
    add-int/lit8 v2, v0, 0x3

    .line 29
    .line 30
    shr-int/lit8 p1, p1, 0x18

    .line 31
    .line 32
    and-int/lit16 p1, p1, 0xff

    .line 33
    .line 34
    int-to-byte p1, p1

    .line 35
    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x4

    .line 38
    .line 39
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->g:I

    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    move-object v7, p1

    .line 44
    int-to-long v2, v0

    .line 45
    new-instance p1, Lcom/google/android/gms/internal/play_billing/I1;

    .line 46
    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/H1;->f:I

    .line 48
    .line 49
    int-to-long v4, v0

    .line 50
    const/4 v6, 0x4

    .line 51
    move-object v1, p1

    .line 52
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/I1;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final z(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/H1;->J(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/H1;->A(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
