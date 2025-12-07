.class final Lo0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Ly0/i;

.field final synthetic e:Lo0/J;


# direct methods
.method constructor <init>(Lo0/J;Ly0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/H;->e:Lo0/J;

    iput-object p2, p0, Lo0/H;->d:Ly0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/H;->e:Lo0/J;

    .line 2
    .line 3
    iget-object v1, p0, Lo0/H;->d:Ly0/i;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lo0/J;->x(Lo0/J;Ly0/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
