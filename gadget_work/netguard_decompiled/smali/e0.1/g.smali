.class public final Le0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Le0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le0/e;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Le0/e;->a()Le0/g;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(JLe0/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Le0/g;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Le0/g;->b:Le0/f;

    .line 7
    .line 8
    return-void
.end method

.method public static c()Le0/e;
    .locals 1

    .line 1
    new-instance v0, Le0/e;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le0/g;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()Le0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/g;->b:Le0/f;

    .line 2
    .line 3
    return-object v0
.end method
