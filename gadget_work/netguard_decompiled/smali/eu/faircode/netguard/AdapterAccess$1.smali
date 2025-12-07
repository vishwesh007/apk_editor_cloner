.class Leu/faircode/netguard/AdapterAccess$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/AdapterAccess;

.field final synthetic val$dport:I

.field final synthetic val$protocol:I

.field final synthetic val$tvDest:Landroid/widget/TextView;

.field final synthetic val$version:I


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterAccess;Landroid/widget/TextView;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterAccess$1;->this$0:Leu/faircode/netguard/AdapterAccess;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/AdapterAccess$1;->val$tvDest:Landroid/widget/TextView;

    .line 4
    .line 5
    iput p3, p0, Leu/faircode/netguard/AdapterAccess$1;->val$protocol:I

    .line 6
    .line 7
    iput p4, p0, Leu/faircode/netguard/AdapterAccess$1;->val$version:I

    .line 8
    .line 9
    iput p5, p0, Leu/faircode/netguard/AdapterAccess$1;->val$dport:I

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/AdapterAccess$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Leu/faircode/netguard/AdapterAccess$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/AdapterAccess$1;->val$tvDest:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Leu/faircode/netguard/AdapterAccess$1;->val$protocol:I

    iget v3, p0, Leu/faircode/netguard/AdapterAccess$1;->val$version:I

    const/4 v4, 0x1

    .line 3
    invoke-static {v2, v3, v4}, Leu/faircode/netguard/Util;->getProtocolName(IIZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget p1, p0, Leu/faircode/netguard/AdapterAccess$1;->val$dport:I

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Leu/faircode/netguard/AdapterAccess$1;->val$dport:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Leu/faircode/netguard/AdapterAccess$1;->val$tvDest:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/f0;->R(Landroid/view/View;Z)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/AdapterAccess$1;->val$tvDest:Landroid/widget/TextView;

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
