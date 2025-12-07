.class public final synthetic Lcom/android/billingclient/api/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/billingclient/api/c;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/c;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/billingclient/api/o;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/billingclient/api/o;->b:Lcom/android/billingclient/api/c;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/billingclient/api/o;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/billingclient/api/o;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/o;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/billingclient/api/o;->b:Lcom/android/billingclient/api/c;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/billingclient/api/o;->d:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/android/billingclient/api/o;->c:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    check-cast v2, Lcom/android/billingclient/api/C;

    .line 15
    .line 16
    check-cast v4, Landroid/app/Activity;

    .line 17
    .line 18
    check-cast v3, Lcom/android/billingclient/api/g;

    .line 19
    .line 20
    invoke-virtual {v2, v4, v3}, Lcom/android/billingclient/api/C;->D0(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :pswitch_1
    check-cast v4, LB/a;

    .line 26
    .line 27
    check-cast v3, LB/l;

    .line 28
    .line 29
    invoke-virtual {v2, v4, v3}, Lcom/android/billingclient/api/c;->p0(LB/a;LB/l;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :goto_0
    check-cast v4, LB/c;

    .line 34
    .line 35
    check-cast v3, LB/b;

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4}, Lcom/android/billingclient/api/c;->o0(LB/b;LB/c;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
