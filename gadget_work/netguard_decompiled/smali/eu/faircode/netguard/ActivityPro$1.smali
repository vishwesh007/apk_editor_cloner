.class Leu/faircode/netguard/ActivityPro$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityPro;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityPro;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityPro$1;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-string v0, "pro1"

    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :sswitch_0
    const-string v0, "theme"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_1
    const-string v0, "speed"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_2
    const-string v0, "notify"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_3
    const-string v0, "log"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_4
    const-string v0, "filter"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :sswitch_5
    const-string v0, "support2"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :sswitch_6
    const-string v0, "support1"

    .line 30
    .line 31
    :goto_0
    :sswitch_7
    new-instance p1, Landroid/content/Intent;

    .line 32
    .line 33
    const-string v1, "android.intent.action.VIEW"

    .line 34
    .line 35
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "http://www.netguard.me/#"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$1;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$1;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x7f090152 -> :sswitch_7
        0x7f09015b -> :sswitch_6
        0x7f09015d -> :sswitch_5
        0x7f090166 -> :sswitch_4
        0x7f09016e -> :sswitch_3
        0x7f090175 -> :sswitch_2
        0x7f090187 -> :sswitch_1
        0x7f09018b -> :sswitch_0
    .end sparse-switch
.end method
