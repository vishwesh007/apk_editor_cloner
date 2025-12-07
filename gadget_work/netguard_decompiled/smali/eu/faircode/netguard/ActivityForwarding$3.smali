.class Leu/faircode/netguard/ActivityForwarding$3;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityForwarding;

.field final synthetic val$pbRuid:Landroid/widget/ProgressBar;

.field final synthetic val$spRuid:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityForwarding;Landroid/widget/ProgressBar;Landroid/widget/Spinner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityForwarding$3;->this$0:Leu/faircode/netguard/ActivityForwarding;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityForwarding$3;->val$pbRuid:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    iput-object p3, p0, Leu/faircode/netguard/ActivityForwarding$3;->val$spRuid:Landroid/widget/Spinner;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivityForwarding$3;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding$3;->this$0:Leu/faircode/netguard/ActivityForwarding;

    invoke-static {p1, v0}, Leu/faircode/netguard/Rule;->getRules(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/ActivityForwarding$3;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3

    .line 2
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Leu/faircode/netguard/ActivityForwarding$3;->this$0:Leu/faircode/netguard/ActivityForwarding;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$3;->val$spRuid:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 4
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$3;->val$pbRuid:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Leu/faircode/netguard/ActivityForwarding$3;->val$spRuid:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding$3;->val$pbRuid:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Leu/faircode/netguard/ActivityForwarding$3;->val$spRuid:Landroid/widget/Spinner;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
