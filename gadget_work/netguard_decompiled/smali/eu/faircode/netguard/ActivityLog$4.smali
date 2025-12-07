.class Leu/faircode/netguard/ActivityLog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityLog;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityLog;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityLog$4;->val$prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18

    move-object/from16 v9, p0

    .line 1
    iget-object v0, v9, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    iget-object v0, v9, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v0}, Leu/faircode/netguard/ActivityLog;->access$100(Leu/faircode/netguard/ActivityLog;)Leu/faircode/netguard/AdapterLog;

    move-result-object v0

    move/from16 v2, p3

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const-string v2, "time"

    .line 3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "version"

    .line 4
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "protocol"

    .line 5
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "saddr"

    .line 6
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sport"

    .line 7
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    const/4 v10, -0x1

    if-eqz v8, :cond_0

    const/4 v7, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :goto_0
    const-string v8, "daddr"

    .line 8
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "dport"

    .line 9
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v11, -0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    :goto_1
    const-string v12, "dname"

    .line 10
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "uid"

    .line 11
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, -0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    :goto_2
    const-string v14, "allowed"

    .line 12
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 13
    :goto_3
    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v14, v0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\n"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "NetGuard.Log"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 15
    :goto_4
    iget-object v14, v9, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v14}, Leu/faircode/netguard/ActivityLog;->access$200(Leu/faircode/netguard/ActivityLog;)Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v9, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v14}, Leu/faircode/netguard/ActivityLog;->access$300(Leu/faircode/netguard/ActivityLog;)Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    move-object v6, v8

    move v7, v11

    .line 16
    :cond_5
    :goto_5
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v14, v9, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    const v15, 0x7f09019d

    invoke-virtual {v14, v15}, Landroidx/appcompat/app/q;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-direct {v0, v14, v15}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v14, 0x7f0d0004

    .line 17
    invoke-virtual {v0, v14}, Landroid/widget/PopupMenu;->inflate(I)V

    const v14, 0x7f0900c9

    if-ltz v13, :cond_6

    .line 18
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v15

    invoke-interface {v15, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    iget-object v15, v9, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v13, v15}, Leu/faircode/netguard/Util;->getApplicationNames(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v15

    move-object/from16 p1, v12

    const-string v12, ", "

    invoke-static {v12, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v12}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_6

    :cond_6
    move-object/from16 p1, v12

    .line 19
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v12

    invoke-interface {v12, v14}, Landroid/view/Menu;->removeItem(I)V

    .line 20
    :goto_6
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v12

    const v14, 0x7f0900e2

    invoke-interface {v12, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v5, v4, v14}, Leu/faircode/netguard/Util;->getProtocolName(IIZ)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v15}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 21
    new-instance v12, Landroid/content/Intent;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "https://www.dnslytics.com/whois-lookup/"

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v12, v15, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v14, 0x0

    .line 22
    invoke-virtual {v1, v12, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    if-nez v16, :cond_7

    .line 23
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v14, 0x7f0900f1

    invoke-interface {v6, v14}, Landroid/view/Menu;->removeItem(I)V

    move-wide/from16 v16, v2

    move/from16 p5, v10

    move-object/from16 p3, v12

    goto :goto_7

    :cond_7
    move-object/from16 p3, v12

    const v14, 0x7f0900f1

    .line 24
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v12

    invoke-interface {v12, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    iget-object v14, v9, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    move-wide/from16 v16, v2

    move/from16 p5, v10

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const v3, 0x7f100124

    invoke-virtual {v14, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 25
    :goto_7
    new-instance v6, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://www.speedguide.net/port.php?port="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v6, v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v2, 0x7f0900e0

    const/4 v3, 0x0

    if-lez v7, :cond_9

    .line 26
    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_8

    .line 27
    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, v9, Leu/faircode/netguard/ActivityLog$4;->this$0:Leu/faircode/netguard/ActivityLog;

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v3

    const v7, 0x7f100123

    invoke-virtual {v2, v7, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v10, 0x1

    .line 28
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 29
    :goto_9
    iget-object v1, v9, Leu/faircode/netguard/ActivityLog$4;->val$prefs:Landroid/content/SharedPreferences;

    const-string v2, "filter"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const v2, 0x7f0900cb

    const v7, 0x7f0900c4

    if-eqz v1, :cond_a

    if-gtz v13, :cond_b

    .line 30
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 31
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_a

    .line 32
    :cond_a
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 33
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 34
    :cond_b
    :goto_a
    new-instance v7, Leu/faircode/netguard/Packet;

    invoke-direct {v7}, Leu/faircode/netguard/Packet;-><init>()V

    .line 35
    iput v4, v7, Leu/faircode/netguard/Packet;->version:I

    .line 36
    iput v5, v7, Leu/faircode/netguard/Packet;->protocol:I

    .line 37
    iput-object v8, v7, Leu/faircode/netguard/Packet;->daddr:Ljava/lang/String;

    .line 38
    iput v11, v7, Leu/faircode/netguard/Packet;->dport:I

    move-wide/from16 v1, v16

    .line 39
    iput-wide v1, v7, Leu/faircode/netguard/Packet;->time:J

    .line 40
    iput v13, v7, Leu/faircode/netguard/Packet;->uid:I

    if-lez p5, :cond_c

    const/4 v14, 0x1

    goto :goto_b

    :cond_c
    const/4 v14, 0x0

    .line 41
    :goto_b
    iput-boolean v14, v7, Leu/faircode/netguard/Packet;->allowed:Z

    .line 42
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0900ee

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 43
    new-instance v10, Leu/faircode/netguard/ActivityLog$4$1;

    move-object v1, v10

    move-object/from16 v2, p0

    move v3, v13

    move-object/from16 v4, p3

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v8}, Leu/faircode/netguard/ActivityLog$4$1;-><init>(Leu/faircode/netguard/ActivityLog$4;ILandroid/content/Intent;Landroid/content/Intent;Leu/faircode/netguard/Packet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 44
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
