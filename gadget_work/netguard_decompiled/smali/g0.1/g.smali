.class public abstract Lg0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/core/view/accessibility/n;
    .locals 2

    .line 1
    new-instance v0, Lg0/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lg0/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lg0/c;->r(Ljava/util/Set;)Landroidx/core/view/accessibility/n;

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method abstract b()J
.end method

.method abstract c()Ljava/util/Set;
.end method

.method abstract d()J
.end method
