.class public final Ln0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln0/a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln0/a;LE/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln0/f;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Ln0/f;->a:Ln0/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ln0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/f;->a:Ln0/a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/f;->b:Ljava/lang/String;

    return-object v0
.end method
