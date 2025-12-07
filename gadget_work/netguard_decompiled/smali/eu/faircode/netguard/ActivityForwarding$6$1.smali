.class Leu/faircode/netguard/ActivityForwarding$6$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivityForwarding$6;

.field final synthetic val$dport:I

.field final synthetic val$protocol:I

.field final synthetic val$raddr:Ljava/lang/String;

.field final synthetic val$rport:I

.field final synthetic val$ruid:I


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityForwarding$6;IILjava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->this$1:Leu/faircode/netguard/ActivityForwarding$6;

    .line 2
    .line 3
    iput p2, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->val$protocol:I

    .line 4
    .line 5
    iput p3, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->val$dport:I

    .line 6
    .line 7
    iput-object p4, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->val$raddr:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->val$rport:I

    .line 10
    .line 11
    iput p6, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->val$ruid:I

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivityForwarding$6$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 6

    .line 2
    :try_start_0
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->this$1:Leu/faircode/netguard/ActivityForwarding$6;

    iget-object p1, p1, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    move-result-object v0

    iget v1, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->val$protocol:I

    iget v2, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->val$dport:I

    iget-object v3, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->val$raddr:Ljava/lang/String;

    iget v4, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->val$rport:I

    iget v5, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->val$ruid:I

    .line 3
    invoke-virtual/range {v0 .. v5}, Leu/faircode/netguard/DatabaseHelper;->addForward(IILjava/lang/String;II)V
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

    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivityForwarding$6$1;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->this$1:Leu/faircode/netguard/ActivityForwarding$6;

    iget-object v0, v0, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    invoke-static {v0}, Leu/faircode/netguard/ActivityForwarding;->access$300(Leu/faircode/netguard/ActivityForwarding;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->this$1:Leu/faircode/netguard/ActivityForwarding$6;

    iget-object p1, p1, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    const/4 v0, 0x0

    const-string v1, "forwarding"

    invoke-static {v1, p1, v0}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 4
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->this$1:Leu/faircode/netguard/ActivityForwarding$6;

    iget-object p1, p1, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    new-instance v0, Leu/faircode/netguard/AdapterForwarding;

    iget-object v1, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->this$1:Leu/faircode/netguard/ActivityForwarding$6;

    iget-object v1, v1, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 5
    invoke-static {v1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Leu/faircode/netguard/DatabaseHelper;->getForwarding()Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/AdapterForwarding;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 6
    invoke-static {p1, v0}, Leu/faircode/netguard/ActivityForwarding;->access$002(Leu/faircode/netguard/ActivityForwarding;Leu/faircode/netguard/AdapterForwarding;)Leu/faircode/netguard/AdapterForwarding;

    .line 7
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->this$1:Leu/faircode/netguard/ActivityForwarding$6;

    iget-object p1, p1, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    invoke-static {p1}, Leu/faircode/netguard/ActivityForwarding;->access$100(Leu/faircode/netguard/ActivityForwarding;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->this$1:Leu/faircode/netguard/ActivityForwarding$6;

    iget-object v0, v0, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    invoke-static {v0}, Leu/faircode/netguard/ActivityForwarding;->access$000(Leu/faircode/netguard/ActivityForwarding;)Leu/faircode/netguard/AdapterForwarding;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding$6$1;->this$1:Leu/faircode/netguard/ActivityForwarding$6;

    iget-object v0, v0, Leu/faircode/netguard/ActivityForwarding$6;->this$0:Leu/faircode/netguard/ActivityForwarding;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
