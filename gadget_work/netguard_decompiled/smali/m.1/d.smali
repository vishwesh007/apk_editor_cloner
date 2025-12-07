.class public Lm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/H;
.implements Ls/a;


# static fields
.field private static a:Lm/d;

.field private static b:Lm/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    sget-object v0, Lm/d;->a:Lm/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lm/d;

    .line 6
    .line 7
    invoke-direct {v0}, Lm/d;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lm/d;->a:Lm/d;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static d()Lm/d;
    .locals 1

    .line 1
    sget-object v0, Lm/d;->b:Lm/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lm/d;

    .line 6
    .line 7
    invoke-direct {v0}, Lm/d;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lm/d;->b:Lm/d;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lm/d;->b:Lm/d;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public b(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    check-cast p1, Landroidx/preference/ListPreference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/preference/Preference;->f()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f10009b

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    return-object v0
.end method

.method public c(LJ/P;)LJ/G;
    .locals 3

    .line 1
    new-instance v0, LK/i;

    .line 2
    .line 3
    const-class v1, LJ/u;

    .line 4
    .line 5
    const-class v2, Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-virtual {p1, v1, v2}, LJ/P;->b(Ljava/lang/Class;Ljava/lang/Class;)LJ/G;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, LK/i;-><init>(LJ/G;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
