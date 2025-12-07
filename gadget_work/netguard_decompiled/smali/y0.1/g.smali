.class public final Ly0/g;
.super Lq0/a;
.source "SourceFile"

# interfaces
.implements Ln0/r;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp0/E;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    sput-object v0, Ly0/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ly0/g;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p1, p0, Ly0/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/g;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/api/Status;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    .line 9
    .line 10
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lt0/a;->f(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Ly0/g;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lt0/a;->U(Landroid/os/Parcel;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    iget-object v1, p0, Ly0/g;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lt0/a;->T(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lt0/a;->p(Landroid/os/Parcel;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
