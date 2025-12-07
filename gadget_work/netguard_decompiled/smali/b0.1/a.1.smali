.class final Lb0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/e;


# static fields
.field static final a:Lb0/a;

.field private static final b:LA0/d;

.field private static final c:LA0/d;

.field private static final d:LA0/d;

.field private static final e:LA0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb0/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lb0/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb0/a;->a:Lb0/a;

    .line 7
    .line 8
    const-string v0, "window"

    .line 9
    .line 10
    invoke-static {v0}, LA0/d;->a(Ljava/lang/String;)LA0/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, LD0/b;

    .line 15
    .line 16
    invoke-direct {v1}, LD0/b;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, LD0/b;->b(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, LD0/b;->a()LD0/f;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, LA0/c;->b(Ljava/lang/annotation/Annotation;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, LA0/c;->a()LA0/d;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lb0/a;->b:LA0/d;

    .line 35
    .line 36
    const-string v0, "logSourceMetrics"

    .line 37
    .line 38
    invoke-static {v0}, LA0/d;->a(Ljava/lang/String;)LA0/c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, LD0/b;

    .line 43
    .line 44
    invoke-direct {v1}, LD0/b;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-virtual {v1, v2}, LD0/b;->b(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, LD0/b;->a()LD0/f;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, LA0/c;->b(Ljava/lang/annotation/Annotation;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, LA0/c;->a()LA0/d;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lb0/a;->c:LA0/d;

    .line 63
    .line 64
    const-string v0, "globalMetrics"

    .line 65
    .line 66
    invoke-static {v0}, LA0/d;->a(Ljava/lang/String;)LA0/c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, LD0/b;

    .line 71
    .line 72
    invoke-direct {v1}, LD0/b;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v2, 0x3

    .line 76
    invoke-virtual {v1, v2}, LD0/b;->b(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, LD0/b;->a()LD0/f;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, LA0/c;->b(Ljava/lang/annotation/Annotation;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, LA0/c;->a()LA0/d;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lb0/a;->d:LA0/d;

    .line 91
    .line 92
    const-string v0, "appNamespace"

    .line 93
    .line 94
    invoke-static {v0}, LA0/d;->a(Ljava/lang/String;)LA0/c;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, LD0/b;

    .line 99
    .line 100
    invoke-direct {v1}, LD0/b;-><init>()V

    .line 101
    .line 102
    .line 103
    const/4 v2, 0x4

    .line 104
    invoke-virtual {v1, v2}, LD0/b;->b(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, LD0/b;->a()LD0/f;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, LA0/c;->b(Ljava/lang/annotation/Annotation;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, LA0/c;->a()LA0/d;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lb0/a;->e:LA0/d;

    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le0/b;

    .line 2
    .line 3
    check-cast p2, LA0/f;

    .line 4
    .line 5
    invoke-virtual {p1}, Le0/b;->d()Le0/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lb0/a;->b:LA0/d;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lb0/a;->c:LA0/d;

    .line 15
    .line 16
    invoke-virtual {p1}, Le0/b;->c()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lb0/a;->d:LA0/d;

    .line 24
    .line 25
    invoke-virtual {p1}, Le0/b;->b()Le0/d;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p2, v0, v1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lb0/a;->e:LA0/d;

    .line 33
    .line 34
    invoke-virtual {p1}, Le0/b;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p2, v0, p1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 39
    .line 40
    .line 41
    return-void
.end method
