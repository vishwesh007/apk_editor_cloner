.class Leu/faircode/netguard/AdapterRule$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/AdapterRule$15;

.field final synthetic val$daddr:Ljava/lang/String;

.field final synthetic val$id:J

.field final synthetic val$lookupIP:Landroid/content/Intent;

.field final synthetic val$lookupPort:Landroid/content/Intent;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule$15;Landroid/content/Intent;Landroid/content/Intent;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterRule$15$1;->val$lookupIP:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/AdapterRule$15$1;->val$lookupPort:Landroid/content/Intent;

    .line 6
    .line 7
    iput-wide p4, p0, Leu/faircode/netguard/AdapterRule$15$1;->val$id:J

    .line 8
    .line 9
    iput-object p6, p0, Leu/faircode/netguard/AdapterRule$15$1;->val$daddr:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-class v0, Leu/faircode/netguard/ActivityPro;

    .line 6
    .line 7
    const-string v1, "filter"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    sparse-switch p1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :sswitch_0
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 18
    .line 19
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$15$1;->val$lookupIP:Landroid/content/Intent;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :sswitch_1
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 29
    .line 30
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-wide v4, p0, Leu/faircode/netguard/AdapterRule$15$1;->val$id:J

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    invoke-virtual {v0, v4, v5, v1}, Leu/faircode/netguard/DatabaseHelper;->setAccess(JI)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 43
    .line 44
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 45
    .line 46
    const-string v1, "reset host"

    .line 47
    .line 48
    invoke-static {v1, v0, v3}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :sswitch_2
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 54
    .line 55
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$15$1;->val$lookupPort:Landroid/content/Intent;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :sswitch_3
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 65
    .line 66
    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 67
    .line 68
    const-string v0, "clipboard"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/content/ClipboardManager;

    .line 75
    .line 76
    const-string v0, "netguard"

    .line 77
    .line 78
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$15$1;->val$daddr:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :sswitch_4
    iget-object v4, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 89
    .line 90
    iget-object v4, v4, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v1, v4}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    .line 98
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 99
    .line 100
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-wide v4, p0, Leu/faircode/netguard/AdapterRule$15$1;->val$id:J

    .line 107
    .line 108
    invoke-virtual {v0, v4, v5, v2}, Leu/faircode/netguard/DatabaseHelper;->setAccess(JI)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 112
    .line 113
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 114
    .line 115
    const-string v1, "block host"

    .line 116
    .line 117
    invoke-static {v1, v0, v3}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 122
    .line 123
    iget-object v1, v1, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 124
    .line 125
    new-instance v4, Landroid/content/Intent;

    .line 126
    .line 127
    iget-object v5, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 128
    .line 129
    iget-object v5, v5, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 130
    .line 131
    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :sswitch_5
    iget-object v4, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 139
    .line 140
    iget-object v4, v4, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 141
    .line 142
    invoke-static {v1, v4}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_1

    .line 147
    .line 148
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 149
    .line 150
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 151
    .line 152
    invoke-static {v0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-wide v4, p0, Leu/faircode/netguard/AdapterRule$15$1;->val$id:J

    .line 157
    .line 158
    invoke-virtual {v0, v4, v5, v3}, Leu/faircode/netguard/DatabaseHelper;->setAccess(JI)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 162
    .line 163
    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 164
    .line 165
    const-string v1, "allow host"

    .line 166
    .line 167
    invoke-static {v1, v0, v3}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 172
    .line 173
    iget-object v1, v1, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 174
    .line 175
    new-instance v4, Landroid/content/Intent;

    .line 176
    .line 177
    iget-object v5, p0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    .line 178
    .line 179
    iget-object v5, v5, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    .line 180
    .line 181
    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    .line 186
    .line 187
    :goto_0
    const v0, 0x7f0900c4

    .line 188
    .line 189
    .line 190
    if-eq p1, v0, :cond_2

    .line 191
    .line 192
    const v0, 0x7f0900cb

    .line 193
    .line 194
    .line 195
    if-eq p1, v0, :cond_2

    .line 196
    .line 197
    const v0, 0x7f0900e7

    .line 198
    .line 199
    .line 200
    if-ne p1, v0, :cond_3

    .line 201
    .line 202
    :cond_2
    new-instance p1, Leu/faircode/netguard/AdapterRule$15$1$1;

    .line 203
    .line 204
    invoke-direct {p1, p0}, Leu/faircode/netguard/AdapterRule$15$1$1;-><init>(Leu/faircode/netguard/AdapterRule$15$1;)V

    .line 205
    .line 206
    .line 207
    new-array v0, v3, [Ljava/lang/Object;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 210
    .line 211
    .line 212
    :cond_3
    return v2

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x7f0900c4 -> :sswitch_5
        0x7f0900cb -> :sswitch_4
        0x7f0900cf -> :sswitch_3
        0x7f0900e0 -> :sswitch_2
        0x7f0900e7 -> :sswitch_1
        0x7f0900f1 -> :sswitch_0
    .end sparse-switch
.end method
