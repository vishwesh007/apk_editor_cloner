.class Leu/faircode/netguard/AdapterLog$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterLog;

.field final synthetic val$tvDaddr:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterLog;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterLog$1;->this$0:Leu/faircode/netguard/AdapterLog;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterLog$1;->val$tvDaddr:Landroid/widget/TextView;

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
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/AdapterLog$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    aget-object p1, p1, v0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/AdapterLog$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/AdapterLog$1;->val$tvDaddr:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Leu/faircode/netguard/AdapterLog$1;->val$tvDaddr:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/f0;->R(Landroid/view/View;Z)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/AdapterLog$1;->val$tvDaddr:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/core/view/f0;->R(Landroid/view/View;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
