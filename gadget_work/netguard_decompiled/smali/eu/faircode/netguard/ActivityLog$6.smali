.class Leu/faircode/netguard/ActivityLog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnCloseListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityLog;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityLog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityLog$6;->this$0:Leu/faircode/netguard/ActivityLog;

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
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$6;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/ActivityLog;->access$100(Leu/faircode/netguard/ActivityLog;)Leu/faircode/netguard/AdapterLog;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$6;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 10
    .line 11
    invoke-static {v0}, Leu/faircode/netguard/ActivityLog;->access$100(Leu/faircode/netguard/ActivityLog;)Leu/faircode/netguard/AdapterLog;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    return v0
.end method
