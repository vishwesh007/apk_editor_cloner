.class Leu/faircode/netguard/ActivityLog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu/faircode/netguard/DatabaseHelper$LogChangedListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityLog;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityLog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityLog$1;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$1;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 2
    .line 3
    new-instance v1, Leu/faircode/netguard/ActivityLog$1$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Leu/faircode/netguard/ActivityLog$1$1;-><init>(Leu/faircode/netguard/ActivityLog$1;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
