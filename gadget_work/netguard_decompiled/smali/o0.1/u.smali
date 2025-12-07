.class final Lo0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:I

.field final synthetic e:Lo0/x;


# direct methods
.method constructor <init>(Lo0/x;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/u;->e:Lo0/x;

    iput p2, p0, Lo0/u;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0/u;->e:Lo0/x;

    .line 2
    .line 3
    iget v1, p0, Lo0/u;->d:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lo0/x;->x(Lo0/x;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
