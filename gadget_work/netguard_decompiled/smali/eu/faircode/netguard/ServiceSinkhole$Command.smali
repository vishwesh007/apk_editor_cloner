.class public final enum Leu/faircode/netguard/ServiceSinkhole$Command;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Leu/faircode/netguard/ServiceSinkhole$Command;

.field public static final enum householding:Leu/faircode/netguard/ServiceSinkhole$Command;

.field public static final enum reload:Leu/faircode/netguard/ServiceSinkhole$Command;

.field public static final enum run:Leu/faircode/netguard/ServiceSinkhole$Command;

.field public static final enum set:Leu/faircode/netguard/ServiceSinkhole$Command;

.field public static final enum start:Leu/faircode/netguard/ServiceSinkhole$Command;

.field public static final enum stats:Leu/faircode/netguard/ServiceSinkhole$Command;

.field public static final enum stop:Leu/faircode/netguard/ServiceSinkhole$Command;

.field public static final enum watchdog:Leu/faircode/netguard/ServiceSinkhole$Command;


# direct methods
.method private static synthetic $values()[Leu/faircode/netguard/ServiceSinkhole$Command;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->run:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->start:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->reload:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->stop:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->stats:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->set:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->householding:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Leu/faircode/netguard/ServiceSinkhole$Command;->watchdog:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 2
    .line 3
    const-string v1, "run"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$Command;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$Command;->run:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 10
    .line 11
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 12
    .line 13
    const-string v1, "start"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$Command;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$Command;->start:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 20
    .line 21
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 22
    .line 23
    const-string v1, "reload"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$Command;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$Command;->reload:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 30
    .line 31
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 32
    .line 33
    const-string v1, "stop"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$Command;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$Command;->stop:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 40
    .line 41
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 42
    .line 43
    const-string v1, "stats"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$Command;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$Command;->stats:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 50
    .line 51
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 52
    .line 53
    const-string v1, "set"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$Command;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$Command;->set:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 60
    .line 61
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 62
    .line 63
    const-string v1, "householding"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$Command;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$Command;->householding:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 70
    .line 71
    new-instance v0, Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 72
    .line 73
    const-string v1, "watchdog"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Leu/faircode/netguard/ServiceSinkhole$Command;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$Command;->watchdog:Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 80
    .line 81
    invoke-static {}, Leu/faircode/netguard/ServiceSinkhole$Command;->$values()[Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Leu/faircode/netguard/ServiceSinkhole$Command;->$VALUES:[Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 86
    .line 87
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

.method public static values()[Leu/faircode/netguard/ServiceSinkhole$Command;
    .locals 1

    .line 1
    sget-object v0, Leu/faircode/netguard/ServiceSinkhole$Command;->$VALUES:[Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 2
    .line 3
    invoke-virtual {v0}, [Leu/faircode/netguard/ServiceSinkhole$Command;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Leu/faircode/netguard/ServiceSinkhole$Command;

    .line 8
    .line 9
    return-object v0
.end method
