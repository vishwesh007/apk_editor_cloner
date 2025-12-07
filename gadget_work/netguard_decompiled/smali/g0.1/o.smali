.class public final synthetic Lg0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/b;


# instance fields
.field public final synthetic a:Lg0/q;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lg0/q;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/o;->a:Lg0/q;

    iput-object p2, p0, Lg0/o;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/o;->a:Lg0/q;

    iget-object v1, p0, Lg0/o;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lg0/q;->c(Lg0/q;Ljava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method
