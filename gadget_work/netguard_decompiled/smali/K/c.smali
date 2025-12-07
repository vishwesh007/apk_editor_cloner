.class public final LK/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/G;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, LK/c;->a:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILE/i;)LJ/F;
    .locals 4

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    if-eq p2, v2, :cond_0

    .line 8
    .line 9
    if-eq p3, v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x200

    .line 12
    .line 13
    if-gt p2, v2, :cond_0

    .line 14
    .line 15
    const/16 p2, 0x180

    .line 16
    .line 17
    if-gt p3, p2, :cond_0

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    :goto_0
    if-eqz p2, :cond_2

    .line 23
    .line 24
    sget-object p2, LM/Y;->d:LE/h;

    .line 25
    .line 26
    invoke-virtual {p4, p2}, LE/i;->c(LE/h;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Ljava/lang/Long;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide p2

    .line 38
    const-wide/16 v2, -0x1

    .line 39
    .line 40
    cmp-long p4, p2, v2

    .line 41
    .line 42
    if-nez p4, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_1
    if-eqz v0, :cond_2

    .line 47
    .line 48
    new-instance p2, LJ/F;

    .line 49
    .line 50
    new-instance p3, LW/b;

    .line 51
    .line 52
    invoke-direct {p3, p1}, LW/b;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p4, p0, LK/c;->a:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {p4, p1}, LF/d;->g(Landroid/content/Context;Landroid/net/Uri;)LF/d;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p2, p3, p1}, LJ/F;-><init>(LE/e;Lcom/bumptech/glide/load/data/e;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/4 p2, 0x0

    .line 66
    :goto_2
    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {p1}, Lt0/a;->C(Landroid/net/Uri;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
