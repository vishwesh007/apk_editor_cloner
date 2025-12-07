.class Leu/faircode/netguard/ActivityPro$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityPro;

.field final synthetic val$challenge:Ljava/lang/String;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityPro;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityPro$3;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityPro$3;->val$challenge:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$3;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 2
    .line 3
    const-string v0, "clipboard"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/content/ClipboardManager;

    .line 10
    .line 11
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$3;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 12
    .line 13
    const v1, 0x7f100137

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Leu/faircode/netguard/ActivityPro$3;->val$challenge:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$3;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 30
    .line 31
    const v0, 0x1040001

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
