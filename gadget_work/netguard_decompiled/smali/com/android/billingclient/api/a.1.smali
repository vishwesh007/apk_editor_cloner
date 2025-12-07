.class public final Lcom/android/billingclient/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Lt0/a;

.field private final b:Landroid/content/Context;

.field private volatile c:Leu/faircode/netguard/IAB;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/a;->b:Landroid/content/Context;

    return-void
.end method

.method private final d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/a;->b:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v3, 0x80

    .line 13
    .line 14
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 19
    .line 20
    const-string v2, "com.google.android.play.billingclient.enableBillingOverridesTesting"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v2, "BillingClient"

    .line 29
    .line 30
    const-string v3, "Unable to retrieve metadata value for enableBillingOverridesTesting."

    .line 31
    .line 32
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return v1
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/a;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/a;->c:Leu/faircode/netguard/IAB;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Lt0/a;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Lt0/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/billingclient/api/a;->c:Leu/faircode/netguard/IAB;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Lt0/a;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/billingclient/api/a;->b:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/billingclient/api/a;->c:Leu/faircode/netguard/IAB;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/android/billingclient/api/a;->d()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    new-instance v3, Lcom/android/billingclient/api/C;

    .line 35
    .line 36
    invoke-direct {v3, v0, v1, v2}, Lcom/android/billingclient/api/C;-><init>(Lt0/a;Landroid/content/Context;Leu/faircode/netguard/IAB;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v3, Lcom/android/billingclient/api/c;

    .line 41
    .line 42
    invoke-direct {v3, v0, v1, v2}, Lcom/android/billingclient/api/c;-><init>(Lt0/a;Landroid/content/Context;Leu/faircode/netguard/IAB;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Lt0/a;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/billingclient/api/a;->b:Landroid/content/Context;

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/android/billingclient/api/a;->d()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    new-instance v3, Lcom/android/billingclient/api/C;

    .line 57
    .line 58
    invoke-direct {v3, v0, v1}, Lcom/android/billingclient/api/C;-><init>(Lt0/a;Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance v3, Lcom/android/billingclient/api/c;

    .line 63
    .line 64
    invoke-direct {v3, v0, v1}, Lcom/android/billingclient/api/c;-><init>(Lt0/a;Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-object v3

    .line 68
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string v1, "Pending purchases for one-time products must be supported."

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string v1, "Please provide a valid listener for purchases updates."

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    const-string v1, "Please provide a valid Context."

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method public final b()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, LB/m;

    .line 2
    .line 3
    invoke-direct {v0}, LB/m;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LB/m;->b()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, LB/m;->a()Lt0/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/billingclient/api/a;->a:Lt0/a;

    .line 14
    .line 15
    return-void
.end method

.method public final c(Leu/faircode/netguard/IAB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/a;->c:Leu/faircode/netguard/IAB;

    return-void
.end method
