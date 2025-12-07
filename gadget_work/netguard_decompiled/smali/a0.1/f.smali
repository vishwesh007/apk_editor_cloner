.class final La0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/e;


# static fields
.field static final a:La0/f;

.field private static final b:LA0/d;

.field private static final c:LA0/d;

.field private static final d:LA0/d;

.field private static final e:LA0/d;

.field private static final f:LA0/d;

.field private static final g:LA0/d;

.field private static final h:LA0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La0/f;

    .line 2
    .line 3
    invoke-direct {v0}, La0/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La0/f;->a:La0/f;

    .line 7
    .line 8
    const-string v0, "requestTimeMs"

    .line 9
    .line 10
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, La0/f;->b:LA0/d;

    .line 15
    .line 16
    const-string v0, "requestUptimeMs"

    .line 17
    .line 18
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, La0/f;->c:LA0/d;

    .line 23
    .line 24
    const-string v0, "clientInfo"

    .line 25
    .line 26
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, La0/f;->d:LA0/d;

    .line 31
    .line 32
    const-string v0, "logSource"

    .line 33
    .line 34
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, La0/f;->e:LA0/d;

    .line 39
    .line 40
    const-string v0, "logSourceName"

    .line 41
    .line 42
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, La0/f;->f:LA0/d;

    .line 47
    .line 48
    const-string v0, "logEvent"

    .line 49
    .line 50
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, La0/f;->g:LA0/d;

    .line 55
    .line 56
    const-string v0, "qosTier"

    .line 57
    .line 58
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, La0/f;->h:LA0/d;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, La0/z;

    .line 2
    .line 3
    check-cast p2, LA0/f;

    .line 4
    .line 5
    invoke-virtual {p1}, La0/z;->g()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-object v2, La0/f;->b:LA0/d;

    .line 10
    .line 11
    invoke-interface {p2, v2, v0, v1}, LA0/f;->d(LA0/d;J)LA0/f;

    .line 12
    .line 13
    .line 14
    sget-object v0, La0/f;->c:LA0/d;

    .line 15
    .line 16
    invoke-virtual {p1}, La0/z;->h()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-interface {p2, v0, v1, v2}, LA0/f;->d(LA0/d;J)LA0/f;

    .line 21
    .line 22
    .line 23
    sget-object v0, La0/f;->d:LA0/d;

    .line 24
    .line 25
    invoke-virtual {p1}, La0/z;->b()La0/w;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 30
    .line 31
    .line 32
    sget-object v0, La0/f;->e:LA0/d;

    .line 33
    .line 34
    invoke-virtual {p1}, La0/z;->d()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 39
    .line 40
    .line 41
    sget-object v0, La0/f;->f:LA0/d;

    .line 42
    .line 43
    invoke-virtual {p1}, La0/z;->e()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 48
    .line 49
    .line 50
    sget-object v0, La0/f;->g:LA0/d;

    .line 51
    .line 52
    invoke-virtual {p1}, La0/z;->c()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 57
    .line 58
    .line 59
    sget-object v0, La0/f;->h:LA0/d;

    .line 60
    .line 61
    invoke-virtual {p1}, La0/z;->f()La0/E;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p2, v0, p1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 66
    .line 67
    .line 68
    return-void
.end method
