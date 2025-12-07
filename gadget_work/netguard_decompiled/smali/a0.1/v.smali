.class public final enum La0/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:La0/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La0/v;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "ANDROID_FIREBASE"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, La0/v;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, La0/v;->d:La0/v;

    .line 10
    .line 11
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
