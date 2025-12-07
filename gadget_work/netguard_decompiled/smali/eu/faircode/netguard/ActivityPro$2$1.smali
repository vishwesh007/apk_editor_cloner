.class Leu/faircode/netguard/ActivityPro$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivityPro$2;

.field final synthetic val$iab:Leu/faircode/netguard/IAB;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityPro$2;Leu/faircode/netguard/IAB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityPro$2$1;->val$iab:Leu/faircode/netguard/IAB;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v11, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 4
    .line 5
    iget-object v0, v0, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 6
    .line 7
    invoke-static {v0}, Leu/faircode/netguard/ActivityPro;->access$000(Leu/faircode/netguard/ActivityPro;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v11, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 11
    .line 12
    iget-object v0, v0, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 13
    .line 14
    const v1, 0x7f09004d

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/Button;

    .line 22
    .line 23
    iget-object v1, v11, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 24
    .line 25
    iget-object v1, v1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 26
    .line 27
    const v2, 0x7f09004c

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v12, v1

    .line 35
    check-cast v12, Landroid/widget/Button;

    .line 36
    .line 37
    iget-object v1, v11, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 38
    .line 39
    iget-object v1, v1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 40
    .line 41
    const v2, 0x7f09004f

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v13, v1

    .line 49
    check-cast v13, Landroid/widget/Button;

    .line 50
    .line 51
    iget-object v1, v11, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 52
    .line 53
    iget-object v1, v1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 54
    .line 55
    const v2, 0x7f090054

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v14, v1

    .line 63
    check-cast v14, Landroid/widget/Button;

    .line 64
    .line 65
    iget-object v1, v11, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 66
    .line 67
    iget-object v1, v1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 68
    .line 69
    const v2, 0x7f090056

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    move-object v15, v1

    .line 77
    check-cast v15, Landroid/widget/Button;

    .line 78
    .line 79
    iget-object v1, v11, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 80
    .line 81
    iget-object v1, v1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 82
    .line 83
    const v2, 0x7f090045

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    move-object v10, v1

    .line 91
    check-cast v10, Landroid/widget/Button;

    .line 92
    .line 93
    iget-object v1, v11, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 94
    .line 95
    iget-object v1, v1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 96
    .line 97
    const v2, 0x7f090049

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    move-object v9, v1

    .line 105
    check-cast v9, Landroid/widget/Button;

    .line 106
    .line 107
    iget-object v1, v11, Leu/faircode/netguard/ActivityPro$2$1;->this$1:Leu/faircode/netguard/ActivityPro$2;

    .line 108
    .line 109
    iget-object v1, v1, Leu/faircode/netguard/ActivityPro$2;->this$0:Leu/faircode/netguard/ActivityPro;

    .line 110
    .line 111
    const v2, 0x7f09004a

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    move-object v8, v1

    .line 119
    check-cast v8, Landroid/widget/Button;

    .line 120
    .line 121
    new-instance v7, Leu/faircode/netguard/ActivityPro$2$1$1;

    .line 122
    .line 123
    move-object v1, v7

    .line 124
    move-object/from16 v2, p0

    .line 125
    .line 126
    move-object v3, v0

    .line 127
    move-object v4, v12

    .line 128
    move-object v5, v13

    .line 129
    move-object v6, v14

    .line 130
    move-object v11, v7

    .line 131
    move-object v7, v15

    .line 132
    move-object/from16 v16, v8

    .line 133
    .line 134
    move-object v8, v10

    .line 135
    move-object/from16 v17, v9

    .line 136
    .line 137
    move-object/from16 v18, v10

    .line 138
    .line 139
    move-object/from16 v10, v16

    .line 140
    .line 141
    invoke-direct/range {v1 .. v10}, Leu/faircode/netguard/ActivityPro$2$1$1;-><init>(Leu/faircode/netguard/ActivityPro$2$1;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v12, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v15, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    move-object/from16 v1, v18

    .line 160
    .line 161
    invoke-virtual {v1, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    move-object/from16 v2, v17

    .line 165
    .line 166
    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    move-object/from16 v3, v16

    .line 170
    .line 171
    invoke-virtual {v3, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    const/4 v4, 0x1

    .line 175
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v12, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v13, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v14, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v15, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v2, "\n"

    .line 207
    .line 208
    const-string v3, "NetGuard.Pro"

    .line 209
    .line 210
    invoke-static {v0, v1, v2, v0, v3}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :goto_0
    return-void
.end method
