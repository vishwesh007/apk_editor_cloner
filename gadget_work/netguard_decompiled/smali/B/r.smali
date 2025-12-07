.class public final synthetic LB/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LB/l;

.field public final synthetic b:LB/a;


# direct methods
.method public synthetic constructor <init>(LB/a;LB/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LB/r;->a:LB/l;

    iput-object p1, p0, LB/r;->b:LB/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, LB/r;->a:LB/l;

    .line 2
    .line 3
    iget-object v1, p0, LB/r;->b:LB/a;

    .line 4
    .line 5
    check-cast p1, Lcom/android/billingclient/api/i;

    .line 6
    .line 7
    invoke-virtual {v1}, LB/a;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, p1, v1}, LB/l;->onConsumeResponse(Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
