.class public final synthetic Landroidx/activity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/activity/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/activity/c;->a:I

    iget-object v1, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/activity/k;

    invoke-static {v1}, Landroidx/activity/k;->b(Landroidx/activity/k;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :goto_0
    check-cast v1, Landroidx/lifecycle/J;

    invoke-static {v1}, Landroidx/lifecycle/J;->a(Landroidx/lifecycle/J;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
