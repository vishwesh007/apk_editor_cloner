.class public final Lf0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/e;


# static fields
.field private static final f:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lg0/v;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lc0/f;

.field private final d:Lh0/e;

.field private final e:Li0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lb0/D;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lf0/c;->f:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lc0/f;Lg0/v;Lh0/e;Li0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/c;->b:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lf0/c;->c:Lc0/f;

    .line 7
    .line 8
    iput-object p3, p0, Lf0/c;->a:Lg0/v;

    .line 9
    .line 10
    iput-object p4, p0, Lf0/c;->d:Lh0/e;

    .line 11
    .line 12
    iput-object p5, p0, Lf0/c;->e:Li0/c;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic b(Lf0/c;Lb0/z;LB/g;Lb0/s;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf0/c;->f:Ljava/util/logging/Logger;

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lf0/c;->c:Lc0/f;

    .line 7
    .line 8
    invoke-virtual {p1}, Lb0/z;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v1, v2}, Lc0/f;->a(Ljava/lang/String;)Lc0/o;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string p0, "Transport backend \'%s\' is not registered"

    .line 19
    .line 20
    const/4 p3, 0x1

    .line 21
    new-array p3, p3, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {p1}, Lb0/z;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v1, 0x0

    .line 28
    aput-object p1, p3, v1

    .line 29
    .line 30
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v1, p3}, Lc0/o;->b(Lb0/s;)Lb0/s;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    iget-object v1, p0, Lf0/c;->e:Li0/c;

    .line 51
    .line 52
    new-instance v2, Lf0/b;

    .line 53
    .line 54
    invoke-direct {v2, p0, p1, p3}, Lf0/b;-><init>(Lf0/c;Lb0/z;Lb0/s;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v2}, Li0/c;->g(Li0/b;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p3, "Error scheduling event "

    .line 68
    .line 69
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method public static synthetic c(Lf0/c;Lb0/z;Lb0/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/c;->d:Lh0/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lh0/e;->f(Lb0/z;Lb0/s;)Lh0/l;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lf0/c;->a:Lg0/v;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-interface {p0, p1, p2}, Lg0/v;->a(Lb0/z;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lb0/s;Lb0/z;LB/g;)V
    .locals 1

    .line 1
    new-instance v0, Lf0/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3, p1}, Lf0/a;-><init>(Lf0/c;Lb0/z;LB/g;Lb0/s;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lf0/c;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
