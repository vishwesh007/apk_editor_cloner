.class public Leu/faircode/netguard/ActivityMain;
.super Landroidx/appcompat/app/q;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private accessChangedListener:Leu/faircode/netguard/DatabaseHelper$AccessChangedListener;

.field private adapter:Leu/faircode/netguard/AdapterRule;

.field private dialogAbout:Landroidx/appcompat/app/n;

.field private dialogDoze:Landroidx/appcompat/app/n;

.field private dialogFirst:Landroidx/appcompat/app/n;

.field private dialogLegend:Landroidx/appcompat/app/n;

.field private dialogVpn:Landroidx/appcompat/app/n;

.field private iab:Leu/faircode/netguard/IAB;

.field private ivIcon:Landroid/widget/ImageView;

.field private ivMetered:Landroid/widget/ImageView;

.field private ivQueue:Landroid/widget/ImageView;

.field private menuSearch:Landroid/view/MenuItem;

.field private onQueueChanged:Landroid/content/BroadcastReceiver;

.field private onRulesChanged:Landroid/content/BroadcastReceiver;

.field private packageChangedReceiver:Landroid/content/BroadcastReceiver;

.field private running:Z

.field private swEnabled:Landroidx/appcompat/widget/SwitchCompat;

.field private swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/q;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Leu/faircode/netguard/ActivityMain;->running:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->adapter:Leu/faircode/netguard/AdapterRule;

    .line 9
    .line 10
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->menuSearch:Landroid/view/MenuItem;

    .line 11
    .line 12
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogFirst:Landroidx/appcompat/app/n;

    .line 13
    .line 14
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogVpn:Landroidx/appcompat/app/n;

    .line 15
    .line 16
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogDoze:Landroidx/appcompat/app/n;

    .line 17
    .line 18
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogLegend:Landroidx/appcompat/app/n;

    .line 19
    .line 20
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogAbout:Landroidx/appcompat/app/n;

    .line 21
    .line 22
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->iab:Leu/faircode/netguard/IAB;

    .line 23
    .line 24
    new-instance v0, Leu/faircode/netguard/ActivityMain$15;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityMain$15;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->accessChangedListener:Leu/faircode/netguard/DatabaseHelper$AccessChangedListener;

    .line 30
    .line 31
    new-instance v0, Leu/faircode/netguard/ActivityMain$16;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityMain$16;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->onRulesChanged:Landroid/content/BroadcastReceiver;

    .line 37
    .line 38
    new-instance v0, Leu/faircode/netguard/ActivityMain$17;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityMain$17;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->onQueueChanged:Landroid/content/BroadcastReceiver;

    .line 44
    .line 45
    new-instance v0, Leu/faircode/netguard/ActivityMain$18;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityMain$18;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->packageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    .line 52
    return-void
.end method

.method static synthetic access$000(Leu/faircode/netguard/ActivityMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->menu_about()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Leu/faircode/netguard/ActivityMain;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityMain;->ivQueue:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityMain;->adapter:Leu/faircode/netguard/AdapterRule;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Leu/faircode/netguard/ActivityMain;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityMain;->ivIcon:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Leu/faircode/netguard/ActivityMain;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityMain;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Leu/faircode/netguard/ActivityMain;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivityMain;->updateSearch(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1502(Leu/faircode/netguard/ActivityMain;Landroidx/appcompat/app/n;)Landroidx/appcompat/app/n;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain;->dialogDoze:Landroidx/appcompat/app/n;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1600(Leu/faircode/netguard/ActivityMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->checkDataSaving()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1702(Leu/faircode/netguard/ActivityMain;Landroidx/appcompat/app/n;)Landroidx/appcompat/app/n;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain;->dialogLegend:Landroidx/appcompat/app/n;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1800(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/ActivityMain;->getIntentRate(Landroid/content/Context;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1902(Leu/faircode/netguard/ActivityMain;Landroidx/appcompat/app/n;)Landroidx/appcompat/app/n;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain;->dialogAbout:Landroidx/appcompat/app/n;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Leu/faircode/netguard/ActivityMain;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityMain;->swEnabled:Landroidx/appcompat/widget/SwitchCompat;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Leu/faircode/netguard/ActivityMain;)Landroidx/appcompat/app/n;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityMain;->dialogVpn:Landroidx/appcompat/app/n;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Leu/faircode/netguard/ActivityMain;Landroidx/appcompat/app/n;)Landroidx/appcompat/app/n;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain;->dialogVpn:Landroidx/appcompat/app/n;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Leu/faircode/netguard/ActivityMain;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ActivityMain;->running:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Leu/faircode/netguard/ActivityMain;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityMain;->ivMetered:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Leu/faircode/netguard/ActivityMain;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivityMain;->updateApplicationList(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Leu/faircode/netguard/ActivityMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->showHints()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$802(Leu/faircode/netguard/ActivityMain;Landroidx/appcompat/app/n;)Landroidx/appcompat/app/n;
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain;->dialogFirst:Landroidx/appcompat/app/n;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/ActivityMain;->getIntentPro(Landroid/content/Context;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private checkDataSaving()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "package:"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "android.settings.IGNORE_BACKGROUND_DATA_RESTRICTIONS_SETTINGS"

    .line 32
    .line 33
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Leu/faircode/netguard/Util;->dataSaving(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    :try_start_0
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v3, "nodata"

    .line 58
    .line 59
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_0

    .line 64
    .line 65
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const v4, 0x7f0c0023

    .line 70
    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const v3, 0x7f09005b

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Landroid/widget/CheckBox;

    .line 85
    .line 86
    new-instance v4, Landroidx/appcompat/app/m;

    .line 87
    .line 88
    invoke-direct {v4, p0}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v2}, Landroidx/appcompat/app/m;->m(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    invoke-virtual {v4, v2}, Landroidx/appcompat/app/m;->d(Z)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Leu/faircode/netguard/ActivityMain$31;

    .line 99
    .line 100
    invoke-direct {v2, p0, v1, v3, v0}, Leu/faircode/netguard/ActivityMain$31;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    .line 101
    .line 102
    .line 103
    const v0, 0x1040013

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v0, v2}, Landroidx/appcompat/app/m;->j(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Leu/faircode/netguard/ActivityMain$30;

    .line 110
    .line 111
    invoke-direct {v0, p0, v1, v3}, Leu/faircode/netguard/ActivityMain$30;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    .line 112
    .line 113
    .line 114
    const v1, 0x1040009

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v1, v0}, Landroidx/appcompat/app/m;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Leu/faircode/netguard/ActivityMain$29;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityMain$29;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v0}, Landroidx/appcompat/app/m;->h(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogDoze:Landroidx/appcompat/app/n;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v2, "\n"

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "NetGuard.Main"

    .line 164
    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :cond_0
    :goto_0
    return-void
.end method

.method private checkDoze()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Leu/faircode/netguard/Util;->batteryOptimizing(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, "nodoze"

    .line 36
    .line 37
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const v4, 0x7f0c0025

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const v3, 0x7f09005b

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/widget/CheckBox;

    .line 63
    .line 64
    new-instance v4, Landroidx/appcompat/app/m;

    .line 65
    .line 66
    invoke-direct {v4, p0}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v2}, Landroidx/appcompat/app/m;->m(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-virtual {v4, v2}, Landroidx/appcompat/app/m;->d(Z)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Leu/faircode/netguard/ActivityMain$28;

    .line 77
    .line 78
    invoke-direct {v2, p0, v1, v3, v0}, Leu/faircode/netguard/ActivityMain$28;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    .line 79
    .line 80
    .line 81
    const v0, 0x1040013

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v0, v2}, Landroidx/appcompat/app/m;->j(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Leu/faircode/netguard/ActivityMain$27;

    .line 88
    .line 89
    invoke-direct {v0, p0, v1, v3}, Leu/faircode/netguard/ActivityMain$27;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    .line 90
    .line 91
    .line 92
    const v1, 0x1040009

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v1, v0}, Landroidx/appcompat/app/m;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Leu/faircode/netguard/ActivityMain$26;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityMain$26;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v0}, Landroidx/appcompat/app/m;->h(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogDoze:Landroidx/appcompat/app/n;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->checkDataSaving()V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->checkDataSaving()V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_0
    return-void
.end method

.method private checkExtras(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "Approve"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "NetGuard.Main"

    .line 10
    .line 11
    const-string v0, "Requesting VPN approval"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain;->swEnabled:Landroidx/appcompat/widget/SwitchCompat;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static getIntentApps(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "https://play.google.com/store/apps/dev?id=8420080860664580239"

    .line 4
    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.intent.action.VIEW"

    .line 10
    .line 11
    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method private static getIntentInvite(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.SEND"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "text/plain"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const v1, 0x7f100023

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "android.intent.extra.SUBJECT"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const v2, 0x7f100093

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, "\n\nhttps://www.netguard.me/\n\n"

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v1, "android.intent.extra.TEXT"

    .line 50
    .line 51
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method private static getIntentPro(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/Util;->isPlayStoreInstall(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-class v1, Leu/faircode/netguard/ActivityPro;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v0, "android.intent.action.VIEW"

    .line 18
    .line 19
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "https://contact.faircode.eu/?product=netguardstandalone"

    .line 23
    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method private static getIntentRate(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "market://details?id="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "android.intent.action.VIEW"

    .line 26
    .line 27
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    new-instance v0, Landroid/content/Intent;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "https://play.google.com/store/apps/details?id="

    .line 45
    .line 46
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-object v0
.end method

.method private static getIntentSupport()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "https://github.com/M66B/NetGuard/blob/master/FAQ.md"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method private markPro(Landroid/view/MenuItem;Ljava/lang/String;)V
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
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

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
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method private menu_about()V
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0c001c

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f090193

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/widget/TextView;

    .line 22
    .line 23
    const v2, 0x7f090192

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/widget/TextView;

    .line 31
    .line 32
    const v4, 0x7f090052

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/widget/Button;

    .line 40
    .line 41
    const v5, 0x7f090160

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Landroid/widget/TextView;

    .line 49
    .line 50
    const v6, 0x7f090178

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-static {p0}, Leu/faircode/netguard/Util;->getSelfVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Leu/faircode/netguard/Util;->hasValidFingerprint(Landroid/content/Context;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_0

    .line 71
    .line 72
    const v7, -0x777778

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-static {p0}, Leu/faircode/netguard/Util;->getSelfVersionCode(Landroid/content/Context;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Leu/faircode/netguard/ActivityMain;->getIntentRate(Landroid/content/Context;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-nez v1, :cond_1

    .line 116
    .line 117
    const/16 v3, 0x8

    .line 118
    .line 119
    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Leu/faircode/netguard/ActivityMain$34;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Leu/faircode/netguard/ActivityMain$34;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Landroidx/appcompat/app/m;

    .line 131
    .line 132
    invoke-direct {v1, p0}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/m;->m(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    const/4 v0, 0x1

    .line 139
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/m;->d(Z)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Leu/faircode/netguard/ActivityMain$35;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityMain$35;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/m;->h(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogAbout:Landroidx/appcompat/app/n;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private menu_apps()V
    .locals 1

    .line 1
    invoke-static {p0}, Leu/faircode/netguard/ActivityMain;->getIntentApps(Landroid/content/Context;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private menu_legend()V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f040064

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, 0x7f040063

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    const v2, 0x7f0c002f

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v0, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x7f09009d

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .line 49
    const v1, 0x7f0900a9

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/ImageView;

    .line 57
    .line 58
    const v1, 0x7f0900a8

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroid/widget/ImageView;

    .line 66
    .line 67
    const v1, 0x7f0900a1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/widget/ImageView;

    .line 75
    .line 76
    const v1, 0x7f0900a0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/widget/ImageView;

    .line 84
    .line 85
    const v1, 0x7f0900a3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/widget/ImageView;

    .line 93
    .line 94
    const v1, 0x7f090096

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/widget/ImageView;

    .line 102
    .line 103
    const v1, 0x7f090097

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Landroid/widget/ImageView;

    .line 111
    .line 112
    new-instance v1, Landroidx/appcompat/app/m;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/m;->m(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/m;->d(Z)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Leu/faircode/netguard/ActivityMain$32;

    .line 124
    .line 125
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityMain$32;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/m;->h(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogLegend:Landroidx/appcompat/app/n;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method private menu_lockdown(Landroid/view/MenuItem;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const-string v1, "lockdown"

    .line 23
    .line 24
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-static {v1, p0, p1}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Leu/faircode/netguard/WidgetLockdown;->updateWidgets(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private menu_malware(Landroid/view/MenuItem;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "malware"

    .line 19
    .line 20
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    :try_start_0
    new-instance p1, Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "malware.txt"

    .line 44
    .line 45
    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Leu/faircode/netguard/DownloadTask;

    .line 49
    .line 50
    new-instance v3, Ljava/net/URL;

    .line 51
    .line 52
    const-string v4, "https://urlhaus.abuse.ch/downloads/hostfile/"

    .line 53
    .line 54
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v4, Leu/faircode/netguard/ActivityMain$33;

    .line 58
    .line 59
    invoke-direct {v4, p0, v0}, Leu/faircode/netguard/ActivityMain$33;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, p0, v3, p1, v4}, Leu/faircode/netguard/DownloadTask;-><init>(Landroid/app/Activity;Ljava/net/URL;Ljava/io/File;Leu/faircode/netguard/DownloadTask$Listener;)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/String;

    .line 114
    .line 115
    const-string v2, "malware."

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void
.end method

.method private showHints()V
    .locals 10

    .line 1
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "hint_usage"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const v3, 0x7f0900bb

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const v4, 0x7f090058

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroid/widget/Button;

    .line 29
    .line 30
    const-string v5, "whitelist_wifi"

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const-string v7, "whitelist_other"

    .line 38
    .line 39
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    const-string v8, "hint_whitelist"

    .line 44
    .line 45
    invoke-interface {v0, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    const/16 v9, 0x8

    .line 50
    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    if-nez v7, :cond_0

    .line 54
    .line 55
    if-eqz v8, :cond_0

    .line 56
    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/16 v5, 0x8

    .line 62
    .line 63
    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    new-instance v5, Leu/faircode/netguard/ActivityMain$22;

    .line 67
    .line 68
    invoke-direct {v5, p0, v0, v3}, Leu/faircode/netguard/ActivityMain$22;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    const v3, 0x7f0900b4

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroid/widget/LinearLayout;

    .line 82
    .line 83
    const v4, 0x7f090051

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/widget/Button;

    .line 91
    .line 92
    const-string v5, "hint_push"

    .line 93
    .line 94
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_1

    .line 99
    .line 100
    if-nez v1, :cond_1

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    const/16 v1, 0x8

    .line 105
    .line 106
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Leu/faircode/netguard/ActivityMain$23;

    .line 110
    .line 111
    invoke-direct {v1, p0, v0, v3}, Leu/faircode/netguard/ActivityMain$23;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    const v1, 0x7f0900b8

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Landroid/widget/LinearLayout;

    .line 125
    .line 126
    const v3, 0x7f090055

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Landroid/widget/Button;

    .line 134
    .line 135
    const-string v4, "manage_system"

    .line 136
    .line 137
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    const-string v5, "hint_system"

    .line 142
    .line 143
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-nez v4, :cond_2

    .line 148
    .line 149
    if-eqz v2, :cond_2

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_2
    const/16 v6, 0x8

    .line 153
    .line 154
    :goto_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Leu/faircode/netguard/ActivityMain$24;

    .line 158
    .line 159
    invoke-direct {v2, p0, v0, v1}, Leu/faircode/netguard/ActivityMain$24;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method private updateApplicationList(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Update search="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetGuard.Main"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Leu/faircode/netguard/ActivityMain$25;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Leu/faircode/netguard/ActivityMain$25;-><init>(Leu/faircode/netguard/ActivityMain;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private updateSearch(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain;->menuSearch:Landroid/view/MenuItem;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/appcompat/widget/SearchView;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain;->menuSearch:Landroid/view/MenuItem;

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain;->adapter:Leu/faircode/netguard/AdapterRule;

    .line 22
    .line 23
    invoke-virtual {p1}, Leu/faircode/netguard/AdapterRule;->getFilter()Landroid/widget/Filter;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->menuSearch:Landroid/view/MenuItem;

    .line 40
    .line 41
    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
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
    const-string v4, "NetGuard.Main"

    .line 40
    .line 41
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-static {p3}, Leu/faircode/netguard/Util;->logExtras(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    if-ne p1, v2, :cond_3

    .line 48
    .line 49
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p2, v3, :cond_1

    .line 58
    .line 59
    const/4 p3, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 p3, 0x0

    .line 62
    :goto_1
    const-string v0, "enabled"

    .line 63
    .line 64
    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    .line 70
    .line 71
    if-ne p2, v3, :cond_2

    .line 72
    .line 73
    const-string p1, "prepared"

    .line 74
    .line 75
    invoke-static {p1, p0}, Leu/faircode/netguard/ServiceSinkhole;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    const p1, 0x7f100085

    .line 79
    .line 80
    .line 81
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/16 p2, 0x11

    .line 86
    .line 87
    invoke-virtual {p1, p2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->checkDoze()V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    if-nez p2, :cond_5

    .line 98
    .line 99
    const p1, 0x7f100098

    .line 100
    .line 101
    .line 102
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    const/4 v0, 0x2

    .line 111
    if-ne p1, v0, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v1, "Unknown activity result request="

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/y;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    const-string v0, "NetGuard.Main"

    .line 2
    .line 3
    const-string v1, "Config"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/appcompat/app/q;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Leu/faircode/netguard/Util;->hasXposed(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Create version="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Leu/faircode/netguard/Util;->getSelfVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "/"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Leu/faircode/netguard/Util;->getSelfVersionCode(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "NetGuard.Main"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Leu/faircode/netguard/Util;->logExtras(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    invoke-static {p0}, Leu/faircode/netguard/Util;->hasXposed(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    const-string v0, "Xposed running"

    .line 52
    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/y;->onCreate(Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    const p1, 0x7f0c0055

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-static {p0}, Leu/faircode/netguard/Util;->setTheme(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/y;->onCreate(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    const p1, 0x7f0c0032

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Leu/faircode/netguard/ActivityMain;->running:Z

    .line 80
    .line 81
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "enabled"

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const-string v5, "initialized"

    .line 93
    .line 94
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-static {v5, p0}, Leu/faircode/netguard/ReceiverAutostart;->upgrade(ZLandroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    const-string v7, "Approve"

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-nez v6, :cond_2

    .line 112
    .line 113
    const-string v6, "UI"

    .line 114
    .line 115
    if-eqz v3, :cond_1

    .line 116
    .line 117
    invoke-static {v6, p0}, Leu/faircode/netguard/ServiceSinkhole;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-static {v6, p0, v4}, Leu/faircode/netguard/ServiceSinkhole;->stop(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 122
    .line 123
    .line 124
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const v7, 0x7f0c001f

    .line 129
    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    invoke-virtual {v6, v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const v7, 0x7f090098

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    check-cast v7, Landroid/widget/ImageView;

    .line 144
    .line 145
    iput-object v7, p0, Leu/faircode/netguard/ActivityMain;->ivIcon:Landroid/widget/ImageView;

    .line 146
    .line 147
    const v7, 0x7f0900a2

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    check-cast v7, Landroid/widget/ImageView;

    .line 155
    .line 156
    iput-object v7, p0, Leu/faircode/netguard/ActivityMain;->ivQueue:Landroid/widget/ImageView;

    .line 157
    .line 158
    const v7, 0x7f090130

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    .line 166
    .line 167
    iput-object v7, p0, Leu/faircode/netguard/ActivityMain;->swEnabled:Landroidx/appcompat/widget/SwitchCompat;

    .line 168
    .line 169
    const v7, 0x7f09009e

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    check-cast v7, Landroid/widget/ImageView;

    .line 177
    .line 178
    iput-object v7, p0, Leu/faircode/netguard/ActivityMain;->ivMetered:Landroid/widget/ImageView;

    .line 179
    .line 180
    iget-object v7, p0, Leu/faircode/netguard/ActivityMain;->ivIcon:Landroid/widget/ImageView;

    .line 181
    .line 182
    new-instance v9, Leu/faircode/netguard/ActivityMain$1;

    .line 183
    .line 184
    invoke-direct {v9, p0}, Leu/faircode/netguard/ActivityMain$1;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-virtual {v7, v8}, Landroidx/appcompat/app/d;->f(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v7, p0, Leu/faircode/netguard/ActivityMain;->ivQueue:Landroid/widget/ImageView;

    .line 198
    .line 199
    new-instance v9, Leu/faircode/netguard/ActivityMain$2;

    .line 200
    .line 201
    invoke-direct {v9, p0, v6}, Leu/faircode/netguard/ActivityMain$2;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 205
    .line 206
    .line 207
    iget-object v7, p0, Leu/faircode/netguard/ActivityMain;->swEnabled:Landroidx/appcompat/widget/SwitchCompat;

    .line 208
    .line 209
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 210
    .line 211
    .line 212
    iget-object v7, p0, Leu/faircode/netguard/ActivityMain;->swEnabled:Landroidx/appcompat/widget/SwitchCompat;

    .line 213
    .line 214
    new-instance v9, Leu/faircode/netguard/ActivityMain$3;

    .line 215
    .line 216
    invoke-direct {v9, p0, v2}, Leu/faircode/netguard/ActivityMain$3;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    .line 221
    .line 222
    if-eqz v3, :cond_3

    .line 223
    .line 224
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->checkDoze()V

    .line 225
    .line 226
    .line 227
    :cond_3
    iget-object v7, p0, Leu/faircode/netguard/ActivityMain;->ivMetered:Landroid/widget/ImageView;

    .line 228
    .line 229
    new-instance v9, Leu/faircode/netguard/ActivityMain$4;

    .line 230
    .line 231
    invoke-direct {v9, p0, v6}, Leu/faircode/netguard/ActivityMain$4;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/view/View;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-virtual {v7}, Landroidx/appcompat/app/d;->d()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v7, v6}, Landroidx/appcompat/app/d;->b(Landroid/view/View;)V

    .line 249
    .line 250
    .line 251
    const v6, 0x7f09015e

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    check-cast v6, Landroid/widget/TextView;

    .line 259
    .line 260
    const/16 v7, 0x8

    .line 261
    .line 262
    if-eqz v3, :cond_4

    .line 263
    .line 264
    const/16 v3, 0x8

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_4
    const/4 v3, 0x0

    .line 268
    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    const v3, 0x7f090173

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    check-cast v3, Landroid/widget/TextView;

    .line 279
    .line 280
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    const/16 v6, 0x21

    .line 284
    .line 285
    if-lt v0, v6, :cond_5

    .line 286
    .line 287
    new-instance v0, Leu/faircode/netguard/ActivityMain$5;

    .line 288
    .line 289
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityMain$5;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    .line 294
    .line 295
    :cond_5
    const v0, 0x7f09010c

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 303
    .line 304
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->n0()V

    .line 305
    .line 306
    .line 307
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 308
    .line 309
    invoke-direct {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Landroidx/recyclerview/widget/E;->u0()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->o0(Landroidx/recyclerview/widget/E;)V

    .line 316
    .line 317
    .line 318
    new-instance v3, Leu/faircode/netguard/AdapterRule;

    .line 319
    .line 320
    const v6, 0x7f09019d

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    invoke-direct {v3, p0, v6}, Leu/faircode/netguard/AdapterRule;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 328
    .line 329
    .line 330
    iput-object v3, p0, Leu/faircode/netguard/ActivityMain;->adapter:Leu/faircode/netguard/AdapterRule;

    .line 331
    .line 332
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->m0(Leu/faircode/netguard/AdapterRule;)V

    .line 333
    .line 334
    .line 335
    new-instance v0, Landroid/util/TypedValue;

    .line 336
    .line 337
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    const v6, 0x7f040065

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v6, v0, p1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 348
    .line 349
    .line 350
    const v3, 0x7f090131

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    check-cast v3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 358
    .line 359
    iput-object v3, p0, Leu/faircode/netguard/ActivityMain;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 360
    .line 361
    const/4 v6, -0x1

    .line 362
    filled-new-array {v6, v6, v6}, [I

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {v3, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g([I)V

    .line 367
    .line 368
    .line 369
    iget-object v3, p0, Leu/faircode/netguard/ActivityMain;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 370
    .line 371
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 372
    .line 373
    invoke-virtual {v3, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i(I)V

    .line 374
    .line 375
    .line 376
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 377
    .line 378
    new-instance v3, Leu/faircode/netguard/ActivityMain$6;

    .line 379
    .line 380
    invoke-direct {v3, p0}, Leu/faircode/netguard/ActivityMain$6;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h(Ly/e;)V

    .line 384
    .line 385
    .line 386
    const v0, 0x7f0900ba

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Landroid/widget/LinearLayout;

    .line 394
    .line 395
    const v3, 0x7f090057

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    check-cast v3, Landroid/widget/Button;

    .line 403
    .line 404
    const-string v6, "hint_usage"

    .line 405
    .line 406
    invoke-interface {v2, v6, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    if-eqz v6, :cond_6

    .line 411
    .line 412
    const/4 v6, 0x0

    .line 413
    goto :goto_2

    .line 414
    :cond_6
    const/16 v6, 0x8

    .line 415
    .line 416
    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    new-instance v6, Leu/faircode/netguard/ActivityMain$7;

    .line 420
    .line 421
    invoke-direct {v6, p0, v2, v0}, Leu/faircode/netguard/ActivityMain$7;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    .line 426
    .line 427
    const v0, 0x7f0900b2

    .line 428
    .line 429
    .line 430
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Landroid/widget/LinearLayout;

    .line 435
    .line 436
    const v3, 0x7f090162

    .line 437
    .line 438
    .line 439
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    check-cast v3, Landroid/widget/TextView;

    .line 444
    .line 445
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 450
    .line 451
    .line 452
    const v3, 0x7f09004b

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    check-cast v3, Landroid/widget/Button;

    .line 460
    .line 461
    const-string v6, "hint_fairemail"

    .line 462
    .line 463
    invoke-interface {v2, v6, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    if-eqz p1, :cond_7

    .line 468
    .line 469
    const/4 v7, 0x0

    .line 470
    :cond_7
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 471
    .line 472
    .line 473
    new-instance p1, Leu/faircode/netguard/ActivityMain$8;

    .line 474
    .line 475
    invoke-direct {p1, p0, v2, v0}, Leu/faircode/netguard/ActivityMain$8;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    .line 480
    .line 481
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->showHints()V

    .line 482
    .line 483
    .line 484
    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 485
    .line 486
    .line 487
    new-instance p1, Landroid/content/IntentFilter;

    .line 488
    .line 489
    const-string v0, "eu.faircode.netguard.ACTION_RULES_CHANGED"

    .line 490
    .line 491
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-static {p0}, Lr/d;->b(Landroid/content/Context;)Lr/d;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    iget-object v3, p0, Leu/faircode/netguard/ActivityMain;->onRulesChanged:Landroid/content/BroadcastReceiver;

    .line 499
    .line 500
    invoke-virtual {v0, v3, p1}, Lr/d;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 501
    .line 502
    .line 503
    new-instance p1, Landroid/content/IntentFilter;

    .line 504
    .line 505
    const-string v0, "eu.faircode.netguard.ACTION_QUEUE_CHANGED"

    .line 506
    .line 507
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-static {p0}, Lr/d;->b(Landroid/content/Context;)Lr/d;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    iget-object v3, p0, Leu/faircode/netguard/ActivityMain;->onQueueChanged:Landroid/content/BroadcastReceiver;

    .line 515
    .line 516
    invoke-virtual {v0, v3, p1}, Lr/d;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 517
    .line 518
    .line 519
    new-instance p1, Landroid/content/IntentFilter;

    .line 520
    .line 521
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 522
    .line 523
    .line 524
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 525
    .line 526
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 530
    .line 531
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const-string v0, "package"

    .line 535
    .line 536
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain;->packageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    .line 541
    invoke-static {p0, v0, p1}, Landroidx/core/content/f;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 542
    .line 543
    .line 544
    if-nez v5, :cond_8

    .line 545
    .line 546
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    const v0, 0x7f0c0029

    .line 551
    .line 552
    .line 553
    invoke-virtual {p1, v0, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    const v0, 0x7f090168

    .line 558
    .line 559
    .line 560
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    check-cast v0, Landroid/widget/TextView;

    .line 565
    .line 566
    const v3, 0x7f090160

    .line 567
    .line 568
    .line 569
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    check-cast v3, Landroid/widget/TextView;

    .line 574
    .line 575
    const v5, 0x7f090178

    .line 576
    .line 577
    .line 578
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    check-cast v5, Landroid/widget/TextView;

    .line 583
    .line 584
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 589
    .line 590
    .line 591
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 596
    .line 597
    .line 598
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 603
    .line 604
    .line 605
    new-instance v0, Landroidx/appcompat/app/m;

    .line 606
    .line 607
    invoke-direct {v0, p0}, Landroidx/appcompat/app/m;-><init>(Landroid/content/Context;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/m;->m(Landroid/view/View;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/m;->d(Z)V

    .line 614
    .line 615
    .line 616
    new-instance p1, Leu/faircode/netguard/ActivityMain$11;

    .line 617
    .line 618
    invoke-direct {p1, p0, v2}, Leu/faircode/netguard/ActivityMain$11;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;)V

    .line 619
    .line 620
    .line 621
    const v3, 0x7f10001c

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0, v3, p1}, Landroidx/appcompat/app/m;->j(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 625
    .line 626
    .line 627
    new-instance p1, Leu/faircode/netguard/ActivityMain$10;

    .line 628
    .line 629
    invoke-direct {p1, p0}, Leu/faircode/netguard/ActivityMain$10;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 630
    .line 631
    .line 632
    const v3, 0x7f100020

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0, v3, p1}, Landroidx/appcompat/app/m;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 636
    .line 637
    .line 638
    new-instance p1, Leu/faircode/netguard/ActivityMain$9;

    .line 639
    .line 640
    invoke-direct {p1, p0}, Leu/faircode/netguard/ActivityMain$9;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/m;->h(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0}, Landroidx/appcompat/app/m;->a()Landroidx/appcompat/app/n;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain;->dialogFirst:Landroidx/appcompat/app/n;

    .line 651
    .line 652
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 653
    .line 654
    .line 655
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    const-string v0, "Search"

    .line 660
    .line 661
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivityMain;->updateApplicationList(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    :try_start_0
    new-instance p1, Leu/faircode/netguard/IAB;

    .line 669
    .line 670
    new-instance v0, Leu/faircode/netguard/ActivityMain$12;

    .line 671
    .line 672
    invoke-direct {v0, p0, v2}, Leu/faircode/netguard/ActivityMain$12;-><init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;)V

    .line 673
    .line 674
    .line 675
    invoke-direct {p1, v0, p0}, Leu/faircode/netguard/IAB;-><init>(Leu/faircode/netguard/IAB$Delegate;Landroid/content/Context;)V

    .line 676
    .line 677
    .line 678
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain;->iab:Leu/faircode/netguard/IAB;

    .line 679
    .line 680
    invoke-virtual {p1}, Leu/faircode/netguard/IAB;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    .line 682
    .line 683
    goto :goto_3

    .line 684
    :catchall_0
    move-exception p1

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .line 689
    .line 690
    const-string v2, "\n"

    .line 691
    .line 692
    invoke-static {p1, v0, v2, p1, v1}, LB/g;->i(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    :goto_3
    const p1, 0x7f0900b7

    .line 696
    .line 697
    .line 698
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 699
    .line 700
    .line 701
    move-result-object p1

    .line 702
    check-cast p1, Landroid/widget/LinearLayout;

    .line 703
    .line 704
    const v0, 0x7f090188

    .line 705
    .line 706
    .line 707
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    check-cast v0, Landroid/widget/TextView;

    .line 712
    .line 713
    new-instance v1, Landroid/text/SpannableString;

    .line 714
    .line 715
    const v2, 0x7f100026

    .line 716
    .line 717
    .line 718
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 723
    .line 724
    .line 725
    new-instance v2, Landroid/text/style/UnderlineSpan;

    .line 726
    .line 727
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    .line 731
    .line 732
    .line 733
    move-result v3

    .line 734
    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    .line 739
    .line 740
    new-instance v0, Leu/faircode/netguard/ActivityMain$13;

    .line 741
    .line 742
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityMain$13;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 749
    .line 750
    .line 751
    move-result-object p1

    .line 752
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivityMain;->checkExtras(Landroid/content/Intent;)V

    .line 753
    .line 754
    .line 755
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getMenuInflater()Landroid/view/MenuInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0d0006

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0900e8

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Leu/faircode/netguard/ActivityMain;->menuSearch:Landroid/view/MenuItem;

    .line 23
    .line 24
    new-instance v2, Leu/faircode/netguard/ActivityMain$19;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Leu/faircode/netguard/ActivityMain$19;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->menuSearch:Landroid/view/MenuItem;

    .line 33
    .line 34
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/appcompat/widget/SearchView;

    .line 39
    .line 40
    new-instance v2, Leu/faircode/netguard/ActivityMain$20;

    .line 41
    .line 42
    invoke-direct {v2, p0, v1}, Leu/faircode/netguard/ActivityMain$20;-><init>(Leu/faircode/netguard/ActivityMain;Landroidx/appcompat/widget/SearchView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Leu/faircode/netguard/ActivityMain$21;

    .line 49
    .line 50
    invoke-direct {v2, p0}, Leu/faircode/netguard/ActivityMain$21;-><init>(Leu/faircode/netguard/ActivityMain;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "Search"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v3, 0x1

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    iget-object v4, p0, Leu/faircode/netguard/ActivityMain;->menuSearch:Landroid/view/MenuItem;

    .line 70
    .line 71
    invoke-interface {v4}, Landroid/view/MenuItem;->expandActionView()Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 75
    .line 76
    .line 77
    :cond_0
    const v1, 0x7f0900d7

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "log"

    .line 85
    .line 86
    invoke-direct {p0, v1, v2}, Leu/faircode/netguard/ActivityMain;->markPro(Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Leu/faircode/netguard/IAB;->isPurchasedAny(Landroid/content/Context;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_1

    .line 94
    .line 95
    const v1, 0x7f0900e1

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, v1, v2}, Leu/faircode/netguard/ActivityMain;->markPro(Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-static {p0}, Leu/faircode/netguard/Util;->hasValidFingerprint(Landroid/content/Context;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    invoke-static {p0}, Leu/faircode/netguard/ActivityMain;->getIntentInvite(Landroid/content/Context;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    :cond_2
    const v1, 0x7f0900d4

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-static {}, Leu/faircode/netguard/ActivityMain;->getIntentSupport()Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-nez v1, :cond_4

    .line 141
    .line 142
    const v1, 0x7f0900ed

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 146
    .line 147
    .line 148
    :cond_4
    const v1, 0x7f0900ca

    .line 149
    .line 150
    .line 151
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p0}, Leu/faircode/netguard/ActivityMain;->getIntentApps(Landroid/content/Context;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    goto :goto_0

    .line 167
    :cond_5
    const/4 v0, 0x0

    .line 168
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 169
    .line 170
    .line 171
    return v3
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    const-string v0, "NetGuard.Main"

    .line 2
    .line 3
    const-string v1, "Destroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Leu/faircode/netguard/Util;->hasXposed(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-super {p0}, Landroidx/appcompat/app/q;->onDestroy()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Leu/faircode/netguard/ActivityMain;->running:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->adapter:Leu/faircode/netguard/AdapterRule;

    .line 23
    .line 24
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lr/d;->b(Landroid/content/Context;)Lr/d;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Leu/faircode/netguard/ActivityMain;->onRulesChanged:Landroid/content/BroadcastReceiver;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lr/d;->e(Landroid/content/BroadcastReceiver;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lr/d;->b(Landroid/content/Context;)Lr/d;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Leu/faircode/netguard/ActivityMain;->onQueueChanged:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lr/d;->e(Landroid/content/BroadcastReceiver;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->packageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->dialogFirst:Landroidx/appcompat/app/n;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/appcompat/app/n;->dismiss()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogFirst:Landroidx/appcompat/app/n;

    .line 62
    .line 63
    :cond_1
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->dialogVpn:Landroidx/appcompat/app/n;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v1}, Landroidx/appcompat/app/n;->dismiss()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogVpn:Landroidx/appcompat/app/n;

    .line 71
    .line 72
    :cond_2
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->dialogDoze:Landroidx/appcompat/app/n;

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/appcompat/app/n;->dismiss()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogDoze:Landroidx/appcompat/app/n;

    .line 80
    .line 81
    :cond_3
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->dialogLegend:Landroidx/appcompat/app/n;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/appcompat/app/n;->dismiss()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogLegend:Landroidx/appcompat/app/n;

    .line 89
    .line 90
    :cond_4
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->dialogAbout:Landroidx/appcompat/app/n;

    .line 91
    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/appcompat/app/n;->dismiss()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->dialogAbout:Landroidx/appcompat/app/n;

    .line 98
    .line 99
    :cond_5
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->iab:Leu/faircode/netguard/IAB;

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    invoke-virtual {v1}, Leu/faircode/netguard/IAB;->unbind()V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Leu/faircode/netguard/ActivityMain;->iab:Leu/faircode/netguard/IAB;

    .line 107
    .line 108
    :cond_6
    invoke-super {p0}, Landroidx/appcompat/app/q;->onDestroy()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "NetGuard.Main"

    .line 2
    .line 3
    const-string v1, "New intent"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Leu/faircode/netguard/Util;->logExtras(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroidx/fragment/app/y;->onNewIntent(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Leu/faircode/netguard/Util;->hasXposed(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "Refresh"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v1, "Search"

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Leu/faircode/netguard/ActivityMain;->updateApplicationList(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Leu/faircode/netguard/ActivityMain;->updateSearch(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivityMain;->checkExtras(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Menu="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "NetGuard.Main"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v2, "sort"

    .line 33
    .line 34
    const-class v3, Leu/faircode/netguard/ActivityPro;

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    sparse-switch v1, :sswitch_data_0

    .line 38
    .line 39
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :sswitch_0
    invoke-static {}, Leu/faircode/netguard/ActivityMain;->getIntentSupport()Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    return v4

    .line 53
    :sswitch_1
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "uid"

    .line 61
    .line 62
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    .line 68
    .line 69
    return v4

    .line 70
    :sswitch_2
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "name"

    .line 78
    .line 79
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    .line 85
    .line 86
    return v4

    .line 87
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    .line 88
    .line 89
    const-class v0, Leu/faircode/netguard/ActivitySettings;

    .line 90
    .line 91
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    .line 96
    .line 97
    return v4

    .line 98
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    .line 99
    .line 100
    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    .line 105
    .line 106
    return v4

    .line 107
    :sswitch_5
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivityMain;->menu_malware(Landroid/view/MenuItem;)V

    .line 108
    .line 109
    .line 110
    return v4

    .line 111
    :sswitch_6
    invoke-static {p0}, Leu/faircode/netguard/Util;->canFilter(Landroid/content/Context;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_1

    .line 116
    .line 117
    const-string p1, "log"

    .line 118
    .line 119
    invoke-static {p1, p0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_0

    .line 124
    .line 125
    new-instance p1, Landroid/content/Intent;

    .line 126
    .line 127
    const-class v0, Leu/faircode/netguard/ActivityLog;

    .line 128
    .line 129
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 137
    .line 138
    invoke-direct {p1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    const p1, 0x7f100094

    .line 146
    .line 147
    .line 148
    const/4 v0, 0x0

    .line 149
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 154
    .line 155
    .line 156
    :goto_0
    return v4

    .line 157
    :sswitch_7
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivityMain;->menu_lockdown(Landroid/view/MenuItem;)V

    .line 158
    .line 159
    .line 160
    return v4

    .line 161
    :sswitch_8
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->menu_legend()V

    .line 162
    .line 163
    .line 164
    return v4

    .line 165
    :sswitch_9
    invoke-static {p0}, Leu/faircode/netguard/ActivityMain;->getIntentInvite(Landroid/content/Context;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const/4 v0, 0x2

    .line 170
    invoke-virtual {p0, p1, v0}, Landroidx/activity/k;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    .line 172
    .line 173
    return v4

    .line 174
    :sswitch_a
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->menu_apps()V

    .line 175
    .line 176
    .line 177
    return v4

    .line 178
    :sswitch_b
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    xor-int/2addr v1, v4

    .line 183
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const-string v1, "show_user"

    .line 191
    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    .line 202
    .line 203
    return v4

    .line 204
    :sswitch_c
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    xor-int/2addr v1, v4

    .line 209
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v1, "show_system"

    .line 217
    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    .line 228
    .line 229
    return v4

    .line 230
    :sswitch_d
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    xor-int/2addr v1, v4

    .line 235
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 236
    .line 237
    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    const-string v1, "show_nointernet"

    .line 243
    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 253
    .line 254
    .line 255
    return v4

    .line 256
    :sswitch_e
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    xor-int/2addr v1, v4

    .line 261
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 262
    .line 263
    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const-string v1, "show_disabled"

    .line 269
    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    .line 280
    .line 281
    return v4

    .line 282
    :sswitch_f
    invoke-direct {p0}, Leu/faircode/netguard/ActivityMain;->menu_about()V

    .line 283
    .line 284
    .line 285
    return v4

    .line 286
    nop

    .line 287
    :sswitch_data_0
    .sparse-switch
        0x7f0900c2 -> :sswitch_f
        0x7f0900c5 -> :sswitch_e
        0x7f0900c6 -> :sswitch_d
        0x7f0900c7 -> :sswitch_c
        0x7f0900c8 -> :sswitch_b
        0x7f0900ca -> :sswitch_a
        0x7f0900d4 -> :sswitch_9
        0x7f0900d5 -> :sswitch_8
        0x7f0900d6 -> :sswitch_7
        0x7f0900d7 -> :sswitch_6
        0x7f0900dd -> :sswitch_5
        0x7f0900e1 -> :sswitch_4
        0x7f0900e9 -> :sswitch_3
        0x7f0900eb -> :sswitch_2
        0x7f0900ec -> :sswitch_1
        0x7f0900ed -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .line 1
    const-string v0, "NetGuard.Main"

    .line 2
    .line 3
    const-string v1, "Pause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/y;->onPause()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Leu/faircode/netguard/Util;->hasXposed(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->accessChangedListener:Leu/faircode/netguard/DatabaseHelper$AccessChangedListener;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Leu/faircode/netguard/DatabaseHelper;->removeAccessChangedListener(Leu/faircode/netguard/DatabaseHelper$AccessChangedListener;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0900dd

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    .line 15
    .line 16
    const-string v2, "manage_system"

    .line 17
    .line 18
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const v4, 0x7f0900c7

    .line 23
    .line 24
    .line 25
    const v5, 0x7f0900c8

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v5, "show_user"

    .line 36
    .line 37
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v4, "show_system"

    .line 49
    .line 50
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const v2, 0x7f0900d2

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2, v4}, Landroid/view/Menu;->removeItem(I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    const v2, 0x7f0900c6

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v4, "show_nointernet"

    .line 83
    .line 84
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 89
    .line 90
    .line 91
    const v2, 0x7f0900c5

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v4, "show_disabled"

    .line 99
    .line 100
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 105
    .line 106
    .line 107
    const-string v2, "sort"

    .line 108
    .line 109
    const-string v4, "name"

    .line 110
    .line 111
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v4, "uid"

    .line 116
    .line 117
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    const v2, 0x7f0900ec

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    const v2, 0x7f0900eb

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 142
    .line 143
    .line 144
    :goto_1
    const v2, 0x7f0900d6

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    const-string v4, "lockdown"

    .line 152
    .line 153
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string v2, "malware"

    .line 165
    .line 166
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 171
    .line 172
    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/y;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    aget p1, p3, v0

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    const-string p1, "permission granted"

    .line 13
    .line 14
    invoke-static {p1, p0, v0}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x4

    .line 19
    if-ne p1, p2, :cond_1

    .line 20
    .line 21
    aget p1, p3, v0

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-static {p0}, Landroidx/core/app/f;->k(Landroid/app/Activity;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 32
    .line 33
    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p2, "package"

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {p2, p3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p3, "\n"

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string p2, "NetGuard.Main"

    .line 82
    .line 83
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 1
    const-string v0, "NetGuard.Main"

    .line 2
    .line 3
    const-string v1, "Resume"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    invoke-static {p0}, Leu/faircode/netguard/Util;->hasXposed(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-super {p0}, Landroidx/fragment/app/y;->onResume()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Leu/faircode/netguard/ActivityMain;->accessChangedListener:Leu/faircode/netguard/DatabaseHelper$AccessChangedListener;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Leu/faircode/netguard/DatabaseHelper;->addAccessChangedListener(Leu/faircode/netguard/DatabaseHelper$AccessChangedListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Leu/faircode/netguard/ActivityMain;->adapter:Leu/faircode/netguard/AdapterRule;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const v2, 0x7f0900b7

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/widget/LinearLayout;

    .line 48
    .line 49
    invoke-static {p0}, Leu/faircode/netguard/IAB;->isPurchasedAny(Landroid/content/Context;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/16 v4, 0x8

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    invoke-static {p0}, Leu/faircode/netguard/ActivityMain;->getIntentPro(Landroid/content/Context;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    const/16 v1, 0x8

    .line 72
    .line 73
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x21

    .line 77
    .line 78
    if-lt v0, v1, :cond_5

    .line 79
    .line 80
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 81
    .line 82
    invoke-static {p0, v0}, Landroidx/core/content/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const/4 v0, 0x0

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 92
    :goto_3
    const v1, 0x7f090173

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroid/widget/TextView;

    .line 100
    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    const/4 v4, 0x0

    .line 107
    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    :cond_7
    invoke-super {p0}, Landroidx/fragment/app/y;->onResume()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Preference "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "NetGuard.Main"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string v0, "enabled"

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const p2, 0x7f09015e

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 64
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->a()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const v0, 0x7f090130

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eq v0, p1, :cond_8

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :cond_1
    const-string v0, "whitelist_wifi"

    .line 96
    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const-string v4, "whitelist_other"

    .line 102
    .line 103
    const-string v5, "screen_on"

    .line 104
    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x1

    .line 107
    if-nez v3, :cond_6

    .line 108
    .line 109
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_6

    .line 114
    .line 115
    const-string v3, "screen_wifi"

    .line 116
    .line 117
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_6

    .line 122
    .line 123
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-nez v3, :cond_6

    .line 128
    .line 129
    const-string v3, "screen_other"

    .line 130
    .line 131
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_6

    .line 136
    .line 137
    const-string v3, "whitelist_roaming"

    .line 138
    .line 139
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-nez v3, :cond_6

    .line 144
    .line 145
    const-string v3, "show_user"

    .line 146
    .line 147
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-nez v3, :cond_6

    .line 152
    .line 153
    const-string v3, "show_system"

    .line 154
    .line 155
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_6

    .line 160
    .line 161
    const-string v3, "show_nointernet"

    .line 162
    .line 163
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-nez v3, :cond_6

    .line 168
    .line 169
    const-string v3, "show_disabled"

    .line 170
    .line 171
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_6

    .line 176
    .line 177
    const-string v3, "sort"

    .line 178
    .line 179
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-nez v3, :cond_6

    .line 184
    .line 185
    const-string v3, "imported"

    .line 186
    .line 187
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_2

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_2
    const-string v0, "manage_system"

    .line 195
    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_4

    .line 201
    .line 202
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->invalidateOptionsMenu()V

    .line 203
    .line 204
    .line 205
    invoke-direct {p0, v6}, Leu/faircode/netguard/ActivityMain;->updateApplicationList(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const p2, 0x7f0900b8

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    check-cast p2, Landroid/widget/LinearLayout;

    .line 216
    .line 217
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    const-string v3, "hint_system"

    .line 222
    .line 223
    invoke-interface {p1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-nez v0, :cond_3

    .line 228
    .line 229
    if-eqz p1, :cond_3

    .line 230
    .line 231
    const/4 v1, 0x0

    .line 232
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_4
    const-string p1, "theme"

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-nez p1, :cond_5

    .line 243
    .line 244
    const-string p1, "dark_theme"

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eqz p1, :cond_8

    .line 251
    .line 252
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_6
    :goto_1
    invoke-direct {p0, v6}, Leu/faircode/netguard/ActivityMain;->updateApplicationList(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const p2, 0x7f0900bb

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    check-cast p2, Landroid/widget/LinearLayout;

    .line 267
    .line 268
    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    const-string v5, "hint_whitelist"

    .line 281
    .line 282
    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-nez v0, :cond_7

    .line 287
    .line 288
    if-nez v4, :cond_7

    .line 289
    .line 290
    if-eqz v3, :cond_7

    .line 291
    .line 292
    if-eqz p1, :cond_7

    .line 293
    .line 294
    const/4 v1, 0x0

    .line 295
    :cond_7
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    :cond_8
    :goto_2
    return-void
.end method
