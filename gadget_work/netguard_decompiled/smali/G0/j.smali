.class public final LG0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LG0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LG0/j;

    invoke-direct {v0}, LG0/j;-><init>()V

    sput-object v0, LG0/j;->a:LG0/j;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "kotlin.Unit"

    return-object v0
.end method
