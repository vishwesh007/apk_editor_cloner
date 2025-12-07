.class public final Lp0/H;
.super Lq0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Landroid/os/IBinder;

.field private final c:Lm0/a;

.field private final d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp0/I;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp0/I;-><init>(I)V

    sput-object v0, Lp0/H;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lm0/a;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lp0/H;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lp0/H;->b:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lp0/H;->c:Lm0/a;

    .line 9
    .line 10
    iput-boolean p4, p0, Lp0/H;->d:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lp0/H;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()Lm0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/H;->c:Lm0/a;

    return-object v0
.end method

.method public final c()Lp0/n;
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/H;->b:Landroid/os/IBinder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    sget v1, Lp0/a;->a:I

    .line 8
    .line 9
    const-string v1, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v2, v1, Lp0/n;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v1, Lp0/n;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v1, Lp0/b0;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lp0/b0;-><init>(Landroid/os/IBinder;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p0, p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lp0/H;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v0

    .line 14
    :cond_2
    check-cast p1, Lp0/H;

    .line 15
    .line 16
    iget-object v2, p0, Lp0/H;->c:Lm0/a;

    .line 17
    .line 18
    iget-object v3, p1, Lp0/H;->c:Lm0/a;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Lm0/a;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lp0/H;->c()Lp0/n;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1}, Lp0/H;->c()Lp0/n;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v2, p1}, Lp0/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    return v1

    .line 41
    :cond_3
    return v0
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
    iget v2, p0, Lp0/H;->a:I

    .line 7
    .line 8
    invoke-static {p1, v1, v2}, Lt0/a;->Q(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    iget-object v2, p0, Lp0/H;->b:Landroid/os/IBinder;

    .line 13
    .line 14
    invoke-static {p1, v1, v2}, Lt0/a;->P(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    iget-object v2, p0, Lp0/H;->c:Lm0/a;

    .line 19
    .line 20
    invoke-static {p1, v1, v2, p2}, Lt0/a;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x4

    .line 24
    iget-boolean v1, p0, Lp0/H;->d:Z

    .line 25
    .line 26
    invoke-static {p1, p2, v1}, Lt0/a;->N(Landroid/os/Parcel;IZ)V

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x5

    .line 30
    iget-boolean v1, p0, Lp0/H;->e:Z

    .line 31
    .line 32
    invoke-static {p1, p2, v1}, Lt0/a;->N(Landroid/os/Parcel;IZ)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lt0/a;->p(Landroid/os/Parcel;I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
