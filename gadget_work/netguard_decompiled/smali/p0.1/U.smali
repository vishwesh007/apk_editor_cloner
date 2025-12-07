.class public final Lp0/U;
.super Lq0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Landroid/os/Bundle;

.field b:[Lm0/c;

.field c:I

.field d:Lp0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp0/I;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp0/I;-><init>(I)V

    sput-object v0, Lp0/U;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lq0/a;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;[Lm0/c;ILp0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq0/a;-><init>()V

    iput-object p1, p0, Lp0/U;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lp0/U;->b:[Lm0/c;

    iput p3, p0, Lp0/U;->c:I

    iput-object p4, p0, Lp0/U;->d:Lp0/j;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lt0/a;->f(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lp0/U;->a:Landroid/os/Bundle;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p1, v2, v1}, Lt0/a;->O(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    iget-object v2, p0, Lp0/U;->b:[Lm0/c;

    .line 13
    .line 14
    invoke-static {p1, v1, v2, p2}, Lt0/a;->V(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    iget v2, p0, Lp0/U;->c:I

    .line 19
    .line 20
    invoke-static {p1, v1, v2}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    iget-object v2, p0, Lp0/U;->d:Lp0/j;

    .line 25
    .line 26
    invoke-static {p1, v1, v2, p2}, Lt0/a;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lt0/a;->p(Landroid/os/Parcel;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
