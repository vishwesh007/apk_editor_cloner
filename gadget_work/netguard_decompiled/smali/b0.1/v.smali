.class public abstract Lb0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:LD0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LD0/i;

    .line 2
    .line 3
    invoke-direct {v0}, LD0/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lb0/e;->a:Lb0/e;

    .line 7
    .line 8
    const-class v2, Lb0/v;

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, LB0/a;->a(Ljava/lang/Class;LA0/e;)LB0/a;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lb0/a;->a:Lb0/a;

    .line 14
    .line 15
    const-class v2, Le0/b;

    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, LB0/a;->a(Ljava/lang/Class;LA0/e;)LB0/a;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lb0/g;->a:Lb0/g;

    .line 21
    .line 22
    const-class v2, Le0/m;

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, LB0/a;->a(Ljava/lang/Class;LA0/e;)LB0/a;

    .line 25
    .line 26
    .line 27
    sget-object v1, Lb0/d;->a:Lb0/d;

    .line 28
    .line 29
    const-class v2, Le0/i;

    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, LB0/a;->a(Ljava/lang/Class;LA0/e;)LB0/a;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lb0/c;->a:Lb0/c;

    .line 35
    .line 36
    const-class v2, Le0/g;

    .line 37
    .line 38
    invoke-interface {v0, v2, v1}, LB0/a;->a(Ljava/lang/Class;LA0/e;)LB0/a;

    .line 39
    .line 40
    .line 41
    sget-object v1, Lb0/b;->a:Lb0/b;

    .line 42
    .line 43
    const-class v2, Le0/d;

    .line 44
    .line 45
    invoke-interface {v0, v2, v1}, LB0/a;->a(Ljava/lang/Class;LA0/e;)LB0/a;

    .line 46
    .line 47
    .line 48
    sget-object v1, Lb0/f;->a:Lb0/f;

    .line 49
    .line 50
    const-class v2, Le0/k;

    .line 51
    .line 52
    invoke-interface {v0, v2, v1}, LB0/a;->a(Ljava/lang/Class;LA0/e;)LB0/a;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, LD0/i;->b()LD0/j;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lb0/v;->a:LD0/j;

    .line 60
    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Le0/b;)[B
    .locals 1

    .line 1
    sget-object v0, Lb0/v;->a:LD0/j;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, LD0/j;->a(Le0/b;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public abstract b()Le0/b;
.end method
