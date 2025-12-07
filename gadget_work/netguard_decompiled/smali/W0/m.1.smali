.class final LW0/m;
.super LP0/g;
.source "SourceFile"

# interfaces
.implements LO0/l;


# static fields
.field public static final e:LW0/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LW0/m;

    invoke-direct {v0}, LW0/m;-><init>()V

    sput-object v0, LW0/m;->e:LW0/m;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LP0/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, LI0/i;

    .line 2
    .line 3
    instance-of v0, p1, LW0/o;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, LW0/o;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return-object p1
.end method
