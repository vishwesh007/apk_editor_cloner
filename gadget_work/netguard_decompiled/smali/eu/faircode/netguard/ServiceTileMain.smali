.class public Leu/faircode/netguard/ServiceTileMain;
.super Landroid/service/quicksettings/TileService;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private update()V
    .locals 3

    .line 1
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "enabled"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p0}, LB/d;->e(Leu/faircode/netguard/ServiceTileMain;)Landroid/service/quicksettings/Tile;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    :goto_0
    invoke-static {v1, v2}, LB/d;->m(Landroid/service/quicksettings/Tile;I)V

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const v0, 0x7f080094

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const v0, 0x7f080095

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-static {p0, v0}, LE0/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, LB/f;->k(Landroid/service/quicksettings/Tile;Landroid/graphics/drawable/Icon;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, LB/d;->l(Landroid/service/quicksettings/Tile;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 10

    .line 1
    const-string v0, "NetGuard.TileMain"

    .line 2
    .line 3
    const-string v1, "Click"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, LE0/a;->b(Leu/faircode/netguard/ServiceTileMain;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/app/AlarmManager;

    .line 13
    .line 14
    new-instance v2, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v3, "eu.faircode.netguard.ON"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, LB/g;->b(Leu/faircode/netguard/ServiceTileMain;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/high16 v4, 0x8000000

    .line 30
    .line 31
    invoke-static {p0, v3, v2, v4}, Leu/faircode/netguard/PendingIntentCompat;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "enabled"

    .line 43
    .line 44
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    xor-int/lit8 v6, v6, 0x1

    .line 49
    .line 50
    invoke-static {v4, v5, v6}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v5, "tile"

    .line 54
    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    invoke-static {v5, p0}, Leu/faircode/netguard/ServiceSinkhole;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v5, p0, v3}, Leu/faircode/netguard/ServiceSinkhole;->stop(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 62
    .line 63
    .line 64
    const-string v5, "auto_enable"

    .line 65
    .line 66
    const-string v6, "0"

    .line 67
    .line 68
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-lez v4, :cond_2

    .line 77
    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v6, "Scheduling enabled after minutes="

    .line 81
    .line 82
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    const/16 v5, 0x17

    .line 98
    .line 99
    const-wide/16 v6, 0x3e8

    .line 100
    .line 101
    if-ge v0, v5, :cond_1

    .line 102
    .line 103
    new-instance v0, Ljava/util/Date;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v8

    .line 112
    mul-int/lit8 v4, v4, 0x3c

    .line 113
    .line 114
    int-to-long v4, v4

    .line 115
    mul-long v4, v4, v6

    .line 116
    .line 117
    add-long/2addr v4, v8

    .line 118
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Ljava/util/Date;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    mul-int/lit8 v4, v4, 0x3c

    .line 132
    .line 133
    int-to-long v3, v4

    .line 134
    mul-long v3, v3, v6

    .line 135
    .line 136
    add-long/2addr v3, v8

    .line 137
    invoke-static {v1, v3, v4, v2}, LE0/c;->e(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "enabled"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Leu/faircode/netguard/ServiceTileMain;->update()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onStartListening()V
    .locals 2

    .line 1
    const-string v0, "NetGuard.TileMain"

    .line 2
    .line 3
    const-string v1, "Start listening"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    invoke-direct {p0}, Leu/faircode/netguard/ServiceTileMain;->update()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onStopListening()V
    .locals 2

    .line 1
    const-string v0, "NetGuard.TileMain"

    .line 2
    .line 3
    const-string v1, "Stop listening"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
