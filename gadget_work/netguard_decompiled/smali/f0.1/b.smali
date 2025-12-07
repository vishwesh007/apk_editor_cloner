.class public final synthetic Lf0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/b;


# instance fields
.field public final synthetic a:Lf0/c;

.field public final synthetic b:Lb0/z;

.field public final synthetic c:Lb0/s;


# direct methods
.method public synthetic constructor <init>(Lf0/c;Lb0/z;Lb0/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/b;->a:Lf0/c;

    iput-object p2, p0, Lf0/b;->b:Lb0/z;

    iput-object p3, p0, Lf0/b;->c:Lb0/s;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/b;->c:Lb0/s;

    iget-object v1, p0, Lf0/b;->a:Lf0/c;

    iget-object v2, p0, Lf0/b;->b:Lb0/z;

    invoke-static {v1, v2, v0}, Lf0/c;->c(Lf0/c;Lb0/z;Lb0/s;)V

    const/4 v0, 0x0

    return-object v0
.end method
