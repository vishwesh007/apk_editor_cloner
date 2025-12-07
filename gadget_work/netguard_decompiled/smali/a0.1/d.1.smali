.class final La0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/e;


# static fields
.field static final a:La0/d;

.field private static final b:LA0/d;

.field private static final c:LA0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La0/d;

    .line 2
    .line 3
    invoke-direct {v0}, La0/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La0/d;->a:La0/d;

    .line 7
    .line 8
    const-string v0, "clientType"

    .line 9
    .line 10
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, La0/d;->b:LA0/d;

    .line 15
    .line 16
    const-string v0, "androidClientInfo"

    .line 17
    .line 18
    invoke-static {v0}, LA0/d;->d(Ljava/lang/String;)LA0/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, La0/d;->c:LA0/d;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, La0/w;

    .line 2
    .line 3
    check-cast p2, LA0/f;

    .line 4
    .line 5
    invoke-virtual {p1}, La0/w;->c()La0/v;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, La0/d;->b:LA0/d;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 12
    .line 13
    .line 14
    sget-object v0, La0/d;->c:LA0/d;

    .line 15
    .line 16
    invoke-virtual {p1}, La0/w;->b()La0/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2, v0, p1}, LA0/f;->b(LA0/d;Ljava/lang/Object;)LA0/f;

    .line 21
    .line 22
    .line 23
    return-void
.end method
