.class abstract Lh0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lh0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh0/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lh0/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lh0/a;->f()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lh0/a;->d()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lh0/a;->b()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lh0/a;->c()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lh0/a;->e()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lh0/a;->a()Lh0/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lh0/f;->a:Lh0/b;

    .line 26
    .line 27
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract b()J
.end method

.method abstract c()I
.end method

.method abstract d()I
.end method

.method abstract e()J
.end method
