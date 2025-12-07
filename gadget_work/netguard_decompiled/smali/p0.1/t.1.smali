.class public final Lp0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lp0/t;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lp0/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lp0/u;-><init>(IZZII)V

    return-void
.end method

.method public static declared-synchronized a()Lp0/t;
    .locals 2

    .line 1
    const-class v0, Lp0/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp0/t;->a:Lp0/t;

    if-nez v1, :cond_0

    new-instance v1, Lp0/t;

    invoke-direct {v1}, Lp0/t;-><init>()V

    sput-object v1, Lp0/t;->a:Lp0/t;

    :cond_0
    sget-object v1, Lp0/t;->a:Lp0/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
