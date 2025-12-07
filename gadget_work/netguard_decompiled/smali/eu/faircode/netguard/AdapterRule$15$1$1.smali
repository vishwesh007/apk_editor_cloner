.class Leu/faircode/netguard/AdapterRule$15$1$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$2:Leu/faircode/netguard/AdapterRule$15$1;


# direct methods
.method constructor <init>(Leu/faircode/netguard/AdapterRule$15$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/AdapterRule$15$1$1;->this$2:Leu/faircode/netguard/AdapterRule$15$1;

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
    .locals 2

    .line 2
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$15$1$1;->this$2:Leu/faircode/netguard/AdapterRule$15$1;

    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$15;->val$context:Landroid/content/Context;

    invoke-static {p1}, Leu/faircode/netguard/DatabaseHelper;->getInstance(Landroid/content/Context;)Leu/faircode/netguard/DatabaseHelper;

    move-result-object p1

    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$15$1$1;->this$2:Leu/faircode/netguard/AdapterRule$15$1;

    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15;->val$rule:Leu/faircode/netguard/Rule;

    iget v0, v0, Leu/faircode/netguard/Rule;->uid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Leu/faircode/netguard/DatabaseHelper;->getHostCount(IZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Leu/faircode/netguard/AdapterRule$15$1$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3

    .line 2
    iget-object v0, p0, Leu/faircode/netguard/AdapterRule$15$1$1;->this$2:Leu/faircode/netguard/AdapterRule$15$1;

    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    iget-object v0, v0, Leu/faircode/netguard/AdapterRule$15;->val$rule:Leu/faircode/netguard/Rule;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Leu/faircode/netguard/Rule;->hosts:J

    .line 3
    iget-object p1, p0, Leu/faircode/netguard/AdapterRule$15$1$1;->this$2:Leu/faircode/netguard/AdapterRule$15$1;

    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$15$1;->this$1:Leu/faircode/netguard/AdapterRule$15;

    iget-object p1, p1, Leu/faircode/netguard/AdapterRule$15;->this$0:Leu/faircode/netguard/AdapterRule;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/C;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Leu/faircode/netguard/AdapterRule$15$1$1;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
