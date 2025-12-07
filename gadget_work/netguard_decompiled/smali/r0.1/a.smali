.class public final Lr0/a;
.super Lv0/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lv0/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final v(Lp0/v;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lv0/a;->l()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lv0/c;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lp0/v;->writeToParcel(Landroid/os/Parcel;I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, v0}, Lv0/a;->r(Landroid/os/Parcel;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
