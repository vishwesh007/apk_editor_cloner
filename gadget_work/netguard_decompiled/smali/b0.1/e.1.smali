.class final Lb0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/e;


# static fields
.field static final a:Lb0/e;

.field private static final b:LA0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb0/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lb0/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb0/e;->a:Lb0/e;

    .line 7
    .line 8
    const-string v0, "clientMetrics"

    .line 9
    .line 10
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lb0/e;->b:LA0/d;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lb0/v;

    .line 2
    .line 3
    check-cast p2, LA0/f;

    .line 4
    .line 5
    sget-object v0, Lb0/e;->b:LA0/d;

    .line 6
    .line 7
    invoke-virtual {p1}, Lb0/v;->b()Le0/b;

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
