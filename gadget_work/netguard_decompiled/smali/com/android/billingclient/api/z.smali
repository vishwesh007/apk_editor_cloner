.class final Lcom/android/billingclient/api/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/U0;


# instance fields
.field final synthetic a:Ljava/util/function/Consumer;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/android/billingclient/api/C;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/C;ILjava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0

    iput p2, p0, Lcom/android/billingclient/api/z;->d:I

    iput-object p3, p0, Lcom/android/billingclient/api/z;->a:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/billingclient/api/z;->b:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/C;

    .line 19
    .line 20
    iget v1, p0, Lcom/android/billingclient/api/z;->d:I

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lcom/android/billingclient/api/C;->v0(Lcom/android/billingclient/api/C;II)Lcom/android/billingclient/api/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/android/billingclient/api/z;->a:Ljava/util/function/Consumer;

    .line 27
    .line 28
    invoke-static {v0, p1}, LB/f;->m(Ljava/util/function/Consumer;Lcom/android/billingclient/api/i;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/android/billingclient/api/z;->b:Ljava/lang/Runnable;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    .line 2
    .line 3
    const-string v1, "BillingClientTesting"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/z;->c:Lcom/android/billingclient/api/C;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x72

    .line 10
    .line 11
    sget-object v3, Lcom/android/billingclient/api/F;->u:Lcom/android/billingclient/api/i;

    .line 12
    .line 13
    invoke-static {v2, v0, v3}, Lcom/android/billingclient/api/C;->x0(Lcom/android/billingclient/api/C;ILcom/android/billingclient/api/i;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "Asynchronous call to Billing Override Service timed out."

    .line 17
    .line 18
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v0, 0x6b

    .line 23
    .line 24
    sget-object v3, Lcom/android/billingclient/api/F;->u:Lcom/android/billingclient/api/i;

    .line 25
    .line 26
    invoke-static {v2, v0, v3}, Lcom/android/billingclient/api/C;->x0(Lcom/android/billingclient/api/C;ILcom/android/billingclient/api/i;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "An error occurred while retrieving billing override."

    .line 30
    .line 31
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/L0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object p1, p0, Lcom/android/billingclient/api/z;->b:Ljava/lang/Runnable;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
