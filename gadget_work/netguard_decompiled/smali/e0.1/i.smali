.class public final Le0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le0/h;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Le0/h;->a()Le0/i;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/i;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Le0/i;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static c()Le0/h;
    .locals 1

    .line 1
    new-instance v0, Le0/h;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/h;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/i;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
