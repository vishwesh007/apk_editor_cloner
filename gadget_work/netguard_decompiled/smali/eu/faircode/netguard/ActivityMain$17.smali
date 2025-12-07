.class Leu/faircode/netguard/ActivityMain$17;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$17;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Received "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "NetGuard.Main"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Leu/faircode/netguard/Util;->logExtras(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "Size"

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object p2, p0, Leu/faircode/netguard/ActivityMain$17;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 31
    .line 32
    invoke-static {p2}, Leu/faircode/netguard/ActivityMain;->access$1100(Leu/faircode/netguard/ActivityMain;)Landroid/widget/ImageView;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const/4 v0, 0x0

    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v2, 0x8

    .line 44
    .line 45
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Leu/faircode/netguard/ActivityMain$17;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 49
    .line 50
    invoke-static {p2}, Leu/faircode/netguard/ActivityMain;->access$100(Leu/faircode/netguard/ActivityMain;)Landroid/widget/ImageView;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    const/16 v0, 0x8

    .line 57
    .line 58
    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
