.class Leu/faircode/netguard/ActivitySettings$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leu/faircode/netguard/Util$DoubtListener;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ActivitySettings$1;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivitySettings$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivitySettings$1$1;->this$1:Leu/faircode/netguard/ActivitySettings$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSure()V
    .locals 3

    .line 1
    new-instance v0, Leu/faircode/netguard/ActivitySettings$1$1$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Leu/faircode/netguard/ActivitySettings$1$1$1;-><init>(Leu/faircode/netguard/ActivitySettings$1$1;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-void
.end method
