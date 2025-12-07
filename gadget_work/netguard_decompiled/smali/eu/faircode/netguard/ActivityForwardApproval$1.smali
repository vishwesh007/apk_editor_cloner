.class Leu/faircode/netguard/ActivityForwardApproval$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityForwardApproval;

.field final synthetic val$dport:I

.field final synthetic val$protocol:I

.field final synthetic val$raddr:Ljava/lang/String;

.field final synthetic val$rport:I

.field final synthetic val$ruid:I


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityForwardApproval;IILjava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->this$0:Leu/faircode/netguard/ActivityForwardApproval;

    .line 2
    .line 3
    iput p2, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$protocol:I

    .line 4
    .line 5
    iput p3, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$dport:I

    .line 6
    .line 7
    iput-object p4, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$raddr:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$rport:I

    .line 10
    .line 11
    iput p6, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$ruid:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->this$0:Leu/faircode/netguard/ActivityForwardApproval;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "eu.faircode.netguard.START_PORT_FORWARD"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const-string v0, " port "

    .line 18
    .line 19
    const-string v1, "NetGuard.Forward"

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Start forwarding protocol "

    .line 26
    .line 27
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$protocol:I

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v0, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$dport:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " to "

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$raddr:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, "/"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v0, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$rport:I

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " uid "

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v0, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$ruid:I

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->this$0:Leu/faircode/netguard/ActivityForwardApproval;

    .line 81
    .line 82
    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget p1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$protocol:I

    .line 87
    .line 88
    iget v1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$dport:I

    .line 89
    .line 90
    invoke-virtual {v0, p1, v1}, Leu/faircode/netguard/DatabaseHelper;->deleteForward(II)V

    .line 91
    .line 92
    .line 93
    iget v1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$protocol:I

    .line 94
    .line 95
    iget v2, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$dport:I

    .line 96
    .line 97
    iget-object v3, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$raddr:Ljava/lang/String;

    .line 98
    .line 99
    iget v4, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$rport:I

    .line 100
    .line 101
    iget v5, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$ruid:I

    .line 102
    .line 103
    invoke-virtual/range {v0 .. v5}, Leu/faircode/netguard/DatabaseHelper;->addForward(IILjava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->this$0:Leu/faircode/netguard/ActivityForwardApproval;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v2, "eu.faircode.netguard.STOP_PORT_FORWARD"

    .line 118
    .line 119
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_1

    .line 124
    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v2, "Stop forwarding protocol "

    .line 128
    .line 129
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget v2, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$protocol:I

    .line 133
    .line 134
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget v0, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$dport:I

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->this$0:Leu/faircode/netguard/ActivityForwardApproval;

    .line 153
    .line 154
    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget v0, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$protocol:I

    .line 159
    .line 160
    iget v1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->val$dport:I

    .line 161
    .line 162
    invoke-virtual {p1, v0, v1}, Leu/faircode/netguard/DatabaseHelper;->deleteForward(II)V

    .line 163
    .line 164
    .line 165
    :cond_1
    :goto_0
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->this$0:Leu/faircode/netguard/ActivityForwardApproval;

    .line 166
    .line 167
    const/4 v0, 0x0

    .line 168
    const-string v1, "forwarding"

    .line 169
    .line 170
    invoke-static {v1, p1, v0}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwardApproval$1;->this$0:Leu/faircode/netguard/ActivityForwardApproval;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 176
    .line 177
    .line 178
    return-void
.end method
