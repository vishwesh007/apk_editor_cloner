.class public final LI0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/l;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:LI0/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LI0/m;

    invoke-direct {v0}, LI0/m;-><init>()V

    sput-object v0, LI0/m;->d:LI0/m;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;LO0/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final get(LI0/j;)LI0/i;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final minusKey(LI0/j;)LI0/l;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
