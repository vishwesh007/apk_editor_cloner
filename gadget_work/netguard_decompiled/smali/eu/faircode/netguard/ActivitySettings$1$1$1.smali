.class Leu/faircode/netguard/ActivitySettings$1$1$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$2:Leu/faircode/netguard/ActivitySettings$1$1;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivitySettings$1$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$1$1$1;->this$2:Leu/faircode/netguard/ActivitySettings$1$1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivitySettings$1$1$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    .line 2
    :try_start_0
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$1$1$1;->this$2:Leu/faircode/netguard/ActivitySettings$1$1;

    iget-object p1, p1, Leu/faircode/netguard/ActivitySettings$1$1;->this$1:Leu/faircode/netguard/ActivitySettings$1;

    iget-object p1, p1, Leu/faircode/netguard/ActivitySettings$1;->this$0:Leu/faircode/netguard/ActivitySettings;

    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Leu/faircode/netguard/DatabaseHelper;->resetUsage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivitySettings$1$1$1;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Leu/faircode/netguard/ActivitySettings$1$1$1;->this$2:Leu/faircode/netguard/ActivitySettings$1$1;

    iget-object p1, p1, Leu/faircode/netguard/ActivitySettings$1$1;->this$1:Leu/faircode/netguard/ActivitySettings$1;

    iget-object p1, p1, Leu/faircode/netguard/ActivitySettings$1;->this$0:Leu/faircode/netguard/ActivitySettings;

    const v1, 0x7f100068

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Leu/faircode/netguard/ActivitySettings$1$1$1;->this$2:Leu/faircode/netguard/ActivitySettings$1$1;

    iget-object v1, v1, Leu/faircode/netguard/ActivitySettings$1$1;->this$1:Leu/faircode/netguard/ActivitySettings$1;

    iget-object v1, v1, Leu/faircode/netguard/ActivitySettings$1;->this$0:Leu/faircode/netguard/ActivitySettings;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
