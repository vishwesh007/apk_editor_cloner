.class final enum Leu/faircode/netguard/ServiceSinkhole$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Leu/faircode/netguard/ServiceSinkhole$State;

.field public static final enum enforcing:Leu/faircode/netguard/ServiceSinkhole$State;

.field public static final enum none:Leu/faircode/netguard/ServiceSinkhole$State;

.field public static final enum stats:Leu/faircode/netguard/ServiceSinkhole$State;

.field public static final enum waiting:Leu/faircode/netguard/ServiceSinkhole$State;


# direct methods
.method private static synthetic $values()[Leu/faircode/netguard/ServiceSinkhole$State;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Leu/faircode/netguard/ServiceSinkhole$State;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$State;->none:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$State;->waiting:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$State;->enforcing:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$State;->stats:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$State;

    .line 2
    .line 3
    const-string v1, "none"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$State;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$State;->none:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 10
    .line 11
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$State;

    .line 12
    .line 13
    const-string v1, "waiting"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$State;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$State;->waiting:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 20
    .line 21
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$State;

    .line 22
    .line 23
    const-string v1, "enforcing"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$State;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$State;->enforcing:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 30
    .line 31
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$State;

    .line 32
    .line 33
    const-string v1, "stats"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$State;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$State;->stats:Leu/faircode/netguard/ServiceSinkhole$State;

    .line 40
    .line 41
    invoke-static {}, Leu/faircode/netguard/ServiceSinkhole$State;->$values()[Leu/faircode/netguard/ServiceSinkhole$State;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$State;->$VALUES:[Leu/faircode/netguard/ServiceSinkhole$State;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
