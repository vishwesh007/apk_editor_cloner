.class Lcom/google/android/gms/internal/play_billing/E1;
.super Lcom/google/android/gms/internal/play_billing/F1;
.source "SourceFile"


# instance fields
.field protected final f:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/F1;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/E1;->f:[B

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public e(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/E1;->f:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/F1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/E1;->g()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lcom/google/android/gms/internal/play_billing/F1;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v1, v3, :cond_2

    .line 23
    .line 24
    return v2

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/E1;->g()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    return v0

    .line 32
    :cond_3
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/E1;

    .line 33
    .line 34
    if-eqz v1, :cond_a

    .line 35
    .line 36
    check-cast p1, Lcom/google/android/gms/internal/play_billing/E1;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/F1;->l()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/F1;->l()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    if-ne v1, v3, :cond_4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    return v2

    .line 54
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/E1;->g()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/E1;->g()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-gt v1, v2, :cond_9

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/E1;->g()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-gt v1, v2, :cond_8

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/E1;->n()V

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    :goto_1
    if-ge v2, v1, :cond_7

    .line 76
    .line 77
    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/E1;->f:[B

    .line 78
    .line 79
    aget-byte v4, v4, v2

    .line 80
    .line 81
    iget-object v5, p1, Lcom/google/android/gms/internal/play_billing/E1;->f:[B

    .line 82
    .line 83
    aget-byte v5, v5, v3

    .line 84
    .line 85
    if-eq v4, v5, :cond_6

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    goto :goto_2

    .line 89
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_7
    :goto_2
    return v0

    .line 95
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/E1;->g()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    const-string v2, "Ran off end of other: 0, "

    .line 102
    .line 103
    const-string v3, ", "

    .line 104
    .line 105
    invoke-static {v2, v1, v3, p1}, LB/g;->d(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/E1;->g()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v3, "Length too large: "

    .line 122
    .line 123
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    return p1
.end method

.method f(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/E1;->f:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/E1;->f:[B

    array-length v0, v0

    return v0
.end method

.method protected final h(II)I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    if-ge v0, p2, :cond_0

    .line 5
    .line 6
    mul-int/lit8 p1, p1, 0x1f

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/E1;->f:[B

    .line 9
    .line 10
    aget-byte v1, v1, v0

    .line 11
    .line 12
    add-int/2addr p1, v1

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return p1
.end method

.method public final i()Lcom/google/android/gms/internal/play_billing/F1;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/E1;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x2f

    .line 7
    .line 8
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/F1;->k(III)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/play_billing/F1;->e:Lcom/google/android/gms/internal/play_billing/F1;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/play_billing/D1;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/E1;->f:[B

    .line 20
    .line 21
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/D1;-><init>([BI)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method final j(Lcom/google/android/gms/internal/play_billing/r;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/E1;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/play_billing/H1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/E1;->f:[B

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/play_billing/H1;->R([BI)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected n()V
    .locals 0

    .line 1
    return-void
.end method
