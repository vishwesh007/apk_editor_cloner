.class Leu/faircode/netguard/ActivitySettings$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivitySettings;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivitySettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$5;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$5;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 2
    .line 3
    invoke-static {p1}, Leu/faircode/netguard/ActivitySettings;->access$100(Leu/faircode/netguard/ActivitySettings;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {p1, v0, v1}, Landroidx/activity/k;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method
