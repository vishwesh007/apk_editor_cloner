.class Leu/faircode/netguard/ActivityMain$25$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivityMain$25;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain$25;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$25$1;->this$1:Leu/faircode/netguard/ActivityMain$25;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$25$1;->this$1:Leu/faircode/netguard/ActivityMain$25;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain$25;->access$1200(Leu/faircode/netguard/ActivityMain$25;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$25$1;->this$1:Leu/faircode/netguard/ActivityMain$25;

    .line 10
    .line 11
    iget-object v0, v0, Leu/faircode/netguard/ActivityMain$25;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 12
    .line 13
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1300(Leu/faircode/netguard/ActivityMain;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
