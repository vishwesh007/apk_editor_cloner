.class public final synthetic Lcom/android/billingclient/api/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/billingclient/api/c;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/c;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/billingclient/api/n;->d:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/billingclient/api/n;->e:Lcom/android/billingclient/api/c;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/billingclient/api/n;->f:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/n;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/n;->e:Lcom/android/billingclient/api/c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/n;->f:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v2, Lcom/android/billingclient/api/i;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/c;->L(Lcom/android/billingclient/api/i;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    check-cast v2, LB/o;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/c;->N(LB/o;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :goto_0
    check-cast v2, LB/c;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/c;->K(LB/c;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
