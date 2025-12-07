.class final Lc0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lj0/a;

.field private final c:Lj0/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lj0/a;Lj0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc0/j;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lc0/j;->b:Lj0/a;

    .line 7
    .line 8
    iput-object p3, p0, Lc0/j;->c:Lj0/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lc0/i;
    .locals 4

    .line 1
    new-instance v0, Lc0/d;

    .line 2
    .line 3
    iget-object v1, p0, Lc0/j;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lc0/j;->b:Lj0/a;

    .line 6
    .line 7
    iget-object v3, p0, Lc0/j;->c:Lj0/a;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lc0/d;-><init>(Landroid/content/Context;Lj0/a;Lj0/a;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
