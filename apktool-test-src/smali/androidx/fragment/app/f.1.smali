.class public abstract Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/f;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/P;Lu/b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/f;->a:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le/x;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/f;->a:Ljava/lang/Object;

    check-cast v0, LT/N;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v1, Le/x;

    iget-object v1, v1, Le/x;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/f;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/f;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/P;

    iget-object v1, v0, Landroidx/fragment/app/P;->e:Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v2, Lu/b;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/P;->b()V

    :cond_0
    return-void
.end method

.method public abstract e()Landroid/content/IntentFilter;
.end method

.method public abstract f()I
.end method

.method public g(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, Lt/a;

    if-eqz v0, :cond_2

    check-cast p1, Lt/a;

    iget-object v0, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v0, Lm/k;

    if-nez v0, :cond_0

    new-instance v0, Lm/k;

    invoke-direct {v0}, Lm/k;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v0, Lm/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lm/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Li/s;

    iget-object v1, p0, Landroidx/fragment/app/f;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Li/s;-><init>(Landroid/content/Context;Lt/a;)V

    iget-object v1, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v1, Lm/k;

    invoke-virtual {v1, p1, v0}, Lm/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public abstract h()V
.end method

.method public i()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/f;->c()V

    invoke-virtual {p0}, Landroidx/fragment/app/f;->e()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/f;->a:Ljava/lang/Object;

    check-cast v1, LT/N;

    if-nez v1, :cond_1

    new-instance v1, LT/N;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LT/N;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/fragment/app/f;->a:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v1, Le/x;

    iget-object v1, v1, Le/x;->k:Landroid/content/Context;

    iget-object v2, p0, Landroidx/fragment/app/f;->a:Ljava/lang/Object;

    check-cast v2, LT/N;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
