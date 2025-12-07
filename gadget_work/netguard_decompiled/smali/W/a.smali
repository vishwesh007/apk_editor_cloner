.class public final LW/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/e;


# static fields
.field private static final b:LW/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LW/a;

    .line 2
    .line 3
    invoke-direct {v0}, LW/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LW/a;->b:LW/a;

    .line 7
    .line 8
    return-void
.end method

.method public static c()LW/a;
    .locals 1

    .line 1
    sget-object v0, LW/a;->b:LW/a;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "EmptySignature"

    return-object v0
.end method
