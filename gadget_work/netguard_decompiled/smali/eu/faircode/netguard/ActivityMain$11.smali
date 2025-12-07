.class Leu/faircode/netguard/ActivityMain$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Leu/faircode/netguard/ActivityMain;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ActivityMain;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ActivityMain$11;->this$0:Leu/faircode/netguard/ActivityMain;

    .line 2
    .line 3
    iput-object p2, p0, Leu/faircode/netguard/ActivityMain$11;->val$prefs:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$11;->this$0:Leu/faircode/netguard/ActivityMain;

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
    iget-object p1, p0, Leu/faircode/netguard/ActivityMain$11;->val$prefs:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string p2, "initialized"

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p1, p2, v0}, LE0/a;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
