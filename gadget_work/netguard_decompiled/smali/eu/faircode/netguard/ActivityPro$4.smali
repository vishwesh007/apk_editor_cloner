.class Leu/faircode/netguard/ActivityPro$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityPro;

.field final synthetic val$dialog:Landroidx/appcompat/app/n;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityPro;Ljava/lang/String;Landroidx/appcompat/app/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityPro$4;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityPro$4;->val$response:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ActivityPro$4;->val$dialog:Landroidx/appcompat/app/n;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$4;->val$response:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$4;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 19
    .line 20
    const-string v1, "donation"

    .line 21
    .line 22
    invoke-static {v1, p1, v0}, Leu/faircode/netguard/IAB;->setBought(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$4;->val$dialog:Landroidx/appcompat/app/n;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/app/n;->dismiss()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$4;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/app/q;->invalidateOptionsMenu()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$4;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 36
    .line 37
    invoke-static {p1}, Leu/faircode/netguard/ActivityPro;->access$000(Leu/faircode/netguard/ActivityPro;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
