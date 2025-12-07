.class Leu/faircode/netguard/IAB$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/l;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/IAB$3;


# direct methods
.method constructor <init>(Leu/faircode/netguard/IAB$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/IAB$3$1;->this$1:Leu/faircode/netguard/IAB$3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/i;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Leu/faircode/netguard/IAB$3$1;->this$1:Leu/faircode/netguard/IAB$3;

    .line 8
    .line 9
    iget-object p2, p2, Leu/faircode/netguard/IAB$3;->this$0:Leu/faircode/netguard/IAB;

    .line 10
    .line 11
    const-string v0, "onConsumeResponse"

    .line 12
    .line 13
    invoke-static {p2, p1, v0}, Leu/faircode/netguard/IAB;->access$000(Leu/faircode/netguard/IAB;Lcom/android/billingclient/api/i;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p1, "NetGuard.IAB"

    .line 18
    .line 19
    const-string p2, "Consumed"

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method
