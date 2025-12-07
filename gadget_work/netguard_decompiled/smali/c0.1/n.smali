.class public final Lc0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/b;


# instance fields
.field private final a:LF0/a;

.field private final b:LF0/a;


# direct methods
.method public constructor <init>(LF0/a;Lc0/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc0/n;->a:LF0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lc0/n;->b:LF0/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lc0/n;->a:LF0/a;

    .line 2
    .line 3
    invoke-interface {v0}, LF0/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lc0/n;->b:LF0/a;

    .line 10
    .line 11
    invoke-interface {v1}, LF0/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lc0/m;

    .line 16
    .line 17
    check-cast v1, Lc0/j;

    .line 18
    .line 19
    invoke-direct {v2, v0, v1}, Lc0/m;-><init>(Landroid/content/Context;Lc0/j;)V

    .line 20
    .line 21
    .line 22
    return-object v2
.end method
