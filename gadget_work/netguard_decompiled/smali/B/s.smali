.class public final synthetic LB/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LB/p;


# direct methods
.method public synthetic constructor <init>(LB/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/s;->a:LB/p;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, LB/s;->a:LB/p;

    .line 2
    .line 3
    check-cast p1, Lcom/android/billingclient/api/i;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p1, v1}, LB/p;->onSkuDetailsResponse(Lcom/android/billingclient/api/i;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
