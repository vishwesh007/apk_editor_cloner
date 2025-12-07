.class final LT/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Class;

.field final b:LE/k;


# direct methods
.method constructor <init>(Ljava/lang/Class;LE/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT/f;->a:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, LT/f;->b:LE/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LT/f;->a:Ljava/lang/Class;

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
