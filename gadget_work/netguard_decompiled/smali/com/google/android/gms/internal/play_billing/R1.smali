.class final Lcom/google/android/gms/internal/play_billing/R1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lcom/google/android/gms/internal/play_billing/R1;


# instance fields
.field final a:Lcom/google/android/gms/internal/play_billing/L2;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/R1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/R1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/play_billing/R1;->d:Lcom/google/android/gms/internal/play_billing/R1;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/L2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/L2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/L2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/L2;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/R1;->e()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/R1;->e()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/play_billing/Q1;Ljava/lang/Object;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/Q1;->b()Lcom/google/android/gms/internal/play_billing/a3;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/Q1;->c()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/Q1;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/Q1;->d()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    if-gtz v1, :cond_0

    .line 35
    .line 36
    shl-int/lit8 p0, v0, 0x3

    .line 37
    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    add-int/2addr p1, p0

    .line 47
    return p1

    .line 48
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    sget-object p0, Lcom/google/android/gms/internal/play_billing/a3;->e:Lcom/google/android/gms/internal/play_billing/a3;

    .line 52
    .line 53
    sget-object p0, Lcom/google/android/gms/internal/play_billing/b3;->d:Lcom/google/android/gms/internal/play_billing/b3;

    .line 54
    .line 55
    throw v2

    .line 56
    :cond_1
    return v3

    .line 57
    :cond_2
    if-gtz v1, :cond_3

    .line 58
    .line 59
    return v3

    .line 60
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    shl-int/lit8 p1, v0, 0x3

    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 67
    .line 68
    .line 69
    sget-object p1, Lcom/google/android/gms/internal/play_billing/a3;->e:Lcom/google/android/gms/internal/play_billing/a3;

    .line 70
    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    check-cast p0, Lcom/google/android/gms/internal/play_billing/y2;

    .line 74
    .line 75
    sget-object p1, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 76
    .line 77
    instance-of p1, p0, Lcom/google/android/gms/internal/play_billing/w1;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    check-cast p0, Lcom/google/android/gms/internal/play_billing/w1;

    .line 82
    .line 83
    throw v2

    .line 84
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/play_billing/b3;->d:Lcom/google/android/gms/internal/play_billing/b3;

    .line 85
    .line 86
    throw v2

    .line 87
    :cond_5
    shl-int/lit8 p0, v0, 0x3

    .line 88
    .line 89
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 90
    .line 91
    .line 92
    sget-object p0, Lcom/google/android/gms/internal/play_billing/a3;->e:Lcom/google/android/gms/internal/play_billing/a3;

    .line 93
    .line 94
    if-nez p0, :cond_6

    .line 95
    .line 96
    check-cast p1, Lcom/google/android/gms/internal/play_billing/y2;

    .line 97
    .line 98
    sget-object p0, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 99
    .line 100
    instance-of p0, p1, Lcom/google/android/gms/internal/play_billing/w1;

    .line 101
    .line 102
    if-eqz p0, :cond_6

    .line 103
    .line 104
    check-cast p1, Lcom/google/android/gms/internal/play_billing/w1;

    .line 105
    .line 106
    throw v2

    .line 107
    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/play_billing/b3;->d:Lcom/google/android/gms/internal/play_billing/b3;

    .line 108
    .line 109
    throw v2
.end method

.method public static c()Lcom/google/android/gms/internal/play_billing/R1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/R1;->d:Lcom/google/android/gms/internal/play_billing/R1;

    return-object v0
.end method

.method private static h(Ljava/util/Map$Entry;)Z
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Q1;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/Q1;->a()Lcom/google/android/gms/internal/play_billing/b3;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/play_billing/b3;->d:Lcom/google/android/gms/internal/play_billing/b3;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v2, :cond_6

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/Q1;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "Wrong object type used with protocol message reflection."

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v4, v0, :cond_6

    .line 37
    .line 38
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    instance-of v6, v5, Lcom/google/android/gms/internal/play_billing/z2;

    .line 43
    .line 44
    if-eqz v6, :cond_0

    .line 45
    .line 46
    check-cast v5, Lcom/google/android/gms/internal/play_billing/z2;

    .line 47
    .line 48
    invoke-interface {v5}, Lcom/google/android/gms/internal/play_billing/z2;->b()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    instance-of v5, v5, Lcom/google/android/gms/internal/play_billing/k2;

    .line 54
    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    :goto_1
    if-nez v5, :cond_1

    .line 59
    .line 60
    return v2

    .line 61
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_3
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/z2;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    check-cast p0, Lcom/google/android/gms/internal/play_billing/z2;

    .line 79
    .line 80
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/z2;->b()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    instance-of p0, p0, Lcom/google/android/gms/internal/play_billing/k2;

    .line 86
    .line 87
    if-eqz p0, :cond_5

    .line 88
    .line 89
    :goto_2
    return v3

    .line 90
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_6
    return v3
.end method

.method private static final i(Ljava/util/Map$Entry;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/play_billing/Q1;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/Q1;->a()Lcom/google/android/gms/internal/play_billing/b3;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lcom/google/android/gms/internal/play_billing/b3;->d:Lcom/google/android/gms/internal/play_billing/b3;

    .line 16
    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/Q1;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/Q1;->d()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    instance-of v0, v1, Lcom/google/android/gms/internal/play_billing/k2;

    .line 32
    .line 33
    const/16 v2, 0x18

    .line 34
    .line 35
    const/16 v3, 0x10

    .line 36
    .line 37
    const/16 v4, 0x8

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lcom/google/android/gms/internal/play_billing/Q1;

    .line 46
    .line 47
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/Q1;->c()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    check-cast v1, Lcom/google/android/gms/internal/play_billing/k2;

    .line 52
    .line 53
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v0, v0

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    add-int/2addr p0, v3

    .line 67
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/l2;->a()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Lcom/google/android/gms/internal/play_billing/Q1;

    .line 85
    .line 86
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/Q1;->c()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    check-cast v1, Lcom/google/android/gms/internal/play_billing/y2;

    .line 91
    .line 92
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    add-int/2addr v0, v0

    .line 97
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    add-int/2addr p0, v3

    .line 106
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/y2;->d()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/J1;->P(I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    :goto_0
    add-int/2addr v3, v1

    .line 119
    add-int/2addr v3, v2

    .line 120
    add-int/2addr v0, p0

    .line 121
    add-int/2addr v0, v3

    .line 122
    return v0

    .line 123
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/R1;->a(Lcom/google/android/gms/internal/play_billing/Q1;Ljava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    return p0
.end method

.method private static final j(Lcom/google/android/gms/internal/play_billing/Q1;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/Q1;->b()Lcom/google/android/gms/internal/play_billing/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/play_billing/e2;->b:[B

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/internal/play_billing/a3;->e:Lcom/google/android/gms/internal/play_billing/a3;

    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/internal/play_billing/b3;->d:Lcom/google/android/gms/internal/play_billing/b3;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/a3;->f()Lcom/google/android/gms/internal/play_billing/b3;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/y2;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/k2;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/n3;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/F1;

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    instance-of v0, p1, [B

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    .line 69
    .line 70
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    .line 72
    :cond_0
    :goto_1
    return-void

    .line 73
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const/4 v1, 0x3

    .line 76
    new-array v1, v1, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/Q1;->c()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v3, 0x0

    .line 87
    aput-object v2, v1, v3

    .line 88
    .line 89
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/Q1;->b()Lcom/google/android/gms/internal/play_billing/a3;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/a3;->f()Lcom/google/android/gms/internal/play_billing/b3;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const/4 v2, 0x1

    .line 98
    aput-object p0, v1, v2

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const/4 p1, 0x2

    .line 109
    aput-object p0, v1, p1

    .line 110
    .line 111
    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 112
    .line 113
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public final b()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/P2;->c()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/P2;->g(I)Ljava/util/Map$Entry;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/R1;->i(Ljava/util/Map$Entry;)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    add-int/2addr v3, v4

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/P2;->d()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/R1;->i(Ljava/util/Map$Entry;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v3, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return v3
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/R1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/R1;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/P2;->c()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/P2;->g(I)Ljava/util/Map$Entry;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    move-object v5, v4

    .line 20
    check-cast v5, Lcom/google/android/gms/internal/play_billing/M2;

    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/M2;->f()Ljava/lang/Comparable;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lcom/google/android/gms/internal/play_billing/Q1;

    .line 27
    .line 28
    check-cast v4, Lcom/google/android/gms/internal/play_billing/M2;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/M2;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/play_billing/R1;->f(Lcom/google/android/gms/internal/play_billing/Q1;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/P2;->d()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/google/android/gms/internal/play_billing/Q1;

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/R1;->f(Lcom/google/android/gms/internal/play_billing/Q1;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/R1;->c:Z

    .line 75
    .line 76
    iput-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/R1;->c:Z

    .line 77
    .line 78
    return-object v0
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/R1;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/gms/internal/play_billing/j2;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/P2;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/play_billing/O2;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/O2;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/j2;-><init>(Ljava/util/Iterator;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/P2;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/google/android/gms/internal/play_billing/O2;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/O2;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/P2;->c()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/P2;->g(I)Ljava/util/Map$Entry;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/google/android/gms/internal/play_billing/M2;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/M2;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    instance-of v4, v3, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    check-cast v3, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/Z1;->o()V

    .line 32
    .line 33
    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/P2;->d()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    instance-of v3, v2, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    check-cast v2, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/Z1;->o()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/L2;->a()V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->b:Z

    .line 76
    .line 77
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/R1;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/R1;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/P2;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final f(Lcom/google/android/gms/internal/play_billing/Q1;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/Q1;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    instance-of v0, p2, Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p2, Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_0

    .line 24
    .line 25
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/play_billing/R1;->j(Lcom/google/android/gms/internal/play_billing/Q1;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object p2, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "Wrong object type used with protocol message reflection."

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/R1;->j(Lcom/google/android/gms/internal/play_billing/Q1;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/k2;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->c:Z

    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 59
    .line 60
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/P2;->f(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final g()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/P2;->c()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/P2;->g(I)Ljava/util/Map$Entry;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/R1;->h(Ljava/util/Map$Entry;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/P2;->d()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/R1;->h(Ljava/util/Map$Entry;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    const/4 v0, 0x1

    .line 53
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/R1;->a:Lcom/google/android/gms/internal/play_billing/L2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/P2;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
