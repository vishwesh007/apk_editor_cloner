.class public final Le0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Le0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le0/c;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Le0/c;->a()Le0/d;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Le0/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/d;->a:Le0/k;

    .line 5
    .line 6
    return-void
.end method

.method public static b()Le0/c;
    .locals 1

    .line 1
    new-instance v0, Le0/c;

    .line 2
    .line 3
    invoke-direct {v0}, Le0/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final a()Le0/k;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/d;->a:Le0/k;

    .line 2
    .line 3
    return-object v0
.end method
