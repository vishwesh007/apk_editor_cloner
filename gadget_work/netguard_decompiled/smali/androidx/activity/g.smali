.class final Landroidx/activity/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:I

.field final synthetic e:Landroid/content/IntentSender$SendIntentException;

.field final synthetic f:Landroidx/activity/h;


# direct methods
.method constructor <init>(Landroidx/activity/h;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/g;->f:Landroidx/activity/h;

    .line 2
    .line 3
    iput p2, p0, Landroidx/activity/g;->d:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/activity/g;->e:Landroid/content/IntentSender$SendIntentException;

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
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/activity/g;->e:Landroid/content/IntentSender$SendIntentException;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Landroidx/activity/g;->f:Landroidx/activity/h;

    .line 21
    .line 22
    iget v2, p0, Landroidx/activity/g;->d:I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v2, v3, v0}, Landroidx/activity/result/i;->b(IILandroid/content/Intent;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
