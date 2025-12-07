.class Leu/faircode/netguard/ActivityMain$16;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Received "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "NetGuard.Main"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Leu/faircode/netguard/Util;->logExtras(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 24
    .line 25
    invoke-static {p1}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_5

    .line 30
    .line 31
    const-string p1, "Connected"

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    const-string v0, "Metered"

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 48
    .line 49
    invoke-static {v1}, Leu/faircode/netguard/ActivityMain;->access$1100(Leu/faircode/netguard/ActivityMain;)Landroid/widget/ImageView;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 54
    .line 55
    invoke-static {v2}, Leu/faircode/netguard/Util;->isNetworkActive(Landroid/content/Context;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    const v2, 0x7f080094

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const v2, 0x7f080095

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/4 v2, 0x4

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 86
    .line 87
    invoke-static {p1}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Leu/faircode/netguard/AdapterRule;->setMobileActive()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 96
    .line 97
    invoke-static {p1}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Leu/faircode/netguard/AdapterRule;->setWifiActive()V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 105
    .line 106
    invoke-static {p1}, Leu/faircode/netguard/ActivityMain;->access$500(Leu/faircode/netguard/ActivityMain;)Landroid/widget/ImageView;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p2, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 111
    .line 112
    invoke-static {p2}, Leu/faircode/netguard/Util;->isMeteredNetwork(Landroid/content/Context;)Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_2

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    const/4 v1, 0x4

    .line 120
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 125
    .line 126
    invoke-static {p1}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Leu/faircode/netguard/AdapterRule;->setDisconnected()V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 134
    .line 135
    invoke-static {p1}, Leu/faircode/netguard/ActivityMain;->access$500(Leu/faircode/netguard/ActivityMain;)Landroid/widget/ImageView;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$16;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 144
    .line 145
    const/4 p2, 0x0

    .line 146
    invoke-static {p1, p2}, Leu/faircode/netguard/ActivityMain;->access$600(Leu/faircode/netguard/ActivityMain;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_3
    return-void
.end method
