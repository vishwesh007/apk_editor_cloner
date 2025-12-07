.class final LI0/k;
.super LP0/g;
.source "SourceFile"

# interfaces
.implements LO0/p;


# static fields
.field public static final e:LI0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LI0/k;

    invoke-direct {v0}, LI0/k;-><init>()V

    sput-object v0, LI0/k;->e:LI0/k;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, LP0/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, LI0/l;

    .line 2
    .line 3
    check-cast p2, LI0/i;

    .line 4
    .line 5
    const-string v0, "acc"

    .line 6
    .line 7
    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "element"

    .line 11
    .line 12
    invoke-static {p2, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, LI0/i;->getKey()LI0/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, v0}, LI0/l;->minusKey(LI0/j;)LI0/l;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, LI0/m;->d:LI0/m;

    .line 24
    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    sget-object v1, LI0/g;->a:LI0/f;

    .line 29
    .line 30
    sget-object v1, LI0/f;->d:LI0/f;

    .line 31
    .line 32
    invoke-interface {p1, v1}, LI0/l;->get(LI0/j;)LI0/i;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, LI0/g;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    new-instance v0, LI0/d;

    .line 41
    .line 42
    invoke-direct {v0, p2, p1}, LI0/d;-><init>(LI0/i;LI0/l;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    move-object p2, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {p1, v1}, LI0/l;->minusKey(LI0/j;)LI0/l;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    new-instance p1, LI0/d;

    .line 54
    .line 55
    invoke-direct {p1, v2, p2}, LI0/d;-><init>(LI0/i;LI0/l;)V

    .line 56
    .line 57
    .line 58
    move-object p2, p1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, LI0/d;

    .line 61
    .line 62
    new-instance v1, LI0/d;

    .line 63
    .line 64
    invoke-direct {v1, p2, p1}, LI0/d;-><init>(LI0/i;LI0/l;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v2, v1}, LI0/d;-><init>(LI0/i;LI0/l;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :goto_1
    return-object p2
.end method
