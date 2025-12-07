.class public final Lp0/P;
.super Lw0/b;
.source "SourceFile"


# instance fields
.field private a:Lp0/g;

.field private final b:I


# direct methods
.method public constructor <init>(Lp0/g;I)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lw0/b;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lp0/P;->a:Lp0/g;

    .line 7
    .line 8
    iput p2, p0, Lp0/P;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected final l(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lp0/P;->b:I

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    const-string v3, "onPostInitComplete can be called only once per call to getRemoteService"

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    if-eq p1, v4, :cond_2

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    if-eq p1, v5, :cond_1

    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    if-eq p1, v5, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    sget-object v6, Lp0/U;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    .line 29
    invoke-static {p2, v6}, Lw0/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lp0/U;

    .line 34
    .line 35
    invoke-static {p2}, Lw0/c;->b(Landroid/os/Parcel;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lp0/P;->a:Lp0/g;

    .line 39
    .line 40
    const-string v7, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    .line 41
    .line 42
    invoke-static {p2, v7}, Lp0/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v6}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2, v6}, Lp0/g;->L(Lp0/g;Lp0/U;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, v6, Lp0/U;->a:Landroid/os/Bundle;

    .line 52
    .line 53
    iget-object v6, p0, Lp0/P;->a:Lp0/g;

    .line 54
    .line 55
    invoke-static {v6, v3}, Lp0/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lp0/P;->a:Lp0/g;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v6, Lp0/S;

    .line 64
    .line 65
    invoke-direct {v6, v3, p1, v5, p2}, Lp0/S;-><init>(Lp0/g;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v3, Lp0/g;->e:Landroid/os/Handler;

    .line 69
    .line 70
    invoke-virtual {p1, v4, v1, v2, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lp0/P;->a:Lp0/g;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 81
    .line 82
    .line 83
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    .line 85
    invoke-static {p2, p1}, Lw0/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/os/Bundle;

    .line 90
    .line 91
    invoke-static {p2}, Lw0/c;->b(Landroid/os/Parcel;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Ljava/lang/Exception;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string p2, "GmsClient"

    .line 100
    .line 101
    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    .line 102
    .line 103
    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    .line 117
    invoke-static {p2, v6}, Lw0/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Landroid/os/Bundle;

    .line 122
    .line 123
    invoke-static {p2}, Lw0/c;->b(Landroid/os/Parcel;)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p0, Lp0/P;->a:Lp0/g;

    .line 127
    .line 128
    invoke-static {p2, v3}, Lp0/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lp0/P;->a:Lp0/g;

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    new-instance v3, Lp0/S;

    .line 137
    .line 138
    invoke-direct {v3, p2, p1, v5, v6}, Lp0/S;-><init>(Lp0/g;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p2, Lp0/g;->e:Landroid/os/Handler;

    .line 142
    .line 143
    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    .line 149
    .line 150
    iput-object v0, p0, Lp0/P;->a:Lp0/g;

    .line 151
    .line 152
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    .line 154
    .line 155
    :goto_1
    return v4
.end method
