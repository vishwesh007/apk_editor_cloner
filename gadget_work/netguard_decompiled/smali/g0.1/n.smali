.class public final synthetic Lg0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/b;


# instance fields
.field public final synthetic a:Lg0/q;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lb0/z;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lg0/q;Ljava/lang/Iterable;Lb0/z;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/n;->a:Lg0/q;

    iput-object p2, p0, Lg0/n;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Lg0/n;->c:Lb0/z;

    iput-wide p4, p0, Lg0/n;->d:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lg0/n;->a:Lg0/q;

    iget-object v1, p0, Lg0/n;->b:Ljava/lang/Iterable;

    iget-object v2, p0, Lg0/n;->c:Lb0/z;

    iget-wide v3, p0, Lg0/n;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lg0/q;->e(Lg0/q;Ljava/lang/Iterable;Lb0/z;J)V

    const/4 v0, 0x0

    return-object v0
.end method
