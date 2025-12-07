.class Leu/faircode/netguard/ActivityMain$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/e;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$6;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$6;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/Rule;->clearCache(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$6;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "pull"

    .line 10
    .line 11
    invoke-static {v2, v0, v1}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$6;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Leu/faircode/netguard/ActivityMain;->access$600(Leu/faircode/netguard/ActivityMain;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
