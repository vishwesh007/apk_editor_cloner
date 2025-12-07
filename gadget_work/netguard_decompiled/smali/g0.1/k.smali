.class public final synthetic Lg0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/b;


# instance fields
.field public final synthetic a:Lg0/q;

.field public final synthetic b:Lb0/z;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lg0/q;Lb0/z;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/k;->a:Lg0/q;

    iput-object p2, p0, Lg0/k;->b:Lb0/z;

    iput p3, p0, Lg0/k;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lg0/k;->c:I

    iget-object v1, p0, Lg0/k;->a:Lg0/q;

    iget-object v2, p0, Lg0/k;->b:Lb0/z;

    invoke-static {v1, v2, v0}, Lg0/q;->h(Lg0/q;Lb0/z;I)V

    const/4 v0, 0x0

    return-object v0
.end method
