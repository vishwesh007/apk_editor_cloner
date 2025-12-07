.class Leu/faircode/netguard/ActivityMain$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityMain$3;->val$prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    .line 1
    const-string p1, "filter"

    .line 2
    .line 3
    const-string v0, "\n"

    .line 4
    .line 5
    const-string v1, "Lockdown="

    .line 6
    .line 7
    const-string v2, "Always-on="

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v4, "Switch="

    .line 12
    .line 13
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "NetGuard.Main"

    .line 24
    .line 25
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Leu/faircode/netguard/ActivityMain$3;->val$prefs:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    const-string v5, "enabled"

    .line 31
    .line 32
    invoke-static {v3, v5, p2}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz p2, :cond_4

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    :try_start_0
    iget-object v6, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const-string v7, "always_on_vpn_app"

    .line 46
    .line 47
    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    iget-object v2, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    const/16 v6, 0x1d

    .line 87
    .line 88
    if-ge v2, v6, :cond_1

    .line 89
    .line 90
    iget-object v2, p0, Leu/faircode/netguard/ActivityMain$3;->val$prefs:Landroid/content/SharedPreferences;

    .line 91
    .line 92
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    iget-object v2, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v6, "always_on_vpn_lockdown"

    .line 105
    .line 106
    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    if-eqz v2, :cond_1

    .line 126
    .line 127
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 128
    .line 129
    invoke-static {v1}, Leu/faircode/netguard/ActivityMain;->access$200(Leu/faircode/netguard/ActivityMain;)Landroidx/appcompat/widget/SwitchCompat;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 137
    .line 138
    const v2, 0x7f100065

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v2, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 150
    .line 151
    invoke-static {v1}, Leu/faircode/netguard/ActivityMain;->access$200(Leu/faircode/netguard/ActivityMain;)Landroidx/appcompat/widget/SwitchCompat;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 159
    .line 160
    const v2, 0x7f100064

    .line 161
    .line 162
    .line 163
    invoke-static {v1, v2, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :catchall_0
    move-exception v1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-static {v1, v2, v0, v1, v4}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_1
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain$3;->val$prefs:Landroid/content/SharedPreferences;

    .line 181
    .line 182
    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_2

    .line 187
    .line 188
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 189
    .line 190
    invoke-static {p1}, Leu/faircode/netguard/Util;->isPrivateDns(Landroid/content/Context;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_2

    .line 195
    .line 196
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 197
    .line 198
    const v1, 0x7f100087

    .line 199
    .line 200
    .line 201
    invoke-static {p1, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 206
    .line 207
    .line 208
    :cond_2
    :try_start_1
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 209
    .line 210
    invoke-static {p1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    const/4 v1, 0x0

    .line 215
    if-nez p1, :cond_3

    .line 216
    .line 217
    const-string p1, "Prepare done"

    .line 218
    .line 219
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 223
    .line 224
    const/4 v2, -0x1

    .line 225
    invoke-virtual {p1, p2, v2, v1}, Leu/faircode/netguard/ActivityMain;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_3
    iget-object p2, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 230
    .line 231
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    const v2, 0x7f0c0052

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 243
    .line 244
    new-instance v2, Landroidx/appcompat/app/m;

    .line 245
    .line 246
    invoke-direct {v2, v1}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, p2}, Landroidx/appcompat/app/m;->m(Landroid/view/View;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/m;->d(Z)V

    .line 253
    .line 254
    .line 255
    new-instance p2, Leu/faircode/netguard/ActivityMain$3$2;

    .line 256
    .line 257
    invoke-direct {p2, p0, p1}, Leu/faircode/netguard/ActivityMain$3$2;-><init>(Leu/faircode/netguard/ActivityMain$3;Landroid/content/Intent;)V

    .line 258
    .line 259
    .line 260
    const p1, 0x1040013

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, p1, p2}, Landroidx/appcompat/app/m;->j(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 264
    .line 265
    .line 266
    new-instance p1, Leu/faircode/netguard/ActivityMain$3$1;

    .line 267
    .line 268
    invoke-direct {p1, p0}, Leu/faircode/netguard/ActivityMain$3$1;-><init>(Leu/faircode/netguard/ActivityMain$3;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, p1}, Landroidx/appcompat/app/m;->h(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-static {v1, p1}, Leu/faircode/netguard/ActivityMain;->access$302(Leu/faircode/netguard/ActivityMain;Landroidx/appcompat/app/n;)Landroidx/appcompat/app/n;

    .line 279
    .line 280
    .line 281
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 282
    .line 283
    invoke-static {p1}, Leu/faircode/netguard/ActivityMain;->access$300(Leu/faircode/netguard/ActivityMain;)Landroidx/appcompat/app/n;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    .line 289
    .line 290
    goto :goto_0

    .line 291
    :catchall_1
    move-exception p1

    .line 292
    new-instance p2, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-static {p1, p2, v0, p1, v4}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$3;->val$prefs:Landroid/content/SharedPreferences;

    .line 301
    .line 302
    invoke-static {p1, v5, v3}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 303
    .line 304
    .line 305
    goto :goto_0

    .line 306
    :cond_4
    const-string p1, "switch off"

    .line 307
    .line 308
    iget-object p2, p0, Leu/faircode/netguard/ActivityMain$3;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 309
    .line 310
    invoke-static {p1, p2, v3}, Leu/faircode/netguard/ServiceSinkhole;->stop(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 311
    .line 312
    .line 313
    :goto_0
    return-void
.end method
