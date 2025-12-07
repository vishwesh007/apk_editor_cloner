.class Leu/faircode/netguard/ActivityMain$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivityMain$15;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain$15;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$15$1;->this$1:Leu/faircode/netguard/ActivityMain$15;

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
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$15$1;->this$1:Leu/faircode/netguard/ActivityMain$15;

    .line 2
    .line 3
    iget-object v0, v0, Leu/faircode/netguard/ActivityMain$15;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 4
    .line 5
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$15$1;->this$1:Leu/faircode/netguard/ActivityMain$15;

    .line 12
    .line 13
    iget-object v0, v0, Leu/faircode/netguard/ActivityMain$15;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 14
    .line 15
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Leu/faircode/netguard/AdapterRule;->isLive()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$15$1;->this$1:Leu/faircode/netguard/ActivityMain$15;

    .line 26
    .line 27
    iget-object v0, v0, Leu/faircode/netguard/ActivityMain$15;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 28
    .line 29
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
