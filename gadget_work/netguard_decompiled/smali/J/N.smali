.class final LJ/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Class;

.field final b:Ljava/lang/Class;

.field final c:LJ/H;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;LJ/H;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ/N;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, LJ/N;->b:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, LJ/N;->c:LJ/H;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LJ/N;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
