.class public final Le0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Le0/f;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Le0/e;->a:J

    .line 7
    .line 8
    sget-object v0, Le0/f;->e:Le0/f;

    .line 9
    .line 10
    iput-object v0, p0, Le0/e;->b:Le0/f;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Le0/g;
    .locals 4

    .line 1
    new-instance v0, Le0/g;

    .line 2
    .line 3
    iget-wide v1, p0, Le0/e;->a:J

    .line 4
    .line 5
    iget-object v3, p0, Le0/e;->b:Le0/f;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Le0/g;-><init>(JLe0/f;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le0/e;->a:J

    .line 2
    .line 3
    return-void
.end method

.method public final c(Le0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le0/e;->b:Le0/f;

    .line 2
    .line 3
    return-void
.end method
