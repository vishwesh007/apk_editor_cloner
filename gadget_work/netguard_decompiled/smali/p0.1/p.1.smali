.class public final Lp0/p;
.super Lq0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:J

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp0/E;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    sput-object v0, Lp0/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lp0/p;->a:I

    .line 5
    .line 6
    iput p2, p0, Lp0/p;->b:I

    .line 7
    .line 8
    iput p3, p0, Lp0/p;->c:I

    .line 9
    .line 10
    iput-wide p4, p0, Lp0/p;->d:J

    .line 11
    .line 12
    iput-wide p6, p0, Lp0/p;->e:J

    .line 13
    .line 14
    iput-object p8, p0, Lp0/p;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p9, p0, Lp0/p;->g:Ljava/lang/String;

    .line 17
    .line 18
    iput p10, p0, Lp0/p;->h:I

    .line 19
    .line 20
    iput p11, p0, Lp0/p;->i:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lt0/a;->f(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    iget v1, p0, Lp0/p;->a:I

    .line 7
    .line 8
    invoke-static {p1, v0, v1}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iget v1, p0, Lp0/p;->b:I

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    iget v1, p0, Lp0/p;->c:I

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 21
    .line 22
    .line 23
    const v0, 0x80004

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-wide v0, p0, Lp0/p;->d:J

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    .line 33
    .line 34
    const v0, 0x80005

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    iget-wide v0, p0, Lp0/p;->e:J

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x6

    .line 46
    iget-object v1, p0, Lp0/p;->f:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p1, v0, v1}, Lt0/a;->T(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x7

    .line 52
    iget-object v1, p0, Lp0/p;->g:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Lt0/a;->T(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x8

    .line 58
    .line 59
    iget v1, p0, Lp0/p;->h:I

    .line 60
    .line 61
    invoke-static {p1, v0, v1}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x9

    .line 65
    .line 66
    iget v1, p0, Lp0/p;->i:I

    .line 67
    .line 68
    invoke-static {p1, v0, v1}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Lt0/a;->p(Landroid/os/Parcel;I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
