.class final Landroidx/fragment/app/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Landroidx/fragment/app/u;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroidx/lifecycle/l;

.field h:Landroidx/lifecycle/l;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/u;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/fragment/app/d0;->a:I

    .line 4
    iput-object p2, p0, Landroidx/fragment/app/d0;->b:Landroidx/fragment/app/u;

    .line 5
    sget-object p1, Landroidx/lifecycle/l;->h:Landroidx/lifecycle/l;

    iput-object p1, p0, Landroidx/fragment/app/d0;->g:Landroidx/lifecycle/l;

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/d0;->h:Landroidx/lifecycle/l;

    return-void
.end method
