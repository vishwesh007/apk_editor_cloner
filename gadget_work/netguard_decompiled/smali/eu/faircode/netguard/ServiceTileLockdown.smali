.class public Leu/faircode/netguard/ServiceTileLockdown;
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
    const-string v1, "lockdown"

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
    invoke-static {p0}, LB/f;->c(Leu/faircode/netguard/ServiceTileLockdown;)Landroid/service/quicksettings/Tile;

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
    const v0, 0x7f080089

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const v0, 0x7f08008a

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
    .locals 4

    .line 1
    const-string v0, "NetGuard.TileLockdown"

    .line 2
    .line 3
    const-string v1, "Click"

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
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "lockdown"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    xor-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    .line 31
    .line 32
    const-string v0, "tile"

    .line 33
    .line 34
    invoke-static {v0, p0, v3}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Leu/faircode/netguard/WidgetLockdown;->updateWidgets(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "lockdown"

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
    invoke-direct {p0}, Leu/faircode/netguard/ServiceTileLockdown;->update()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onStartListening()V
    .locals 2

    .line 1
    const-string v0, "NetGuard.TileLockdown"

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
    invoke-direct {p0}, Leu/faircode/netguard/ServiceTileLockdown;->update()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onStopListening()V
    .locals 2

    .line 1
    const-string v0, "NetGuard.TileLockdown"

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
