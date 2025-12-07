.class public final LX/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/Executor;

.field private static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LX/g;

    .line 2
    .line 3
    invoke-direct {v0}, LX/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LX/i;->a:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v0, LX/h;

    .line 9
    .line 10
    invoke-direct {v0}, LX/h;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LX/i;->b:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    return-void
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, LX/i;->b:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, LX/i;->a:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method
