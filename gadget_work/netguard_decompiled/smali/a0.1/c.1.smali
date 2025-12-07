.class final La0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/e;


# static fields
.field static final a:La0/c;

.field private static final b:LA0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La0/c;

    .line 2
    .line 3
    invoke-direct {v0}, La0/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La0/c;->a:La0/c;

    .line 7
    .line 8
    const-string v0, "logRequest"

    .line 9
    .line 10
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, La0/c;->b:LA0/d;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, La0/u;

    .line 2
    .line 3
    check-cast p2, LA0/f;

    .line 4
    .line 5
    sget-object v0, La0/c;->b:LA0/d;

    .line 6
    .line 7
    invoke-virtual {p1}, La0/u;->b()Ljava/util/List;

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
