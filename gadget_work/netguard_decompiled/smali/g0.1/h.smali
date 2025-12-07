.class public final enum Lg0/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lg0/h;

.field public static final enum e:Lg0/h;

.field public static final enum f:Lg0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lg0/h;

    .line 2
    .line 3
    const-string v1, "NETWORK_UNMETERED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lg0/h;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lg0/h;->d:Lg0/h;

    .line 10
    .line 11
    new-instance v0, Lg0/h;

    .line 12
    .line 13
    const-string v1, "DEVICE_IDLE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lg0/h;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lg0/h;->e:Lg0/h;

    .line 20
    .line 21
    new-instance v0, Lg0/h;

    .line 22
    .line 23
    const-string v1, "DEVICE_CHARGING"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lg0/h;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lg0/h;->f:Lg0/h;

    .line 30
    .line 31
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
