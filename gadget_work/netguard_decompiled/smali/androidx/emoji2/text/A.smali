.class public final synthetic Landroidx/emoji2/text/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroidx/emoji2/text/B;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/B;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/A;->d:Landroidx/emoji2/text/B;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/A;->d:Landroidx/emoji2/text/B;

    invoke-virtual {v0}, Landroidx/emoji2/text/B;->c()V

    return-void
.end method
