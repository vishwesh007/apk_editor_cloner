.class public final Ly0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ly0/c;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ly0/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    invoke-static {p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v5, 0x0

    .line 16
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-ge v6, v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    int-to-char v7, v6

    .line 27
    if-eq v7, v2, :cond_2

    .line 28
    .line 29
    if-eq v7, v1, :cond_1

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    if-eq v7, v8, :cond_0

    .line 33
    .line 34
    invoke-static {p1, v6}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    invoke-static {p1, v6, v3}, Lt0/a;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/content/Intent;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {p1, v6}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1, v6}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-static {p1, v0}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Ly0/b;

    .line 61
    .line 62
    invoke-direct {p1, v4, v5, v3}, Ly0/b;-><init>(IILandroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :goto_1
    invoke-static {p1}, Lt0/a;->L(Landroid/os/Parcel;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-ge v5, v0, :cond_6

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    int-to-char v6, v5

    .line 81
    if-eq v6, v2, :cond_5

    .line 82
    .line 83
    if-eq v6, v1, :cond_4

    .line 84
    .line 85
    invoke-static {p1, v5}, Lt0/a;->K(Landroid/os/Parcel;I)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    sget-object v3, Lp0/F;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    .line 91
    invoke-static {p1, v5, v3}, Lt0/a;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Lp0/F;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    invoke-static {p1, v5}, Lt0/a;->H(Landroid/os/Parcel;I)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    goto :goto_2

    .line 103
    :cond_6
    invoke-static {p1, v0}, Lt0/a;->o(Landroid/os/Parcel;I)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Ly0/h;

    .line 107
    .line 108
    invoke-direct {p1, v4, v3}, Ly0/h;-><init>(ILp0/F;)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ly0/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-array p1, p1, [Ly0/b;

    .line 8
    .line 9
    return-object p1

    .line 10
    :goto_0
    new-array p1, p1, [Ly0/h;

    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
