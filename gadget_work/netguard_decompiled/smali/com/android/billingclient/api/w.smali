.class public final synthetic Lcom/android/billingclient/api/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/billingclient/api/C;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/C;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/billingclient/api/w;->d:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/billingclient/api/w;->e:Lcom/android/billingclient/api/C;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/billingclient/api/w;->f:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/billingclient/api/w;->g:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/w;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/w;->e:Lcom/android/billingclient/api/C;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/w;->g:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/billingclient/api/w;->f:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    check-cast v3, LB/a;

    .line 14
    .line 15
    check-cast v2, LB/l;

    .line 16
    .line 17
    invoke-virtual {v1, v3, v2}, Lcom/android/billingclient/api/C;->s0(LB/a;LB/l;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_0
    check-cast v3, Lcom/android/billingclient/api/l;

    .line 22
    .line 23
    check-cast v2, LB/p;

    .line 24
    .line 25
    invoke-virtual {v1, v3, v2}, Lcom/android/billingclient/api/C;->t0(Lcom/android/billingclient/api/l;LB/p;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
