.class Leu/faircode/netguard/ActivityForwarding$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivityForwarding$2;

.field final synthetic val$dport:I

.field final synthetic val$protocol:I


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityForwarding$2;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->this$1:Leu/faircode/netguard/ActivityForwarding$2;

    .line 2
    .line 3
    iput p2, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->val$protocol:I

    .line 4
    .line 5
    iput p3, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->val$dport:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0900d0

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->this$1:Leu/faircode/netguard/ActivityForwarding$2;

    .line 12
    .line 13
    iget-object p1, p1, Leu/faircode/netguard/ActivityForwarding$2;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 14
    .line 15
    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget v0, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->val$protocol:I

    .line 20
    .line 21
    iget v2, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->val$dport:I

    .line 22
    .line 23
    invoke-virtual {p1, v0, v2}, Leu/faircode/netguard/DatabaseHelper;->deleteForward(II)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->this$1:Leu/faircode/netguard/ActivityForwarding$2;

    .line 27
    .line 28
    iget-object p1, p1, Leu/faircode/netguard/ActivityForwarding$2;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 29
    .line 30
    const-string v0, "forwarding"

    .line 31
    .line 32
    invoke-static {v0, p1, v1}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->this$1:Leu/faircode/netguard/ActivityForwarding$2;

    .line 36
    .line 37
    iget-object p1, p1, Leu/faircode/netguard/ActivityForwarding$2;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 38
    .line 39
    new-instance v0, Leu/faircode/netguard/AdapterForwarding;

    .line 40
    .line 41
    iget-object v2, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->this$1:Leu/faircode/netguard/ActivityForwarding$2;

    .line 42
    .line 43
    iget-object v2, v2, Leu/faircode/netguard/ActivityForwarding$2;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 44
    .line 45
    invoke-static {v2}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Leu/faircode/netguard/DatabaseHelper;->getForwarding()Landroid/database/Cursor;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v0, v2, v3}, Leu/faircode/netguard/AdapterForwarding;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Leu/faircode/netguard/ActivityForwarding;->access$002(Leu/faircode/netguard/ActivityForwarding;Leu/faircode/netguard/AdapterForwarding;)Leu/faircode/netguard/AdapterForwarding;

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->this$1:Leu/faircode/netguard/ActivityForwarding$2;

    .line 60
    .line 61
    iget-object p1, p1, Leu/faircode/netguard/ActivityForwarding$2;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 62
    .line 63
    invoke-static {p1}, Leu/faircode/netguard/ActivityForwarding;->access$100(Leu/faircode/netguard/ActivityForwarding;)Landroid/widget/ListView;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding$2$1;->this$1:Leu/faircode/netguard/ActivityForwarding$2;

    .line 68
    .line 69
    iget-object v0, v0, Leu/faircode/netguard/ActivityForwarding$2;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 70
    .line 71
    invoke-static {v0}, Leu/faircode/netguard/ActivityForwarding;->access$000(Leu/faircode/netguard/ActivityForwarding;)Leu/faircode/netguard/AdapterForwarding;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return v1
.end method
