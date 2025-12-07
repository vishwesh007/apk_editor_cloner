.class public final enum Le0/f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LD0/d;


# static fields
.field public static final enum e:Le0/f;

.field public static final enum f:Le0/f;

.field public static final enum g:Le0/f;

.field public static final enum h:Le0/f;

.field public static final enum i:Le0/f;

.field public static final enum j:Le0/f;

.field public static final enum k:Le0/f;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le0/f;

    .line 2
    .line 3
    const-string v1, "REASON_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Le0/f;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Le0/f;->e:Le0/f;

    .line 10
    .line 11
    new-instance v0, Le0/f;

    .line 12
    .line 13
    const-string v1, "MESSAGE_TOO_OLD"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v2, v2, v1}, Le0/f;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Le0/f;->f:Le0/f;

    .line 20
    .line 21
    new-instance v0, Le0/f;

    .line 22
    .line 23
    const-string v1, "CACHE_FULL"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v2, v2, v1}, Le0/f;-><init>(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Le0/f;->g:Le0/f;

    .line 30
    .line 31
    new-instance v0, Le0/f;

    .line 32
    .line 33
    const-string v1, "PAYLOAD_TOO_BIG"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v2, v2, v1}, Le0/f;-><init>(IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Le0/f;->h:Le0/f;

    .line 40
    .line 41
    new-instance v0, Le0/f;

    .line 42
    .line 43
    const-string v1, "MAX_RETRIES_REACHED"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v2, v2, v1}, Le0/f;-><init>(IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Le0/f;->i:Le0/f;

    .line 50
    .line 51
    new-instance v0, Le0/f;

    .line 52
    .line 53
    const-string v1, "INVALID_PAYLOD"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v2, v2, v1}, Le0/f;-><init>(IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Le0/f;->j:Le0/f;

    .line 60
    .line 61
    new-instance v0, Le0/f;

    .line 62
    .line 63
    const-string v1, "SERVER_ERROR"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v2, v2, v1}, Le0/f;-><init>(IILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Le0/f;->k:Le0/f;

    .line 70
    .line 71
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Le0/f;->d:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Le0/f;->d:I

    .line 2
    .line 3
    return v0
.end method
