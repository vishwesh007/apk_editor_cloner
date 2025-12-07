.class final Lb0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/e;


# static fields
.field static final a:Lb0/d;

.field private static final b:LA0/d;

.field private static final c:LA0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb0/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lb0/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb0/d;->a:Lb0/d;

    .line 7
    .line 8
    const-string v0, "logSource"

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
    sput-object v0, Lb0/d;->b:LA0/d;

    .line 35
    .line 36
    const-string v0, "logEventDropped"

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
    sput-object v0, Lb0/d;->c:LA0/d;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le0/i;

    .line 2
    .line 3
    check-cast p2, LA0/f;

    .line 4
    .line 5
    invoke-virtual {p1}, Le0/i;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lb0/d;->b:LA0/d;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lb0/d;->c:LA0/d;

    .line 15
    .line 16
    invoke-virtual {p1}, Le0/i;->a()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2, v0, p1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 21
    .line 22
    .line 23
    return-void
.end method
