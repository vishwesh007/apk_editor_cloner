.class Leu/faircode/netguard/ActivityForwarding$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityForwarding;

.field final synthetic val$task:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityForwarding;Landroid/os/AsyncTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding$5;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityForwarding$5;->val$task:Landroid/os/AsyncTask;

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
    .locals 1

    .line 1
    iget-object p2, p0, Leu/faircode/netguard/ActivityForwarding$5;->val$task:Landroid/os/AsyncTask;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
