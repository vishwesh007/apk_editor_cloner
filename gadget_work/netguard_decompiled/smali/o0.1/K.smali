.class final Lo0/K;
.super Lo0/m;
.source "SourceFile"


# instance fields
.field final synthetic d:Lo0/l;


# direct methods
.method constructor <init>(Lo0/l;[Lm0/c;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/K;->d:Lo0/l;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lo0/m;-><init>([Lm0/c;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final b(Ln0/e;Lz0/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/K;->d:Lo0/l;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/l;->e(Lo0/l;)Lr0/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p1, Lr0/e;

    .line 11
    .line 12
    sget v1, Lr0/d;->j:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lp0/g;->y()Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lr0/a;

    .line 19
    .line 20
    iget-object v0, v0, Lr0/b;->a:Lp0/v;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lr0/a;->v(Lp0/v;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lz0/c;->b()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
