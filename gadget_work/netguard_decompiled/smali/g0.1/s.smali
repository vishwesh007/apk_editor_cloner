.class public final synthetic Lg0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lg0/t;


# direct methods
.method public synthetic constructor <init>(Lg0/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/s;->d:Lg0/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/s;->d:Lg0/t;

    invoke-static {v0}, Lg0/t;->b(Lg0/t;)V

    return-void
.end method
