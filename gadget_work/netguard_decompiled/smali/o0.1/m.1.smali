.class public abstract Lo0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lm0/c;

.field private final b:Z

.field private final c:I


# direct methods
.method protected constructor <init>([Lm0/c;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/m;->a:[Lm0/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo0/m;->b:Z

    iput v0, p0, Lo0/m;->c:I

    return-void
.end method

.method public static a()Lo0/l;
    .locals 1

    .line 1
    new-instance v0, Lo0/l;

    invoke-direct {v0}, Lo0/l;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected abstract b(Ln0/e;Lz0/c;)V
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo0/m;->b:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lo0/m;->c:I

    return v0
.end method

.method public final e()[Lm0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/m;->a:[Lm0/c;

    return-object v0
.end method
