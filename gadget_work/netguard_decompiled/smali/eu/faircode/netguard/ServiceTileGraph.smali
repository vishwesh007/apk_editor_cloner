.class public Leu/faircode/netguard/ServiceTileGraph;
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
    const-string v1, "show_stats"

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
    invoke-static {p0}, LB/e;->c(Leu/faircode/netguard/ServiceTileGraph;)Landroid/service/quicksettings/Tile;

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
    const v0, 0x7f08007a

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const v0, 0x7f08007b

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
    .locals 5

    .line 1
    const-string v0, "NetGuard.TileGraph"

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
    const-string v1, "show_stats"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    xor-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-string v4, "speed"

    .line 24
    .line 25
    invoke-static {v4, p0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    const v0, 0x7f10013b

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v0, v1, v3}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    :goto_0
    const-string v0, "tile"

    .line 46
    .line 47
    invoke-static {v0, p0}, Leu/faircode/netguard/ServiceSinkhole;->reloadStats(Ljava/lang/String;Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "show_stats"

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
    invoke-direct {p0}, Leu/faircode/netguard/ServiceTileGraph;->update()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onStartListening()V
    .locals 2

    .line 1
    const-string v0, "NetGuard.TileGraph"

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
    invoke-direct {p0}, Leu/faircode/netguard/ServiceTileGraph;->update()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onStopListening()V
    .locals 2

    .line 1
    const-string v0, "NetGuard.TileGraph"

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
