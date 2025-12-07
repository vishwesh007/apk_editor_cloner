.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "SourceFile"


# instance fields
.field private final a:Leu/faircode/netguard/GlideHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Leu/faircode/netguard/GlideHelper;

    .line 5
    .line 6
    invoke-direct {p1}, Leu/faircode/netguard/GlideHelper;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Leu/faircode/netguard/GlideHelper;

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    const-string v0, "Glide"

    .line 13
    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string p1, "Discovered AppGlideModule from annotation: eu.faircode.netguard.GlideHelper"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final applyOptions(Landroid/content/Context;Lcom/bumptech/glide/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Leu/faircode/netguard/GlideHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LS/a;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final b()Lcom/bumptech/glide/manager/r;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final isManifestParsingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Leu/faircode/netguard/GlideHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, LS/a;->isManifestParsingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final registerComponents(Landroid/content/Context;Lcom/bumptech/glide/d;Lcom/bumptech/glide/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Leu/faircode/netguard/GlideHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LS/c;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/d;Lcom/bumptech/glide/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
