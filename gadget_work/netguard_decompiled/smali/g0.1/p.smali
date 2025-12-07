.class public final synthetic Lg0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/b;


# instance fields
.field public final synthetic a:Lg0/q;

.field public final synthetic b:Lb0/z;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lg0/q;Lb0/z;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/p;->a:Lg0/q;

    iput-object p2, p0, Lg0/p;->b:Lb0/z;

    iput-wide p3, p0, Lg0/p;->c:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-wide v0, p0, Lg0/p;->c:J

    iget-object v2, p0, Lg0/p;->a:Lg0/q;

    iget-object v3, p0, Lg0/p;->b:Lb0/z;

    invoke-static {v2, v3, v0, v1}, Lg0/q;->f(Lg0/q;Lb0/z;J)V

    const/4 v0, 0x0

    return-object v0
.end method
