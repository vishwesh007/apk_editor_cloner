.class public final Ly0/i;
.super Lq0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field private final b:Lm0/a;

.field private final c:Lp0/H;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly0/j;

    invoke-direct {v0}, Ly0/j;-><init>()V

    sput-object v0, Ly0/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILm0/a;Lp0/H;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ly0/i;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Ly0/i;->b:Lm0/a;

    .line 7
    .line 8
    iput-object p3, p0, Ly0/i;->c:Lp0/H;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b()Lm0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/i;->b:Lm0/a;

    return-object v0
.end method

.method public final c()Lp0/H;
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/i;->c:Lp0/H;

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
    iget v2, p0, Ly0/i;->a:I

    .line 7
    .line 8
    invoke-static {p1, v1, v2}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    iget-object v2, p0, Ly0/i;->b:Lm0/a;

    .line 13
    .line 14
    invoke-static {p1, v1, v2, p2}, Lt0/a;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    iget-object v2, p0, Ly0/i;->c:Lp0/H;

    .line 19
    .line 20
    invoke-static {p1, v1, v2, p2}, Lt0/a;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lt0/a;->p(Landroid/os/Parcel;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
