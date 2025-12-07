.class public final Le0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J


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
    iput-wide v0, p0, Le0/j;->a:J

    .line 7
    .line 8
    iput-wide v0, p0, Le0/j;->b:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Le0/k;
    .locals 5

    .line 1
    new-instance v0, Le0/k;

    .line 2
    .line 3
    iget-wide v1, p0, Le0/j;->a:J

    .line 4
    .line 5
    iget-wide v3, p0, Le0/j;->b:J

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3, v4}, Le0/k;-><init>(JJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le0/j;->a:J

    .line 2
    .line 3
    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le0/j;->b:J

    .line 2
    .line 3
    return-void
.end method
