.class Leu/faircode/netguard/ActivityMain$25;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private refreshing:Z

.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;

.field final synthetic val$search:Ljava/lang/String;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$25;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityMain$25;->val$search:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Leu/faircode/netguard/ActivityMain$25;->refreshing:Z

    .line 10
    .line 11
    return-void
.end method

.method static synthetic access$1200(Leu/faircode/netguard/ActivityMain$25;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Leu/faircode/netguard/ActivityMain$25;->refreshing:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivityMain$25;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$25;->this$0:Leu/faircode/netguard/ActivityMain;

    invoke-static {p1, v0}, Leu/faircode/netguard/Rule;->getRules(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivityMain$25;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$25;->this$0:Leu/faircode/netguard/ActivityMain;

    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$400(Leu/faircode/netguard/ActivityMain;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$25;->this$0:Leu/faircode/netguard/ActivityMain;

    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$25;->this$0:Leu/faircode/netguard/ActivityMain;

    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1000(Leu/faircode/netguard/ActivityMain;)Leu/faircode/netguard/AdapterRule;

    move-result-object v0

    invoke-virtual {v0, p1}, Leu/faircode/netguard/AdapterRule;->set(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$25;->this$0:Leu/faircode/netguard/ActivityMain;

    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$25;->val$search:Ljava/lang/String;

    invoke-static {p1, v0}, Leu/faircode/netguard/ActivityMain;->access$1400(Leu/faircode/netguard/ActivityMain;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$25;->this$0:Leu/faircode/netguard/ActivityMain;

    invoke-static {p1}, Leu/faircode/netguard/ActivityMain;->access$1300(Leu/faircode/netguard/ActivityMain;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Leu/faircode/netguard/ActivityMain$25;->refreshing:Z

    .line 8
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$25;->this$0:Leu/faircode/netguard/ActivityMain;

    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1300(Leu/faircode/netguard/ActivityMain;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j(Z)V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityMain$25;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-static {v0}, Leu/faircode/netguard/ActivityMain;->access$1300(Leu/faircode/netguard/ActivityMain;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Leu/faircode/netguard/ActivityMain$25$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Leu/faircode/netguard/ActivityMain$25$1;-><init>(Leu/faircode/netguard/ActivityMain$25;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
