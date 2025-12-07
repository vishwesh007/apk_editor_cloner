.class final Lo0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/b;


# instance fields
.field final synthetic a:Lz0/c;

.field final synthetic b:Lo0/o;


# direct methods
.method constructor <init>(Lo0/o;Lz0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/n;->b:Lo0/o;

    iput-object p2, p0, Lo0/n;->a:Lz0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/view/accessibility/n;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo0/n;->b:Lo0/o;

    .line 2
    .line 3
    invoke-static {p1}, Lo0/o;->a(Lo0/o;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lo0/n;->a:Lz0/c;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method
