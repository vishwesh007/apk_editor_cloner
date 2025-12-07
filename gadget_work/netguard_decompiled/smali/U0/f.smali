.class public final LU0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/b;


# instance fields
.field final synthetic a:LO0/p;


# direct methods
.method public constructor <init>(LO0/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, LU0/f;->a:LO0/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    iget-object v1, p0, LU0/f;->a:LO0/p;

    .line 4
    .line 5
    invoke-static {v1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, LU0/c;

    .line 9
    .line 10
    invoke-direct {v0}, LU0/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v0, v1}, LJ0/b;->a(Ljava/lang/Object;LI0/e;LO0/p;)LI0/e;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, LU0/c;->d(LI0/e;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
