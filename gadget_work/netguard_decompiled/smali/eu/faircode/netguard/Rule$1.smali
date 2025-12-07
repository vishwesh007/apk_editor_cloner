.class Leu/faircode/netguard/Rule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/Rule$1;->val$collator:Ljava/text/Collator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public compare(Leu/faircode/netguard/Rule;Leu/faircode/netguard/Rule;)I
    .locals 3

    .line 2
    iget v0, p1, Leu/faircode/netguard/Rule;->uid:I

    iget v1, p2, Leu/faircode/netguard/Rule;->uid:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Leu/faircode/netguard/Rule$1;->val$collator:Ljava/text/Collator;

    iget-object v1, p1, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    iget-object v2, p2, Leu/faircode/netguard/Rule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object p1, p1, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    iget-object p2, p2, Leu/faircode/netguard/Rule;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Leu/faircode/netguard/Rule;

    check-cast p2, Leu/faircode/netguard/Rule;

    invoke-virtual {p0, p1, p2}, Leu/faircode/netguard/Rule$1;->compare(Leu/faircode/netguard/Rule;Leu/faircode/netguard/Rule;)I

    move-result p1

    return p1
.end method
