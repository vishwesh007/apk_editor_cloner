.class Leu/faircode/netguard/ServiceSinkhole$StatsHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$1:Leu/faircode/netguard/ServiceSinkhole$StatsHandler;


# direct methods
.method constructor <init>(Leu/faircode/netguard/ServiceSinkhole$StatsHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/faircode/netguard/ServiceSinkhole$StatsHandler$1;->this$1:Leu/faircode/netguard/ServiceSinkhole$StatsHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Float;Ljava/lang/Float;)I
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Leu/faircode/netguard/ServiceSinkhole$StatsHandler$1;->compare(Ljava/lang/Float;Ljava/lang/Float;)I

    move-result p1

    return p1
.end method
