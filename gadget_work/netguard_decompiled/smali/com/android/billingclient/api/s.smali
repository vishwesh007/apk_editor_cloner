.class final Lcom/android/billingclient/api/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:LB/o;

.field final synthetic c:Lcom/android/billingclient/api/c;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/c;Ljava/lang/String;LB/o;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/billingclient/api/s;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/s;->b:LB/o;

    iput-object p1, p0, Lcom/android/billingclient/api/s;->c:Lcom/android/billingclient/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/s;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/s;->c:Lcom/android/billingclient/api/c;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/billingclient/api/c;->R(Lcom/android/billingclient/api/c;Ljava/lang/String;)Lcom/android/billingclient/api/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/billingclient/api/l;->e()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/billingclient/api/s;->b:LB/o;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/billingclient/api/l;->c()Lcom/android/billingclient/api/i;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lcom/android/billingclient/api/l;->e()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v2, v1, v0}, LB/o;->onQueryPurchasesResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/l;->c()Lcom/android/billingclient/api/i;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/T;->m()Lcom/google/android/gms/internal/play_billing/T;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v2, v0, v1}, LB/o;->onQueryPurchasesResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 v0, 0x0

    .line 41
    return-object v0
.end method
