.class public final Le0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Le0/m;

.field private final b:Ljava/util/List;

.field private final c:Le0/d;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le0/a;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Le0/a;->b()Le0/b;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Le0/m;Ljava/util/List;Le0/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/b;->a:Le0/m;

    .line 5
    .line 6
    iput-object p2, p0, Le0/b;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Le0/b;->c:Le0/d;

    .line 9
    .line 10
    iput-object p4, p0, Le0/b;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static e()Le0/a;
    .locals 1

    .line 1
    new-instance v0, Le0/a;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Le0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/b;->c:Le0/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/b;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Le0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/b;->a:Le0/m;

    .line 2
    .line 3
    return-object v0
.end method
