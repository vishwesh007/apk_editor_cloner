.class public final Lp0/j;
.super Lq0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Lp0/u;

.field private final b:Z

.field private final c:Z

.field private final d:[I

.field private final e:I

.field private final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp0/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    sput-object v0, Lp0/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lp0/u;ZZ[II[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq0/a;-><init>()V

    iput-object p1, p0, Lp0/j;->a:Lp0/u;

    iput-boolean p2, p0, Lp0/j;->b:Z

    iput-boolean p3, p0, Lp0/j;->c:Z

    iput-object p4, p0, Lp0/j;->d:[I

    iput p5, p0, Lp0/j;->e:I

    iput-object p6, p0, Lp0/j;->f:[I

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
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lp0/j;->a:Lp0/u;

    .line 7
    .line 8
    invoke-static {p1, v1, v2, p2}, Lt0/a;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    iget-boolean v1, p0, Lp0/j;->b:Z

    .line 13
    .line 14
    invoke-static {p1, p2, v1}, Lt0/a;->N(Landroid/os/Parcel;IZ)V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    iget-boolean v1, p0, Lp0/j;->c:Z

    .line 19
    .line 20
    invoke-static {p1, p2, v1}, Lt0/a;->N(Landroid/os/Parcel;IZ)V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x4

    .line 24
    iget-object v1, p0, Lp0/j;->d:[I

    .line 25
    .line 26
    invoke-static {p1, p2, v1}, Lt0/a;->R(Landroid/os/Parcel;I[I)V

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x5

    .line 30
    iget v1, p0, Lp0/j;->e:I

    .line 31
    .line 32
    invoke-static {p1, p2, v1}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x6

    .line 36
    iget-object v1, p0, Lp0/j;->f:[I

    .line 37
    .line 38
    invoke-static {p1, p2, v1}, Lt0/a;->R(Landroid/os/Parcel;I[I)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lt0/a;->p(Landroid/os/Parcel;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
