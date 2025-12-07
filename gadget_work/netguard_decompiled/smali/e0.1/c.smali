.class public final Le0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Le0/k;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le0/c;->a:Le0/k;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()Le0/d;
    .locals 2

    .line 1
    new-instance v0, Le0/d;

    .line 2
    .line 3
    iget-object v1, p0, Le0/c;->a:Le0/k;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Le0/d;-><init>(Le0/k;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final b(Le0/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le0/c;->a:Le0/k;

    .line 2
    .line 3
    return-void
.end method
