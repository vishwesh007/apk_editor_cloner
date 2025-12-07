.class final Lcom/android/billingclient/api/L;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Z

.field final synthetic c:Lcom/android/billingclient/api/M;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/M;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/L;->c:Lcom/android/billingclient/api/M;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/billingclient/api/L;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method private final d(Landroid/os/Bundle;Lcom/android/billingclient/api/i;I)V
    .locals 3

    .line 1
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v2, p0, Lcom/android/billingclient/api/L;->c:Lcom/android/billingclient/api/M;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_1
    invoke-static {v2}, Lcom/android/billingclient/api/M;->a(Lcom/android/billingclient/api/M;)Lcom/android/billingclient/api/E;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/N1;->a()Lcom/google/android/gms/internal/play_billing/N1;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/d3;->u([BLcom/google/android/gms/internal/play_billing/N1;)Lcom/google/android/gms/internal/play_billing/d3;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p2, Lcom/android/billingclient/api/k;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/k;->d(Lcom/google/android/gms/internal/play_billing/d3;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-static {v2}, Lcom/android/billingclient/api/M;->a(Lcom/android/billingclient/api/M;)Lcom/android/billingclient/api/E;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/16 v0, 0x17

    .line 38
    .line 39
    invoke-static {v0, p3, p2}, Lcom/android/billingclient/api/D;->b(IILcom/android/billingclient/api/i;)Lcom/google/android/gms/internal/play_billing/d3;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p1, Lcom/android/billingclient/api/k;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/k;->d(Lcom/google/android/gms/internal/play_billing/d3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    const-string p1, "BillingBroadcastManager"

    .line 50
    .line 51
    const-string p2, "Failed parsing Api failure."

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/L;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x21

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-lt v0, v1, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/billingclient/api/L;->b:Z

    .line 16
    .line 17
    if-eq v2, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x2

    .line 22
    :goto_0
    invoke-static {p1, p0, p2, v0}, LB/x;->l(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    :goto_1
    iput-boolean v2, p0, Lcom/android/billingclient/api/L;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/L;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const-string v1, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    .line 11
    .line 12
    const/16 v2, 0x21

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-lt v0, v2, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/billingclient/api/L;->b:Z

    .line 18
    .line 19
    if-eq v3, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x2

    .line 24
    :goto_0
    invoke-static {p1, p0, p2, v0}, LB/w;->j(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p0, p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    :goto_1
    iput-boolean v3, p0, Lcom/android/billingclient/api/L;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    .line 38
    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/L;->a:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/billingclient/api/L;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    const-string p1, "BillingBroadcastManager"

    .line 15
    .line 16
    const-string v0, "Receiver is not registered."

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const-string v1, "BillingBroadcastManager"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/billingclient/api/L;->c:Lcom/android/billingclient/api/M;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "Bundle is null."

    .line 13
    .line 14
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/android/billingclient/api/M;->a(Lcom/android/billingclient/api/M;)Lcom/android/billingclient/api/E;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 22
    .line 23
    const/16 v1, 0xb

    .line 24
    .line 25
    invoke-static {v1, v0, p2}, Lcom/android/billingclient/api/D;->b(IILcom/android/billingclient/api/i;)Lcom/google/android/gms/internal/play_billing/d3;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast p1, Lcom/android/billingclient/api/k;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/k;->d(Lcom/google/android/gms/internal/play_billing/d3;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lcom/android/billingclient/api/M;->b(Lcom/android/billingclient/api/M;)Leu/faircode/netguard/IAB;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    invoke-static {v2}, Lcom/android/billingclient/api/M;->b(Lcom/android/billingclient/api/M;)Leu/faircode/netguard/IAB;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p2, v0}, Leu/faircode/netguard/IAB;->onPurchasesUpdated(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/L0;->c(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/i;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string v4, "INTENT_SOURCE"

    .line 58
    .line 59
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v5, "LAUNCH_BILLING_FLOW"

    .line 64
    .line 65
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eq v0, v4, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x2

    .line 73
    :goto_0
    const-string v4, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 74
    .line 75
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_5

    .line 80
    .line 81
    const-string v4, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 82
    .line 83
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const-string v4, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 91
    .line 92
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/android/billingclient/api/i;->b()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_3

    .line 103
    .line 104
    invoke-direct {p0, p1, v3, v0}, Lcom/android/billingclient/api/L;->d(Landroid/os/Bundle;Lcom/android/billingclient/api/i;I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, Lcom/android/billingclient/api/M;->b(Lcom/android/billingclient/api/M;)Leu/faircode/netguard/IAB;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/T;->m()Lcom/google/android/gms/internal/play_billing/T;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p1, v3, p2}, Leu/faircode/netguard/IAB;->onPurchasesUpdated(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const-string p1, "AlternativeBillingListener and UserChoiceBillingListener is null."

    .line 123
    .line 124
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v2}, Lcom/android/billingclient/api/M;->a(Lcom/android/billingclient/api/M;)Lcom/android/billingclient/api/E;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget-object p2, Lcom/android/billingclient/api/F;->k:Lcom/android/billingclient/api/i;

    .line 132
    .line 133
    const/16 v1, 0x4d

    .line 134
    .line 135
    invoke-static {v1, v0, p2}, Lcom/android/billingclient/api/D;->b(IILcom/android/billingclient/api/i;)Lcom/google/android/gms/internal/play_billing/d3;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast p1, Lcom/android/billingclient/api/k;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/k;->d(Lcom/google/android/gms/internal/play_billing/d3;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v2}, Lcom/android/billingclient/api/M;->b(Lcom/android/billingclient/api/M;)Leu/faircode/netguard/IAB;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/T;->m()Lcom/google/android/gms/internal/play_billing/T;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p1, p2, v0}, Leu/faircode/netguard/IAB;->onPurchasesUpdated(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    return-void

    .line 156
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/L0;->f(Landroid/os/Bundle;)Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {v3}, Lcom/android/billingclient/api/i;->b()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_6

    .line 165
    .line 166
    invoke-static {v2}, Lcom/android/billingclient/api/M;->a(Lcom/android/billingclient/api/M;)Lcom/android/billingclient/api/E;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {v0}, Lcom/android/billingclient/api/D;->d(I)Lcom/google/android/gms/internal/play_billing/g3;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast p1, Lcom/android/billingclient/api/k;

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/k;->f(Lcom/google/android/gms/internal/play_billing/g3;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    invoke-direct {p0, p1, v3, v0}, Lcom/android/billingclient/api/L;->d(Landroid/os/Bundle;Lcom/android/billingclient/api/i;I)V

    .line 181
    .line 182
    .line 183
    :goto_2
    invoke-static {v2}, Lcom/android/billingclient/api/M;->b(Lcom/android/billingclient/api/M;)Leu/faircode/netguard/IAB;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1, v3, p2}, Leu/faircode/netguard/IAB;->onPurchasesUpdated(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method
