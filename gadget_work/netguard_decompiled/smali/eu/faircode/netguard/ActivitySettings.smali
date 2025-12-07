.class public Leu/faircode/netguard/ActivitySettings;
.super Landroidx/appcompat/app/q;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final INTENT_VPN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private connectivityChangedReceiver:Landroid/content/BroadcastReceiver;

.field private dialogFilter:Landroidx/appcompat/app/n;

.field private interactiveStateReceiver:Landroid/content/BroadcastReceiver;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.net.vpn.SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Leu/faircode/netguard/ActivitySettings;->INTENT_VPN_SETTINGS:Landroid/content/Intent;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/q;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Leu/faircode/netguard/ActivitySettings;->running:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Leu/faircode/netguard/ActivitySettings;->dialogFilter:Landroidx/appcompat/app/n;

    .line 9
    .line 10
    new-instance v0, Leu/faircode/netguard/ActivitySettings$12;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivitySettings$12;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Leu/faircode/netguard/ActivitySettings;->interactiveStateReceiver:Landroid/content/BroadcastReceiver;

    .line 16
    .line 17
    new-instance v0, Leu/faircode/netguard/ActivitySettings$13;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivitySettings$13;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Leu/faircode/netguard/ActivitySettings;->connectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic access$000(Leu/faircode/netguard/ActivitySettings;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getIntentCreateExport()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Leu/faircode/netguard/ActivitySettings;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getIntentOpenExport()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(Leu/faircode/netguard/ActivitySettings;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getIntentOpenHosts()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300(Leu/faircode/netguard/ActivitySettings;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ActivitySettings;->running:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Leu/faircode/netguard/ActivitySettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->updateTechnicalInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$502(Leu/faircode/netguard/ActivitySettings;Landroidx/appcompat/app/n;)Landroidx/appcompat/app/n;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings;->dialogFilter:Landroidx/appcompat/app/n;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Leu/faircode/netguard/ActivitySettings;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivitySettings;->xmlExport(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Leu/faircode/netguard/ActivitySettings;)Landroid/preference/PreferenceScreen;
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$800(Leu/faircode/netguard/ActivitySettings;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivitySettings;->xmlImport(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkAddress(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "Bad address"

    .line 12
    .line 13
    if-nez v0, :cond_4

    .line 14
    .line 15
    invoke-static {p1}, Leu/faircode/netguard/Util;->isNumericAddress(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    :goto_0
    return-void

    .line 47
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method private checkDomain(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "Bad address"

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    invoke-static {p1}, Leu/faircode/netguard/Util;->isNumericAddress(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    sget-object v0, Landroidx/core/util/e;->a:Ljava/util/regex/Pattern;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method private checkPermissions(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "disable_on_call"

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-static {p0}, Leu/faircode/netguard/Util;->hasPhoneStatePermission(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 50
    .line 51
    .line 52
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 53
    .line 54
    filled-new-array {v0}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p0, v0}, LE0/c;->g(Leu/faircode/netguard/ActivitySettings;[Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    return v3

    .line 64
    :cond_1
    const/4 p1, 0x1

    .line 65
    return p1
.end method

.method private filterExport(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "rule"

    .line 4
    .line 5
    const-string v2, "block"

    .line 6
    .line 7
    const-string v3, "time"

    .line 8
    .line 9
    const-string v4, "dport"

    .line 10
    .line 11
    const-string v5, "daddr"

    .line 12
    .line 13
    const-string v6, "protocol"

    .line 14
    .line 15
    const-string v7, "version"

    .line 16
    .line 17
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual {v8}, Leu/faircode/netguard/DatabaseHelper;->getAccess()Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    :try_start_0
    const-string v9, "uid"

    .line 26
    .line 27
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v12

    .line 43
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v15

    .line 55
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 56
    .line 57
    .line 58
    move-result v16

    .line 59
    if-eqz v16, :cond_1

    .line 60
    .line 61
    move-object/from16 v16, v2

    .line 62
    .line 63
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    move/from16 v17, v9

    .line 68
    .line 69
    move-object/from16 v9, p0

    .line 70
    .line 71
    invoke-direct {v9, v2}, Leu/faircode/netguard/ActivitySettings;->getPackages(I)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    array-length v9, v2

    .line 76
    const/16 v18, 0x0

    .line 77
    .line 78
    move/from16 v19, v15

    .line 79
    .line 80
    const/4 v15, 0x0

    .line 81
    :goto_1
    if-ge v15, v9, :cond_0

    .line 82
    .line 83
    move/from16 v18, v9

    .line 84
    .line 85
    aget-object v9, v2, v15

    .line 86
    .line 87
    move-object/from16 v20, v2

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    .line 92
    .line 93
    move/from16 v21, v15

    .line 94
    .line 95
    const-string v15, "pkg"

    .line 96
    .line 97
    invoke-interface {v0, v2, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    .line 99
    .line 100
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-interface {v0, v2, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    .line 110
    .line 111
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-interface {v0, v2, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    .line 121
    .line 122
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-interface {v0, v2, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    .line 128
    .line 129
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-interface {v0, v2, v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    .line 139
    .line 140
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 141
    .line 142
    .line 143
    move-result-wide v22

    .line 144
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-interface {v0, v2, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    .line 150
    .line 151
    move/from16 v9, v19

    .line 152
    .line 153
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    move-object/from16 v19, v3

    .line 162
    .line 163
    move-object/from16 v3, v16

    .line 164
    .line 165
    invoke-interface {v0, v2, v3, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    .line 167
    .line 168
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .line 170
    .line 171
    add-int/lit8 v15, v21, 0x1

    .line 172
    .line 173
    move-object/from16 v16, v3

    .line 174
    .line 175
    move-object/from16 v3, v19

    .line 176
    .line 177
    move-object/from16 v2, v20

    .line 178
    .line 179
    move/from16 v19, v9

    .line 180
    .line 181
    move/from16 v9, v18

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_0
    move/from16 v9, v19

    .line 185
    .line 186
    move v15, v9

    .line 187
    move-object/from16 v2, v16

    .line 188
    .line 189
    move/from16 v9, v17

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    move-object v1, v0

    .line 199
    if-eqz v8, :cond_2

    .line 200
    .line 201
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catchall_1
    move-exception v0

    .line 206
    move-object v2, v0

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    :cond_2
    :goto_2
    throw v1
.end method

.method private forwardExport(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "port"

    .line 4
    .line 5
    const-string v2, "rport"

    .line 6
    .line 7
    const-string v3, "raddr"

    .line 8
    .line 9
    const-string v4, "dport"

    .line 10
    .line 11
    const-string v5, "protocol"

    .line 12
    .line 13
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {v6}, Leu/faircode/netguard/DatabaseHelper;->getForwarding()Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    :try_start_0
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    const-string v11, "ruid"

    .line 38
    .line 39
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    if-eqz v12, :cond_1

    .line 48
    .line 49
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    move-object/from16 v13, p0

    .line 54
    .line 55
    invoke-direct {v13, v12}, Leu/faircode/netguard/ActivitySettings;->getPackages(I)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    array-length v14, v12

    .line 60
    const/4 v15, 0x0

    .line 61
    :goto_0
    if-ge v15, v14, :cond_0

    .line 62
    .line 63
    move/from16 v16, v11

    .line 64
    .line 65
    aget-object v11, v12, v15

    .line 66
    .line 67
    move-object/from16 v17, v12

    .line 68
    .line 69
    const/4 v12, 0x0

    .line 70
    invoke-interface {v0, v12, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    .line 72
    .line 73
    const-string v13, "pkg"

    .line 74
    .line 75
    invoke-interface {v0, v12, v13, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-interface {v0, v12, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    .line 88
    .line 89
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-interface {v0, v12, v4, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    .line 99
    .line 100
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-interface {v0, v12, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    .line 106
    .line 107
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-interface {v0, v12, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v12, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    add-int/lit8 v15, v15, 0x1

    .line 122
    .line 123
    move-object/from16 v13, p0

    .line 124
    .line 125
    move/from16 v11, v16

    .line 126
    .line 127
    move-object/from16 v12, v17

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    move-object v1, v0

    .line 136
    if-eqz v6, :cond_2

    .line 137
    .line 138
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    move-object v2, v0

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    :goto_1
    throw v1
.end method

.method private getIntentCreateExport()Landroid/content/Intent;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.OPENABLE"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "*/*"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "netguard_"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 26
    .line 27
    const-string v3, "yyyyMMdd"

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Ljava/util/Date;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ".xml"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "android.intent.extra.TITLE"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method private getIntentOpenExport()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.OPENABLE"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "*/*"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private getIntentOpenHosts()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.OPENABLE"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "*/*"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private getPackages(I)[Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "root"

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/16 v0, 0x3f5

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    const-string p1, "mediaserver"

    .line 15
    .line 16
    filled-new-array {p1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    const/16 v0, 0x270f

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    const-string p1, "nobody"

    .line 26
    .line 27
    filled-new-array {p1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    new-array p1, p1, [Ljava/lang/String;

    .line 44
    .line 45
    :cond_3
    return-object p1
.end method

.method private getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x1020002

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/preference/PreferenceFragment;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private handleExport(Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Leu/faircode/netguard/ActivitySettings$14;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Leu/faircode/netguard/ActivitySettings$14;-><init>(Leu/faircode/netguard/ActivitySettings;Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private handleHosts(Landroid/content/Intent;Z)V
    .locals 1

    .line 1
    new-instance v0, Leu/faircode/netguard/ActivitySettings$15;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Leu/faircode/netguard/ActivitySettings$15;-><init>(Leu/faircode/netguard/ActivitySettings;Landroid/content/Intent;Z)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    new-array p2, p2, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private handleImport(Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Leu/faircode/netguard/ActivitySettings$16;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Leu/faircode/netguard/ActivitySettings$16;-><init>(Leu/faircode/netguard/ActivitySettings;Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private markPro(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p2, p0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_2

    .line 8
    .line 9
    :cond_0
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v0, "dark_theme"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "  "

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroid/text/style/ImageSpan;

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    const p2, 0x7f080099

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const p2, 0x7f080098

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-direct {v2, p0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    const/16 v3, 0x21

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method private updateTechnicalInfo()V
    .locals 3

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "technical_info"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "technical_network"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Leu/faircode/netguard/Util;->getGeneralInfo(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Leu/faircode/netguard/Util;->getNetworkInfo(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private xmlExport(Landroid/content/SharedPreferences;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "imported"

    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    instance-of v3, v2, Ljava/lang/Boolean;

    const-string v4, "value"

    const-string v5, "type"

    const-string v6, "key"

    const-string v7, "setting"

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    .line 47
    invoke-interface {p2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    invoke-interface {p2, v8, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "boolean"

    .line 49
    invoke-interface {p2, v8, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v8, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    invoke-interface {p2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 52
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 53
    invoke-interface {p2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    invoke-interface {p2, v8, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "integer"

    .line 55
    invoke-interface {p2, v8, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v8, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    invoke-interface {p2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 58
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 59
    invoke-interface {p2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    invoke-interface {p2, v8, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "string"

    .line 61
    invoke-interface {p2, v8, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v8, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    invoke-interface {p2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 64
    :cond_3
    instance-of v3, v2, Ljava/util/Set;

    if-eqz v3, :cond_4

    .line 65
    check-cast v2, Ljava/util/Set;

    .line 66
    invoke-interface {p2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    invoke-interface {p2, v8, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "set"

    .line 68
    invoke-interface {p2, v8, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "\n"

    .line 69
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v8, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    invoke-interface {p2, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 71
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetGuard.Settings"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private xmlExport(Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 2
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string p1, "netguard"

    .line 5
    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "application"

    .line 6
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Leu/faircode/netguard/ActivitySettings;->xmlExport(Landroid/content/SharedPreferences;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 8
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "wifi"

    .line 9
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Leu/faircode/netguard/ActivitySettings;->xmlExport(Landroid/content/SharedPreferences;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 11
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "mobile"

    .line 12
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "other"

    .line 13
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Leu/faircode/netguard/ActivitySettings;->xmlExport(Landroid/content/SharedPreferences;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 14
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screen_wifi"

    .line 15
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Leu/faircode/netguard/ActivitySettings;->xmlExport(Landroid/content/SharedPreferences;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 17
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screen_other"

    .line 18
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Leu/faircode/netguard/ActivitySettings;->xmlExport(Landroid/content/SharedPreferences;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 20
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "roaming"

    .line 21
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Leu/faircode/netguard/ActivitySettings;->xmlExport(Landroid/content/SharedPreferences;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 23
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "lockdown"

    .line 24
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 25
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Leu/faircode/netguard/ActivitySettings;->xmlExport(Landroid/content/SharedPreferences;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 26
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "apply"

    .line 27
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Leu/faircode/netguard/ActivitySettings;->xmlExport(Landroid/content/SharedPreferences;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 29
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "notify"

    .line 30
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Leu/faircode/netguard/ActivitySettings;->xmlExport(Landroid/content/SharedPreferences;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 32
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "filter"

    .line 33
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    invoke-direct {p0, v0}, Leu/faircode/netguard/ActivitySettings;->filterExport(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 35
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "forward"

    .line 36
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    invoke-direct {p0, v0}, Leu/faircode/netguard/ActivitySettings;->forwardExport(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 38
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 39
    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 41
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    return-void
.end method

.method private xmlImport(Ljava/io/InputStream;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "import"

    .line 4
    invoke-static {v1, p0, v3}, Leu/faircode/netguard/ServiceSinkhole;->stop(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 5
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 6
    new-instance v2, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;

    invoke-direct {v2, p0, p0}, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;-><init>(Leu/faircode/netguard/ActivitySettings;Landroid/content/Context;)V

    .line 7
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 8
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 9
    iget-object p1, v2, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->application:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Leu/faircode/netguard/ActivitySettings;->xmlImport(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    .line 10
    iget-object p1, v2, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->wifi:Ljava/util/Map;

    const-string v1, "wifi"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Leu/faircode/netguard/ActivitySettings;->xmlImport(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    .line 11
    iget-object p1, v2, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->mobile:Ljava/util/Map;

    const-string v1, "other"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Leu/faircode/netguard/ActivitySettings;->xmlImport(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    .line 12
    iget-object p1, v2, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->screen_wifi:Ljava/util/Map;

    const-string v1, "screen_wifi"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Leu/faircode/netguard/ActivitySettings;->xmlImport(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    .line 13
    iget-object p1, v2, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->screen_other:Ljava/util/Map;

    const-string v1, "screen_other"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Leu/faircode/netguard/ActivitySettings;->xmlImport(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    .line 14
    iget-object p1, v2, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->roaming:Ljava/util/Map;

    const-string v1, "roaming"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Leu/faircode/netguard/ActivitySettings;->xmlImport(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    .line 15
    iget-object p1, v2, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->lockdown:Ljava/util/Map;

    const-string v1, "lockdown"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Leu/faircode/netguard/ActivitySettings;->xmlImport(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    .line 16
    iget-object p1, v2, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->apply:Ljava/util/Map;

    const-string v1, "apply"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Leu/faircode/netguard/ActivitySettings;->xmlImport(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    .line 17
    iget-object p1, v2, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->notify:Ljava/util/Map;

    const-string v1, "notify"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Leu/faircode/netguard/ActivitySettings;->xmlImport(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    const/4 p1, 0x1

    .line 18
    invoke-static {p1, p0}, Leu/faircode/netguard/ReceiverAutostart;->upgrade(ZLandroid/content/Context;)V

    .line 19
    invoke-static {}, Leu/faircode/netguard/DatabaseHelper;->clearCache()V

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "imported"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private xmlImport(Ljava/util/Map;Landroid/content/SharedPreferences;)V
    .locals 4

    .line 22
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 23
    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "enabled"

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 28
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 29
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 30
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 31
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 32
    :cond_3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 33
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 34
    :cond_4
    instance-of v3, v2, Ljava/util/Set;

    if-eqz v3, :cond_5

    .line 35
    check-cast v2, Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 36
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetGuard.Settings"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 37
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onActivityResult request="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " result="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " ok="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, -0x1

    .line 27
    if-ne p2, v3, :cond_0

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v4, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v4, "NetGuard.Settings"

    .line 40
    .line 41
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    if-ne p1, v2, :cond_1

    .line 45
    .line 46
    if-ne p2, v3, :cond_5

    .line 47
    .line 48
    if-eqz p3, :cond_5

    .line 49
    .line 50
    invoke-direct {p0, p3}, Leu/faircode/netguard/ActivitySettings;->handleExport(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v0, 0x2

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    if-ne p2, v3, :cond_5

    .line 58
    .line 59
    if-eqz p3, :cond_5

    .line 60
    .line 61
    invoke-direct {p0, p3}, Leu/faircode/netguard/ActivitySettings;->handleImport(Landroid/content/Intent;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v0, 0x3

    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    if-ne p2, v3, :cond_5

    .line 69
    .line 70
    if-eqz p3, :cond_5

    .line 71
    .line 72
    invoke-direct {p0, p3, v1}, Leu/faircode/netguard/ActivitySettings;->handleHosts(Landroid/content/Intent;Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/4 v0, 0x4

    .line 77
    if-ne p1, v0, :cond_4

    .line 78
    .line 79
    if-ne p2, v3, :cond_5

    .line 80
    .line 81
    if-eqz p3, :cond_5

    .line 82
    .line 83
    invoke-direct {p0, p3, v2}, Leu/faircode/netguard/ActivitySettings;->handleHosts(Landroid/content/Intent;Z)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "Unknown activity result request="

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/y;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/Util;->setTheme(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/y;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Leu/faircode/netguard/FragmentSettings;

    .line 16
    .line 17
    invoke-direct {v0}, Leu/faircode/netguard/FragmentSettings;-><init>()V

    .line 18
    .line 19
    .line 20
    const v1, 0x1020002

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const v0, 0x7f10005a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d;->e(I)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Leu/faircode/netguard/ActivitySettings;->running:Z

    .line 42
    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Leu/faircode/netguard/ActivitySettings;->running:Z

    .line 3
    .line 4
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings;->dialogFilter:Landroidx/appcompat/app/n;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/n;->dismiss()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Leu/faircode/netguard/ActivitySettings;->dialogFilter:Landroidx/appcompat/app/n;

    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/q;->onDestroy()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    const-string p1, "NetGuard.Settings"

    .line 16
    .line 17
    const-string v0, "Up"

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/core/app/r;->d(Landroid/app/Activity;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/y;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings;->interactiveStateReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings;->connectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/q;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct/range {p0 .. p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static/range {p0 .. p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "screen_options"

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 21
    .line 22
    const-string v4, "category_options"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 29
    .line 30
    const-string v4, "screen_network_options"

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 37
    .line 38
    const-string v5, "category_network_options"

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 45
    .line 46
    const-string v5, "screen_advanced_options"

    .line 47
    .line 48
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 53
    .line 54
    const-string v6, "category_advanced_options"

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 61
    .line 62
    const-string v6, "screen_stats"

    .line 63
    .line 64
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 69
    .line 70
    const-string v7, "category_stats"

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 77
    .line 78
    const-string v7, "screen_backup"

    .line 79
    .line 80
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 85
    .line 86
    const-string v8, "category_backup"

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 93
    .line 94
    const-string v8, "auto_enable"

    .line 95
    .line 96
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    const/4 v10, 0x1

    .line 101
    new-array v11, v10, [Ljava/lang/Object;

    .line 102
    .line 103
    const-string v12, "0"

    .line 104
    .line 105
    invoke-interface {v2, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    const/4 v13, 0x0

    .line 110
    aput-object v8, v11, v13

    .line 111
    .line 112
    const v8, 0x7f1000a0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v8, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    const-string v8, "screen_delay"

    .line 123
    .line 124
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    new-array v11, v10, [Ljava/lang/Object;

    .line 129
    .line 130
    invoke-interface {v2, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    aput-object v8, v11, v13

    .line 135
    .line 136
    const v8, 0x7f1000a7

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v8, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    const-string v8, "theme"

    .line 147
    .line 148
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    const-string v11, "teal"

    .line 153
    .line 154
    invoke-interface {v2, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/q;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    const v15, 0x7f030005

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/q;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    const v13, 0x7f030006

    .line 174
    .line 175
    .line 176
    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    const/4 v15, 0x0

    .line 181
    :goto_0
    array-length v10, v14

    .line 182
    if-ge v15, v10, :cond_1

    .line 183
    .line 184
    aget-object v10, v13, v15

    .line 185
    .line 186
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    if-eqz v10, :cond_0

    .line 191
    .line 192
    const/4 v10, 0x1

    .line 193
    new-array v11, v10, [Ljava/lang/Object;

    .line 194
    .line 195
    aget-object v10, v14, v15

    .line 196
    .line 197
    const/4 v13, 0x0

    .line 198
    aput-object v10, v11, v13

    .line 199
    .line 200
    const v10, 0x7f1000dd

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_1
    :goto_1
    const-string v9, "wifi_homes"

    .line 215
    .line 216
    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    check-cast v10, Landroid/preference/MultiSelectListPreference;

    .line 221
    .line 222
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 223
    .line 224
    const/16 v13, 0x1b

    .line 225
    .line 226
    const-string v14, "-"

    .line 227
    .line 228
    if-lt v11, v13, :cond_2

    .line 229
    .line 230
    invoke-virtual {v4, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    .line 232
    .line 233
    goto/16 :goto_5

    .line 234
    .line 235
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    .line 236
    .line 237
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-interface {v2, v9, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    const v11, 0x7f1000e8

    .line 249
    .line 250
    .line 251
    if-lez v9, :cond_3

    .line 252
    .line 253
    const/4 v9, 0x1

    .line 254
    new-array v13, v9, [Ljava/lang/Object;

    .line 255
    .line 256
    const-string v15, ", "

    .line 257
    .line 258
    invoke-static {v15, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v15

    .line 262
    const/16 v17, 0x0

    .line 263
    .line 264
    aput-object v15, v13, v17

    .line 265
    .line 266
    invoke-virtual {v0, v11, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_3
    const/4 v9, 0x1

    .line 275
    const/16 v17, 0x0

    .line 276
    .line 277
    new-array v13, v9, [Ljava/lang/Object;

    .line 278
    .line 279
    aput-object v14, v13, v17

    .line 280
    .line 281
    invoke-virtual {v0, v11, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    invoke-virtual {v10, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    const-string v11, "wifi"

    .line 293
    .line 294
    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 299
    .line 300
    new-instance v11, Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    if-eqz v9, :cond_5

    .line 310
    .line 311
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 316
    .line 317
    .line 318
    move-result v13

    .line 319
    if-eqz v13, :cond_5

    .line 320
    .line 321
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 326
    .line 327
    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 328
    .line 329
    if-nez v13, :cond_4

    .line 330
    .line 331
    const-string v13, "NULL"

    .line 332
    .line 333
    :cond_4
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    if-eqz v9, :cond_7

    .line 346
    .line 347
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v9

    .line 351
    check-cast v9, Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v13

    .line 357
    if-nez v13, :cond_6

    .line 358
    .line 359
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    goto :goto_4

    .line 363
    :cond_7
    const/4 v9, 0x0

    .line 364
    new-array v4, v9, [Ljava/lang/CharSequence;

    .line 365
    .line 366
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    check-cast v4, [Ljava/lang/CharSequence;

    .line 371
    .line 372
    invoke-virtual {v10, v4}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    new-array v4, v9, [Ljava/lang/CharSequence;

    .line 376
    .line 377
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    check-cast v4, [Ljava/lang/CharSequence;

    .line 382
    .line 383
    invoke-virtual {v10, v4}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 384
    .line 385
    .line 386
    :goto_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 387
    .line 388
    const/16 v9, 0x1e

    .line 389
    .line 390
    if-lt v4, v9, :cond_8

    .line 391
    .line 392
    const-string v9, "handover"

    .line 393
    .line 394
    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    check-cast v9, Landroid/preference/TwoStatePreference;

    .line 399
    .line 400
    invoke-virtual {v5, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    .line 402
    .line 403
    :cond_8
    const-string v9, "reset_usage"

    .line 404
    .line 405
    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    new-instance v10, Leu/faircode/netguard/ActivitySettings$1;

    .line 410
    .line 411
    invoke-direct {v10, v0}, Leu/faircode/netguard/ActivitySettings$1;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 415
    .line 416
    .line 417
    const/16 v9, 0x1a

    .line 418
    .line 419
    if-lt v4, v9, :cond_9

    .line 420
    .line 421
    const-string v9, "reload_onconnectivity"

    .line 422
    .line 423
    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 424
    .line 425
    .line 426
    move-result-object v9

    .line 427
    check-cast v9, Landroid/preference/TwoStatePreference;

    .line 428
    .line 429
    const/4 v10, 0x1

    .line 430
    invoke-virtual {v9, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 431
    .line 432
    .line 433
    const/4 v10, 0x0

    .line 434
    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 435
    .line 436
    .line 437
    :cond_9
    const-string v9, "forwarding"

    .line 438
    .line 439
    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 440
    .line 441
    .line 442
    move-result-object v9

    .line 443
    new-instance v10, Leu/faircode/netguard/ActivitySettings$2;

    .line 444
    .line 445
    invoke-direct {v10, v0}, Leu/faircode/netguard/ActivitySettings$2;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 449
    .line 450
    .line 451
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->canFilter(Landroid/content/Context;)Z

    .line 452
    .line 453
    .line 454
    move-result v10

    .line 455
    const-string v11, "log_app"

    .line 456
    .line 457
    invoke-virtual {v1, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 458
    .line 459
    .line 460
    move-result-object v11

    .line 461
    check-cast v11, Landroid/preference/TwoStatePreference;

    .line 462
    .line 463
    const-string v13, "filter"

    .line 464
    .line 465
    invoke-virtual {v1, v13}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 466
    .line 467
    .line 468
    move-result-object v13

    .line 469
    check-cast v13, Landroid/preference/TwoStatePreference;

    .line 470
    .line 471
    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v13, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 475
    .line 476
    .line 477
    if-nez v10, :cond_a

    .line 478
    .line 479
    const v10, 0x7f100094

    .line 480
    .line 481
    .line 482
    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v13, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 486
    .line 487
    .line 488
    :cond_a
    const-string v10, "vpn4"

    .line 489
    .line 490
    invoke-virtual {v1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 491
    .line 492
    .line 493
    move-result-object v11

    .line 494
    const/4 v13, 0x1

    .line 495
    new-array v15, v13, [Ljava/lang/Object;

    .line 496
    .line 497
    const-string v13, "10.1.10.1"

    .line 498
    .line 499
    invoke-interface {v2, v10, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    const/4 v13, 0x0

    .line 504
    aput-object v10, v15, v13

    .line 505
    .line 506
    const v10, 0x7f1000e2

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v10, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v10

    .line 513
    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 514
    .line 515
    .line 516
    const-string v10, "vpn6"

    .line 517
    .line 518
    invoke-virtual {v1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 519
    .line 520
    .line 521
    move-result-object v11

    .line 522
    const/4 v15, 0x1

    .line 523
    new-array v13, v15, [Ljava/lang/Object;

    .line 524
    .line 525
    const-string v15, "fd00:1:fd00:1:fd00:1:fd00:1"

    .line 526
    .line 527
    invoke-interface {v2, v10, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v10

    .line 531
    const/4 v15, 0x0

    .line 532
    aput-object v10, v13, v15

    .line 533
    .line 534
    const v10, 0x7f1000e3

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v10, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v10

    .line 541
    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 542
    .line 543
    .line 544
    const-string v10, "dns"

    .line 545
    .line 546
    invoke-virtual {v1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 547
    .line 548
    .line 549
    move-result-object v11

    .line 550
    check-cast v11, Landroid/preference/EditTextPreference;

    .line 551
    .line 552
    const-string v13, "dns2"

    .line 553
    .line 554
    invoke-virtual {v1, v13}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 555
    .line 556
    .line 557
    move-result-object v15

    .line 558
    check-cast v15, Landroid/preference/EditTextPreference;

    .line 559
    .line 560
    move-object/from16 v17, v8

    .line 561
    .line 562
    const-string v8, "validate"

    .line 563
    .line 564
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 565
    .line 566
    .line 567
    move-result-object v18

    .line 568
    move-object/from16 v19, v7

    .line 569
    .line 570
    move-object/from16 v7, v18

    .line 571
    .line 572
    check-cast v7, Landroid/preference/EditTextPreference;

    .line 573
    .line 574
    move-object/from16 v18, v9

    .line 575
    .line 576
    const-string v9, "ttl"

    .line 577
    .line 578
    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 579
    .line 580
    .line 581
    move-result-object v20

    .line 582
    move-object/from16 v21, v3

    .line 583
    .line 584
    move-object/from16 v3, v20

    .line 585
    .line 586
    check-cast v3, Landroid/preference/EditTextPreference;

    .line 587
    .line 588
    move/from16 v22, v4

    .line 589
    .line 590
    move-object/from16 v20, v6

    .line 591
    .line 592
    const/4 v6, 0x1

    .line 593
    new-array v4, v6, [Ljava/lang/Object;

    .line 594
    .line 595
    invoke-interface {v2, v10, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v10

    .line 599
    const/16 v16, 0x0

    .line 600
    .line 601
    aput-object v10, v4, v16

    .line 602
    .line 603
    const v10, 0x7f1000a8

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    invoke-virtual {v11, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 611
    .line 612
    .line 613
    new-array v4, v6, [Ljava/lang/Object;

    .line 614
    .line 615
    invoke-interface {v2, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v11

    .line 619
    aput-object v11, v4, v16

    .line 620
    .line 621
    invoke-virtual {v0, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    invoke-virtual {v15, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 626
    .line 627
    .line 628
    new-array v4, v6, [Ljava/lang/Object;

    .line 629
    .line 630
    const-string v10, "www.google.com"

    .line 631
    .line 632
    invoke-interface {v2, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v8

    .line 636
    aput-object v8, v4, v16

    .line 637
    .line 638
    const v8, 0x7f1000e1

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 646
    .line 647
    .line 648
    new-array v4, v6, [Ljava/lang/Object;

    .line 649
    .line 650
    const-string v7, "259200"

    .line 651
    .line 652
    invoke-interface {v2, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v7

    .line 656
    aput-object v7, v4, v16

    .line 657
    .line 658
    const v7, 0x7f1000df

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 666
    .line 667
    .line 668
    const-string v3, "socks5_addr"

    .line 669
    .line 670
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    new-array v7, v6, [Ljava/lang/Object;

    .line 675
    .line 676
    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    aput-object v3, v7, v16

    .line 681
    .line 682
    const v3, 0x7f1000cc

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 690
    .line 691
    .line 692
    const-string v3, "socks5_port"

    .line 693
    .line 694
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    new-array v7, v6, [Ljava/lang/Object;

    .line 699
    .line 700
    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    aput-object v3, v7, v16

    .line 705
    .line 706
    const v3, 0x7f1000cf

    .line 707
    .line 708
    .line 709
    invoke-virtual {v0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 714
    .line 715
    .line 716
    const-string v3, "socks5_username"

    .line 717
    .line 718
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    new-array v7, v6, [Ljava/lang/Object;

    .line 723
    .line 724
    invoke-interface {v2, v3, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v8

    .line 728
    aput-object v8, v7, v16

    .line 729
    .line 730
    const v8, 0x7f1000d0

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v7

    .line 737
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 738
    .line 739
    .line 740
    const-string v4, "socks5_password"

    .line 741
    .line 742
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 743
    .line 744
    .line 745
    move-result-object v4

    .line 746
    new-array v7, v6, [Ljava/lang/Object;

    .line 747
    .line 748
    const-string v6, ""

    .line 749
    .line 750
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 755
    .line 756
    .line 757
    move-result v3

    .line 758
    if-eqz v3, :cond_b

    .line 759
    .line 760
    goto :goto_6

    .line 761
    :cond_b
    const-string v14, "*****"

    .line 762
    .line 763
    :goto_6
    const/4 v3, 0x0

    .line 764
    aput-object v14, v7, v3

    .line 765
    .line 766
    const v6, 0x7f1000ce

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v6

    .line 773
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 774
    .line 775
    .line 776
    const-string v4, "pcap_record_size"

    .line 777
    .line 778
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 779
    .line 780
    .line 781
    move-result-object v6

    .line 782
    const/4 v7, 0x1

    .line 783
    new-array v8, v7, [Ljava/lang/Object;

    .line 784
    .line 785
    const-string v9, "64"

    .line 786
    .line 787
    invoke-interface {v2, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    aput-object v4, v8, v3

    .line 792
    .line 793
    const v4, 0x7f1000c4

    .line 794
    .line 795
    .line 796
    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 801
    .line 802
    .line 803
    const-string v4, "pcap_file_size"

    .line 804
    .line 805
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 806
    .line 807
    .line 808
    move-result-object v6

    .line 809
    new-array v8, v7, [Ljava/lang/Object;

    .line 810
    .line 811
    const-string v9, "2"

    .line 812
    .line 813
    invoke-interface {v2, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v4

    .line 817
    aput-object v4, v8, v3

    .line 818
    .line 819
    const v4, 0x7f1000c3

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 827
    .line 828
    .line 829
    const-string v4, "watchdog"

    .line 830
    .line 831
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    new-array v6, v7, [Ljava/lang/Object;

    .line 836
    .line 837
    const-string v7, "watchdog"

    .line 838
    .line 839
    invoke-interface {v2, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v7

    .line 843
    aput-object v7, v6, v3

    .line 844
    .line 845
    const v3, 0x7f1000e4

    .line 846
    .line 847
    .line 848
    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v3

    .line 852
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 853
    .line 854
    .line 855
    const-string v3, "show_resolved"

    .line 856
    .line 857
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 858
    .line 859
    .line 860
    move-result-object v3

    .line 861
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isPlayStoreInstall(Landroid/content/Context;)Z

    .line 862
    .line 863
    .line 864
    move-result v4

    .line 865
    if-eqz v4, :cond_c

    .line 866
    .line 867
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 868
    .line 869
    .line 870
    goto :goto_7

    .line 871
    :cond_c
    new-instance v4, Leu/faircode/netguard/ActivitySettings$3;

    .line 872
    .line 873
    invoke-direct {v4, v0}, Leu/faircode/netguard/ActivitySettings$3;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 877
    .line 878
    .line 879
    :goto_7
    const/16 v3, 0x18

    .line 880
    .line 881
    move/from16 v4, v22

    .line 882
    .line 883
    if-lt v4, v3, :cond_d

    .line 884
    .line 885
    const-string v3, "show_top"

    .line 886
    .line 887
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 888
    .line 889
    .line 890
    move-result-object v3

    .line 891
    move-object/from16 v6, v20

    .line 892
    .line 893
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 894
    .line 895
    .line 896
    :cond_d
    const-string v3, "stats_frequency"

    .line 897
    .line 898
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    check-cast v3, Landroid/preference/EditTextPreference;

    .line 903
    .line 904
    const-string v4, "stats_samples"

    .line 905
    .line 906
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    check-cast v4, Landroid/preference/EditTextPreference;

    .line 911
    .line 912
    const/4 v6, 0x1

    .line 913
    new-array v7, v6, [Ljava/lang/Object;

    .line 914
    .line 915
    const-string v8, "stats_frequency"

    .line 916
    .line 917
    const-string v9, "1000"

    .line 918
    .line 919
    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v8

    .line 923
    const/4 v9, 0x0

    .line 924
    aput-object v8, v7, v9

    .line 925
    .line 926
    const v8, 0x7f1000d3

    .line 927
    .line 928
    .line 929
    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v7

    .line 933
    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 934
    .line 935
    .line 936
    new-array v3, v6, [Ljava/lang/Object;

    .line 937
    .line 938
    const-string v6, "stats_samples"

    .line 939
    .line 940
    const-string v7, "90"

    .line 941
    .line 942
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v6

    .line 946
    aput-object v6, v3, v9

    .line 947
    .line 948
    const v6, 0x7f1000d4

    .line 949
    .line 950
    .line 951
    invoke-virtual {v0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 956
    .line 957
    .line 958
    const-string v3, "export"

    .line 959
    .line 960
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    invoke-direct/range {p0 .. p0}, Leu/faircode/netguard/ActivitySettings;->getIntentCreateExport()Landroid/content/Intent;

    .line 965
    .line 966
    .line 967
    move-result-object v4

    .line 968
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 969
    .line 970
    .line 971
    move-result-object v6

    .line 972
    invoke-virtual {v4, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 973
    .line 974
    .line 975
    move-result-object v4

    .line 976
    if-eqz v4, :cond_e

    .line 977
    .line 978
    const/4 v4, 0x1

    .line 979
    goto :goto_8

    .line 980
    :cond_e
    const/4 v4, 0x0

    .line 981
    :goto_8
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 982
    .line 983
    .line 984
    new-instance v4, Leu/faircode/netguard/ActivitySettings$4;

    .line 985
    .line 986
    invoke-direct {v4, v0}, Leu/faircode/netguard/ActivitySettings$4;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 990
    .line 991
    .line 992
    const-string v3, "import"

    .line 993
    .line 994
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 995
    .line 996
    .line 997
    move-result-object v3

    .line 998
    invoke-direct/range {p0 .. p0}, Leu/faircode/netguard/ActivitySettings;->getIntentOpenExport()Landroid/content/Intent;

    .line 999
    .line 1000
    .line 1001
    move-result-object v4

    .line 1002
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v6

    .line 1006
    invoke-virtual {v4, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v4

    .line 1010
    if-eqz v4, :cond_f

    .line 1011
    .line 1012
    const/4 v4, 0x1

    .line 1013
    goto :goto_9

    .line 1014
    :cond_f
    const/4 v4, 0x0

    .line 1015
    :goto_9
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1016
    .line 1017
    .line 1018
    new-instance v4, Leu/faircode/netguard/ActivitySettings$5;

    .line 1019
    .line 1020
    invoke-direct {v4, v0}, Leu/faircode/netguard/ActivitySettings$5;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1024
    .line 1025
    .line 1026
    const-string v3, "use_hosts"

    .line 1027
    .line 1028
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v3

    .line 1032
    const-string v4, "rcode"

    .line 1033
    .line 1034
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v4

    .line 1038
    check-cast v4, Landroid/preference/EditTextPreference;

    .line 1039
    .line 1040
    const-string v6, "hosts_import"

    .line 1041
    .line 1042
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v6

    .line 1046
    const-string v7, "hosts_import_append"

    .line 1047
    .line 1048
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v7

    .line 1052
    const-string v8, "hosts_url"

    .line 1053
    .line 1054
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v8

    .line 1058
    check-cast v8, Landroid/preference/EditTextPreference;

    .line 1059
    .line 1060
    const-string v9, "hosts_download"

    .line 1061
    .line 1062
    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v9

    .line 1066
    const/4 v10, 0x1

    .line 1067
    new-array v11, v10, [Ljava/lang/Object;

    .line 1068
    .line 1069
    const-string v10, "rcode"

    .line 1070
    .line 1071
    const-string v12, "3"

    .line 1072
    .line 1073
    invoke-interface {v2, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v10

    .line 1077
    const/4 v12, 0x0

    .line 1078
    aput-object v10, v11, v12

    .line 1079
    .line 1080
    const v10, 0x7f1000c5

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v10

    .line 1087
    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1088
    .line 1089
    .line 1090
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isPlayStoreInstall(Landroid/content/Context;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v10

    .line 1094
    if-nez v10, :cond_10

    .line 1095
    .line 1096
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->hasValidFingerprint(Landroid/content/Context;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v10

    .line 1100
    if-nez v10, :cond_11

    .line 1101
    .line 1102
    :cond_10
    const-string v10, "update_check"

    .line 1103
    .line 1104
    invoke-virtual {v1, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v10

    .line 1108
    move-object/from16 v11, v21

    .line 1109
    .line 1110
    invoke-virtual {v11, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1111
    .line 1112
    .line 1113
    :cond_11
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isPlayStoreInstall(Landroid/content/Context;)Z

    .line 1114
    .line 1115
    .line 1116
    move-result v10

    .line 1117
    if-eqz v10, :cond_12

    .line 1118
    .line 1119
    const-string v2, "NetGuard.Settings"

    .line 1120
    .line 1121
    const-string v10, "Play store install"

    .line 1122
    .line 1123
    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1130
    .line 1131
    .line 1132
    move-object/from16 v2, v18

    .line 1133
    .line 1134
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1135
    .line 1136
    .line 1137
    move-object/from16 v2, v19

    .line 1138
    .line 1139
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1149
    .line 1150
    .line 1151
    const/4 v10, 0x1

    .line 1152
    const/4 v11, 0x0

    .line 1153
    goto :goto_c

    .line 1154
    :cond_12
    const-string v3, "hosts_last_import"

    .line 1155
    .line 1156
    const/4 v4, 0x0

    .line 1157
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v3

    .line 1161
    const-string v4, "hosts_last_download"

    .line 1162
    .line 1163
    const/4 v5, 0x0

    .line 1164
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v4

    .line 1168
    const/4 v10, 0x1

    .line 1169
    if-eqz v3, :cond_13

    .line 1170
    .line 1171
    new-array v5, v10, [Ljava/lang/Object;

    .line 1172
    .line 1173
    const/4 v11, 0x0

    .line 1174
    aput-object v3, v5, v11

    .line 1175
    .line 1176
    const v3, 0x7f100077

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v3

    .line 1183
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1184
    .line 1185
    .line 1186
    goto :goto_a

    .line 1187
    :cond_13
    const/4 v11, 0x0

    .line 1188
    :goto_a
    if-eqz v4, :cond_14

    .line 1189
    .line 1190
    new-array v3, v10, [Ljava/lang/Object;

    .line 1191
    .line 1192
    aput-object v4, v3, v11

    .line 1193
    .line 1194
    const v4, 0x7f10006d

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v3

    .line 1201
    invoke-virtual {v9, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1202
    .line 1203
    .line 1204
    :cond_14
    invoke-direct/range {p0 .. p0}, Leu/faircode/netguard/ActivitySettings;->getIntentOpenHosts()Landroid/content/Intent;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v4

    .line 1212
    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v3

    .line 1216
    if-eqz v3, :cond_15

    .line 1217
    .line 1218
    const/4 v3, 0x1

    .line 1219
    goto :goto_b

    .line 1220
    :cond_15
    const/4 v3, 0x0

    .line 1221
    :goto_b
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1222
    .line 1223
    .line 1224
    new-instance v3, Leu/faircode/netguard/ActivitySettings$6;

    .line 1225
    .line 1226
    invoke-direct {v3, v0}, Leu/faircode/netguard/ActivitySettings$6;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v3

    .line 1236
    invoke-virtual {v7, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1237
    .line 1238
    .line 1239
    new-instance v3, Leu/faircode/netguard/ActivitySettings$7;

    .line 1240
    .line 1241
    invoke-direct {v3, v0}, Leu/faircode/netguard/ActivitySettings$7;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v7, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v3

    .line 1251
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1252
    .line 1253
    .line 1254
    new-instance v3, Leu/faircode/netguard/ActivitySettings$8;

    .line 1255
    .line 1256
    invoke-direct {v3, v0, v1, v2, v9}, Leu/faircode/netguard/ActivitySettings$8;-><init>(Leu/faircode/netguard/ActivitySettings;Landroid/preference/PreferenceScreen;Landroid/content/SharedPreferences;Landroid/preference/Preference;)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v9, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1260
    .line 1261
    .line 1262
    :goto_c
    invoke-static/range {p0 .. p0}, Leu/faircode/netguard/Util;->isDebuggable(Landroid/content/Context;)Z

    .line 1263
    .line 1264
    .line 1265
    move-result v2

    .line 1266
    if-nez v2, :cond_16

    .line 1267
    .line 1268
    const-string v2, "screen_development"

    .line 1269
    .line 1270
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v2

    .line 1274
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1275
    .line 1276
    .line 1277
    :cond_16
    new-instance v2, Leu/faircode/netguard/ActivitySettings$9;

    .line 1278
    .line 1279
    invoke-direct {v2, v0}, Leu/faircode/netguard/ActivitySettings$9;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 1280
    .line 1281
    .line 1282
    const-string v3, "technical_info"

    .line 1283
    .line 1284
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v3

    .line 1288
    const-string v4, "technical_network"

    .line 1289
    .line 1290
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v4

    .line 1294
    sget-object v5, Leu/faircode/netguard/ActivitySettings;->INTENT_VPN_SETTINGS:Landroid/content/Intent;

    .line 1295
    .line 1296
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v6

    .line 1300
    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v6

    .line 1304
    if-eqz v6, :cond_17

    .line 1305
    .line 1306
    goto :goto_d

    .line 1307
    :cond_17
    const/4 v10, 0x0

    .line 1308
    :goto_d
    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1318
    .line 1319
    .line 1320
    invoke-direct/range {p0 .. p0}, Leu/faircode/netguard/ActivitySettings;->updateTechnicalInfo()V

    .line 1321
    .line 1322
    .line 1323
    move-object/from16 v2, v17

    .line 1324
    .line 1325
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v3

    .line 1329
    invoke-direct {v0, v3, v2}, Leu/faircode/netguard/ActivitySettings;->markPro(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    const-string v2, "install"

    .line 1333
    .line 1334
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v2

    .line 1338
    const-string v3, "notify"

    .line 1339
    .line 1340
    invoke-direct {v0, v2, v3}, Leu/faircode/netguard/ActivitySettings;->markPro(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 1341
    .line 1342
    .line 1343
    const-string v2, "show_stats"

    .line 1344
    .line 1345
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v1

    .line 1349
    const-string v2, "speed"

    .line 1350
    .line 1351
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ActivitySettings;->markPro(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 1352
    .line 1353
    .line 1354
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, p3

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    aget p3, p3, v2

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p3, 0x0

    .line 20
    :goto_0
    const/4 v1, 0x5

    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "disable_on_call"

    .line 28
    .line 29
    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/preference/TwoStatePreference;

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-eqz p3, :cond_2

    .line 46
    .line 47
    const-string p1, "permission granted"

    .line 48
    .line 49
    invoke-static {p1, p0, v2}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/y;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Leu/faircode/netguard/ActivitySettings;->checkPermissions(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings;->interactiveStateReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    invoke-static {p0, v1, v0}, Landroidx/core/content/f;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings;->connectivityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    .line 47
    invoke-static {p0, v1, v0}, Landroidx/core/content/f;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9

    const-string v0, "theme"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "show_stats"

    const-class v3, Leu/faircode/netguard/ActivityPro;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const-string v1, "teal"

    .line 2
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0, p0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "install"

    .line 6
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "notify"

    invoke-static {v1, p0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-static {p1, p2, v4}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 9
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 10
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "speed"

    invoke-static {v1, p0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 15
    :cond_2
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 16
    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    instance-of v3, v1, Ljava/lang/String;

    const-string v5, ""

    if-eqz v3, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    const-string v1, "screen_on"

    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "changed "

    if-eqz v1, :cond_5

    .line 20
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_5
    const-string v1, "whitelist_wifi"

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "screen_wifi"

    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_e

    :cond_6
    const-string v1, "whitelist_other"

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "screen_other"

    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_d

    :cond_7
    const-string v1, "whitelist_roaming"

    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_8
    const-string v1, "auto_enable"

    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "0"

    const/4 v7, 0x1

    if-eqz v1, :cond_9

    .line 28
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const p1, 0x7f1000a0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_9
    const-string v1, "screen_delay"

    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 30
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const p1, 0x7f1000a7

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 31
    :cond_a
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "dark_theme"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_c

    :cond_b
    const-string v0, "subnet"

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 33
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_c
    const-string v0, "tethering"

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 35
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_d
    const-string v0, "lan"

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_e
    const-string v0, "ip6"

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_f
    const-string v0, "wifi_homes"

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_11

    .line 41
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/MultiSelectListPreference;

    .line 42
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const v5, 0x7f1000e8

    if-lez v2, :cond_10

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, ", "

    .line 44
    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_10
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 45
    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_11
    const-string v0, "use_metered"

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_12
    const-string v0, "unmetered_2g"

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "unmetered_3g"

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "unmetered_4g"

    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_b

    :cond_13
    const-string v0, "national_roaming"

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 53
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_14
    const-string v0, "eu_roaming"

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 55
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_15
    const-string v0, "disable_on_call"

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 57
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 58
    invoke-direct {p0, p2}, Leu/faircode/netguard/ActivitySettings;->checkPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 59
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    .line 60
    :cond_16
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_17
    const-string v0, "lockdown_wifi"

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "lockdown_other"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_a

    :cond_18
    const-string v0, "manage_system"

    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 63
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v1, "show_user"

    .line 64
    invoke-static {p1, v1, v7}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 65
    :cond_19
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "show_system"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_1a
    const-string v0, "log_app"

    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 68
    new-instance p1, Landroid/content/Intent;

    const-string v0, "eu.faircode.netguard.ACTION_RULES_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p0}, Lr/d;->b(Landroid/content/Context;)Lr/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr/d;->d(Landroid/content/Intent;)V

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_1b
    const-string v0, "notify_access"

    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 72
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_1c
    const-string v0, "filter"

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_1e

    .line 74
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 75
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0028

    .line 76
    invoke-virtual {v0, v1, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    new-instance v1, Landroidx/appcompat/app/m;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/m;->m(Landroid/view/View;)V

    .line 79
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/m;->d(Z)V

    new-instance v0, Leu/faircode/netguard/ActivitySettings$11;

    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivitySettings$11;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    const v2, 0x1040013

    .line 80
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/m;->j(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Leu/faircode/netguard/ActivitySettings$10;

    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivitySettings$10;-><init>(Leu/faircode/netguard/ActivitySettings;)V

    .line 81
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/m;->h(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    invoke-virtual {v1}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    move-result-object v0

    iput-object v0, p0, Leu/faircode/netguard/ActivitySettings;->dialogFilter:Landroidx/appcompat/app/n;

    .line 83
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 84
    :cond_1d
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_1e
    const-string v0, "use_hosts"

    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 87
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_1f
    const-string v0, "vpn4"

    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 89
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :try_start_0
    invoke-direct {p0, v0, v4}, Leu/faircode/netguard/ActivitySettings;->checkAddress(Ljava/lang/String;Z)V

    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 92
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 95
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    :cond_20
    :goto_1
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "10.1.10.1"

    .line 97
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const p1, 0x7f1000e2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_21
    const-string v0, "vpn6"

    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 101
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :try_start_1
    invoke-direct {p0, v0, v4}, Leu/faircode/netguard/ActivitySettings;->checkAddress(Ljava/lang/String;Z)V

    .line 103
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 107
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    :cond_22
    :goto_2
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "fd00:1:fd00:1:fd00:1:fd00:1"

    .line 109
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const p1, 0x7f1000e3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_23
    const-string v0, "dns"

    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "dns2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_8

    :cond_24
    const-string v0, "validate"

    .line 113
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "www.google.com"

    .line 114
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :try_start_2
    invoke-direct {p0, v1}, Leu/faircode/netguard/ActivitySettings;->checkDomain(Ljava/lang/String;)V

    .line 116
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    .line 117
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 120
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 121
    :cond_25
    :goto_3
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    .line 122
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const p1, 0x7f1000e1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_26
    const-string v0, "ttl"

    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 126
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "259200"

    .line 127
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const p1, 0x7f1000df

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_27
    const-string v0, "rcode"

    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 130
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "3"

    .line 131
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const p1, 0x7f1000c5

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_28
    const-string v0, "socks5_enabled"

    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 135
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    :cond_29
    const-string v0, "socks5_addr"

    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 137
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {v0}, Leu/faircode/netguard/Util;->isNumericAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_4

    .line 139
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad address"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v2

    .line 140
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 143
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    :cond_2b
    :goto_4
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    .line 145
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const p1, 0x7f1000cc

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_2c
    const-string v0, "socks5_port"

    .line 148
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 149
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const p1, 0x7f1000cf

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_2d
    const-string v0, "socks5_username"

    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 152
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const p1, 0x7f1000d0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_2e
    const-string v0, "socks5_password"

    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 155
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_5

    :cond_2f
    const-string v1, "*****"

    :goto_5
    aput-object v1, v2, v4

    const p1, 0x7f1000ce

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    :cond_30
    const-string v0, "pcap_record_size"

    .line 157
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "pcap_file_size"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto/16 :goto_6

    :cond_31
    const-string v0, "watchdog"

    .line 158
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 159
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const p1, 0x7f1000e4

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_f

    .line 161
    :cond_32
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Leu/faircode/netguard/ServiceSinkhole;->reloadStats(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_f

    :cond_33
    const-string v0, "stats_frequency"

    .line 163
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 164
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "1000"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const p1, 0x7f1000d3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_34
    const-string v0, "stats_samples"

    .line 165
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 166
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "90"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const p1, 0x7f1000d4

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_35
    const-string v0, "hosts_url"

    .line 167
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 168
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_36
    const-string p1, "loglevel"

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 170
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto/16 :goto_f

    .line 171
    :cond_37
    :goto_6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 172
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "64"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    const p2, 0x7f1000c4

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 173
    :cond_38
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "2"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    const p2, 0x7f1000c3

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    :goto_7
    invoke-static {v4, p0}, Leu/faircode/netguard/ServiceSinkhole;->setPcap(ZLandroid/content/Context;)V

    .line 175
    new-instance p2, Ljava/io/File;

    const-string v0, "data"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string v1, "netguard.pcap"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_39

    const-string p2, "NetGuard.Settings"

    const-string v0, "Delete PCAP failed"

    .line 177
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const-string p2, "pcap"

    .line 178
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 179
    invoke-static {v7, p0}, Leu/faircode/netguard/ServiceSinkhole;->setPcap(ZLandroid/content/Context;)V

    goto/16 :goto_f

    .line 180
    :cond_3a
    :goto_8
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :try_start_4
    invoke-direct {p0, v0, v7}, Leu/faircode/netguard/ActivitySettings;->checkAddress(Ljava/lang/String;Z)V

    .line 182
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v2

    .line 183
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 186
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    :cond_3b
    :goto_9
    invoke-direct {p0}, Leu/faircode/netguard/ActivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    .line 188
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const p1, 0x7f1000a8

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_f

    .line 191
    :cond_3c
    :goto_a
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto :goto_f

    .line 192
    :cond_3d
    :goto_b
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto :goto_f

    .line 193
    :cond_3e
    :goto_c
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_f

    .line 194
    :cond_3f
    :goto_d
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    goto :goto_f

    .line 195
    :cond_40
    :goto_e
    invoke-static {v3, p2, p0, v4}, LB/g;->h(Ljava/lang/String;Ljava/lang/String;Leu/faircode/netguard/ActivitySettings;Z)V

    :cond_41
    :goto_f
    return-void
.end method
