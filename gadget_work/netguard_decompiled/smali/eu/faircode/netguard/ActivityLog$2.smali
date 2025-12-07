.class Leu/faircode/netguard/ActivityLog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityLog;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityLog;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityLog$2;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityLog$2;->val$prefs:Landroid/content/SharedPreferences;

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
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$2;->val$prefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v0, "log"

    .line 4
    .line 5
    invoke-static {p1, v0, p2}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
