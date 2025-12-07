.class Leu/faircode/netguard/ActivityMain$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;

.field final synthetic val$cbDontAsk:Landroid/widget/CheckBox;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$30;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityMain$30;->val$prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ActivityMain$30;->val$cbDontAsk:Landroid/widget/CheckBox;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$30;->val$prefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Leu/faircode/netguard/ActivityMain$30;->val$cbDontAsk:Landroid/widget/CheckBox;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const-string v0, "nodata"

    .line 14
    .line 15
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
