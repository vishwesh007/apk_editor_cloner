.class Leu/faircode/netguard/ActivitySettings$16;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivitySettings;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivitySettings;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$16;->this$0:Leu/faircode/netguard/ActivitySettings;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivitySettings$16;->val$data:Landroid/content/Intent;

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
    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivitySettings$16;->doInBackground([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 6

    const-string p1, "*/*"

    const-string v0, "\n"

    const-string v1, "NetGuard.Settings"

    const-string v2, "Reading URI="

    const/4 v3, 0x0

    .line 2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Leu/faircode/netguard/ActivitySettings$16;->val$data:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Leu/faircode/netguard/ActivitySettings$16;->this$0:Leu/faircode/netguard/ActivitySettings;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4
    iget-object v4, p0, Leu/faircode/netguard/ActivitySettings$16;->val$data:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    array-length v5, v4

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-object p1, v4, p1

    .line 6
    :cond_1
    :goto_0
    iget-object v4, p0, Leu/faircode/netguard/ActivitySettings$16;->val$data:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, p1, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v2, p0, Leu/faircode/netguard/ActivitySettings$16;->this$0:Leu/faircode/netguard/ActivitySettings;

    invoke-static {v2, p1}, Leu/faircode/netguard/ActivitySettings;->access$800(Leu/faircode/netguard/ActivitySettings;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-static {p1, v2, v0, p1, v1}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v3

    :catchall_0
    move-exception v2

    move-object v3, p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, p1

    .line 12
    :goto_2
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_3

    .line 13
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-static {p1, v3, v0, p1, v1}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-object v2

    :catchall_2
    move-exception p1

    if-eqz v3, :cond_4

    .line 16
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-static {v2, v3, v0, v2, v1}, LB/i;->f(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 19
    :cond_4
    :goto_4
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivitySettings$16;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$16;->this$0:Leu/faircode/netguard/ActivitySettings;

    invoke-static {v0}, Leu/faircode/netguard/ActivitySettings;->access$300(Leu/faircode/netguard/ActivitySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$16;->this$0:Leu/faircode/netguard/ActivitySettings;

    const v1, 0x7f100068

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "import"

    .line 4
    iget-object v0, p0, Leu/faircode/netguard/ActivitySettings$16;->this$0:Leu/faircode/netguard/ActivitySettings;

    invoke-static {p1, v0}, Leu/faircode/netguard/ServiceSinkhole;->reloadStats(Ljava/lang/String;Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$16;->this$0:Leu/faircode/netguard/ActivitySettings;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$16;->this$0:Leu/faircode/netguard/ActivitySettings;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
