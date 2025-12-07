.class public final synthetic LB/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LB/c;


# direct methods
.method public synthetic constructor <init>(LB/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/t;->a:LB/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, LB/t;->a:LB/c;

    check-cast p1, Lcom/android/billingclient/api/i;

    invoke-interface {v0, p1}, LB/c;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/i;)V

    return-void
.end method
