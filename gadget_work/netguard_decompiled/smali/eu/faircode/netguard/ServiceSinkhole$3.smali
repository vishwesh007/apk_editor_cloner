.class Leu/faircode/netguard/ServiceSinkhole$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ServiceSinkhole;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ServiceSinkhole;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$3;->this$0:Leu/faircode/netguard/ServiceSinkhole;

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
    .locals 2

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
    const-string v0, "NetGuard.Service"

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
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$3;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 24
    .line 25
    const-string v1, "android.intent.action.USER_FOREGROUND"

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p1, p2}, Leu/faircode/netguard/ServiceSinkhole;->access$402(Leu/faircode/netguard/ServiceSinkhole;Z)Z

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p2, "User foreground="

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$3;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 46
    .line 47
    invoke-static {p2}, Leu/faircode/netguard/ServiceSinkhole;->access$400(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, " user="

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const v1, 0x186a0

    .line 64
    .line 65
    .line 66
    div-int/2addr p2, v1

    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$3;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 78
    .line 79
    invoke-static {p1}, Leu/faircode/netguard/ServiceSinkhole;->access$400(Leu/faircode/netguard/ServiceSinkhole;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_0

    .line 84
    .line 85
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$3;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 86
    .line 87
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string p2, "enabled"

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    const-wide/16 p1, 0xbb8

    .line 101
    .line 102
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    :catch_0
    const-string p1, "foreground"

    .line 106
    .line 107
    iget-object p2, p0, Leu/faircode/netguard/ServiceSinkhole$3;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 108
    .line 109
    invoke-static {p1, p2}, Leu/faircode/netguard/ServiceSinkhole;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$3;->this$0:Leu/faircode/netguard/ServiceSinkhole;

    .line 114
    .line 115
    const/4 p2, 0x1

    .line 116
    const-string v0, "background"

    .line 117
    .line 118
    invoke-static {v0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole;->stop(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_0
    return-void
.end method
