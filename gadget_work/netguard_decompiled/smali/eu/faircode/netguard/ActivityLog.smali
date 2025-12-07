.class public Leu/faircode/netguard/ActivityLog;
.super Landroidx/appcompat/app/q;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private adapter:Leu/faircode/netguard/AdapterLog;

.field private listener:Leu/faircode/netguard/DatabaseHelper$LogChangedListener;

.field private live:Z

.field private lvLog:Landroid/widget/ListView;

.field private menuSearch:Landroid/view/MenuItem;

.field private organization:Z

.field private resolve:Z

.field private running:Z

.field private vpn4:Ljava/net/InetAddress;

.field private vpn6:Ljava/net/InetAddress;


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
    iput-boolean v0, p0, Leu/faircode/netguard/ActivityLog;->running:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Leu/faircode/netguard/ActivityLog;->menuSearch:Landroid/view/MenuItem;

    .line 9
    .line 10
    iput-object v0, p0, Leu/faircode/netguard/ActivityLog;->vpn4:Ljava/net/InetAddress;

    .line 11
    .line 12
    iput-object v0, p0, Leu/faircode/netguard/ActivityLog;->vpn6:Ljava/net/InetAddress;

    .line 13
    .line 14
    new-instance v0, Leu/faircode/netguard/ActivityLog$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityLog$1;-><init>(Leu/faircode/netguard/ActivityLog;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Leu/faircode/netguard/ActivityLog;->listener:Leu/faircode/netguard/DatabaseHelper$LogChangedListener;

    .line 20
    .line 21
    return-void
.end method

.method static synthetic access$000(Leu/faircode/netguard/ActivityLog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->updateAdapter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Leu/faircode/netguard/ActivityLog;)Leu/faircode/netguard/AdapterLog;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Leu/faircode/netguard/ActivityLog;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityLog;->vpn4:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Leu/faircode/netguard/ActivityLog;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Leu/faircode/netguard/ActivityLog;->vpn6:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Leu/faircode/netguard/ActivityLog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivityLog;->getUidForName(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$500(Leu/faircode/netguard/ActivityLog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ActivityLog;->running:Z

    .line 2
    .line 3
    return p0
.end method

.method private getIntentPCAPDocument()Landroid/content/Intent;
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
    const-string v1, "application/octet-stream"

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
    const-string v2, ".pcap"

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

.method private getUidForName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {v0, p0}, Leu/faircode/netguard/Rule;->getRules(ZLandroid/content/Context;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "Search "

    .line 23
    .line 24
    const-string v3, "NetGuard.Log"

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Leu/faircode/netguard/Rule;

    .line 33
    .line 34
    iget-object v4, v1, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    iget v0, v1, Leu/faircode/netguard/Rule;->uid:I

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, " found "

    .line 67
    .line 68
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p1, v1, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, " new "

    .line 77
    .line 78
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, " not found"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_2
    return-object p1
.end method

.method private handleExportPCAP(Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Leu/faircode/netguard/ActivityLog$8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Leu/faircode/netguard/ActivityLog$8;-><init>(Leu/faircode/netguard/ActivityLog;Landroid/content/Intent;)V

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

.method private updateAdapter()V
    .locals 9

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "proto_udp"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const-string v1, "proto_tcp"

    .line 17
    .line 18
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const-string v1, "proto_other"

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const-string v1, "traffic_allowed"

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const-string v1, "traffic_blocked"

    .line 35
    .line 36
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog;->menuSearch:Landroid/view/MenuItem;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog;->menuSearch:Landroid/view/MenuItem;

    .line 51
    .line 52
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/appcompat/widget/SearchView;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Leu/faircode/netguard/ActivityLog;->getUidForName(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 81
    .line 82
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual/range {v3 .. v8}, Leu/faircode/netguard/DatabaseHelper;->getLog(ZZZZZ)Landroid/database/Cursor;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    iget-object v1, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 95
    .line 96
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2, v0}, Leu/faircode/netguard/DatabaseHelper;->searchLog(Ljava/lang/String;)Landroid/database/Cursor;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

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
    const/4 v1, 0x1

    .line 25
    const/4 v2, -0x1

    .line 26
    if-ne p2, v2, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v3, "NetGuard.Log"

    .line 39
    .line 40
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    if-ne p1, v1, :cond_1

    .line 44
    .line 45
    if-ne p2, v2, :cond_2

    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-direct {p0, p3}, Leu/faircode/netguard/ActivityLog;->handleExportPCAP(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "Unknown activity result request="

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/y;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "log"

    .line 2
    .line 3
    invoke-static {v0, p0}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    const-class v2, Leu/faircode/netguard/ActivityPro;

    .line 12
    .line 13
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p0}, Leu/faircode/netguard/Util;->setTheme(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1}, Landroidx/fragment/app/y;->onCreate(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    const p1, 0x7f0c0031

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Leu/faircode/netguard/ActivityLog;->running:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const v2, 0x7f0c001e

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v2, 0x7f090130

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroidx/appcompat/app/d;->d()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/d;->b(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const v3, 0x7f10004f

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/d;->e(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/d;->c(Z)V

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v3, "resolve"

    .line 95
    .line 96
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    iput-boolean v3, p0, Leu/faircode/netguard/ActivityLog;->resolve:Z

    .line 101
    .line 102
    const-string v3, "organization"

    .line 103
    .line 104
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    iput-boolean v3, p0, Leu/faircode/netguard/ActivityLog;->organization:Z

    .line 109
    .line 110
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const v3, 0x7f09015e

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Landroid/widget/TextView;

    .line 122
    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    const/16 v4, 0x8

    .line 126
    .line 127
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Leu/faircode/netguard/ActivityLog$2;

    .line 134
    .line 135
    invoke-direct {v0, p0, v1}, Leu/faircode/netguard/ActivityLog$2;-><init>(Leu/faircode/netguard/ActivityLog;Landroid/content/SharedPreferences;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 142
    .line 143
    .line 144
    const v0, 0x7f0900c1

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/ListView;

    .line 152
    .line 153
    iput-object v0, p0, Leu/faircode/netguard/ActivityLog;->lvLog:Landroid/widget/ListView;

    .line 154
    .line 155
    const-string v0, "proto_udp"

    .line 156
    .line 157
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    const-string v0, "proto_tcp"

    .line 162
    .line 163
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    const-string v0, "proto_other"

    .line 168
    .line 169
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    const-string v0, "traffic_allowed"

    .line 174
    .line 175
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    const-string v0, "traffic_blocked"

    .line 180
    .line 181
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    new-instance v0, Leu/faircode/netguard/AdapterLog;

    .line 186
    .line 187
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual/range {v2 .. v7}, Leu/faircode/netguard/DatabaseHelper;->getLog(ZZZZZ)Landroid/database/Cursor;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iget-boolean v3, p0, Leu/faircode/netguard/ActivityLog;->resolve:Z

    .line 196
    .line 197
    iget-boolean v4, p0, Leu/faircode/netguard/ActivityLog;->organization:Z

    .line 198
    .line 199
    invoke-direct {v0, p0, v2, v3, v4}, Leu/faircode/netguard/AdapterLog;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZZ)V

    .line 200
    .line 201
    .line 202
    iput-object v0, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 203
    .line 204
    new-instance v2, Leu/faircode/netguard/ActivityLog$3;

    .line 205
    .line 206
    invoke-direct {v2, p0}, Leu/faircode/netguard/ActivityLog$3;-><init>(Leu/faircode/netguard/ActivityLog;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog;->lvLog:Landroid/widget/ListView;

    .line 213
    .line 214
    iget-object v2, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    .line 218
    .line 219
    :try_start_0
    const-string v0, "vpn4"

    .line 220
    .line 221
    const-string v2, "10.1.10.1"

    .line 222
    .line 223
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iput-object v0, p0, Leu/faircode/netguard/ActivityLog;->vpn4:Ljava/net/InetAddress;

    .line 232
    .line 233
    const-string v0, "vpn6"

    .line 234
    .line 235
    const-string v2, "fd00:1:fd00:1:fd00:1:fd00:1"

    .line 236
    .line 237
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iput-object v0, p0, Leu/faircode/netguard/ActivityLog;->vpn6:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v3, "\n"

    .line 262
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v2, "NetGuard.Log"

    .line 278
    .line 279
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    :goto_0
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog;->lvLog:Landroid/widget/ListView;

    .line 283
    .line 284
    new-instance v2, Leu/faircode/netguard/ActivityLog$4;

    .line 285
    .line 286
    invoke-direct {v2, p0, v1}, Leu/faircode/netguard/ActivityLog$4;-><init>(Leu/faircode/netguard/ActivityLog;Landroid/content/SharedPreferences;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 290
    .line 291
    .line 292
    iput-boolean p1, p0, Leu/faircode/netguard/ActivityLog;->live:Z

    .line 293
    .line 294
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0005

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0900e8

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Leu/faircode/netguard/ActivityLog;->menuSearch:Landroid/view/MenuItem;

    .line 19
    .line 20
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 25
    .line 26
    new-instance v0, Leu/faircode/netguard/ActivityLog$5;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityLog$5;-><init>(Leu/faircode/netguard/ActivityLog;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Leu/faircode/netguard/ActivityLog$6;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivityLog$6;-><init>(Leu/faircode/netguard/ActivityLog;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Leu/faircode/netguard/ActivityLog;->running:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 6
    .line 7
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Landroidx/appcompat/app/q;->onDestroy()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    const-string v2, "data"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v4, "netguard.pcap"

    .line 15
    .line 16
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const v4, 0x102002c

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-eq v2, v4, :cond_2

    .line 28
    .line 29
    packed-switch v2, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    packed-switch v2, :pswitch_data_1

    .line 33
    .line 34
    .line 35
    packed-switch v2, :pswitch_data_2

    .line 36
    .line 37
    .line 38
    packed-switch v2, :pswitch_data_3

    .line 39
    .line 40
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    xor-int/2addr v1, v5

    .line 51
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "traffic_blocked"

    .line 59
    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->updateAdapter()V

    .line 72
    .line 73
    .line 74
    return v5

    .line 75
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    xor-int/2addr v1, v5

    .line 80
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "traffic_allowed"

    .line 88
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->updateAdapter()V

    .line 101
    .line 102
    .line 103
    return v5

    .line 104
    :pswitch_2
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->updateAdapter()V

    .line 105
    .line 106
    .line 107
    return v5

    .line 108
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    xor-int/2addr v1, v5

    .line 113
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 114
    .line 115
    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v1, "proto_udp"

    .line 121
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->updateAdapter()V

    .line 134
    .line 135
    .line 136
    return v5

    .line 137
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    xor-int/2addr v1, v5

    .line 142
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 143
    .line 144
    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "proto_tcp"

    .line 150
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->updateAdapter()V

    .line 163
    .line 164
    .line 165
    return v5

    .line 166
    :pswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    xor-int/2addr v1, v5

    .line 171
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 172
    .line 173
    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v1, "proto_other"

    .line 179
    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    .line 190
    .line 191
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->updateAdapter()V

    .line 192
    .line 193
    .line 194
    return v5

    .line 195
    :pswitch_6
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->getIntentPCAPDocument()Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1, v5}, Landroidx/activity/k;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    .line 201
    .line 202
    return v5

    .line 203
    :pswitch_7
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    xor-int/2addr v1, v5

    .line 208
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 209
    .line 210
    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v1, "pcap"

    .line 216
    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    .line 227
    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    invoke-static {p1, p0}, Leu/faircode/netguard/ServiceSinkhole;->setPcap(ZLandroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    return v5

    .line 236
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    .line 237
    .line 238
    const-string v0, "android.intent.action.VIEW"

    .line 239
    .line 240
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v0, "https://github.com/M66B/NetGuard/blob/master/FAQ.md#user-content-faq27"

    .line 244
    .line 245
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    .line 262
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 263
    .line 264
    .line 265
    :cond_0
    return v5

    .line 266
    :pswitch_9
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    xor-int/2addr v1, v5

    .line 271
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 272
    .line 273
    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    const-string v1, "resolve"

    .line 279
    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    .line 290
    .line 291
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 292
    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    invoke-virtual {v0, p1}, Leu/faircode/netguard/AdapterLog;->setResolve(Z)V

    .line 298
    .line 299
    .line 300
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 303
    .line 304
    .line 305
    return v5

    .line 306
    :pswitch_a
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    xor-int/2addr v1, v5

    .line 311
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 312
    .line 313
    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const-string v1, "organization"

    .line 319
    .line 320
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 332
    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    invoke-virtual {v0, p1}, Leu/faircode/netguard/AdapterLog;->setOrganization(Z)V

    .line 338
    .line 339
    .line 340
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog;->adapter:Leu/faircode/netguard/AdapterLog;

    .line 341
    .line 342
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 343
    .line 344
    .line 345
    return v5

    .line 346
    :pswitch_b
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    xor-int/2addr v0, v5

    .line 351
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 352
    .line 353
    .line 354
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    iput-boolean p1, p0, Leu/faircode/netguard/ActivityLog;->live:Z

    .line 359
    .line 360
    if-eqz p1, :cond_1

    .line 361
    .line 362
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog;->listener:Leu/faircode/netguard/DatabaseHelper$LogChangedListener;

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Leu/faircode/netguard/DatabaseHelper;->addLogChangedListener(Leu/faircode/netguard/DatabaseHelper$LogChangedListener;)V

    .line 369
    .line 370
    .line 371
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->updateAdapter()V

    .line 372
    .line 373
    .line 374
    goto :goto_0

    .line 375
    :cond_1
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog;->listener:Leu/faircode/netguard/DatabaseHelper$LogChangedListener;

    .line 380
    .line 381
    invoke-virtual {p1, v0}, Leu/faircode/netguard/DatabaseHelper;->removeLogChangedListener(Leu/faircode/netguard/DatabaseHelper$LogChangedListener;)V

    .line 382
    .line 383
    .line 384
    :goto_0
    return v5

    .line 385
    :pswitch_c
    new-instance p1, Leu/faircode/netguard/ActivityLog$7;

    .line 386
    .line 387
    invoke-direct {p1, p0, v0, v1}, Leu/faircode/netguard/ActivityLog$7;-><init>(Leu/faircode/netguard/ActivityLog;Landroid/content/SharedPreferences;Ljava/io/File;)V

    .line 388
    .line 389
    .line 390
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 391
    .line 392
    new-array v1, v3, [Ljava/lang/Object;

    .line 393
    .line 394
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 395
    .line 396
    .line 397
    return v5

    .line 398
    :cond_2
    const-string p1, "NetGuard.Log"

    .line 399
    .line 400
    const-string v0, "Up"

    .line 401
    .line 402
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    invoke-static {p0}, Landroidx/core/app/r;->d(Landroid/app/Activity;)V

    .line 406
    .line 407
    .line 408
    return v5

    .line 409
    :pswitch_data_0
    .packed-switch 0x7f0900d8
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    :pswitch_data_1
    .packed-switch 0x7f0900de
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    :pswitch_data_2
    .packed-switch 0x7f0900e3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :pswitch_data_3
    .packed-switch 0x7f0900ef
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/y;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Leu/faircode/netguard/ActivityLog;->live:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Leu/faircode/netguard/ActivityLog;->listener:Leu/faircode/netguard/DatabaseHelper$LogChangedListener;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Leu/faircode/netguard/DatabaseHelper;->removeLogChangedListener(Leu/faircode/netguard/DatabaseHelper$LogChangedListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    .line 1
    invoke-static {p0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    const-string v2, "data"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v4, "netguard.pcap"

    .line 15
    .line 16
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->getIntentPCAPDocument()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    const v5, 0x7f0900e5

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "proto_udp"

    .line 45
    .line 46
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    const v5, 0x7f0900e4

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string v6, "proto_tcp"

    .line 61
    .line 62
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 67
    .line 68
    .line 69
    const v5, 0x7f0900e3

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    const-string v6, "proto_other"

    .line 77
    .line 78
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 83
    .line 84
    .line 85
    const v5, 0x7f0900ef

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const-string v7, "filter"

    .line 93
    .line 94
    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const-string v6, "traffic_allowed"

    .line 106
    .line 107
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 112
    .line 113
    .line 114
    const v5, 0x7f0900f0

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    const-string v6, "traffic_blocked"

    .line 122
    .line 123
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 128
    .line 129
    .line 130
    const v5, 0x7f0900e6

    .line 131
    .line 132
    .line 133
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    const v6, 0x7f0900d9

    .line 138
    .line 139
    .line 140
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-interface {v6}, Landroid/view/MenuItem;->isChecked()Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    xor-int/2addr v6, v4

    .line 149
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 150
    .line 151
    .line 152
    const v5, 0x7f0900db

    .line 153
    .line 154
    .line 155
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    const-string v6, "resolve"

    .line 160
    .line 161
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 166
    .line 167
    .line 168
    const v5, 0x7f0900da

    .line 169
    .line 170
    .line 171
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    const-string v6, "organization"

    .line 176
    .line 177
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 182
    .line 183
    .line 184
    const v5, 0x7f0900de

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    const-string v6, "pcap"

    .line 192
    .line 193
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 198
    .line 199
    .line 200
    const v0, 0x7f0900df

    .line 201
    .line 202
    .line 203
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_1

    .line 212
    .line 213
    if-eqz v2, :cond_1

    .line 214
    .line 215
    const/4 v3, 0x1

    .line 216
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 217
    .line 218
    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/y;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Leu/faircode/netguard/ActivityLog;->live:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Leu/faircode/netguard/ActivityLog;->listener:Leu/faircode/netguard/DatabaseHelper$LogChangedListener;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Leu/faircode/netguard/DatabaseHelper;->addLogChangedListener(Leu/faircode/netguard/DatabaseHelper$LogChangedListener;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Leu/faircode/netguard/ActivityLog;->updateAdapter()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

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
    const-string v1, "NetGuard.Log"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string v0, "log"

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const v1, 0x7f09015e

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    const/16 v2, 0x8

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v2, 0x0

    .line 64
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->getSupportActionBar()Landroidx/appcompat/app/d;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroidx/appcompat/app/d;->a()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const v2, 0x7f090130

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eq v2, p1, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 91
    .line 92
    .line 93
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v1, "changed "

    .line 96
    .line 97
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1, p0, v0}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method
