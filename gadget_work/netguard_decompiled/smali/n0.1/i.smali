.class public final Ln0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ln0/i;


# instance fields
.field public final a:LE/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln0/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ln0/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ln0/h;->a()Ln0/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Ln0/i;->b:Ln0/i;

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(LE/d;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln0/i;->a:LE/d;

    .line 5
    .line 6
    return-void
.end method
