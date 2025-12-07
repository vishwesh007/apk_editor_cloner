.class final Lo0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lo0/x;


# direct methods
.method constructor <init>(Lo0/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/t;->d:Lo0/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/t;->d:Lo0/x;

    .line 2
    .line 3
    invoke-static {v0}, Lo0/x;->w(Lo0/x;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
