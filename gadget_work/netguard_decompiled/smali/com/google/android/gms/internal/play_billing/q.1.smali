.class public Lcom/google/android/gms/internal/play_billing/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static a(I)I
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/32 v2, -0x3361d2af

    .line 3
    .line 4
    .line 5
    mul-long v0, v0, v2

    .line 6
    .line 7
    long-to-int p0, v0

    .line 8
    const/16 v0, 0xf

    .line 9
    .line 10
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-long v0, p0

    .line 15
    const-wide/32 v2, 0x1b873593

    .line 16
    .line 17
    .line 18
    mul-long v0, v0, v2

    .line 19
    .line 20
    long-to-int p0, v0

    .line 21
    return p0
.end method

.method public static b(Lcom/android/billingclient/api/x;)Lcom/google/android/gms/internal/play_billing/a1;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/N3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/N3;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/play_billing/Q3;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/Q3;-><init>(Lcom/google/android/gms/internal/play_billing/N3;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/N3;->b:Lcom/google/android/gms/internal/play_billing/Q3;

    .line 12
    .line 13
    const-class v2, Lcom/android/billingclient/api/x;

    .line 14
    .line 15
    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/N3;->a:Ljava/io/Serializable;

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/x;->a(Lcom/google/android/gms/internal/play_billing/N3;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "billingOverrideService.getBillingOverride"

    .line 21
    .line 22
    iput-object p0, v0, Lcom/google/android/gms/internal/play_billing/N3;->a:Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/play_billing/Q3;->b(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object v1
.end method

.method public static c(Ljava/lang/Integer;)Lcom/google/android/gms/internal/play_billing/a1;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/W0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/W0;-><init>(Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/u2;
    .locals 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/u2;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/play_billing/u2;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/u2;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/u2;->b()Lcom/google/android/gms/internal/play_billing/u2;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/u2;->d(Lcom/google/android/gms/internal/play_billing/u2;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-object p0
.end method

.method static e(Lcom/google/android/gms/internal/play_billing/F1;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/F1;->g()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/F1;->e(I)B

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x22

    .line 22
    .line 23
    if-eq v2, v3, :cond_3

    .line 24
    .line 25
    const/16 v3, 0x27

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0x5c

    .line 30
    .line 31
    if-eq v2, v3, :cond_1

    .line 32
    .line 33
    packed-switch v2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    if-lt v2, v4, :cond_0

    .line 39
    .line 40
    const/16 v4, 0x7e

    .line 41
    .line 42
    if-gt v2, v4, :cond_0

    .line 43
    .line 44
    int-to-char v2, v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    ushr-int/lit8 v3, v2, 0x6

    .line 53
    .line 54
    and-int/lit8 v3, v3, 0x3

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x30

    .line 57
    .line 58
    int-to-char v3, v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    ushr-int/lit8 v3, v2, 0x3

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x7

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x30

    .line 67
    .line 68
    int-to-char v3, v3

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    and-int/lit8 v2, v2, 0x7

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x30

    .line 75
    .line 76
    int-to-char v2, v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_0
    const-string v2, "\\r"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_1
    const-string v2, "\\f"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_2
    const-string v2, "\\v"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :pswitch_3
    const-string v2, "\\n"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_4
    const-string v2, "\\t"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_5
    const-string v2, "\\b"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_6
    const-string v2, "\\a"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    const-string v2, "\\\\"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    const-string v2, "\\\'"

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    const-string v2, "\\\""

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/Z1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/Z1;->zzc:Lcom/google/android/gms/internal/play_billing/S2;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/S2;->g()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static g(I)I
    .locals 2

    .line 1
    const/16 v0, 0x5a

    const/16 v1, 0x5b

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/16 v0, 0x5d

    const/16 v1, 0x5e

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x7a

    return p0

    :pswitch_1
    const/16 p0, 0x79

    return p0

    :pswitch_2
    const/16 p0, 0x78

    return p0

    :pswitch_3
    const/16 p0, 0x77

    return p0

    :pswitch_4
    const/16 p0, 0x76

    return p0

    :pswitch_5
    const/16 p0, 0x75

    return p0

    :pswitch_6
    const/16 p0, 0x74

    return p0

    :pswitch_7
    const/16 p0, 0x73

    return p0

    :pswitch_8
    const/16 p0, 0x72

    return p0

    :pswitch_9
    const/16 p0, 0x71

    return p0

    :pswitch_a
    const/16 p0, 0x70

    return p0

    :pswitch_b
    const/16 p0, 0x6f

    return p0

    :pswitch_c
    const/16 p0, 0x6e

    return p0

    :pswitch_d
    const/16 p0, 0x6d

    return p0

    :pswitch_e
    const/16 p0, 0x6c

    return p0

    :pswitch_f
    const/16 p0, 0x6b

    return p0

    :pswitch_10
    const/16 p0, 0x6a

    return p0

    :pswitch_11
    const/16 p0, 0x69

    return p0

    :pswitch_12
    const/16 p0, 0x68

    return p0

    :pswitch_13
    const/16 p0, 0x67

    return p0

    :pswitch_14
    const/16 p0, 0x66

    return p0

    :pswitch_15
    const/16 p0, 0x65

    return p0

    :pswitch_16
    const/16 p0, 0x64

    return p0

    :pswitch_17
    const/16 p0, 0x63

    return p0

    :pswitch_18
    const/16 p0, 0x62

    return p0

    :pswitch_19
    const/16 p0, 0x61

    return p0

    :pswitch_1a
    const/16 p0, 0x50

    return p0

    :pswitch_1b
    const/16 p0, 0x4f

    return p0

    :pswitch_1c
    const/16 p0, 0x4e

    return p0

    :pswitch_1d
    const/16 p0, 0x4d

    return p0

    :pswitch_1e
    const/16 p0, 0x4c

    return p0

    :pswitch_1f
    const/16 p0, 0x4b

    return p0

    :pswitch_20
    const/16 p0, 0x4a

    return p0

    :pswitch_21
    const/16 p0, 0x49

    return p0

    :pswitch_22
    const/16 p0, 0x48

    return p0

    :pswitch_23
    const/16 p0, 0x47

    return p0

    :pswitch_24
    const/16 p0, 0x46

    return p0

    :pswitch_25
    const/16 p0, 0x45

    return p0

    :pswitch_26
    const/16 p0, 0x44

    return p0

    :pswitch_27
    const/16 p0, 0x43

    return p0

    :pswitch_28
    const/16 p0, 0x42

    return p0

    :pswitch_29
    const/16 p0, 0x41

    return p0

    :pswitch_2a
    const/16 p0, 0x40

    return p0

    :pswitch_2b
    const/16 p0, 0x3f

    return p0

    :pswitch_2c
    const/16 p0, 0x3e

    return p0

    :pswitch_2d
    const/16 p0, 0x3d

    return p0

    :pswitch_2e
    const/16 p0, 0x3c

    return p0

    :pswitch_2f
    const/16 p0, 0x3b

    return p0

    :pswitch_30
    const/16 p0, 0x3a

    return p0

    :pswitch_31
    const/16 p0, 0x39

    return p0

    :pswitch_32
    const/16 p0, 0x38

    return p0

    :pswitch_33
    const/16 p0, 0x37

    return p0

    :pswitch_34
    const/16 p0, 0x36

    return p0

    :pswitch_35
    const/16 p0, 0x35

    return p0

    :pswitch_36
    const/16 p0, 0x34

    return p0

    :pswitch_37
    const/16 p0, 0x33

    return p0

    :pswitch_38
    const/16 p0, 0x32

    return p0

    :pswitch_39
    const/16 p0, 0x31

    return p0

    :pswitch_3a
    const/16 p0, 0x30

    return p0

    :pswitch_3b
    const/16 p0, 0x2f

    return p0

    :pswitch_3c
    const/16 p0, 0x2e

    return p0

    :pswitch_3d
    const/16 p0, 0x2d

    return p0

    :pswitch_3e
    const/16 p0, 0x2c

    return p0

    :pswitch_3f
    const/16 p0, 0x2b

    return p0

    :pswitch_40
    const/16 p0, 0x2a

    return p0

    :pswitch_41
    const/16 p0, 0x29

    return p0

    :pswitch_42
    const/16 p0, 0x28

    return p0

    :pswitch_43
    const/16 p0, 0x27

    return p0

    :pswitch_44
    const/16 p0, 0x26

    return p0

    :pswitch_45
    const/16 p0, 0x25

    return p0

    :pswitch_46
    const/16 p0, 0x24

    return p0

    :pswitch_47
    const/16 p0, 0x23

    return p0

    :pswitch_48
    const/16 p0, 0x22

    return p0

    :pswitch_49
    const/16 p0, 0x21

    return p0

    :pswitch_4a
    const/16 p0, 0x20

    return p0

    :pswitch_4b
    const/16 p0, 0x1f

    return p0

    :pswitch_4c
    const/16 p0, 0x1e

    return p0

    :pswitch_4d
    const/16 p0, 0x1d

    return p0

    :pswitch_4e
    const/16 p0, 0x1c

    return p0

    :pswitch_4f
    const/16 p0, 0x1b

    return p0

    :pswitch_50
    const/16 p0, 0x1a

    return p0

    :pswitch_51
    const/16 p0, 0x19

    return p0

    :pswitch_52
    const/16 p0, 0x18

    return p0

    :pswitch_53
    const/16 p0, 0x17

    return p0

    :pswitch_54
    const/16 p0, 0x16

    return p0

    :pswitch_55
    const/16 p0, 0x15

    return p0

    :pswitch_56
    const/16 p0, 0x14

    return p0

    :pswitch_57
    const/16 p0, 0x13

    return p0

    :pswitch_58
    const/16 p0, 0x12

    return p0

    :pswitch_59
    const/16 p0, 0x11

    return p0

    :pswitch_5a
    const/16 p0, 0x10

    return p0

    :pswitch_5b
    const/16 p0, 0xf

    return p0

    :pswitch_5c
    const/16 p0, 0xe

    return p0

    :pswitch_5d
    const/16 p0, 0xd

    return p0

    :pswitch_5e
    const/16 p0, 0xc

    return p0

    :pswitch_5f
    const/16 p0, 0xb

    return p0

    :pswitch_60
    const/16 p0, 0xa

    return p0

    :pswitch_61
    const/16 p0, 0x9

    return p0

    :pswitch_62
    const/16 p0, 0x8

    return p0

    :pswitch_63
    const/4 p0, 0x7

    return p0

    :pswitch_64
    const/4 p0, 0x6

    return p0

    :pswitch_65
    const/4 p0, 0x5

    return p0

    :pswitch_66
    const/4 p0, 0x4

    return p0

    :pswitch_67
    const/4 p0, 0x3

    return p0

    :pswitch_68
    const/4 p0, 0x2

    return p0

    :pswitch_69
    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x5f

    return p0

    :cond_1
    return v1

    :cond_2
    const/16 p0, 0x5c

    return p0

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
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

.method public static h(Lcom/google/android/gms/internal/play_billing/a1;Ljava/util/concurrent/TimeUnit;Lcom/google/android/gms/internal/play_billing/c1;)Lcom/google/android/gms/internal/play_billing/a1;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/j1;->z(Lcom/google/android/gms/internal/play_billing/a1;Ljava/util/concurrent/TimeUnit;Lcom/google/android/gms/internal/play_billing/c1;)Lcom/google/android/gms/internal/play_billing/a1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method static i(II)I
    .locals 1

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    if-gt p1, p0, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    shr-int/lit8 v0, p0, 0x1

    .line 7
    .line 8
    add-int/2addr p0, v0

    .line 9
    add-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    if-ge p0, p1, :cond_1

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/2addr p0, p0

    .line 20
    :cond_1
    if-gez p0, :cond_2

    .line 21
    .line 22
    const p0, 0x7fffffff

    .line 23
    .line 24
    .line 25
    :cond_2
    return p0

    .line 26
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p1, "cannot store more than MAX_VALUE elements"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public static j(Lcom/google/android/gms/internal/play_billing/a1;Lcom/google/android/gms/internal/play_billing/U0;Lcom/google/android/gms/internal/play_billing/b1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/V0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/V0;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/play_billing/U0;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/a1;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
