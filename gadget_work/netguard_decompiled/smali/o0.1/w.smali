.class final Lo0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/f;


# instance fields
.field final synthetic a:Lo0/x;


# direct methods
.method constructor <init>(Lo0/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/w;->a:Lo0/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo0/w;->a:Lo0/x;

    .line 2
    .line 3
    iget-object v0, v0, Lo0/x;->l:Lo0/f;

    .line 4
    .line 5
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lo0/v;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2, p0}, Lo0/v;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
