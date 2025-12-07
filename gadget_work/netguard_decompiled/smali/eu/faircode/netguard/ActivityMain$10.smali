.class Leu/faircode/netguard/ActivityMain$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$10;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$10;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    invoke-static {p1}, Leu/faircode/netguard/ActivityMain;->access$400(Leu/faircode/netguard/ActivityMain;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$10;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
