.class public final Lp0/k;
.super Lq0/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field static final o:[Lcom/google/android/gms/common/api/Scope;

.field static final p:[Lm0/c;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field d:Ljava/lang/String;

.field e:Landroid/os/IBinder;

.field f:[Lcom/google/android/gms/common/api/Scope;

.field g:Landroid/os/Bundle;

.field h:Landroid/accounts/Account;

.field i:[Lm0/c;

.field j:[Lm0/c;

.field final k:Z

.field final l:I

.field m:Z

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp0/G;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp0/G;-><init>(I)V

    sput-object v0, Lp0/k;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    sput-object v1, Lp0/k;->o:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v0, [Lm0/c;

    sput-object v0, Lp0/k;->p:[Lm0/c;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lm0/c;[Lm0/c;ZIZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lq0/a;-><init>()V

    if-nez p6, :cond_0

    sget-object p6, Lp0/k;->o:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    if-nez p7, :cond_1

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :cond_1
    sget-object v0, Lp0/k;->p:[Lm0/c;

    if-nez p9, :cond_2

    move-object p9, v0

    :cond_2
    if-nez p10, :cond_3

    move-object p10, v0

    :cond_3
    iput p1, p0, Lp0/k;->a:I

    iput p2, p0, Lp0/k;->b:I

    iput p3, p0, Lp0/k;->c:I

    const-string p2, "com.google.android.gms"

    .line 2
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-object p2, p0, Lp0/k;->d:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_4
    iput-object p4, p0, Lp0/k;->d:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_7

    const/4 p1, 0x0

    if-eqz p5, :cond_6

    .line 4
    sget p2, Lp0/a;->a:I

    const-string p2, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 5
    invoke-interface {p5, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lp0/n;

    if-eqz p3, :cond_5

    .line 6
    check-cast p2, Lp0/n;

    goto :goto_1

    :cond_5
    new-instance p2, Lp0/b0;

    invoke-direct {p2, p5}, Lp0/b0;-><init>(Landroid/os/IBinder;)V

    :goto_1
    if-eqz p2, :cond_6

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 8
    :try_start_0
    invoke-interface {p2}, Lp0/n;->b()Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_1
    const-string p2, "AccountAccessor"

    const-string p5, "Remote account accessor probably died"

    .line 9
    invoke-static {p2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_2
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :goto_3
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    throw p1

    .line 12
    :cond_6
    :goto_4
    iput-object p1, p0, Lp0/k;->h:Landroid/accounts/Account;

    goto :goto_5

    :cond_7
    iput-object p5, p0, Lp0/k;->e:Landroid/os/IBinder;

    iput-object p8, p0, Lp0/k;->h:Landroid/accounts/Account;

    :goto_5
    iput-object p6, p0, Lp0/k;->f:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lp0/k;->g:Landroid/os/Bundle;

    iput-object p9, p0, Lp0/k;->i:[Lm0/c;

    iput-object p10, p0, Lp0/k;->j:[Lm0/c;

    iput-boolean p11, p0, Lp0/k;->k:Z

    iput p12, p0, Lp0/k;->l:I

    iput-boolean p13, p0, Lp0/k;->m:Z

    iput-object p14, p0, Lp0/k;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/k;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp0/G;->a(Lp0/k;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
