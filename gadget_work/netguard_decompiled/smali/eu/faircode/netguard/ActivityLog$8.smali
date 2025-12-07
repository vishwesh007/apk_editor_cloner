.class Leu/faircode/netguard/ActivityLog$8;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityLog;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityLog;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityLog$8;->val$data:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivityLog$8;->doInBackground([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 12

    const-string p1, "pcap"

    const-string v0, "\n"

    const-string v1, "NetGuard.Log"

    const-string v2, "Export PCAP URI="

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    :try_start_0
    iget-object v6, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v4, v6}, Leu/faircode/netguard/ServiceSinkhole;->setPcap(ZLandroid/content/Context;)V

    .line 3
    iget-object v6, p0, Leu/faircode/netguard/ActivityLog$8;->val$data:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 4
    iget-object v7, p0, Leu/faircode/netguard/ActivityLog$8;->val$data:Landroid/content/Intent;

    const-string v8, "org.openintents.extra.DIR_PATH"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/netguard.pcap"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 6
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v2, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    const-string v8, "data"

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    const-string v8, "netguard.pcap"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v6, 0x1000

    :try_start_2
    new-array v6, v6, [B

    const-wide/16 v8, 0x0

    .line 10
    :goto_0
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_1

    .line 11
    invoke-virtual {v2, v6, v4, v10}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v10, v10

    add-long/2addr v8, v10

    goto :goto_0

    .line 12
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copied bytes="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 13
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-static {v2, v6, v0, v2, v1}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 16
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-static {v2, v6, v0, v2, v1}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 19
    :goto_2
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v3, p1}, Leu/faircode/netguard/ServiceSinkhole;->setPcap(ZLandroid/content/Context;)V

    :cond_3
    return-object v5

    :catchall_0
    move-exception v5

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v7, v5

    move-object v5, v2

    move-object v2, v7

    .line 22
    :goto_3
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_4

    .line 23
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-static {v2, v6, v0, v2, v1}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 26
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-static {v2, v6, v0, v2, v1}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 29
    :cond_5
    :goto_5
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 31
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v3, p1}, Leu/faircode/netguard/ServiceSinkhole;->setPcap(ZLandroid/content/Context;)V

    :cond_6
    return-object v5

    :catchall_3
    move-exception v5

    if-eqz v2, :cond_7

    .line 32
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    move-exception v2

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-static {v2, v6, v0, v2, v1}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    .line 35
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catch_5
    move-exception v2

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-static {v2, v6, v0, v2, v1}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 38
    :cond_8
    :goto_7
    iget-object v0, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v0}, Lt0/a;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 40
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-static {v3, p1}, Leu/faircode/netguard/ServiceSinkhole;->setPcap(ZLandroid/content/Context;)V

    .line 41
    :cond_9
    throw v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivityLog$8;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    const v1, 0x7f100068

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Leu/faircode/netguard/ActivityLog$8;->this$0:Leu/faircode/netguard/ActivityLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
