.class Leu/faircode/netguard/ActivityLog$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivityLog$4;

.field final synthetic val$daddr:Ljava/lang/String;

.field final synthetic val$dname:Ljava/lang/String;

.field final synthetic val$lookupIP:Landroid/content/Intent;

.field final synthetic val$lookupPort:Landroid/content/Intent;

.field final synthetic val$packet:Leu/faircode/netguard/Packet;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityLog$4;ILandroid/content/Intent;Landroid/content/Intent;Leu/faircode/netguard/Packet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 2
    .line 3
    iput p2, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$uid:I

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$lookupIP:Landroid/content/Intent;

    .line 6
    .line 7
    iput-object p4, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$lookupPort:Landroid/content/Intent;

    .line 8
    .line 9
    iput-object p5, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$packet:Leu/faircode/netguard/Packet;

    .line 10
    .line 11
    iput-object p6, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$dname:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$daddr:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
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
    const-string v2, "Search"

    .line 10
    .line 11
    const-class v3, Leu/faircode/netguard/ActivityMain;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    sparse-switch p1, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    return v4

    .line 19
    :sswitch_0
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 20
    .line 21
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 22
    .line 23
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$lookupIP:Landroid/content/Intent;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    return v5

    .line 29
    :sswitch_1
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 30
    .line 31
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 32
    .line 33
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$lookupPort:Landroid/content/Intent;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    return v5

    .line 39
    :sswitch_2
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 40
    .line 41
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 42
    .line 43
    const-string v0, "clipboard"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/content/ClipboardManager;

    .line 50
    .line 51
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$dname:Ljava/lang/String;

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$daddr:Ljava/lang/String;

    .line 56
    .line 57
    :cond_0
    const-string v1, "netguard"

    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 64
    .line 65
    .line 66
    return v5

    .line 67
    :sswitch_3
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 68
    .line 69
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 70
    .line 71
    invoke-static {v1, p1}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 78
    .line 79
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 80
    .line 81
    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$packet:Leu/faircode/netguard/Packet;

    .line 86
    .line 87
    iget-object v1, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$dname:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1, v5}, Leu/faircode/netguard/DatabaseHelper;->updateAccess(Leu/faircode/netguard/Packet;Ljava/lang/String;I)Z

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 93
    .line 94
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 95
    .line 96
    const-string v0, "block host"

    .line 97
    .line 98
    invoke-static {v0, p1, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Landroid/content/Intent;

    .line 102
    .line 103
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 104
    .line 105
    iget-object v0, v0, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 106
    .line 107
    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .line 109
    .line 110
    iget v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$uid:I

    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 120
    .line 121
    iget-object v0, v0, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 128
    .line 129
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 130
    .line 131
    new-instance v1, Landroid/content/Intent;

    .line 132
    .line 133
    iget-object v2, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 134
    .line 135
    iget-object v2, v2, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 136
    .line 137
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    .line 142
    .line 143
    :goto_0
    return v5

    .line 144
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    .line 145
    .line 146
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 147
    .line 148
    iget-object v0, v0, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 149
    .line 150
    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .line 152
    .line 153
    iget v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$uid:I

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 163
    .line 164
    iget-object v0, v0, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 165
    .line 166
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    .line 168
    .line 169
    return v5

    .line 170
    :sswitch_5
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 171
    .line 172
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 173
    .line 174
    invoke-static {v1, p1}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_2

    .line 179
    .line 180
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 181
    .line 182
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 183
    .line 184
    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$packet:Leu/faircode/netguard/Packet;

    .line 189
    .line 190
    iget-object v1, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$dname:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p1, v0, v1, v4}, Leu/faircode/netguard/DatabaseHelper;->updateAccess(Leu/faircode/netguard/Packet;Ljava/lang/String;I)Z

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 196
    .line 197
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 198
    .line 199
    const-string v0, "allow host"

    .line 200
    .line 201
    invoke-static {v0, p1, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 202
    .line 203
    .line 204
    new-instance p1, Landroid/content/Intent;

    .line 205
    .line 206
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 207
    .line 208
    iget-object v0, v0, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 209
    .line 210
    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .line 212
    .line 213
    iget v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->val$uid:I

    .line 214
    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 223
    .line 224
    iget-object v0, v0, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 225
    .line 226
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_2
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 231
    .line 232
    iget-object p1, p1, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 233
    .line 234
    new-instance v1, Landroid/content/Intent;

    .line 235
    .line 236
    iget-object v2, p0, Leu/faircode/netguard/ActivityLog$4$1;->this$1:Leu/faircode/netguard/ActivityLog$4;

    .line 237
    .line 238
    iget-object v2, v2, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 239
    .line 240
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 244
    .line 245
    .line 246
    :goto_1
    return v5

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x7f0900c4 -> :sswitch_5
        0x7f0900c9 -> :sswitch_4
        0x7f0900cb -> :sswitch_3
        0x7f0900cf -> :sswitch_2
        0x7f0900e0 -> :sswitch_1
        0x7f0900f1 -> :sswitch_0
    .end sparse-switch
.end method
