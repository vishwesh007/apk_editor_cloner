.class final Lcom/android/billingclient/api/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/C;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/C;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/B;->a:Lcom/android/billingclient/api/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string p1, "BillingClientTesting"

    .line 2
    .line 3
    const-string v0, "Billing Override Service connected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/i;->l(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/j;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/android/billingclient/api/B;->a:Lcom/android/billingclient/api/C;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/android/billingclient/api/C;->E0(Lcom/android/billingclient/api/C;Lcom/google/android/gms/internal/play_billing/j;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-static {p2, p1}, Lcom/android/billingclient/api/C;->F0(Lcom/android/billingclient/api/C;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lcom/android/billingclient/api/C;->y0(Lcom/android/billingclient/api/C;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "BillingClientTesting"

    .line 2
    .line 3
    const-string v0, "Billing Override Service disconnected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/L0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/B;->a:Lcom/android/billingclient/api/C;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/android/billingclient/api/C;->E0(Lcom/android/billingclient/api/C;Lcom/google/android/gms/internal/play_billing/j;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-static {v0, p1}, Lcom/android/billingclient/api/C;->F0(Lcom/android/billingclient/api/C;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
