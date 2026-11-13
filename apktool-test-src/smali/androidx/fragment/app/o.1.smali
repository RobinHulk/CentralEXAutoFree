.class public abstract Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/q;
.implements Landroidx/lifecycle/J;
.implements Landroidx/lifecycle/h;
.implements LN/f;


# static fields
.field public static final Q:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public final B:Z

.field public C:Z

.field public D:Landroid/view/ViewGroup;

.field public E:Landroid/view/View;

.field public F:Z

.field public G:Z

.field public H:Landroidx/fragment/app/n;

.field public I:Z

.field public J:Z

.field public K:Landroidx/lifecycle/l;

.field public L:Landroidx/lifecycle/s;

.field public M:Landroidx/fragment/app/M;

.field public final N:Landroidx/lifecycle/w;

.field public O:LN/e;

.field public final P:Ljava/util/ArrayList;

.field public a:I

.field public b:Landroid/os/Bundle;

.field public c:Landroid/util/SparseArray;

.field public d:Landroid/os/Bundle;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/Bundle;

.field public g:Landroidx/fragment/app/o;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/Boolean;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Landroidx/fragment/app/E;

.field public s:Landroidx/fragment/app/r;

.field public t:Landroidx/fragment/app/E;

.field public u:Landroidx/fragment/app/o;

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/o;->Q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/o;->a:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/o;->h:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/o;->j:Ljava/lang/Boolean;

    new-instance v0, Landroidx/fragment/app/E;

    invoke-direct {v0}, Landroidx/fragment/app/E;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/o;->B:Z

    iput-boolean v0, p0, Landroidx/fragment/app/o;->G:Z

    sget-object v0, Landroidx/lifecycle/l;->e:Landroidx/lifecycle/l;

    iput-object v0, p0, Landroidx/fragment/app/o;->K:Landroidx/lifecycle/l;

    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0}, Landroidx/lifecycle/w;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/o;->N:Landroidx/lifecycle/w;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/o;->P:Ljava/util/ArrayList;

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/fragment/app/o;->L:Landroidx/lifecycle/s;

    new-instance v0, LN/e;

    invoke-direct {v0, p0}, LN/e;-><init>(LN/f;)V

    iput-object v0, p0, Landroidx/fragment/app/o;->O:LN/e;

    return-void
.end method


# virtual methods
.method public final b()LN/d;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o;->O:LN/e;

    iget-object v0, v0, LN/e;->b:LN/d;

    return-object v0
.end method

.method public final c()Landroidx/lifecycle/I;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/o;->i()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iget-object v0, v0, Landroidx/fragment/app/G;->e:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/I;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/lifecycle/I;

    invoke-direct {v1}, Landroidx/lifecycle/I;-><init>()V

    iget-object v2, p0, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Landroidx/lifecycle/s;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o;->L:Landroidx/lifecycle/s;

    return-object v0
.end method

.method public e()LA/b;
    .locals 1

    new-instance v0, Landroidx/fragment/app/m;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/o;)V

    return-object v0
.end method

.method public final f()Landroidx/fragment/app/n;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/fragment/app/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroidx/fragment/app/o;->Q:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/n;->g:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/n;->h:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/n;->i:Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/fragment/app/n;->j:F

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/n;->k:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    return-object v0
.end method

.method public final g()Landroidx/fragment/app/E;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/r;->d:Le/j;

    :goto_0
    return-object v0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/o;->K:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/l;->b:Landroidx/lifecycle/l;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/o;->u:Landroidx/fragment/app/o;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/o;->u:Landroidx/fragment/app/o;

    invoke-virtual {v1}, Landroidx/fragment/app/o;->i()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final j()Landroidx/fragment/app/E;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public l(Le/j;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/o;->C:Z

    iget-object v0, p0, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/r;->c:Le/j;

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Landroidx/fragment/app/o;->C:Z

    :cond_1
    return-void
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/o;->C:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/E;->M(Landroid/os/Parcelable;)V

    iget-object p1, p0, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    iput-boolean v1, p1, Landroidx/fragment/app/E;->y:Z

    iput-boolean v1, p1, Landroidx/fragment/app/E;->z:Z

    iget-object v2, p1, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iput-boolean v1, v2, Landroidx/fragment/app/G;->h:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/E;->s(I)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    iget v2, p1, Landroidx/fragment/app/E;->m:I

    if-lt v2, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p1, Landroidx/fragment/app/E;->y:Z

    iput-boolean v1, p1, Landroidx/fragment/app/E;->z:Z

    iget-object v2, p1, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iput-boolean v1, v2, Landroidx/fragment/app/G;->h:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/E;->s(I)V

    :goto_0
    return-void
.end method

.method public n(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/o;->C:Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/o;->C:Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/r;->c:Le/j;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not attached to an activity."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/o;->C:Z

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/o;->C:Z

    return-void
.end method

.method public q(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/r;->g:Le/j;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->f:Landroidx/fragment/app/v;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract r(Landroid/os/Bundle;)V
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/o;->C:Z

    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/o;->C:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/o;->v:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/o;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/o;->x:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/o;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/o;->C:Z

    return-void
.end method

.method public v(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    iget-object p3, p0, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {p3}, Landroidx/fragment/app/E;->H()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/fragment/app/o;->p:Z

    new-instance p3, Landroidx/fragment/app/M;

    invoke-virtual {p0}, Landroidx/fragment/app/o;->c()Landroidx/lifecycle/I;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/fragment/app/M;-><init>(Landroidx/lifecycle/I;)V

    iput-object p3, p0, Landroidx/fragment/app/o;->M:Landroidx/fragment/app/M;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/o;->n(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/o;->E:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/o;->M:Landroidx/fragment/app/M;

    invoke-virtual {p1}, Landroidx/fragment/app/M;->f()V

    iget-object p1, p0, Landroidx/fragment/app/o;->E:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/o;->M:Landroidx/fragment/app/M;

    const p3, 0x7f0902ff

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/fragment/app/o;->E:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/o;->M:Landroidx/fragment/app/M;

    const p3, 0x7f090302

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/fragment/app/o;->E:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/o;->M:Landroidx/fragment/app/M;

    const-string p3, "<this>"

    invoke-static {p1, p3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f090301

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/fragment/app/o;->N:Landroidx/lifecycle/w;

    iget-object p2, p0, Landroidx/fragment/app/o;->M:Landroidx/fragment/app/M;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/w;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/o;->M:Landroidx/fragment/app/M;

    iget-object p1, p1, Landroidx/fragment/app/M;->b:Landroidx/lifecycle/s;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/o;->M:Landroidx/fragment/app/M;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/o;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/o;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/n;->b:I

    invoke-virtual {p0}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    move-result-object p1

    iput p2, p1, Landroidx/fragment/app/n;->c:I

    invoke-virtual {p0}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    move-result-object p1

    iput p3, p1, Landroidx/fragment/app/n;->d:I

    invoke-virtual {p0}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    move-result-object p1

    iput p4, p1, Landroidx/fragment/app/n;->e:I

    return-void
.end method

.method public final z(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroidx/fragment/app/E;->y:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/fragment/app/E;->z:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/o;->f:Landroid/os/Bundle;

    return-void
.end method
