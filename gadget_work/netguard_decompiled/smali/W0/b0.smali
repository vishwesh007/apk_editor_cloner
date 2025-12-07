.class public final LW0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/A;
.implements LW0/f;


# static fields
.field public static final d:LW0/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LW0/b0;

    invoke-direct {v0}, LW0/b0;-><init>()V

    sput-object v0, LW0/b0;->d:LW0/b0;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 0

    .line 1
    return-void
.end method

.method public final i(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
