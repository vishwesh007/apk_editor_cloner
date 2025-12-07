.class Leu/faircode/netguard/ActivitySettings$1;
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
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$1;->this$0:Leu/faircode/netguard/ActivitySettings;

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
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$1;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 2
    .line 3
    new-instance v0, Leu/faircode/netguard/ActivitySettings$1$1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivitySettings$1$1;-><init>(Leu/faircode/netguard/ActivitySettings$1;)V

    .line 6
    .line 7
    .line 8
    const v1, 0x7f1000c7

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1, v0}, Leu/faircode/netguard/Util;->areYouSure(Landroid/content/Context;ILeu/faircode/netguard/Util$DoubtListener;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return p1
.end method
