.class final La0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/e;


# static fields
.field static final a:La0/b;

.field private static final b:LA0/d;

.field private static final c:LA0/d;

.field private static final d:LA0/d;

.field private static final e:LA0/d;

.field private static final f:LA0/d;

.field private static final g:LA0/d;

.field private static final h:LA0/d;

.field private static final i:LA0/d;

.field private static final j:LA0/d;

.field private static final k:LA0/d;

.field private static final l:LA0/d;

.field private static final m:LA0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La0/b;

    .line 2
    .line 3
    invoke-direct {v0}, La0/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La0/b;->a:La0/b;

    .line 7
    .line 8
    const-string v0, "sdkVersion"

    .line 9
    .line 10
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, La0/b;->b:LA0/d;

    .line 15
    .line 16
    const-string v0, "model"

    .line 17
    .line 18
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, La0/b;->c:LA0/d;

    .line 23
    .line 24
    const-string v0, "hardware"

    .line 25
    .line 26
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, La0/b;->d:LA0/d;

    .line 31
    .line 32
    const-string v0, "device"

    .line 33
    .line 34
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, La0/b;->e:LA0/d;

    .line 39
    .line 40
    const-string v0, "product"

    .line 41
    .line 42
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, La0/b;->f:LA0/d;

    .line 47
    .line 48
    const-string v0, "osBuild"

    .line 49
    .line 50
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, La0/b;->g:LA0/d;

    .line 55
    .line 56
    const-string v0, "manufacturer"

    .line 57
    .line 58
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, La0/b;->h:LA0/d;

    .line 63
    .line 64
    const-string v0, "fingerprint"

    .line 65
    .line 66
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, La0/b;->i:LA0/d;

    .line 71
    .line 72
    const-string v0, "locale"

    .line 73
    .line 74
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, La0/b;->j:LA0/d;

    .line 79
    .line 80
    const-string v0, "country"

    .line 81
    .line 82
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, La0/b;->k:LA0/d;

    .line 87
    .line 88
    const-string v0, "mccMnc"

    .line 89
    .line 90
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, La0/b;->l:LA0/d;

    .line 95
    .line 96
    const-string v0, "applicationBuild"

    .line 97
    .line 98
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, La0/b;->m:LA0/d;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, La0/a;

    .line 2
    .line 3
    check-cast p2, LA0/f;

    .line 4
    .line 5
    invoke-virtual {p1}, La0/a;->m()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, La0/b;->b:LA0/d;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 12
    .line 13
    .line 14
    sget-object v0, La0/b;->c:LA0/d;

    .line 15
    .line 16
    invoke-virtual {p1}, La0/a;->j()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 21
    .line 22
    .line 23
    sget-object v0, La0/b;->d:LA0/d;

    .line 24
    .line 25
    invoke-virtual {p1}, La0/a;->f()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 30
    .line 31
    .line 32
    sget-object v0, La0/b;->e:LA0/d;

    .line 33
    .line 34
    invoke-virtual {p1}, La0/a;->d()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 39
    .line 40
    .line 41
    sget-object v0, La0/b;->f:LA0/d;

    .line 42
    .line 43
    invoke-virtual {p1}, La0/a;->l()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 48
    .line 49
    .line 50
    sget-object v0, La0/b;->g:LA0/d;

    .line 51
    .line 52
    invoke-virtual {p1}, La0/a;->k()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 57
    .line 58
    .line 59
    sget-object v0, La0/b;->h:LA0/d;

    .line 60
    .line 61
    invoke-virtual {p1}, La0/a;->h()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 66
    .line 67
    .line 68
    sget-object v0, La0/b;->i:LA0/d;

    .line 69
    .line 70
    invoke-virtual {p1}, La0/a;->e()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 75
    .line 76
    .line 77
    sget-object v0, La0/b;->j:LA0/d;

    .line 78
    .line 79
    invoke-virtual {p1}, La0/a;->g()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 84
    .line 85
    .line 86
    sget-object v0, La0/b;->k:LA0/d;

    .line 87
    .line 88
    invoke-virtual {p1}, La0/a;->c()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 93
    .line 94
    .line 95
    sget-object v0, La0/b;->l:LA0/d;

    .line 96
    .line 97
    invoke-virtual {p1}, La0/a;->i()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 102
    .line 103
    .line 104
    sget-object v0, La0/b;->m:LA0/d;

    .line 105
    .line 106
    invoke-virtual {p1}, La0/a;->b()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p2, v0, p1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 111
    .line 112
    .line 113
    return-void
.end method
