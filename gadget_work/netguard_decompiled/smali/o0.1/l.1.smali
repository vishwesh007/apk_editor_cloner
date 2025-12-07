.class public final Lo0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lr0/b;

.field private b:Z

.field private c:[Lm0/c;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo0/l;->b:Z

    return-void
.end method

.method static bridge synthetic e(Lo0/l;)Lr0/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lo0/l;->a:Lr0/b;

    return-object p0
.end method


# virtual methods
.method public final a()Lo0/m;
    .locals 3

    .line 1
    iget-object v0, p0, Lo0/l;->a:Lr0/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lo0/K;

    .line 11
    .line 12
    iget-object v1, p0, Lo0/l;->c:[Lm0/c;

    .line 13
    .line 14
    iget-boolean v2, p0, Lo0/l;->b:Z

    .line 15
    .line 16
    invoke-direct {v0, p0, v1, v2}, Lo0/K;-><init>(Lo0/l;[Lm0/c;Z)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "execute parameter required"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final b(Lr0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/l;->a:Lr0/b;

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo0/l;->b:Z

    return-void
.end method

.method public final varargs d([Lm0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/l;->c:[Lm0/c;

    return-void
.end method
