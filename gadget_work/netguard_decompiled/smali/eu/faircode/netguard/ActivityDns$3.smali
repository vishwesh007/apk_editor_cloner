.class Leu/faircode/netguard/ActivityDns$3;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityDns;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityDns;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityDns$3;->this$0:Leu/faircode/netguard/ActivityDns;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1

    const-string p1, "NetGuard.DNS"

    const-string v0, "Clear DNS"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Leu/faircode/netguard/ActivityDns$3;->this$0:Leu/faircode/netguard/ActivityDns;

    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Leu/faircode/netguard/DatabaseHelper;->clearDns()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivityDns$3;->doInBackground([Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityDns$3;->this$0:Leu/faircode/netguard/ActivityDns;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "DNS clear"

    .line 5
    .line 6
    invoke-static {v1, p1, v0}, Leu/faircode/netguard/ServiceSinkhole;->reload(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Leu/faircode/netguard/ActivityDns$3;->this$0:Leu/faircode/netguard/ActivityDns;

    .line 10
    .line 11
    invoke-static {p1}, Leu/faircode/netguard/ActivityDns;->access$100(Leu/faircode/netguard/ActivityDns;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
