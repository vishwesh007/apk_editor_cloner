.class public final synthetic Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lf0/c;

.field public final synthetic e:Lb0/z;

.field public final synthetic f:LB/g;

.field public final synthetic g:Lb0/s;


# direct methods
.method public synthetic constructor <init>(Lf0/c;Lb0/z;LB/g;Lb0/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/a;->d:Lf0/c;

    iput-object p2, p0, Lf0/a;->e:Lb0/z;

    iput-object p3, p0, Lf0/a;->f:LB/g;

    iput-object p4, p0, Lf0/a;->g:Lb0/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/a;->f:LB/g;

    iget-object v1, p0, Lf0/a;->g:Lb0/s;

    iget-object v2, p0, Lf0/a;->d:Lf0/c;

    iget-object v3, p0, Lf0/a;->e:Lb0/z;

    invoke-static {v2, v3, v0, v1}, Lf0/c;->b(Lf0/c;Lb0/z;LB/g;Lb0/s;)V

    return-void
.end method
