.class public final Lq/e;
.super Lq/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lq/a;->b:Lq/a;

    invoke-direct {p0, v0}, Lq/e;-><init>(Lq/c;)V

    return-void
.end method

.method public constructor <init>(Lq/c;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, LP0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lq/c;-><init>()V

    .line 3
    invoke-virtual {p0}, Lq/c;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lq/c;->a()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
