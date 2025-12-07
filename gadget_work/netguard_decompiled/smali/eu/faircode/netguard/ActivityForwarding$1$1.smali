.class Leu/faircode/netguard/ActivityForwarding$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivityForwarding$1;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityForwarding$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding$1$1;->this$1:Leu/faircode/netguard/ActivityForwarding$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding$1$1;->this$1:Leu/faircode/netguard/ActivityForwarding$1;

    .line 2
    .line 3
    iget-object v0, v0, Leu/faircode/netguard/ActivityForwarding$1;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 4
    .line 5
    invoke-static {v0}, Leu/faircode/netguard/ActivityForwarding;->access$000(Leu/faircode/netguard/ActivityForwarding;)Leu/faircode/netguard/AdapterForwarding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding$1$1;->this$1:Leu/faircode/netguard/ActivityForwarding$1;

    .line 12
    .line 13
    iget-object v0, v0, Leu/faircode/netguard/ActivityForwarding$1;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 14
    .line 15
    invoke-static {v0}, Leu/faircode/netguard/ActivityForwarding;->access$000(Leu/faircode/netguard/ActivityForwarding;)Leu/faircode/netguard/AdapterForwarding;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Leu/faircode/netguard/ActivityForwarding$1$1;->this$1:Leu/faircode/netguard/ActivityForwarding$1;

    .line 20
    .line 21
    iget-object v1, v1, Leu/faircode/netguard/ActivityForwarding$1;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 22
    .line 23
    invoke-static {v1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Leu/faircode/netguard/DatabaseHelper;->getForwarding()Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
