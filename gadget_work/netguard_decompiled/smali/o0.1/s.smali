.class final Lo0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/b;


# instance fields
.field final synthetic a:Lo0/f;


# direct methods
.method constructor <init>(Lo0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/s;->a:Lo0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo0/s;->a:Lo0/f;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0}, Lo0/f;->j(Lo0/f;)Lv0/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
