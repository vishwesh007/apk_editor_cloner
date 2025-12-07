.class public final Lr0/d;
.super Ln0/j;
.source "SourceFile"


# static fields
.field private static final i:Ln0/f;

.field public static final synthetic j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LE/d;

    .line 2
    .line 3
    invoke-direct {v0}, LE/d;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lr0/c;

    .line 7
    .line 8
    invoke-direct {v1}, Lr0/c;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ln0/f;

    .line 12
    .line 13
    const-string v3, "ClientTelemetry.API"

    .line 14
    .line 15
    invoke-direct {v2, v3, v1, v0}, Ln0/f;-><init>(Ljava/lang/String;Ln0/a;LE/d;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Lr0/d;->i:Ln0/f;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lr0/d;->i:Ln0/f;

    .line 2
    .line 3
    sget-object v1, Ln0/i;->b:Ln0/i;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Ln0/j;-><init>(Landroid/content/Context;Ln0/f;Ln0/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Lp0/v;)Landroidx/core/view/accessibility/n;
    .locals 4

    .line 1
    invoke-static {}, Lo0/m;->a()Lo0/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Lm0/c;

    .line 7
    .line 8
    sget-object v2, Lv0/f;->a:Lm0/c;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lo0/l;->d([Lm0/c;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lo0/l;->c()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lr0/b;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Lr0/b;-><init>(Lp0/v;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lo0/l;->b(Lr0/b;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lo0/l;->a()Lo0/m;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ln0/j;->b(Lo0/m;)Landroidx/core/view/accessibility/n;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method
