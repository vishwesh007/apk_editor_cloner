.class Leu/faircode/netguard/ActivitySettings$12;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivitySettings;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivitySettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$12;->this$0:Leu/faircode/netguard/ActivitySettings;

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
    .locals 0

    .line 1
    invoke-static {p2}, Leu/faircode/netguard/Util;->logExtras(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$12;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 5
    .line 6
    invoke-static {p1}, Leu/faircode/netguard/ActivitySettings;->access$400(Leu/faircode/netguard/ActivitySettings;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
