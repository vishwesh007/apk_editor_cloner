.class Leu/faircode/netguard/Util$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$listener:Leu/faircode/netguard/Util$DoubtListener;


# direct methods
.method constructor <init>(Leu/faircode/netguard/Util$DoubtListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/Util$2;->val$listener:Leu/faircode/netguard/Util$DoubtListener;

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
    iget-object p1, p0, Leu/faircode/netguard/Util$2;->val$listener:Leu/faircode/netguard/Util$DoubtListener;

    .line 2
    .line 3
    invoke-interface {p1}, Leu/faircode/netguard/Util$DoubtListener;->onSure()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
