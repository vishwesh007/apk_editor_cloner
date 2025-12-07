.class public final synthetic Lcom/android/billingclient/api/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/c;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:LB/p;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/c;Ljava/lang/String;Ljava/util/List;LB/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/O;->a:Lcom/android/billingclient/api/c;

    iput-object p2, p0, Lcom/android/billingclient/api/O;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/O;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/android/billingclient/api/O;->d:LB/p;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/O;->a:Lcom/android/billingclient/api/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/O;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/O;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/c;->j0(Ljava/lang/String;Ljava/util/List;)Lcom/android/billingclient/api/K;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/billingclient/api/K;->a()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0}, Lcom/android/billingclient/api/K;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Lcom/android/billingclient/api/F;->a(ILjava/lang/String;)Lcom/android/billingclient/api/i;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lcom/android/billingclient/api/K;->c()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/android/billingclient/api/O;->d:LB/p;

    .line 28
    .line 29
    invoke-interface {v2, v1, v0}, LB/p;->onSkuDetailsResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method
