.class public final synthetic Lg0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/b;


# instance fields
.field public final synthetic a:Lg0/q;

.field public final synthetic b:Lb0/z;


# direct methods
.method public synthetic constructor <init>(Lg0/q;Lb0/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/m;->a:Lg0/q;

    iput-object p2, p0, Lg0/m;->b:Lb0/z;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/m;->a:Lg0/q;

    iget-object v1, p0, Lg0/m;->b:Lb0/z;

    invoke-static {v0, v1}, Lg0/q;->d(Lg0/q;Lb0/z;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
