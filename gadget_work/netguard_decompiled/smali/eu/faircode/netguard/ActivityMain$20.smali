.class Leu/faircode/netguard/ActivityMain$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;

.field final synthetic val$searchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$20;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityMain$20;->val$searchView:Landroidx/appcompat/widget/SearchView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$20;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$20;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 10
    .line 11
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Leu/faircode/netguard/AdapterRule;->getFilter()Landroid/widget/Filter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$20;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$20;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 10
    .line 11
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Leu/faircode/netguard/AdapterRule;->getFilter()Landroid/widget/Filter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$20;->val$searchView:Landroidx/appcompat/widget/SearchView;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1
.end method
