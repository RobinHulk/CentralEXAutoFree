.class public abstract Landroidx/activity/g;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/J;
.implements Landroidx/lifecycle/h;
.implements LN/f;
.implements Landroidx/lifecycle/q;
.implements Ly/k;


# instance fields
.field public a:Landroidx/lifecycle/s;

.field public final b:La/a;

.field public final c:LG/a;

.field public final d:Landroidx/lifecycle/s;

.field public final e:LN/e;

.field public f:Landroidx/lifecycle/I;

.field public final g:Landroidx/activity/m;

.field public final h:Landroidx/activity/d;

.field public final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/activity/g;->a:Landroidx/lifecycle/s;

    new-instance v0, La/a;

    invoke-direct {v0}, La/a;-><init>()V

    iput-object v0, p0, Landroidx/activity/g;->b:La/a;

    new-instance v0, LG/a;

    new-instance v1, LT/T0;

    move-object v2, p0

    check-cast v2, Le/j;

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, LT/T0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, LG/a;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/g;->c:LG/a;

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/activity/g;->d:Landroidx/lifecycle/s;

    new-instance v1, LN/e;

    invoke-direct {v1, p0}, LN/e;-><init>(LN/f;)V

    iput-object v1, p0, Landroidx/activity/g;->e:LN/e;

    new-instance v3, Landroidx/activity/m;

    new-instance v4, LB/b;

    const/16 v5, 0xd

    invoke-direct {v4, v2, v5}, LB/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v3, v4}, Landroidx/activity/m;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Landroidx/activity/g;->g:Landroidx/activity/m;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v3, Landroidx/activity/d;

    invoke-direct {v3}, Landroidx/activity/d;-><init>()V

    iput-object v3, p0, Landroidx/activity/g;->h:Landroidx/activity/d;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Landroidx/activity/g;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Landroidx/activity/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Landroidx/activity/g;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Landroidx/activity/g;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Landroidx/activity/g;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v3, v2}, Landroidx/activity/ComponentActivity$3;-><init>(Le/j;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/p;)V

    new-instance v3, Landroidx/activity/ComponentActivity$4;

    invoke-direct {v3, v2}, Landroidx/activity/ComponentActivity$4;-><init>(Le/j;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/p;)V

    new-instance v3, Landroidx/activity/ComponentActivity$5;

    invoke-direct {v3, v2}, Landroidx/activity/ComponentActivity$5;-><init>(Le/j;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/p;)V

    invoke-virtual {v1}, LN/e;->a()V

    iget-object v0, v0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    const-string v3, "lifecycle.currentState"

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/l;->b:Landroidx/lifecycle/l;

    if-eq v0, v3, :cond_1

    sget-object v3, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/l;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, v1, LN/e;->b:LN/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LN/d;->d:Ljava/lang/Object;

    check-cast v0, Ll/f;

    invoke-virtual {v0}, Ll/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move-object v1, v0

    check-cast v1, Ll/b;

    invoke-virtual {v1}, Ll/b;->hasNext()Z

    move-result v3

    const-string v4, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ll/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v3, "components"

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN/c;

    invoke-static {v3, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    new-instance v0, Landroidx/lifecycle/E;

    iget-object v1, p0, Landroidx/activity/g;->e:LN/e;

    iget-object v1, v1, LN/e;->b:LN/d;

    invoke-direct {v0, v1, p0}, Landroidx/lifecycle/E;-><init>(LN/d;Landroidx/activity/g;)V

    iget-object v1, p0, Landroidx/activity/g;->e:LN/e;

    iget-object v1, v1, LN/e;->b:LN/d;

    invoke-virtual {v1, v4, v0}, LN/d;->e(Ljava/lang/String;LN/c;)V

    iget-object v1, p0, Landroidx/activity/g;->d:Landroidx/lifecycle/s;

    new-instance v3, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v3, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/E;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/p;)V

    :cond_4
    iget-object v0, p0, Landroidx/activity/g;->e:LN/e;

    iget-object v0, v0, LN/e;->b:LN/d;

    new-instance v1, Landroidx/activity/b;

    invoke-direct {v1, v2}, Landroidx/activity/b;-><init>(Le/j;)V

    const-string v3, "android:support:activity-result"

    invoke-virtual {v0, v3, v1}, LN/d;->e(Ljava/lang/String;LN/c;)V

    new-instance v0, Landroidx/activity/c;

    invoke-direct {v0, v2}, Landroidx/activity/c;-><init>(Le/j;)V

    invoke-virtual {p0, v0}, Landroidx/activity/g;->f(La/b;)V

    return-void
.end method

.method public static synthetic e(Le/j;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final a()LJ/b;
    .locals 4

    new-instance v0, LJ/c;

    sget-object v1, LJ/a;->b:LJ/a;

    invoke-direct {v0, v1}, LJ/c;-><init>(LJ/b;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, v0, LJ/b;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/lifecycle/H;->a:Landroidx/lifecycle/H;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Landroidx/lifecycle/C;->a:Landroidx/lifecycle/H;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/C;->b:Landroidx/lifecycle/H;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/lifecycle/C;->c:Landroidx/lifecycle/H;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final b()LN/d;
    .locals 1

    iget-object v0, p0, Landroidx/activity/g;->e:LN/e;

    iget-object v0, v0, LN/e;->b:LN/d;

    return-object v0
.end method

.method public final c()Landroidx/lifecycle/I;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/activity/g;->f:Landroidx/lifecycle/I;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/f;->a:Landroidx/lifecycle/I;

    iput-object v0, p0, Landroidx/activity/g;->f:Landroidx/lifecycle/I;

    :cond_0
    iget-object v0, p0, Landroidx/activity/g;->f:Landroidx/lifecycle/I;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/I;

    invoke-direct {v0}, Landroidx/lifecycle/I;-><init>()V

    iput-object v0, p0, Landroidx/activity/g;->f:Landroidx/lifecycle/I;

    :cond_1
    iget-object v0, p0, Landroidx/activity/g;->f:Landroidx/lifecycle/I;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Landroidx/lifecycle/s;
    .locals 1

    iget-object v0, p0, Landroidx/activity/g;->d:Landroidx/lifecycle/s;

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ly/N;->a:Ljava/util/WeakHashMap;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ly/N;->a:Ljava/util/WeakHashMap;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final f(La/b;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/g;->b:La/a;

    iget-object v1, v0, La/a;->b:Landroidx/activity/g;

    if-eqz v1, :cond_0

    invoke-interface {p1}, La/b;->a()V

    :cond_0
    iget-object v0, v0, La/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/A;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroidx/activity/g;->a:Landroidx/lifecycle/s;

    const-string v1, "markState"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/l;

    const-string v2, "setCurrentState"

    invoke-virtual {v0, v2}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->e(Landroidx/lifecycle/l;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/g;->h:Landroidx/activity/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/d;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/g;->g:Landroidx/activity/m;

    invoke-virtual {v0}, Landroidx/activity/m;->b()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidx/activity/g;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/a;

    invoke-interface {v1, p1}, Lx/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/g;->e:LN/e;

    invoke-virtual {v0, p1}, LN/e;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/g;->b:La/a;

    iput-object p0, v0, La/a;->b:Landroidx/activity/g;

    iget-object v0, v0, La/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b;

    invoke-interface {v1}, La/b;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/activity/g;->g(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/A;->c(Landroid/app/Activity;)V

    invoke-static {}, Le/a;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/activity/g;->g:Landroidx/activity/m;

    invoke-static {p0}, Landroidx/activity/e;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iput-object v0, p1, Landroidx/activity/m;->e:Landroid/window/OnBackInvokedDispatcher;

    invoke-virtual {p1}, Landroidx/activity/m;->c()V

    :cond_1
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object p1, p0, Landroidx/activity/g;->c:LG/a;

    iget-object p1, p1, LG/a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/activity/g;->c:LG/a;

    iget-object p1, p1, LG/a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return p2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_2
    return p2
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p1, p0, Landroidx/activity/g;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx/a;

    new-instance v0, Lp0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, v0}, Lx/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroidx/activity/g;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/a;

    invoke-interface {v1, p1}, Lx/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/g;->c:LG/a;

    iget-object v0, v0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p1, p0, Landroidx/activity/g;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx/a;

    new-instance v0, Lp0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, v0}, Lx/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    iget-object p1, p0, Landroidx/activity/g;->c:LG/a;

    iget-object p1, p1, LG/a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Landroidx/activity/g;->h:Landroidx/activity/d;

    invoke-virtual {v2, p1, v1, v0}, Landroidx/activity/d;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/activity/g;->f:Landroidx/lifecycle/I;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/f;

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/activity/f;->a:Landroidx/lifecycle/I;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Landroidx/activity/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroidx/activity/f;->a:Landroidx/lifecycle/I;

    return-object v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroidx/activity/g;->d:Landroidx/lifecycle/s;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/l;

    const-string v2, "setCurrentState"

    invoke-virtual {v0, v2}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->e(Landroidx/lifecycle/l;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/activity/g;->h(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/g;->e:LN/e;

    invoke-virtual {v0, p1}, LN/e;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    iget-object v0, p0, Landroidx/activity/g;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lx/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reportFullyDrawn()V
    .locals 1

    :try_start_0
    invoke-static {}, LA/b;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reportFullyDrawn() for ComponentActivity"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902ff

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090302

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f090301

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f090300

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method
