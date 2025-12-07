.class Leu/faircode/netguard/AdapterRule$14$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/AdapterRule$14;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule$14;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$14$3;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14$3;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 2
    .line 3
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$14;->val$prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    const-string v0, "notify_access"

    .line 6
    .line 7
    invoke-static {p1, v0, p2}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14$3;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 11
    .line 12
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$14;->val$context:Landroid/content/Context;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    const-string v0, "changed notify"

    .line 16
    .line 17
    invoke-static {v0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$14$3;->this$1:Leu/faircode/netguard/AdapterRule$14;

    .line 21
    .line 22
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$14;->this$0:Leu/faircode/netguard/AdapterRule;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
