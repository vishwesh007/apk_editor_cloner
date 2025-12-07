.class final Lx0/b;
.super Ln0/a;
.source "SourceFile"


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Looper;Lp0/i;Ln0/d;Ln0/k;Ln0/l;)Ln0/e;
    .locals 7

    .line 1
    check-cast p4, Lx0/a;

    .line 2
    .line 3
    new-instance p4, Ly0/a;

    .line 4
    .line 5
    invoke-virtual {p3}, Lp0/i;->g()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v4, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 15
    .line 16
    invoke-virtual {p3}, Lp0/i;->a()Landroid/accounts/Account;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 41
    .line 42
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v0, "com.google.android.gms.signin.internal.serverClientId"

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    const-string v0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 58
    .line 59
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    const-string v0, "com.google.android.gms.signin.internal.hostedDomain"

    .line 63
    .line 64
    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "com.google.android.gms.signin.internal.logSessionId"

    .line 68
    .line 69
    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 73
    .line 74
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    move-object v0, p4

    .line 78
    move-object v1, p1

    .line 79
    move-object v2, p2

    .line 80
    move-object v3, p3

    .line 81
    move-object v5, p5

    .line 82
    move-object v6, p6

    .line 83
    invoke-direct/range {v0 .. v6}, Ly0/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lp0/i;Landroid/os/Bundle;Ln0/k;Ln0/l;)V

    .line 84
    .line 85
    .line 86
    return-object p4
.end method
