.class abstract LK/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/H;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Class;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK/d;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LK/d;->b:Ljava/lang/Class;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(LJ/P;)LJ/G;
    .locals 4

    .line 1
    new-instance v0, LK/h;

    .line 2
    .line 3
    const-class v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, LK/d;->b:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-virtual {p1, v1, v2}, LJ/P;->b(Ljava/lang/Class;Ljava/lang/Class;)LJ/G;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-class v3, Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {p1, v3, v2}, LJ/P;->b(Ljava/lang/Class;Ljava/lang/Class;)LJ/G;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v3, p0, LK/d;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v0, v3, v1, p1, v2}, LK/h;-><init>(Landroid/content/Context;LJ/G;LJ/G;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
