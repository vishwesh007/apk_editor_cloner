.class public Leu/faircode/netguard/AdapterDns;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field private colAName:I

.field private colQName:I

.field private colResource:I

.field private colTTL:I

.field private colTime:I

.field private colUid:I

.field private colorExpired:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v1, "dark_theme"

    .line 10
    .line 11
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v0, 0x80

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const p1, -0xbbbbbc

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Leu/faircode/netguard/AdapterDns;->colorExpired:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const p1, -0x333334

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, Leu/faircode/netguard/AdapterDns;->colorExpired:I

    .line 61
    .line 62
    :goto_0
    const-string p1, "time"

    .line 63
    .line 64
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Leu/faircode/netguard/AdapterDns;->colTime:I

    .line 69
    .line 70
    const-string p1, "qname"

    .line 71
    .line 72
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Leu/faircode/netguard/AdapterDns;->colQName:I

    .line 77
    .line 78
    const-string p1, "aname"

    .line 79
    .line 80
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput p1, p0, Leu/faircode/netguard/AdapterDns;->colAName:I

    .line 85
    .line 86
    const-string p1, "resource"

    .line 87
    .line 88
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Leu/faircode/netguard/AdapterDns;->colResource:I

    .line 93
    .line 94
    const-string p1, "ttl"

    .line 95
    .line 96
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iput p1, p0, Leu/faircode/netguard/AdapterDns;->colTTL:I

    .line 101
    .line 102
    const-string p1, "uid"

    .line 103
    .line 104
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput p1, p0, Leu/faircode/netguard/AdapterDns;->colUid:I

    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    .line 1
    iget p2, p0, Leu/faircode/netguard/AdapterDns;->colTime:I

    .line 2
    .line 3
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget p2, p0, Leu/faircode/netguard/AdapterDns;->colQName:I

    .line 8
    .line 9
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget v2, p0, Leu/faircode/netguard/AdapterDns;->colAName:I

    .line 14
    .line 15
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Leu/faircode/netguard/AdapterDns;->colResource:I

    .line 20
    .line 21
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v4, p0, Leu/faircode/netguard/AdapterDns;->colTTL:I

    .line 26
    .line 27
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget v5, p0, Leu/faircode/netguard/AdapterDns;->colUid:I

    .line 32
    .line 33
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    new-instance v5, Ljava/util/Date;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    int-to-long v7, v4

    .line 47
    add-long/2addr v7, v0

    .line 48
    const/4 v9, 0x0

    .line 49
    cmp-long v10, v7, v5

    .line 50
    .line 51
    if-gez v10, :cond_0

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v5, 0x0

    .line 56
    :goto_0
    if-eqz v5, :cond_1

    .line 57
    .line 58
    iget v9, p0, Leu/faircode/netguard/AdapterDns;->colorExpired:I

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    .line 62
    .line 63
    const v5, 0x7f09018c

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Landroid/widget/TextView;

    .line 71
    .line 72
    const v6, 0x7f09017a

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Landroid/widget/TextView;

    .line 80
    .line 81
    const v7, 0x7f090150

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Landroid/widget/TextView;

    .line 89
    .line 90
    const v8, 0x7f090180

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    check-cast v8, Landroid/widget/TextView;

    .line 98
    .line 99
    const v9, 0x7f090189

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Landroid/widget/TextView;

    .line 107
    .line 108
    const v10, 0x7f090190

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroid/widget/TextView;

    .line 116
    .line 117
    new-instance v10, Ljava/text/SimpleDateFormat;

    .line 118
    .line 119
    const-string v11, "dd HH:mm"

    .line 120
    .line 121
    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v10, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v0, "+"

    .line 147
    .line 148
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    div-int/lit16 v4, v4, 0x3e8

    .line 152
    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    if-lez p3, :cond_2

    .line 168
    .line 169
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    goto :goto_1

    .line 174
    :cond_2
    const/4 p2, 0x0

    .line 175
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const p2, 0x7f0c0024

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
