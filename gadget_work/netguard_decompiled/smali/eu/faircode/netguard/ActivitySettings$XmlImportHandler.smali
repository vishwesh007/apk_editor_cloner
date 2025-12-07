.class Leu/faircode/netguard/ActivitySettings$XmlImportHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public application:Ljava/util/Map;

.field public apply:Ljava/util/Map;

.field private context:Landroid/content/Context;

.field private current:Ljava/util/Map;

.field public enabled:Z

.field public lockdown:Ljava/util/Map;

.field public mobile:Ljava/util/Map;

.field public notify:Ljava/util/Map;

.field public roaming:Ljava/util/Map;

.field public screen_other:Ljava/util/Map;

.field public screen_wifi:Ljava/util/Map;

.field final synthetic this$0:Leu/faircode/netguard/ActivitySettings;

.field public wifi:Ljava/util/Map;


# direct methods
.method public constructor <init>(Leu/faircode/netguard/ActivitySettings;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->enabled:Z

    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->application:Ljava/util/Map;

    .line 15
    .line 16
    new-instance p1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->wifi:Ljava/util/Map;

    .line 22
    .line 23
    new-instance p1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->mobile:Ljava/util/Map;

    .line 29
    .line 30
    new-instance p1, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->screen_wifi:Ljava/util/Map;

    .line 36
    .line 37
    new-instance p1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->screen_other:Ljava/util/Map;

    .line 43
    .line 44
    new-instance p1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->roaming:Ljava/util/Map;

    .line 50
    .line 51
    new-instance p1, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->lockdown:Ljava/util/Map;

    .line 57
    .line 58
    new-instance p1, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->apply:Ljava/util/Map;

    .line 64
    .line 65
    new-instance p1, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->notify:Ljava/util/Map;

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    .line 74
    .line 75
    iput-object p2, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->context:Landroid/content/Context;

    .line 76
    .line 77
    return-void
.end method

.method private getUid(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-string v0, "android.media"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/16 p1, 0x3f5

    .line 20
    .line 21
    return p1

    .line 22
    :cond_1
    const-string v0, "android.multicast"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/16 p1, 0x3fc

    .line 31
    .line 32
    return p1

    .line 33
    :cond_2
    const-string v0, "android.gps"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/16 p1, 0x3fd

    .line 42
    .line 43
    return p1

    .line 44
    :cond_3
    const-string v0, "android.dns"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    const/16 p1, 0x41b

    .line 53
    .line 54
    return p1

    .line 55
    :cond_4
    const-string v0, "nobody"

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    const/16 p1, 0x270f

    .line 64
    .line 65
    return p1

    .line 66
    :cond_5
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 77
    .line 78
    return p1
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9

    const-string p1, "netguard"

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string p1, "application"

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->application:Ljava/util/Map;

    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    goto/16 :goto_3

    :cond_1
    const-string p1, "wifi"

    .line 4
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->wifi:Ljava/util/Map;

    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    goto/16 :goto_3

    :cond_2
    const-string p1, "mobile"

    .line 6
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->mobile:Ljava/util/Map;

    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    goto/16 :goto_3

    :cond_3
    const-string p1, "screen_wifi"

    .line 8
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->screen_wifi:Ljava/util/Map;

    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    goto/16 :goto_3

    :cond_4
    const-string p1, "screen_other"

    .line 10
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->screen_other:Ljava/util/Map;

    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    goto/16 :goto_3

    :cond_5
    const-string p1, "roaming"

    .line 12
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->roaming:Ljava/util/Map;

    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    goto/16 :goto_3

    :cond_6
    const-string p1, "lockdown"

    .line 14
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->lockdown:Ljava/util/Map;

    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    goto/16 :goto_3

    :cond_7
    const-string p1, "apply"

    .line 16
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 17
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->apply:Ljava/util/Map;

    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    goto/16 :goto_3

    :cond_8
    const-string p1, "notify"

    .line 18
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 19
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->notify:Ljava/util/Map;

    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    goto/16 :goto_3

    :cond_9
    const-string p1, "filter"

    .line 20
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const-string v0, "NetGuard.Settings"

    if-eqz p1, :cond_a

    .line 21
    iput-object p2, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    const-string p1, "Clearing filters"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Leu/faircode/netguard/DatabaseHelper;->clearAccess()V

    goto/16 :goto_3

    :cond_a
    const-string p1, "forward"

    .line 24
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 25
    iput-object p2, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    const-string p1, "Clearing forwards"

    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->context:Landroid/content/Context;

    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Leu/faircode/netguard/DatabaseHelper;->deleteForward()V

    goto/16 :goto_3

    :cond_b
    const-string p1, "setting"

    .line 28
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "key"

    .line 29
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "type"

    .line 30
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "value"

    .line 31
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 32
    iget-object p4, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    if-nez p4, :cond_c

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No current key="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_c
    const-string p4, "enabled"

    .line 34
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 35
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->enabled:Z

    goto/16 :goto_3

    .line 36
    :cond_d
    iget-object p4, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->application:Ljava/util/Map;

    if-ne p4, v1, :cond_12

    const-string p4, "log"

    .line 37
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 38
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->context:Landroid/content/Context;

    invoke-static {p4, v1}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_10

    return-void

    :cond_e
    const-string p4, "theme"

    .line 39
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 40
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->context:Landroid/content/Context;

    invoke-static {p4, v1}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_10

    return-void

    :cond_f
    const-string p4, "show_stats"

    .line 41
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_10

    const-string p4, "speed"

    .line 42
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->context:Landroid/content/Context;

    invoke-static {p4, v1}, Leu/faircode/netguard/IAB;->isPurchased(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_10

    return-void

    :cond_10
    const-string p4, "hosts_last_import"

    .line 43
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_11

    const-string p4, "hosts_last_download"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_12

    :cond_11
    return-void

    :cond_12
    const-string p4, "boolean"

    .line 44
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_13

    .line 45
    iget-object p2, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_13
    const-string p4, "integer"

    .line 46
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    .line 47
    iget-object p2, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_14
    const-string p4, "string"

    .line 48
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_15

    .line 49
    iget-object p2, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_15
    const-string p4, "set"

    .line 50
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 51
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 52
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_16

    const-string p4, "\n"

    .line 53
    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_16

    aget-object v1, p3, v0

    .line 54
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_16
    iget-object p3, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->current:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 56
    :cond_17
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown type key="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_18
    const-string p1, "rule"

    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "Package not found pkg="

    const-string v2, "dport"

    const-string v3, "protocol"

    const-string v4, "pkg"

    if-eqz p1, :cond_1b

    .line 58
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "version"

    .line 59
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 60
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    new-instance v4, Leu/faircode/netguard/Packet;

    invoke-direct {v4}, Leu/faircode/netguard/Packet;-><init>()V

    if-nez p3, :cond_19

    const/4 p3, 0x4

    goto :goto_1

    .line 62
    :cond_19
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    :goto_1
    iput p3, v4, Leu/faircode/netguard/Packet;->version:I

    if-nez v3, :cond_1a

    const/4 p3, 0x6

    goto :goto_2

    .line 63
    :cond_1a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    :goto_2
    iput p3, v4, Leu/faircode/netguard/Packet;->protocol:I

    const-string p3, "daddr"

    .line 64
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v4, Leu/faircode/netguard/Packet;->daddr:Ljava/lang/String;

    .line 65
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, v4, Leu/faircode/netguard/Packet;->dport:I

    const-string p3, "time"

    .line 66
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v4, Leu/faircode/netguard/Packet;->time:J

    const-string p3, "block"

    .line 67
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 68
    :try_start_0
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->getUid(Ljava/lang/String;)I

    move-result p4

    iput p4, v4, Leu/faircode/netguard/Packet;->uid:I

    .line 69
    iget-object p4, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->context:Landroid/content/Context;

    invoke-static {p4}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    move-result-object p4

    invoke-virtual {p4, v4, p2, p3}, Leu/faircode/netguard/DatabaseHelper;->updateAccess(Leu/faircode/netguard/Packet;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 70
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1b
    const-string p1, "port"

    .line 71
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 72
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 74
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string p2, "raddr"

    .line 75
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "rport"

    .line 76
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 77
    :try_start_1
    invoke-direct {p0, p1}, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->getUid(Ljava/lang/String;)I

    move-result v8

    .line 78
    iget-object p2, p0, Leu/faircode/netguard/ActivitySettings$XmlImportHandler;->context:Landroid/content/Context;

    invoke-static {p2}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    move-result-object v3

    invoke-virtual/range {v3 .. v8}, Leu/faircode/netguard/DatabaseHelper;->addForward(IILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 79
    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1c
    const-string p1, "Unknown element qname="

    .line 80
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
