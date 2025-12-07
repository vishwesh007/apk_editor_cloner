.class Leu/faircode/netguard/ActivityPro$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$2:Leu/faircode/netguard/ActivityPro$2$1;

.field final synthetic val$btnAll:Landroid/widget/Button;

.field final synthetic val$btnDev1:Landroid/widget/Button;

.field final synthetic val$btnDev2:Landroid/widget/Button;

.field final synthetic val$btnFilter:Landroid/widget/Button;

.field final synthetic val$btnLog:Landroid/widget/Button;

.field final synthetic val$btnNotify:Landroid/widget/Button;

.field final synthetic val$btnSpeed:Landroid/widget/Button;

.field final synthetic val$btnTheme:Landroid/widget/Button;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityPro$2$1;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->this$2:Leu/faircode/netguard/ActivityPro$2$1;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnLog:Landroid/widget/Button;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnFilter:Landroid/widget/Button;

    .line 6
    .line 7
    iput-object p4, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnNotify:Landroid/widget/Button;

    .line 8
    .line 9
    iput-object p5, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnSpeed:Landroid/widget/Button;

    .line 10
    .line 11
    iput-object p6, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnTheme:Landroid/widget/Button;

    .line 12
    .line 13
    iput-object p7, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnAll:Landroid/widget/Button;

    .line 14
    .line 15
    iput-object p8, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnDev1:Landroid/widget/Button;

    .line 16
    .line 17
    iput-object p9, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnDev2:Landroid/widget/Button;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnLog:Landroid/widget/Button;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->this$2:Leu/faircode/netguard/ActivityPro$2$1;

    .line 7
    .line 8
    iget-object v0, p1, Leu/faircode/netguard/ActivityPro$2$1;->val$iab:Leu/faircode/netguard/IAB;

    .line 9
    .line 10
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 11
    .line 12
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 13
    .line 14
    const-string v2, "log"

    .line 15
    .line 16
    invoke-virtual {v0, p1, v2, v1}, Leu/faircode/netguard/IAB;->startPurchase(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnFilter:Landroid/widget/Button;

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->this$2:Leu/faircode/netguard/ActivityPro$2$1;

    .line 26
    .line 27
    iget-object v0, p1, Leu/faircode/netguard/ActivityPro$2$1;->val$iab:Leu/faircode/netguard/IAB;

    .line 28
    .line 29
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 30
    .line 31
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 32
    .line 33
    const-string v2, "filter"

    .line 34
    .line 35
    invoke-virtual {v0, p1, v2, v1}, Leu/faircode/netguard/IAB;->startPurchase(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnNotify:Landroid/widget/Button;

    .line 41
    .line 42
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->this$2:Leu/faircode/netguard/ActivityPro$2$1;

    .line 45
    .line 46
    iget-object v0, p1, Leu/faircode/netguard/ActivityPro$2$1;->val$iab:Leu/faircode/netguard/IAB;

    .line 47
    .line 48
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 49
    .line 50
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 51
    .line 52
    const-string v2, "notify"

    .line 53
    .line 54
    invoke-virtual {v0, p1, v2, v1}, Leu/faircode/netguard/IAB;->startPurchase(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnSpeed:Landroid/widget/Button;

    .line 60
    .line 61
    if-ne p1, v0, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->this$2:Leu/faircode/netguard/ActivityPro$2$1;

    .line 64
    .line 65
    iget-object v0, p1, Leu/faircode/netguard/ActivityPro$2$1;->val$iab:Leu/faircode/netguard/IAB;

    .line 66
    .line 67
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 68
    .line 69
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 70
    .line 71
    const-string v2, "speed"

    .line 72
    .line 73
    invoke-virtual {v0, p1, v2, v1}, Leu/faircode/netguard/IAB;->startPurchase(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnTheme:Landroid/widget/Button;

    .line 78
    .line 79
    if-ne p1, v0, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->this$2:Leu/faircode/netguard/ActivityPro$2$1;

    .line 82
    .line 83
    iget-object v0, p1, Leu/faircode/netguard/ActivityPro$2$1;->val$iab:Leu/faircode/netguard/IAB;

    .line 84
    .line 85
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 86
    .line 87
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 88
    .line 89
    const-string v2, "theme"

    .line 90
    .line 91
    invoke-virtual {v0, p1, v2, v1}, Leu/faircode/netguard/IAB;->startPurchase(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnAll:Landroid/widget/Button;

    .line 96
    .line 97
    if-ne p1, v0, :cond_5

    .line 98
    .line 99
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->this$2:Leu/faircode/netguard/ActivityPro$2$1;

    .line 100
    .line 101
    iget-object v0, p1, Leu/faircode/netguard/ActivityPro$2$1;->val$iab:Leu/faircode/netguard/IAB;

    .line 102
    .line 103
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 104
    .line 105
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 106
    .line 107
    const-string v2, "pro1"

    .line 108
    .line 109
    invoke-virtual {v0, p1, v2, v1}, Leu/faircode/netguard/IAB;->startPurchase(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnDev1:Landroid/widget/Button;

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    if-ne p1, v0, :cond_6

    .line 117
    .line 118
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->this$2:Leu/faircode/netguard/ActivityPro$2$1;

    .line 119
    .line 120
    iget-object v0, p1, Leu/faircode/netguard/ActivityPro$2$1;->val$iab:Leu/faircode/netguard/IAB;

    .line 121
    .line 122
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 123
    .line 124
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 125
    .line 126
    const-string v2, "support1"

    .line 127
    .line 128
    invoke-virtual {v0, p1, v2, v1}, Leu/faircode/netguard/IAB;->startPurchase(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    iget-object v0, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->val$btnDev2:Landroid/widget/Button;

    .line 133
    .line 134
    if-ne p1, v0, :cond_7

    .line 135
    .line 136
    iget-object p1, p0, Leu/faircode/netguard/ActivityPro$2$1$1;->this$2:Leu/faircode/netguard/ActivityPro$2$1;

    .line 137
    .line 138
    iget-object v0, p1, Leu/faircode/netguard/ActivityPro$2$1;->val$iab:Leu/faircode/netguard/IAB;

    .line 139
    .line 140
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 141
    .line 142
    iget-object p1, p1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 143
    .line 144
    const-string v2, "support2"

    .line 145
    .line 146
    invoke-virtual {v0, p1, v2, v1}, Leu/faircode/netguard/IAB;->startPurchase(Landroid/app/Activity;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, "\n"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string v0, "NetGuard.Pro"

    .line 180
    .line 181
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    :cond_7
    :goto_0
    return-void
.end method
