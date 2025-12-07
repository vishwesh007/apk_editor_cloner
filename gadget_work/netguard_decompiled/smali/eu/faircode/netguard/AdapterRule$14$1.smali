.class Leu/faircode/netguard/AdapterRule$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/AdapterRule$14;

.field final synthetic val$cbNotify:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule$14;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$14$1;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$14$1;->val$cbNotify:Landroid/widget/CheckBox;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14$1;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 2
    .line 3
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$14;->val$prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    const-string v0, "log_app"

    .line 6
    .line 7
    invoke-static {p1, v0, p2}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14$1;->val$cbNotify:Landroid/widget/CheckBox;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Leu/faircode/netguard/AdapterRule$14$1;->val$cbNotify:Landroid/widget/CheckBox;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Leu/faircode/netguard/AdapterRule$14$1;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 24
    .line 25
    iget-object p2, p2, Leu/faircode/netguard/AdapterRule$14;->val$prefs:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    const-string v0, "notify_access"

    .line 28
    .line 29
    invoke-static {p2, v0, p1}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p2, p0, Leu/faircode/netguard/AdapterRule$14$1;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 33
    .line 34
    iget-object p2, p2, Leu/faircode/netguard/AdapterRule$14;->val$context:Landroid/content/Context;

    .line 35
    .line 36
    const-string v0, "changed notify"

    .line 37
    .line 38
    invoke-static {v0, p2, p1}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14$1;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 42
    .line 43
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$14;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
