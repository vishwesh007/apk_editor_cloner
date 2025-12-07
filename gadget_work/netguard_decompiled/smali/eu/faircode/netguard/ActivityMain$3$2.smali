.class Leu/faircode/netguard/ActivityMain$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivityMain$3;

.field final synthetic val$prepare:Landroid/content/Intent;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain$3;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$3$2;->this$1:Leu/faircode/netguard/ActivityMain$3;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityMain$3$2;->val$prepare:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$3$2;->this$1:Leu/faircode/netguard/ActivityMain$3;

    .line 2
    .line 3
    iget-object p1, p1, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 4
    .line 5
    invoke-static {p1}, Leu/faircode/netguard/ActivityMain;->access$400(Leu/faircode/netguard/ActivityMain;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p2, "Start intent="

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Leu/faircode/netguard/ActivityMain$3$2;->val$prepare:Landroid/content/Intent;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "NetGuard.Main"

    .line 28
    .line 29
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    :try_start_0
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$3$2;->this$1:Leu/faircode/netguard/ActivityMain$3;

    .line 34
    .line 35
    iget-object v0, v0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 36
    .line 37
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain$3$2;->val$prepare:Landroid/content/Intent;

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Landroidx/activity/k;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "\n"

    .line 50
    .line 51
    invoke-static {v0, v1, v2, v0, p2}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Leu/faircode/netguard/ActivityMain$3$2;->this$1:Leu/faircode/netguard/ActivityMain$3;

    .line 55
    .line 56
    iget-object p2, p2, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p2, p1, v1, v0}, Leu/faircode/netguard/ActivityMain;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$3$2;->this$1:Leu/faircode/netguard/ActivityMain$3;

    .line 64
    .line 65
    iget-object p1, p1, Leu/faircode/netguard/ActivityMain$3;->val$prefs:Landroid/content/SharedPreferences;

    .line 66
    .line 67
    const-string p2, "enabled"

    .line 68
    .line 69
    invoke-static {p1, p2, v1}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    :cond_0
    :goto_0
    return-void
.end method
