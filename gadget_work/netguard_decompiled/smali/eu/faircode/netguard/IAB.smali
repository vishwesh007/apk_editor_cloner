.class public Leu/faircode/netguard/IAB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private billingClient:Lcom/android/billingclient/api/b;

.field private context:Landroid/content/Context;

.field private delegate:Leu/faircode/netguard/IAB$Delegate;


# direct methods
.method public constructor <init>(Leu/faircode/netguard/IAB$Delegate;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Leu/faircode/netguard/IAB;->context:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p1, p0, Leu/faircode/netguard/IAB;->delegate:Leu/faircode/netguard/IAB$Delegate;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic access$000(Leu/faircode/netguard/IAB;Lcom/android/billingclient/api/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leu/faircode/netguard/IAB;->reportError(Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Leu/faircode/netguard/IAB;)Lcom/android/billingclient/api/b;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/IAB;->billingClient:Lcom/android/billingclient/api/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Leu/faircode/netguard/IAB;Lcom/android/billingclient/api/b;)Lcom/android/billingclient/api/b;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/IAB;->billingClient:Lcom/android/billingclient/api/b;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Leu/faircode/netguard/IAB;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/IAB;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Leu/faircode/netguard/IAB;)Leu/faircode/netguard/IAB$Delegate;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/IAB;->delegate:Leu/faircode/netguard/IAB$Delegate;

    .line 2
    .line 3
    return-object p0
.end method

.method private static getBillingResponseText(Lcom/android/billingclient/api/i;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->b()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    const-string p0, "ITEM_NOT_OWNED"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    const-string p0, "ITEM_ALREADY_OWNED"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_2
    const-string p0, "ERROR"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_3
    const-string p0, "DEVELOPER_ERROR"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_4
    const-string p0, "ITEM_UNAVAILABLE"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_5
    const-string p0, "BILLING_UNAVAILABLE"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_6
    const-string p0, "SERVICE_UNAVAILABLE"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_7
    const-string p0, "USER_CANCELED"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_8
    const-string p0, "OK"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_9
    const-string p0, "SERVICE_DISCONNECTED"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_a
    const-string p0, "FEATURE_NOT_SUPPORTED"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_b
    const-string p0, "SERVICE_TIMEOUT"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isPurchased(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6

    .line 1
    const-string v0, "support2"

    .line 2
    .line 3
    const-string v1, "support1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {p1}, Leu/faircode/netguard/Util;->isDebuggable(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v5, "debug_iab"

    .line 18
    .line 19
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    return v4

    .line 26
    :cond_0
    const-string v3, "IAB"

    .line 27
    .line 28
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    const-string p0, "pro1"

    .line 52
    .line 53
    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_2

    .line 58
    .line 59
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_2

    .line 64
    .line 65
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_2

    .line 70
    .line 71
    const-string p0, "donation"

    .line 72
    .line 73
    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_2

    .line 78
    .line 79
    const-string p0, "android.test.purchased"

    .line 80
    .line 81
    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    :cond_2
    const/4 v2, 0x1

    .line 88
    :cond_3
    return v2

    .line 89
    :cond_4
    :goto_0
    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return p0

    .line 94
    :catch_0
    return v2
.end method

.method public static isPurchasedAny(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Leu/faircode/netguard/Util;->isDebuggable(Landroid/content/Context;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "debug_iab"

    .line 14
    .line 15
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    xor-int/2addr p0, v2

    .line 20
    return p0

    .line 21
    :cond_0
    const-string v1, "IAB"

    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    return v2

    .line 58
    :catch_0
    :cond_2
    return v0
.end method

.method private reportError(Lcom/android/billingclient/api/i;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Leu/faircode/netguard/IAB;->getBillingResponseText(Lcom/android/billingclient/api/i;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    const-string v1, " Is the Play Store app logged into the account used to install the app?"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/fragment/app/h0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, " "

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :goto_0
    const-string v0, "NetGuard.IAB"

    .line 70
    .line 71
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 v0, 0x1

    .line 81
    if-ne p1, v0, :cond_3

    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    iget-object p1, p0, Leu/faircode/netguard/IAB;->delegate:Leu/faircode/netguard/IAB$Delegate;

    .line 85
    .line 86
    invoke-interface {p1, p2}, Leu/faircode/netguard/IAB$Delegate;->onError(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public static setBought(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Bought "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "NetGuard.IAB"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string v0, "IAB"

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .line 1
    const-string v0, "NetGuard.IAB"

    .line 2
    .line 3
    const-string v1, "Bind"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Leu/faircode/netguard/IAB;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/billingclient/api/b;->e(Landroid/content/Context;)Lcom/android/billingclient/api/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->b()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/a;->c(Leu/faircode/netguard/IAB;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->a()Lcom/android/billingclient/api/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Leu/faircode/netguard/IAB;->billingClient:Lcom/android/billingclient/api/b;

    .line 25
    .line 26
    new-instance v1, Leu/faircode/netguard/IAB$1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Leu/faircode/netguard/IAB$1;-><init>(Leu/faircode/netguard/IAB;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/b;->h(LB/h;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/i;Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "onPurchasesUpdated"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, v1}, Leu/faircode/netguard/IAB;->reportError(Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p1, "NetGuard.IAB"

    .line 14
    .line 15
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Leu/faircode/netguard/IAB;->context:Landroid/content/Context;

    .line 19
    .line 20
    const-string v1, "IAB"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, "donation"

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v4, "removing SKU="

    .line 66
    .line 67
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    if-eqz p2, :cond_4

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, LB/n;

    .line 101
    .line 102
    invoke-virtual {v2}, LB/n;->a()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    const/4 v4, 0x1

    .line 107
    if-ne v3, v4, :cond_3

    .line 108
    .line 109
    invoke-virtual {v2}, LB/n;->d()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    invoke-virtual {v2}, LB/n;->c()Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Ljava/lang/String;

    .line 134
    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v6, "adding SKU="

    .line 138
    .line 139
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    .line 158
    .line 159
    if-eqz p2, :cond_6

    .line 160
    .line 161
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_6

    .line 170
    .line 171
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, LB/n;

    .line 176
    .line 177
    invoke-virtual {v0}, LB/n;->d()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_5

    .line 182
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v2, "Acknowledging "

    .line 186
    .line 187
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, LB/n;->c()Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    const-string v3, ","

    .line 195
    .line 196
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Leu/faircode/netguard/IAB;->billingClient:Lcom/android/billingclient/api/b;

    .line 211
    .line 212
    new-instance v2, LB/a;

    .line 213
    .line 214
    invoke-direct {v2}, LB/a;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, LB/n;->b()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v2, v3}, LB/a;->d(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, LB/a;->a()LB/b;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    new-instance v3, Leu/faircode/netguard/IAB$2;

    .line 229
    .line 230
    invoke-direct {v3, p0, v0}, Leu/faircode/netguard/IAB$2;-><init>(Leu/faircode/netguard/IAB;LB/n;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/b;->a(LB/b;LB/c;)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_6
    const-string p2, "Report ready"

    .line 238
    .line 239
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Leu/faircode/netguard/IAB;->delegate:Leu/faircode/netguard/IAB$Delegate;

    .line 243
    .line 244
    invoke-interface {p1, p0}, Leu/faircode/netguard/IAB$Delegate;->onReady(Leu/faircode/netguard/IAB;)V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method public startPurchase(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "android.test.purchased"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "inapp"

    .line 8
    .line 9
    const-string v2, "NetGuard.IAB"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p2, p1}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p3, "Consuming "

    .line 22
    .line 23
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Leu/faircode/netguard/IAB;->context:Landroid/content/Context;

    .line 37
    .line 38
    const-string p3, "IAB"

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Leu/faircode/netguard/IAB;->delegate:Leu/faircode/netguard/IAB$Delegate;

    .line 57
    .line 58
    invoke-interface {p1, p0}, Leu/faircode/netguard/IAB$Delegate;->onReady(Leu/faircode/netguard/IAB;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Leu/faircode/netguard/IAB;->billingClient:Lcom/android/billingclient/api/b;

    .line 62
    .line 63
    new-instance p2, Leu/faircode/netguard/IAB$3;

    .line 64
    .line 65
    invoke-direct {p2, p0}, Leu/faircode/netguard/IAB$3;-><init>(Leu/faircode/netguard/IAB;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, p2}, Lcom/android/billingclient/api/b;->f(Ljava/lang/String;LB/o;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    const-string v0, "querySkuDetailsAsync/purchase"

    .line 73
    .line 74
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    if-eqz p3, :cond_1

    .line 83
    .line 84
    const-string v2, "support1"

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    const-string v2, "support2"

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const-string v2, "log"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    const-string v2, "filter"

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    const-string v2, "notify"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    const-string v2, "speed"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    const-string v2, "theme"

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    const-string v2, "pro1"

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :goto_0
    new-instance v2, Lcom/android/billingclient/api/k;

    .line 126
    .line 127
    invoke-direct {v2}, Lcom/android/billingclient/api/k;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/k;->b(Ljava/util/ArrayList;)V

    .line 131
    .line 132
    .line 133
    if-eqz p3, :cond_2

    .line 134
    .line 135
    const-string v1, "subs"

    .line 136
    .line 137
    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/k;->c(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p3, p0, Leu/faircode/netguard/IAB;->billingClient:Lcom/android/billingclient/api/b;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/android/billingclient/api/k;->a()Lcom/android/billingclient/api/l;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v1, Leu/faircode/netguard/IAB$4;

    .line 147
    .line 148
    invoke-direct {v1, p0, p2, p1}, Leu/faircode/netguard/IAB$4;-><init>(Leu/faircode/netguard/IAB;Ljava/lang/String;Landroid/app/Activity;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v0, v1}, Lcom/android/billingclient/api/b;->g(Lcom/android/billingclient/api/l;LB/p;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/IAB;->billingClient:Lcom/android/billingclient/api/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "NetGuard.IAB"

    .line 6
    .line 7
    const-string v1, "Unbind"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Leu/faircode/netguard/IAB;->billingClient:Lcom/android/billingclient/api/b;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/billingclient/api/b;->c()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Leu/faircode/netguard/IAB;->billingClient:Lcom/android/billingclient/api/b;

    .line 19
    .line 20
    :cond_0
    return-void
.end method
