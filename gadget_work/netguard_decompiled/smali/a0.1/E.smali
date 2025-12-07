.class public final enum La0/E;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:La0/E;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, La0/E;

    .line 2
    .line 3
    const-string v1, "DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1}, La0/E;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, La0/E;->d:La0/E;

    .line 10
    .line 11
    new-instance v1, La0/E;

    .line 12
    .line 13
    const-string v3, "UNMETERED_ONLY"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v4, v3}, La0/E;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, La0/E;

    .line 20
    .line 21
    const-string v5, "UNMETERED_OR_DAILY"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v6, v5}, La0/E;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v5, La0/E;

    .line 28
    .line 29
    const-string v7, "FAST_IF_RADIO_AWAKE"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v8, v7}, La0/E;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v7, La0/E;

    .line 36
    .line 37
    const-string v9, "NEVER"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v10, v9}, La0/E;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v9, La0/E;

    .line 44
    .line 45
    const-string v11, "UNRECOGNIZED"

    .line 46
    .line 47
    const/4 v12, 0x5

    .line 48
    invoke-direct {v9, v12, v11}, La0/E;-><init>(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v11, Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v11, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v11, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v11, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v11, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, -0x1

    .line 72
    invoke-virtual {v11, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
