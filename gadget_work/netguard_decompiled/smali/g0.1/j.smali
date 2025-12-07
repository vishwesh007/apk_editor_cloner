.class public final synthetic Lg0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lg0/q;

.field public final synthetic e:Lb0/z;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lg0/q;Lb0/z;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/j;->d:Lg0/q;

    iput-object p2, p0, Lg0/j;->e:Lb0/z;

    iput p3, p0, Lg0/j;->f:I

    iput-object p4, p0, Lg0/j;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lg0/j;->f:I

    iget-object v1, p0, Lg0/j;->g:Ljava/lang/Runnable;

    iget-object v2, p0, Lg0/j;->d:Lg0/q;

    iget-object v3, p0, Lg0/j;->e:Lb0/z;

    invoke-static {v2, v3, v0, v1}, Lg0/q;->a(Lg0/q;Lb0/z;ILjava/lang/Runnable;)V

    return-void
.end method
