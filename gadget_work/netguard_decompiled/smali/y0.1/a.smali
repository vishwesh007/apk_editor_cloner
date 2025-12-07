.class public final Ly0/a;
.super Lp0/l;
.source "SourceFile"

# interfaces
.implements Lx0/f;


# instance fields
.field private final A:Lp0/i;

.field private final B:Landroid/os/Bundle;

.field private final C:Ljava/lang/Integer;

.field private final z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lp0/i;Landroid/os/Bundle;Ln0/k;Ln0/l;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p5

    .line 6
    move-object v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Lp0/l;-><init>(Landroid/content/Context;Landroid/os/Looper;Lp0/i;Ln0/k;Ln0/l;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Ly0/a;->z:Z

    .line 12
    .line 13
    iput-object p3, p0, Ly0/a;->A:Lp0/i;

    .line 14
    .line 15
    iput-object p4, p0, Ly0/a;->B:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-virtual {p3}, Lp0/i;->g()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Ly0/a;->C:Ljava/lang/Integer;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method protected final A()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public final g(Ly0/e;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Ly0/a;->A:Lp0/i;

    .line 6
    .line 7
    invoke-virtual {v2}, Lp0/i;->b()Landroid/accounts/Account;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "<<default account>>"

    .line 12
    .line 13
    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lp0/g;->u()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Ll0/a;->a(Landroid/content/Context;)Ll0/a;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ll0/a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v3, v1

    .line 35
    :goto_0
    new-instance v4, Lp0/F;

    .line 36
    .line 37
    iget-object v5, p0, Ly0/a;->C:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-static {v5}, Lp0/s;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-direct {v4, v2, v5, v3}, Lp0/F;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lp0/g;->y()Landroid/os/IInterface;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ly0/f;

    .line 54
    .line 55
    new-instance v3, Ly0/h;

    .line 56
    .line 57
    invoke-direct {v3, v0, v4}, Ly0/h;-><init>(ILp0/F;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3, p1}, Ly0/f;->v(Ly0/h;Ly0/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    move-exception v2

    .line 65
    const-string v3, "SignInClientImpl"

    .line 66
    .line 67
    const-string v4, "Remote service probably died when signIn is called"

    .line 68
    .line 69
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :try_start_1
    new-instance v4, Ly0/i;

    .line 73
    .line 74
    new-instance v5, Lm0/a;

    .line 75
    .line 76
    const/16 v6, 0x8

    .line 77
    .line 78
    invoke-direct {v5, v6, v1}, Lm0/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v0, v5, v1}, Ly0/i;-><init>(ILm0/a;Lp0/H;)V

    .line 82
    .line 83
    .line 84
    check-cast p1, Lo0/J;

    .line 85
    .line 86
    invoke-virtual {p1, v4}, Lo0/J;->v(Ly0/i;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catch_1
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 91
    .line 92
    invoke-static {v3, p1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 97
    .line 98
    const-string v0, "Expecting a valid ISignInCallbacks"

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly0/a;->z:Z

    return v0
.end method

.method public final l()V
    .locals 1

    .line 1
    new-instance v0, Lp0/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lp0/e;-><init>(Lp0/g;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lp0/g;->n(Lp0/d;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final p()I
    .locals 1

    .line 1
    const v0, 0xbdfcb8

    return v0
.end method

.method protected final synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Ly0/f;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object p1, v0

    .line 16
    check-cast p1, Ly0/f;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ly0/f;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ly0/f;-><init>(Landroid/os/IBinder;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v0

    .line 25
    :goto_0
    return-object p1
.end method

.method protected final w()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Ly0/a;->A:Lp0/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp0/i;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lp0/g;->u()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Ly0/a;->B:Landroid/os/Bundle;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 24
    .line 25
    invoke-virtual {v0}, Lp0/i;->d()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object v2
.end method

.method protected final z()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method
