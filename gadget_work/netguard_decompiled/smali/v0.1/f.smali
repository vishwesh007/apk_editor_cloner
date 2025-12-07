.class public final Lv0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm0/c;

.field public static final b:[Lm0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lm0/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lm0/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv0/f;->a:Lm0/c;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Lm0/c;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v0, v1, v2

    .line 13
    .line 14
    sput-object v1, Lv0/f;->b:[Lm0/c;

    .line 15
    .line 16
    return-void
.end method
