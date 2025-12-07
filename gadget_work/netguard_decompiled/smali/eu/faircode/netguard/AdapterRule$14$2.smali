.class Leu/faircode/netguard/AdapterRule$14$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/AdapterRule$14;

.field final synthetic val$cbLogging:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule$14;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$14$2;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$14$2;->val$cbLogging:Landroid/widget/CheckBox;

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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14$2;->val$cbLogging:Landroid/widget/CheckBox;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14$2;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 10
    .line 11
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$14;->val$prefs:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    const-string v0, "filter"

    .line 14
    .line 15
    invoke-static {p1, v0, p2}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14$2;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 19
    .line 20
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$14;->val$context:Landroid/content/Context;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    const-string v0, "changed filter"

    .line 24
    .line 25
    invoke-static {v0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14$2;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 29
    .line 30
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$14;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
