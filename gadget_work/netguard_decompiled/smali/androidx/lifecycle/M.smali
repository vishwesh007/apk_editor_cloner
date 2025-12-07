.class final Landroidx/lifecycle/M;
.super LP0/g;
.source "SourceFile"

# interfaces
.implements LO0/l;


# static fields
.field public static final e:Landroidx/lifecycle/M;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/M;

    invoke-direct {v0}, Landroidx/lifecycle/M;-><init>()V

    sput-object v0, Landroidx/lifecycle/M;->e:Landroidx/lifecycle/M;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LP0/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lq/c;

    .line 2
    .line 3
    const-string v0, "$this$initializer"

    .line 4
    .line 5
    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/lifecycle/Q;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/lifecycle/Q;-><init>()V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method
