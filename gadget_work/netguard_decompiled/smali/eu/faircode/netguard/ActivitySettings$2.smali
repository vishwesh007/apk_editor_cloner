.class Leu/faircode/netguard/ActivitySettings$2;
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
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$2;->this$0:Leu/faircode/netguard/ActivitySettings;

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
    .locals 3

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$2;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$2;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 6
    .line 7
    const-class v2, Leu/faircode/netguard/ActivityForwarding;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1
.end method
