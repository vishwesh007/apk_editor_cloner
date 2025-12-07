.class public abstract LI0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/j;


# instance fields
.field private final d:LO0/l;

.field private final e:LI0/j;


# direct methods
.method public constructor <init>(LI0/j;LO0/l;)V
    .locals 1

    .line 1
    const-string v0, "baseKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, LI0/b;->d:LO0/l;

    .line 10
    .line 11
    instance-of p2, p1, LI0/b;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    check-cast p1, LI0/b;

    .line 16
    .line 17
    iget-object p1, p1, LI0/b;->e:LI0/j;

    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, LI0/b;->e:LI0/j;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(LI0/j;)Z
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eq p1, p0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, LI0/b;->e:LI0/j;

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 16
    :goto_1
    return p1
.end method

.method public final b(LI0/i;)LI0/i;
    .locals 1

    .line 1
    const-string v0, "element"

    .line 2
    .line 3
    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LI0/b;->d:LO0/l;

    .line 7
    .line 8
    invoke-interface {v0, p1}, LO0/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, LI0/i;

    .line 13
    .line 14
    return-object p1
.end method
