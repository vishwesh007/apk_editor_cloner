.class final Lb0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/e;


# static fields
.field static final a:Lb0/b;

.field private static final b:LA0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb0/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lb0/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb0/b;->a:Lb0/b;

    .line 7
    .line 8
    const-string v0, "storageMetrics"

    .line 9
    .line 10
    invoke-static {v0}, LA0/d;->a(Ljava/lang/String;)LA0/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, LD0/b;

    .line 15
    .line 16
    invoke-direct {v1}, LD0/b;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, LD0/b;->b(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, LD0/b;->a()LD0/f;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, LA0/c;->b(Ljava/lang/annotation/Annotation;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, LA0/c;->a()LA0/d;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lb0/b;->b:LA0/d;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le0/d;

    .line 2
    .line 3
    check-cast p2, LA0/f;

    .line 4
    .line 5
    sget-object v0, Lb0/b;->b:LA0/d;

    .line 6
    .line 7
    invoke-virtual {p1}, Le0/d;->a()Le0/k;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, v0, p1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 12
    .line 13
    .line 14
    return-void
.end method
