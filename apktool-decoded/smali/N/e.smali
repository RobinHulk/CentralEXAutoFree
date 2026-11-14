.class public final LN/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LN/d;

.field public c:Z


# direct methods
.method public constructor <init>(LN/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/e;->a:Ljava/lang/Object;

    new-instance p1, LN/d;

    invoke-direct {p1}, LN/d;-><init>()V

    iput-object p1, p0, LN/e;->b:LN/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, LN/e;->a:Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/lifecycle/q;->d()Landroidx/lifecycle/s;

    move-result-object v1

    const-string v2, "owner.lifecycle"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    sget-object v3, Landroidx/lifecycle/l;->b:Landroidx/lifecycle/l;

    if-ne v2, v3, :cond_1

    new-instance v2, Landroidx/savedstate/Recreator;

    invoke-direct {v2, v0}, Landroidx/savedstate/Recreator;-><init>(LN/f;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/p;)V

    iget-object v0, p0, LN/e;->b:LN/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v0, LN/d;->a:Z

    if-nez v2, :cond_0

    new-instance v2, LN/a;

    invoke-direct {v2, v0}, LN/a;-><init>(LN/d;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/p;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, LN/d;->a:Z

    iput-boolean v1, p0, LN/e;->c:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SavedStateRegistry was already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, LN/e;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LN/e;->a()V

    :cond_0
    iget-object v0, p0, LN/e;->a:Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/lifecycle/q;->d()Landroidx/lifecycle/s;

    move-result-object v0

    const-string v1, "owner.lifecycle"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    sget-object v2, Landroidx/lifecycle/l;->d:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/l;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, LN/e;->b:LN/d;

    iget-boolean v1, v0, LN/d;->a:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, LN/d;->b:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, LN/d;->e:Landroid/os/Parcelable;

    const/4 p1, 0x1

    iput-boolean p1, v0, LN/d;->b:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call performAttach() before calling performRestore(Bundle)."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "performRestore cannot be called when owner is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "outBundle"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LN/e;->b:LN/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, LN/d;->e:Landroid/os/Parcelable;

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, v0, LN/d;->d:Ljava/lang/Object;

    check-cast v0, Ll/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ll/d;

    invoke-direct {v2, v0}, Ll/d;-><init>(Ll/f;)V

    iget-object v0, v0, Ll/f;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v2}, Ll/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ll/d;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN/c;

    invoke-interface {v0}, LN/c;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
