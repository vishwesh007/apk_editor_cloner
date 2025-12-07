.class Leu/faircode/netguard/ActivityMain$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnCloseListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$21;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$21;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Search"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$21;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 13
    .line 14
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$21;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 21
    .line 22
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Leu/faircode/netguard/AdapterRule;->getFilter()Landroid/widget/Filter;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    return v0
.end method
