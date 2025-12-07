.class public final Le0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le0/l;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/l;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Le0/l;->a()Le0/m;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Le0/m;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Le0/m;->b:J

    .line 7
    .line 8
    return-void
.end method

.method public static c()Le0/l;
    .locals 1

    .line 1
    new-instance v0, Le0/l;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le0/m;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le0/m;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
