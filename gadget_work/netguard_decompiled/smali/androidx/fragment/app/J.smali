.class final Landroidx/fragment/app/J;
.super Landroidx/fragment/app/D;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroidx/fragment/app/T;


# direct methods
.method constructor <init>(Landroidx/fragment/app/T;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/J;->b:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/D;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/fragment/app/u;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/J;->b:Landroidx/fragment/app/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/T;->V()Landroidx/fragment/app/E;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/T;->V()Landroidx/fragment/app/E;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/E;->u()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v1, Landroidx/fragment/app/u;->P:Ljava/lang/Object;

    .line 19
    .line 20
    const-string v1, ": make sure class name exists, is public, and has an empty constructor that is public"

    .line 21
    .line 22
    const-string v2, "Unable to instantiate fragment "

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Landroidx/fragment/app/D;->d(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v3, 0x0

    .line 33
    new-array v4, v3, [Ljava/lang/Class;

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-array v3, v3, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroidx/fragment/app/u;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Landroidx/fragment/app/s;

    .line 50
    .line 51
    const-string v3, ": calling Fragment constructor caused an exception"

    .line 52
    .line 53
    invoke-static {v2, p1, v3}, LB/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v1, p1, v0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Landroidx/fragment/app/s;

    .line 63
    .line 64
    const-string v3, ": could not find Fragment constructor"

    .line 65
    .line 66
    invoke-static {v2, p1, v3}, LB/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v1, p1, v0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :catch_2
    move-exception v0

    .line 75
    new-instance v3, Landroidx/fragment/app/s;

    .line 76
    .line 77
    invoke-static {v2, p1, v1}, LB/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v3, p1, v0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 82
    .line 83
    .line 84
    throw v3

    .line 85
    :catch_3
    move-exception v0

    .line 86
    new-instance v3, Landroidx/fragment/app/s;

    .line 87
    .line 88
    invoke-static {v2, p1, v1}, LB/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v3, p1, v0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 93
    .line 94
    .line 95
    throw v3
.end method
