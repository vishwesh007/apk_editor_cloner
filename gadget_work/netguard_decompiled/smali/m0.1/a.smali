.class public final Lm0/a;
.super Lq0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final e:Lm0/a;


# instance fields
.field final a:I

.field private final b:I

.field private final c:Landroid/app/PendingIntent;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm0/a;-><init>(I)V

    sput-object v0, Lm0/a;->e:Lm0/a;

    new-instance v0, Lm0/k;

    invoke-direct {v0}, Lm0/k;-><init>()V

    sput-object v0, Lm0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1, v1}, Lm0/a;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq0/a;-><init>()V

    iput p1, p0, Lm0/a;->a:I

    iput p2, p0, Lm0/a;->b:I

    iput-object p3, p0, Lm0/a;->c:Landroid/app/PendingIntent;

    iput-object p4, p0, Lm0/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2, v1}, Lm0/a;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static g(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x63

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x5dc

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch p0, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "UNKNOWN_ERROR_CODE("

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, ")"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_0
    const-string p0, "API_DISABLED_FOR_CONNECTION"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_1
    const-string p0, "API_DISABLED"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_2
    const-string p0, "RESOLUTION_ACTIVITY_NOT_FOUND"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_3
    const-string p0, "API_VERSION_UPDATE_REQUIRED"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_4
    const-string p0, "RESTRICTED_PROFILE"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_5
    const-string p0, "SERVICE_MISSING_PERMISSION"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_6
    const-string p0, "SERVICE_UPDATING"

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_7
    const-string p0, "SIGN_IN_FAILED"

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_8
    const-string p0, "API_UNAVAILABLE"

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_9
    const-string p0, "INTERRUPTED"

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_a
    const-string p0, "TIMEOUT"

    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_b
    const-string p0, "CANCELED"

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_c
    const-string p0, "LICENSE_CHECK_FAILED"

    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_d
    const-string p0, "DEVELOPER_ERROR"

    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_e
    const-string p0, "SERVICE_INVALID"

    .line 78
    .line 79
    return-object p0

    .line 80
    :pswitch_f
    const-string p0, "INTERNAL_ERROR"

    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_10
    const-string p0, "NETWORK_ERROR"

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_11
    const-string p0, "RESOLUTION_REQUIRED"

    .line 87
    .line 88
    return-object p0

    .line 89
    :pswitch_12
    const-string p0, "INVALID_ACCOUNT"

    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_13
    const-string p0, "SIGN_IN_REQUIRED"

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_14
    const-string p0, "SERVICE_DISABLED"

    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_15
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_16
    const-string p0, "SERVICE_MISSING"

    .line 102
    .line 103
    return-object p0

    .line 104
    :pswitch_17
    const-string p0, "SUCCESS"

    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_18
    const-string p0, "UNKNOWN"

    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_0
    const-string p0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_1
    const-string p0, "UNFINISHED"

    .line 114
    .line 115
    return-object p0

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch -0x1
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
    .end packed-switch

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :pswitch_data_1
    .packed-switch 0xd
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


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lm0/a;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/a;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget v0, p0, Lm0/a;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm0/a;->c:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lm0/a;

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
    check-cast p1, Lm0/a;

    .line 12
    .line 13
    iget v1, p1, Lm0/a;->b:I

    .line 14
    .line 15
    iget v3, p0, Lm0/a;->b:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lm0/a;->c:Landroid/app/PendingIntent;

    .line 20
    .line 21
    iget-object v3, p1, Lm0/a;->c:Landroid/app/PendingIntent;

    .line 22
    .line 23
    invoke-static {v1, v3}, Lp0/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lm0/a;->d:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, p1, Lm0/a;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, p1}, Lp0/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    return v2
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget v0, p0, Lm0/a;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Lm0/a;->b:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Lm0/a;->c:Landroid/app/PendingIntent;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    iget-object v2, p0, Lm0/a;->d:Ljava/lang/String;

    .line 20
    .line 21
    aput-object v2, v0, v1

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lp0/r;->b(Ljava/lang/Object;)Lp0/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lm0/a;->b:I

    .line 6
    .line 7
    invoke-static {v1}, Lm0/a;->g(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "statusCode"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lp0/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "resolution"

    .line 17
    .line 18
    iget-object v2, p0, Lm0/a;->c:Landroid/app/PendingIntent;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lp0/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "message"

    .line 24
    .line 25
    iget-object v2, p0, Lm0/a;->d:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lp0/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lp0/q;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lt0/a;->f(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iget v2, p0, Lm0/a;->a:I

    .line 7
    .line 8
    invoke-static {p1, v1, v2}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    iget v2, p0, Lm0/a;->b:I

    .line 13
    .line 14
    invoke-static {p1, v1, v2}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    iget-object v2, p0, Lm0/a;->c:Landroid/app/PendingIntent;

    .line 19
    .line 20
    invoke-static {p1, v1, v2, p2}, Lt0/a;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x4

    .line 24
    iget-object v1, p0, Lm0/a;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1, p2, v1}, Lt0/a;->T(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lt0/a;->p(Landroid/os/Parcel;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
