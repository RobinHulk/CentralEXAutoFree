.class public final Landroidx/fragment/app/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/util/ArrayList;

.field public D:Ljava/util/ArrayList;

.field public E:Ljava/util/ArrayList;

.field public F:Landroidx/fragment/app/G;

.field public final G:LB/b;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:LM/d;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/v;

.field public g:Landroidx/activity/m;

.field public final h:Landroidx/fragment/app/x;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:LG/a;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public m:I

.field public n:Landroidx/fragment/app/r;

.field public o:LA/b;

.field public p:Landroidx/fragment/app/o;

.field public q:Landroidx/fragment/app/o;

.field public final r:Landroidx/fragment/app/y;

.field public final s:Lp0/e;

.field public t:LG/a;

.field public u:LG/a;

.field public v:LG/a;

.field public w:Ljava/util/ArrayDeque;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    new-instance v0, LM/d;

    invoke-direct {v0}, LM/d;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    new-instance v0, Landroidx/fragment/app/v;

    invoke-direct {v0, p0}, Landroidx/fragment/app/v;-><init>(Landroidx/fragment/app/E;)V

    iput-object v0, p0, Landroidx/fragment/app/E;->f:Landroidx/fragment/app/v;

    new-instance v0, Landroidx/fragment/app/x;

    invoke-direct {v0, p0}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/E;)V

    iput-object v0, p0, Landroidx/fragment/app/E;->h:Landroidx/fragment/app/x;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/E;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/E;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Lp0/e;

    invoke-direct {v0, p0}, Lp0/e;-><init>(Ljava/lang/Object;)V

    new-instance v0, LG/a;

    invoke-direct {v0, p0}, LG/a;-><init>(Landroidx/fragment/app/E;)V

    iput-object v0, p0, Landroidx/fragment/app/E;->k:LG/a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/E;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/E;->m:I

    new-instance v0, Landroidx/fragment/app/y;

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/E;)V

    iput-object v0, p0, Landroidx/fragment/app/E;->r:Landroidx/fragment/app/y;

    new-instance v0, Lp0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/E;->s:Lp0/e;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/E;->w:Ljava/util/ArrayDeque;

    new-instance v0, LB/b;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, LB/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/fragment/app/E;->G:LB/b;

    return-void
.end method

.method public static D(Landroidx/fragment/app/o;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    iget-object p0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/K;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/o;

    if-eqz v2, :cond_3

    invoke-static {v2}, Landroidx/fragment/app/E;->D(Landroidx/fragment/app/o;)Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static E(Landroidx/fragment/app/o;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Landroidx/fragment/app/o;->B:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/o;->u:Landroidx/fragment/app/o;

    invoke-static {p0}, Landroidx/fragment/app/E;->E(Landroidx/fragment/app/o;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static F(Landroidx/fragment/app/o;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    iget-object v2, v1, Landroidx/fragment/app/E;->q:Landroidx/fragment/app/o;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v1, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    invoke-static {p0}, Landroidx/fragment/app/E;->F(Landroidx/fragment/app/o;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static T(Landroidx/fragment/app/o;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/o;->y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/o;->y:Z

    iget-boolean v0, p0, Landroidx/fragment/app/o;->I:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/o;->I:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final A()Landroidx/fragment/app/y;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    invoke-virtual {v0}, Landroidx/fragment/app/E;->A()Landroidx/fragment/app/y;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/E;->r:Landroidx/fragment/app/y;

    return-object v0
.end method

.method public final B()Lp0/e;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    invoke-virtual {v0}, Landroidx/fragment/app/E;->B()Lp0/e;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/E;->s:Lp0/e;

    return-object v0
.end method

.method public final C(Landroidx/fragment/app/o;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hide: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/o;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/o;->y:Z

    iget-boolean v1, p1, Landroidx/fragment/app/o;->I:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/o;->I:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/E;->S(Landroidx/fragment/app/o;)V

    :cond_1
    return-void
.end method

.method public final G(IZ)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroidx/fragment/app/E;->m:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/fragment/app/E;->m:I

    iget-object p1, p0, Landroidx/fragment/app/E;->c:LM/d;

    iget-object p2, p1, LM/d;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p1, LM/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/K;->k()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/K;->k()V

    iget-object v1, v0, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    iget-boolean v2, v1, Landroidx/fragment/app/o;->l:Z

    if-eqz v2, :cond_5

    iget v1, v1, Landroidx/fragment/app/o;->q:I

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, LM/d;->u(Landroidx/fragment/app/K;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/E;->U()V

    iget-boolean p1, p0, Landroidx/fragment/app/E;->x:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    if-eqz p1, :cond_8

    iget p2, p0, Landroidx/fragment/app/E;->m:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    iget-object p1, p1, Landroidx/fragment/app/r;->g:Le/j;

    invoke-virtual {p1}, Le/j;->i()Le/n;

    move-result-object p1

    invoke-virtual {p1}, Le/n;->f()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/E;->x:Z

    :cond_8
    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/E;->y:Z

    iput-boolean v0, p0, Landroidx/fragment/app/E;->z:Z

    iget-object v1, p0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iput-boolean v0, v1, Landroidx/fragment/app/G;->h:Z

    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/o;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v1}, Landroidx/fragment/app/E;->H()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final I()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/E;->w(Z)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/E;->v(Z)V

    iget-object v2, p0, Landroidx/fragment/app/E;->q:Landroidx/fragment/app/o;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/o;->g()Landroidx/fragment/app/E;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/E;->I()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/E;->C:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/E;->D:Ljava/util/ArrayList;

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v0}, Landroidx/fragment/app/E;->J(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroidx/fragment/app/E;->b:Z

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/E;->C:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/E;->D:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/E;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/E;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/fragment/app/E;->d()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/E;->V()V

    iget-boolean v1, p0, Landroidx/fragment/app/E;->B:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Landroidx/fragment/app/E;->B:Z

    invoke-virtual {p0}, Landroidx/fragment/app/E;->U()V

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    iget-object v0, v0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move v1, v2

    :goto_1
    return v1
.end method

.method public final J(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-gez p3, :cond_2

    and-int/lit8 v3, p4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    if-ltz p3, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    if-ltz p3, :cond_3

    iget v3, v3, Landroidx/fragment/app/a;->r:I

    if-ne p3, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-gez v0, :cond_5

    return v1

    :cond_5
    and-int/2addr p4, v2

    if-eqz p4, :cond_7

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_7

    iget-object p4, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/a;

    if-ltz p3, :cond_7

    iget p4, p4, Landroidx/fragment/app/a;->r:I

    if-ne p3, p4, :cond_7

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    :cond_7
    iget-object p3, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v0, p3, :cond_8

    return v1

    :cond_8
    iget-object p3, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_3
    if-le p3, v0, :cond_9

    iget-object p4, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    return v2
.end method

.method public final K(Landroidx/fragment/app/o;)V
    .locals 4

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/o;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroidx/fragment/app/o;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v3, p1, Landroidx/fragment/app/o;->z:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    iget-object v3, v0, LM/d;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p1, Landroidx/fragment/app/o;->k:Z

    invoke-static {p1}, Landroidx/fragment/app/E;->D(Landroidx/fragment/app/o;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Landroidx/fragment/app/E;->x:Z

    :cond_3
    iput-boolean v2, p1, Landroidx/fragment/app/o;->l:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/E;->S(Landroidx/fragment/app/o;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final L(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->o:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/E;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->o:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/E;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/E;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final M(Landroid/os/Parcelable;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/fragment/app/F;

    iget-object v2, v1, Landroidx/fragment/app/F;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Landroidx/fragment/app/E;->c:LM/d;

    iget-object v3, v2, LM/d;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v1, Landroidx/fragment/app/F;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    iget-object v6, v0, Landroidx/fragment/app/E;->k:LG/a;

    const-string v7, "): "

    const-string v8, "FragmentManager"

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroidx/fragment/app/I;

    if-eqz v14, :cond_2

    iget-object v4, v0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iget-object v4, v4, Landroidx/fragment/app/G;->c:Ljava/util/HashMap;

    iget-object v9, v14, Landroidx/fragment/app/I;->b:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/o;

    if-eqz v4, :cond_4

    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "restoreSaveState: re-attaching retained "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v9, Landroidx/fragment/app/K;

    invoke-direct {v9, v6, v2, v4, v14}, Landroidx/fragment/app/K;-><init>(LG/a;LM/d;Landroidx/fragment/app/o;Landroidx/fragment/app/I;)V

    goto :goto_1

    :cond_4
    new-instance v4, Landroidx/fragment/app/K;

    iget-object v6, v0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iget-object v6, v6, Landroidx/fragment/app/r;->d:Le/j;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/E;->A()Landroidx/fragment/app/y;

    move-result-object v13

    iget-object v10, v0, Landroidx/fragment/app/E;->k:LG/a;

    iget-object v11, v0, Landroidx/fragment/app/E;->c:LM/d;

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Landroidx/fragment/app/K;-><init>(LG/a;LM/d;Ljava/lang/ClassLoader;Landroidx/fragment/app/y;Landroidx/fragment/app/I;)V

    :goto_1
    iget-object v4, v9, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    iput-object v0, v4, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restoreSaveState: active ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, v0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iget-object v4, v4, Landroidx/fragment/app/r;->d:Le/j;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/fragment/app/K;->m(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, v9}, LM/d;->t(Landroidx/fragment/app/K;)V

    iget v4, v0, Landroidx/fragment/app/E;->m:I

    iput v4, v9, Landroidx/fragment/app/K;->e:I

    goto/16 :goto_0

    :cond_6
    iget-object v3, v0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Landroidx/fragment/app/G;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/o;

    iget-object v11, v4, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    iget-object v12, v2, LM/d;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_8

    move v9, v10

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_7

    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Discarding retained Fragment "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " that was not found in the set of active Fragments "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroidx/fragment/app/F;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v9, v0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    invoke-virtual {v9, v4}, Landroidx/fragment/app/G;->b(Landroidx/fragment/app/o;)V

    iput-object v0, v4, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    new-instance v9, Landroidx/fragment/app/K;

    invoke-direct {v9, v6, v2, v4}, Landroidx/fragment/app/K;-><init>(LG/a;LM/d;Landroidx/fragment/app/o;)V

    iput v10, v9, Landroidx/fragment/app/K;->e:I

    invoke-virtual {v9}, Landroidx/fragment/app/K;->k()V

    iput-boolean v10, v4, Landroidx/fragment/app/o;->l:Z

    invoke-virtual {v9}, Landroidx/fragment/app/K;->k()V

    goto :goto_2

    :cond_a
    iget-object v3, v1, Landroidx/fragment/app/F;->b:Ljava/util/ArrayList;

    iget-object v4, v2, LM/d;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, LM/d;->e(Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "restoreSaveState: added ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v2, v6}, LM/d;->a(Landroidx/fragment/app/o;)V

    goto :goto_4

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for ("

    const-string v3, ")"

    invoke-static {v2, v4, v3}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v3, v1, Landroidx/fragment/app/F;->c:[Landroidx/fragment/app/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, v1, Landroidx/fragment/app/F;->c:[Landroidx/fragment/app/b;

    array-length v6, v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_5
    iget-object v6, v1, Landroidx/fragment/app/F;->c:[Landroidx/fragment/app/b;

    array-length v11, v6

    if-ge v3, v11, :cond_12

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroidx/fragment/app/a;

    invoke-direct {v11, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/E;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_6
    iget-object v14, v6, Landroidx/fragment/app/b;->a:[I

    array-length v15, v14

    if-ge v12, v15, :cond_10

    new-instance v15, Landroidx/fragment/app/L;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v16, v12, 0x1

    aget v9, v14, v12

    iput v9, v15, Landroidx/fragment/app/L;->a:I

    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v5, "Instantiate "

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " op #"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " base fragment #"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v14, v16

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v5, v6, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_f

    invoke-virtual {v2, v5}, LM/d;->e(Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v5

    iput-object v5, v15, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    goto :goto_7

    :cond_f
    iput-object v4, v15, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    :goto_7
    invoke-static {}, Landroidx/lifecycle/l;->values()[Landroidx/lifecycle/l;

    move-result-object v5

    iget-object v9, v6, Landroidx/fragment/app/b;->c:[I

    aget v9, v9, v13

    aget-object v5, v5, v9

    iput-object v5, v15, Landroidx/fragment/app/L;->g:Landroidx/lifecycle/l;

    invoke-static {}, Landroidx/lifecycle/l;->values()[Landroidx/lifecycle/l;

    move-result-object v5

    iget-object v9, v6, Landroidx/fragment/app/b;->d:[I

    aget v9, v9, v13

    aget-object v5, v5, v9

    iput-object v5, v15, Landroidx/fragment/app/L;->h:Landroidx/lifecycle/l;

    add-int/lit8 v5, v12, 0x2

    aget v9, v14, v16

    iput v9, v15, Landroidx/fragment/app/L;->c:I

    add-int/lit8 v16, v12, 0x3

    aget v5, v14, v5

    iput v5, v15, Landroidx/fragment/app/L;->d:I

    add-int/lit8 v17, v12, 0x4

    aget v4, v14, v16

    iput v4, v15, Landroidx/fragment/app/L;->e:I

    add-int/lit8 v12, v12, 0x5

    aget v14, v14, v17

    iput v14, v15, Landroidx/fragment/app/L;->f:I

    iput v9, v11, Landroidx/fragment/app/a;->b:I

    iput v5, v11, Landroidx/fragment/app/a;->c:I

    iput v4, v11, Landroidx/fragment/app/a;->d:I

    iput v14, v11, Landroidx/fragment/app/a;->e:I

    invoke-virtual {v11, v15}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/L;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto/16 :goto_6

    :cond_10
    iget v4, v6, Landroidx/fragment/app/b;->e:I

    iput v4, v11, Landroidx/fragment/app/a;->f:I

    iget-object v4, v6, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    iput-object v4, v11, Landroidx/fragment/app/a;->h:Ljava/lang/String;

    iget v4, v6, Landroidx/fragment/app/b;->g:I

    iput v4, v11, Landroidx/fragment/app/a;->r:I

    iput-boolean v10, v11, Landroidx/fragment/app/a;->g:Z

    iget v4, v6, Landroidx/fragment/app/b;->h:I

    iput v4, v11, Landroidx/fragment/app/a;->i:I

    iget-object v4, v6, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    iput-object v4, v11, Landroidx/fragment/app/a;->j:Ljava/lang/CharSequence;

    iget v4, v6, Landroidx/fragment/app/b;->j:I

    iput v4, v11, Landroidx/fragment/app/a;->k:I

    iget-object v4, v6, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    iput-object v4, v11, Landroidx/fragment/app/a;->l:Ljava/lang/CharSequence;

    iget-object v4, v6, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    iput-object v4, v11, Landroidx/fragment/app/a;->m:Ljava/util/ArrayList;

    iget-object v4, v6, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    iput-object v4, v11, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    iget-boolean v4, v6, Landroidx/fragment/app/b;->n:Z

    iput-boolean v4, v11, Landroidx/fragment/app/a;->o:Z

    invoke-virtual {v11, v10}, Landroidx/fragment/app/a;->c(I)V

    const/4 v4, 0x2

    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "restoreAllState: back stack #"

    const-string v6, " (index "

    invoke-static {v5, v3, v6}, LM/d0;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Landroidx/fragment/app/a;->r:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroidx/fragment/app/N;

    invoke-direct {v5}, Landroidx/fragment/app/N;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, "  "

    const/4 v9, 0x0

    invoke-virtual {v11, v5, v6, v9}, Landroidx/fragment/app/a;->d(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    goto :goto_8

    :cond_11
    const/4 v9, 0x0

    :goto_8
    iget-object v5, v0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v9, 0x0

    goto :goto_9

    :cond_13
    move-object v3, v4

    const/4 v9, 0x0

    iput-object v3, v0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    :goto_9
    iget-object v3, v0, Landroidx/fragment/app/E;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v1, Landroidx/fragment/app/F;->d:I

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v3, v1, Landroidx/fragment/app/F;->e:Ljava/lang/String;

    if-eqz v3, :cond_14

    invoke-virtual {v2, v3}, LM/d;->e(Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/E;->q:Landroidx/fragment/app/o;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/E;->p(Landroidx/fragment/app/o;)V

    :cond_14
    iget-object v2, v1, Landroidx/fragment/app/F;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v9, v3, :cond_15

    iget-object v3, v1, Landroidx/fragment/app/F;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, v0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iget-object v4, v4, Landroidx/fragment/app/r;->d:Le/j;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v4, v0, Landroidx/fragment/app/E;->j:Ljava/util/Map;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_15
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Landroidx/fragment/app/F;->h:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroidx/fragment/app/E;->w:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final N()Landroidx/fragment/app/F;
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/E;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/h;

    iget-boolean v3, v1, Landroidx/fragment/app/h;->e:Z

    if-eqz v3, :cond_0

    iput-boolean v2, v1, Landroidx/fragment/app/h;->e:Z

    invoke-virtual {v1}, Landroidx/fragment/app/h;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/E;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->e()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/E;->w(Z)Z

    iput-boolean v0, p0, Landroidx/fragment/app/E;->y:Z

    iget-object v1, p0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iput-boolean v0, v1, Landroidx/fragment/app/G;->h:Z

    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/K;

    if-eqz v3, :cond_3

    new-instance v6, Landroidx/fragment/app/I;

    iget-object v7, v3, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    invoke-direct {v6, v7}, Landroidx/fragment/app/I;-><init>(Landroidx/fragment/app/o;)V

    iget v8, v7, Landroidx/fragment/app/o;->a:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_e

    iget-object v8, v6, Landroidx/fragment/app/I;->m:Landroid/os/Bundle;

    if-nez v8, :cond_e

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v8}, Landroidx/fragment/app/o;->r(Landroid/os/Bundle;)V

    iget-object v9, v7, Landroidx/fragment/app/o;->O:LN/e;

    invoke-virtual {v9, v8}, LN/e;->c(Landroid/os/Bundle;)V

    iget-object v9, v7, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v9}, Landroidx/fragment/app/E;->N()Landroidx/fragment/app/F;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v10, "android:support:fragments"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    iget-object v9, v3, Landroidx/fragment/app/K;->a:LG/a;

    invoke-virtual {v9, v2}, LG/a;->l(Z)V

    invoke-virtual {v8}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, v8

    :goto_3
    iget-object v8, v7, Landroidx/fragment/app/o;->E:Landroid/view/View;

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Landroidx/fragment/app/K;->o()V

    :cond_6
    iget-object v3, v7, Landroidx/fragment/app/o;->c:Landroid/util/SparseArray;

    if-eqz v3, :cond_8

    if-nez v5, :cond_7

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v3, "android:view_state"

    iget-object v8, v7, Landroidx/fragment/app/o;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_8
    iget-object v3, v7, Landroidx/fragment/app/o;->d:Landroid/os/Bundle;

    if-eqz v3, :cond_a

    if-nez v5, :cond_9

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_9
    const-string v3, "android:view_registry_state"

    iget-object v8, v7, Landroidx/fragment/app/o;->d:Landroid/os/Bundle;

    invoke-virtual {v5, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    iget-boolean v3, v7, Landroidx/fragment/app/o;->G:Z

    if-nez v3, :cond_c

    if-nez v5, :cond_b

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_b
    const-string v3, "android:user_visible_hint"

    iget-boolean v8, v7, Landroidx/fragment/app/o;->G:Z

    invoke-virtual {v5, v3, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    iput-object v5, v6, Landroidx/fragment/app/I;->m:Landroid/os/Bundle;

    iget-object v3, v7, Landroidx/fragment/app/o;->h:Ljava/lang/String;

    if-eqz v3, :cond_f

    if-nez v5, :cond_d

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v6, Landroidx/fragment/app/I;->m:Landroid/os/Bundle;

    :cond_d
    iget-object v3, v6, Landroidx/fragment/app/I;->m:Landroid/os/Bundle;

    const-string v5, "android:target_state"

    iget-object v8, v7, Landroidx/fragment/app/o;->h:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v7, Landroidx/fragment/app/o;->i:I

    if-eqz v3, :cond_f

    iget-object v5, v6, Landroidx/fragment/app/I;->m:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    invoke-virtual {v5, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_e
    iget-object v3, v7, Landroidx/fragment/app/o;->b:Landroid/os/Bundle;

    iput-object v3, v6, Landroidx/fragment/app/I;->m:Landroid/os/Bundle;

    :cond_f
    :goto_4
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "FragmentManager"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Saved state of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Landroidx/fragment/app/I;->m:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "FragmentManager"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-object v5

    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    iget-object v3, v0, LM/d;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v6, v0, LM/d;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    monitor-exit v3

    move-object v6, v5

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_13
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, LM/d;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/o;

    iget-object v8, v7, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "FragmentManager"

    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_14

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding fragment ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_15
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    iget-object v0, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    new-array v3, v0, [Landroidx/fragment/app/b;

    :goto_7
    if-ge v2, v0, :cond_18

    new-instance v7, Landroidx/fragment/app/b;

    iget-object v8, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    invoke-direct {v7, v8}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    aput-object v7, v3, v2

    const-string v7, "FragmentManager"

    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "FragmentManager"

    const-string v8, "saveAllState: adding back stack #"

    const-string v9, ": "

    invoke-static {v8, v2, v9}, LM/d0;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    move-object v3, v5

    :cond_18
    new-instance v0, Landroidx/fragment/app/F;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Landroidx/fragment/app/F;->e:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/fragment/app/F;->f:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroidx/fragment/app/F;->g:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/F;->a:Ljava/util/ArrayList;

    iput-object v6, v0, Landroidx/fragment/app/F;->b:Ljava/util/ArrayList;

    iput-object v3, v0, Landroidx/fragment/app/F;->c:[Landroidx/fragment/app/b;

    iget-object v1, p0, Landroidx/fragment/app/E;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Landroidx/fragment/app/F;->d:I

    iget-object v1, p0, Landroidx/fragment/app/E;->q:Landroidx/fragment/app/o;

    if-eqz v1, :cond_19

    iget-object v1, v1, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/F;->e:Ljava/lang/String;

    :cond_19
    iget-object v1, p0, Landroidx/fragment/app/E;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/fragment/app/E;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/E;->w:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/fragment/app/F;->h:Ljava/util/ArrayList;

    return-object v0

    :goto_8
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final O()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iget-object v1, v1, Landroidx/fragment/app/r;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/E;->G:LB/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iget-object v1, v1, Landroidx/fragment/app/r;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/E;->G:LB/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/E;->V()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final P(Landroidx/fragment/app/o;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/E;->z(Landroidx/fragment/app/o;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/t;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/t;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final Q(Landroidx/fragment/app/o;Landroidx/lifecycle/l;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v1, v0}, LM/d;->e(Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/o;->K:Landroidx/lifecycle/l;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final R(Landroidx/fragment/app/o;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v1, v0}, LM/d;->e(Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/E;->q:Landroidx/fragment/app/o;

    iput-object p1, p0, Landroidx/fragment/app/E;->q:Landroidx/fragment/app/o;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/E;->p(Landroidx/fragment/app/o;)V

    iget-object p1, p0, Landroidx/fragment/app/E;->q:Landroidx/fragment/app/o;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/E;->p(Landroidx/fragment/app/o;)V

    return-void
.end method

.method public final S(Landroidx/fragment/app/o;)V
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/fragment/app/E;->z(Landroidx/fragment/app/o;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p1, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, v1, Landroidx/fragment/app/n;->b:I

    :goto_0
    if-nez v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    iget v4, v1, Landroidx/fragment/app/n;->c:I

    :goto_1
    add-int/2addr v4, v3

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    iget v3, v1, Landroidx/fragment/app/n;->d:I

    :goto_2
    add-int/2addr v3, v4

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    iget v1, v1, Landroidx/fragment/app/n;->e:I

    :goto_3
    add-int/2addr v1, v3

    if-lez v1, :cond_7

    const v1, 0x7f090304

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o;

    iget-object p1, p1, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v2, p1, Landroidx/fragment/app/n;->a:Z

    :goto_4
    iget-object p1, v0, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    move-result-object p1

    iput-boolean v2, p1, Landroidx/fragment/app/n;->a:Z

    :cond_7
    :goto_5
    return-void
.end method

.method public final U()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/K;

    iget-object v2, v1, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    iget-boolean v3, v2, Landroidx/fragment/app/o;->F:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/fragment/app/E;->b:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/E;->B:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/o;->F:Z

    invoke-virtual {v1}, Landroidx/fragment/app/K;->k()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final V()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/E;->h:Landroidx/fragment/app/x;

    iput-boolean v2, v1, Landroidx/fragment/app/x;->a:Z

    iget-object v1, v1, Landroidx/fragment/app/x;->c:Landroidx/activity/i;

    if-eqz v1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/activity/i;->a(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/fragment/app/E;->h:Landroidx/fragment/app/x;

    iget-object v1, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-lez v1, :cond_3

    iget-object v1, p0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    invoke-static {v1}, Landroidx/fragment/app/E;->F(Landroidx/fragment/app/o;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Landroidx/fragment/app/x;->a:Z

    iget-object v0, v0, Landroidx/fragment/app/x;->c:Landroidx/activity/i;

    if-eqz v0, :cond_4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/i;->a(Ljava/lang/Object;)V

    :cond_4
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Landroidx/fragment/app/o;)Landroidx/fragment/app/K;
    .locals 3

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "add: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/E;->f(Landroidx/fragment/app/o;)Landroidx/fragment/app/K;

    move-result-object v0

    iput-object p0, p1, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    iget-object v1, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v1, v0}, LM/d;->t(Landroidx/fragment/app/K;)V

    iget-boolean v2, p1, Landroidx/fragment/app/o;->z:Z

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, LM/d;->a(Landroidx/fragment/app/o;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/o;->l:Z

    iget-object v2, p1, Landroidx/fragment/app/o;->E:Landroid/view/View;

    if-nez v2, :cond_1

    iput-boolean v1, p1, Landroidx/fragment/app/o;->I:Z

    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/E;->D(Landroidx/fragment/app/o;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/E;->x:Z

    :cond_2
    return-object v0
.end method

.method public final b(Landroidx/fragment/app/r;LA/b;Landroidx/fragment/app/o;)V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    if-nez v0, :cond_10

    iput-object p1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iput-object p2, p0, Landroidx/fragment/app/E;->o:LA/b;

    iput-object p3, p0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    iget-object p2, p0, Landroidx/fragment/app/E;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p3, :cond_0

    new-instance v0, Landroidx/fragment/app/z;

    invoke-direct {v0, p3}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/o;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/E;->V()V

    :cond_2
    if-eqz p1, :cond_4

    iget-object p2, p1, Landroidx/fragment/app/r;->g:Le/j;

    iget-object p2, p2, Landroidx/activity/g;->g:Landroidx/activity/m;

    iput-object p2, p0, Landroidx/fragment/app/E;->g:Landroidx/activity/m;

    if-eqz p3, :cond_3

    move-object v0, p3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/E;->h:Landroidx/fragment/app/x;

    invoke-virtual {p2, v0, v1}, Landroidx/activity/m;->a(Landroidx/lifecycle/q;Landroidx/fragment/app/x;)V

    :cond_4
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_6

    iget-object p1, p3, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    iget-object p1, p1, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iget-object v1, p1, Landroidx/fragment/app/G;->d:Ljava/util/HashMap;

    iget-object v2, p3, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/G;

    if-nez v2, :cond_5

    new-instance v2, Landroidx/fragment/app/G;

    iget-boolean p1, p1, Landroidx/fragment/app/G;->f:Z

    invoke-direct {v2, p1}, Landroidx/fragment/app/G;-><init>(Z)V

    iget-object p1, p3, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-object v2, p0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    goto/16 :goto_5

    :cond_6
    if-eqz p1, :cond_b

    iget-object p1, p1, Landroidx/fragment/app/r;->g:Le/j;

    invoke-virtual {p1}, Landroidx/activity/g;->c()Landroidx/lifecycle/I;

    move-result-object p1

    const-string v1, "store"

    invoke-static {p1, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LJ/a;->b:LJ/a;

    const-string v2, "defaultCreationExtras"

    invoke-static {v1, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroidx/fragment/app/G;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key"

    invoke-static {v3, v4}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/lifecycle/I;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/G;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, v1, LJ/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v1, Landroidx/lifecycle/H;->b:Landroidx/lifecycle/H;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Landroidx/fragment/app/G;

    invoke-direct {v1, v0}, Landroidx/fragment/app/G;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v4, v1

    goto :goto_3

    :catch_0
    new-instance v1, Landroidx/fragment/app/G;

    invoke-direct {v1, v0}, Landroidx/fragment/app/G;-><init>(Z)V

    goto :goto_2

    :goto_3
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/G;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/lifecycle/G;->a()V

    :cond_9
    :goto_4
    check-cast v4, Landroidx/fragment/app/G;

    iput-object v4, p0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Landroidx/fragment/app/G;

    invoke-direct {p1, p2}, Landroidx/fragment/app/G;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    :goto_5
    iget-object p1, p0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iget-boolean v1, p0, Landroidx/fragment/app/E;->y:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroidx/fragment/app/E;->z:Z

    if-eqz v1, :cond_d

    :cond_c
    move p2, v0

    :cond_d
    iput-boolean p2, p1, Landroidx/fragment/app/G;->h:Z

    iget-object p2, p0, Landroidx/fragment/app/E;->c:LM/d;

    iput-object p1, p2, LM/d;->c:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    if-eqz p1, :cond_f

    iget-object p1, p1, Landroidx/fragment/app/r;->g:Le/j;

    if-eqz p3, :cond_e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    const-string v0, ":"

    invoke-static {p2, p3, v0}, LM/d0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_e
    const-string p2, ""

    :goto_6
    const-string p3, "FragmentManager:"

    invoke-static {p3, p2}, LM/d0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "StartActivityForResult"

    invoke-static {p2, p3}, Landroidx/fragment/app/Q;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Landroidx/fragment/app/A;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/fragment/app/A;-><init>(I)V

    new-instance v1, Landroidx/fragment/app/w;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/E;I)V

    iget-object p1, p1, Landroidx/activity/g;->h:Landroidx/activity/d;

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/d;->b(Ljava/lang/String;LA/b;Landroidx/fragment/app/w;)LG/a;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/E;->t:LG/a;

    const-string p3, "StartIntentSenderForResult"

    invoke-static {p2, p3}, Landroidx/fragment/app/Q;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Landroidx/fragment/app/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/A;-><init>(I)V

    new-instance v1, Landroidx/fragment/app/w;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/E;I)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/d;->b(Ljava/lang/String;LA/b;Landroidx/fragment/app/w;)LG/a;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/E;->u:LG/a;

    const-string p3, "RequestPermissions"

    invoke-static {p2, p3}, Landroidx/fragment/app/Q;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroidx/fragment/app/A;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroidx/fragment/app/A;-><init>(I)V

    new-instance v0, Landroidx/fragment/app/w;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/E;I)V

    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/d;->b(Ljava/lang/String;LA/b;Landroidx/fragment/app/w;)LG/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/E;->v:LG/a;

    :cond_f
    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroidx/fragment/app/o;)V
    .locals 4

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/o;->z:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p1, Landroidx/fragment/app/o;->z:Z

    iget-boolean v2, p1, Landroidx/fragment/app/o;->k:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v2, p1}, LM/d;->a(Landroidx/fragment/app/o;)V

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add from attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/E;->D(Landroidx/fragment/app/o;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/E;->x:Z

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/E;->b:Z

    iget-object v0, p0, Landroidx/fragment/app/E;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/E;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v1}, LM/d;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/K;

    iget-object v2, v2, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    iget-object v2, v2, Landroidx/fragment/app/o;->D:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/E;->B()Lp0/e;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/fragment/app/h;->f(Landroid/view/ViewGroup;Lp0/e;)Landroidx/fragment/app/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/o;)Landroidx/fragment/app/K;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/E;->c:LM/d;

    iget-object v2, v1, LM/d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/fragment/app/K;

    iget-object v2, p0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/K;-><init>(LG/a;LM/d;Landroidx/fragment/app/o;)V

    iget-object p1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iget-object p1, p1, Landroidx/fragment/app/r;->d:Le/j;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/K;->m(Ljava/lang/ClassLoader;)V

    iget p1, p0, Landroidx/fragment/app/E;->m:I

    iput p1, v0, Landroidx/fragment/app/K;->e:I

    return-object v0
.end method

.method public final g(Landroidx/fragment/app/o;)V
    .locals 4

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/o;->z:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroidx/fragment/app/o;->z:Z

    iget-boolean v3, p1, Landroidx/fragment/app/o;->k:Z

    if-eqz v3, :cond_3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    iget-object v1, v0, LM/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/o;->k:Z

    invoke-static {p1}, Landroidx/fragment/app/E;->D(Landroidx/fragment/app/o;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroidx/fragment/app/E;->x:Z

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/E;->S(Landroidx/fragment/app/o;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/o;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/o;->C:Z

    iget-object v1, v1, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v1}, Landroidx/fragment/app/E;->h()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()Z
    .locals 5

    iget v0, p0, Landroidx/fragment/app/E;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/o;

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Landroidx/fragment/app/o;->y:Z

    if-nez v4, :cond_2

    iget-object v3, v3, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v3}, Landroidx/fragment/app/E;->i()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_3
    return v1
.end method

.method public final j()Z
    .locals 7

    iget v0, p0, Landroidx/fragment/app/E;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/o;

    if-eqz v5, :cond_1

    invoke-static {v5}, Landroidx/fragment/app/E;->E(Landroidx/fragment/app/o;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Landroidx/fragment/app/o;->y:Z

    if-nez v6, :cond_2

    iget-object v6, v5, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v6}, Landroidx/fragment/app/E;->j()Z

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-eqz v6, :cond_1

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/E;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/E;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/E;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iput-object v3, p0, Landroidx/fragment/app/E;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public final k()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/E;->A:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/E;->w(Z)Z

    invoke-virtual {p0}, Landroidx/fragment/app/E;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->e()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/E;->s(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iput-object v0, p0, Landroidx/fragment/app/E;->o:LA/b;

    iput-object v0, p0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    iget-object v1, p0, Landroidx/fragment/app/E;->g:Landroidx/activity/m;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/E;->h:Landroidx/fragment/app/x;

    iget-object v1, v1, Landroidx/fragment/app/x;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/a;

    invoke-interface {v2}, Landroidx/activity/a;->cancel()V

    goto :goto_1

    :cond_1
    iput-object v0, p0, Landroidx/fragment/app/E;->g:Landroidx/activity/m;

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/E;->t:LG/a;

    if-eqz v0, :cond_f

    iget-object v1, v0, LG/a;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/d;

    iget-object v2, v1, Landroidx/activity/d;->e:Ljava/util/ArrayList;

    iget-object v0, v0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Landroidx/activity/d;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v3, v1, Landroidx/activity/d;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, v1, Landroidx/activity/d;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroidx/activity/d;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ActivityResultRegistry"

    const-string v5, "Dropping pending result for request "

    const-string v6, ": "

    if-eqz v3, :cond_4

    invoke-static {v5, v0, v6}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, v1, Landroidx/activity/d;->h:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v5, v0, v6}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5
    iget-object v1, v1, Landroidx/activity/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/fragment/app/E;->u:LG/a;

    iget-object v1, v0, LG/a;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/d;

    iget-object v2, v1, Landroidx/activity/d;->e:Ljava/util/ArrayList;

    iget-object v0, v0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Landroidx/activity/d;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v3, v1, Landroidx/activity/d;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v2, v1, Landroidx/activity/d;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroidx/activity/d;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v5, v0, v6}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v2, v1, Landroidx/activity/d;->h:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v5, v0, v6}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_8
    iget-object v1, v1, Landroidx/activity/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/fragment/app/E;->v:LG/a;

    iget-object v1, v0, LG/a;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/d;

    iget-object v2, v1, Landroidx/activity/d;->e:Ljava/util/ArrayList;

    iget-object v0, v0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Landroidx/activity/d;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iget-object v3, v1, Landroidx/activity/d;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v2, v1, Landroidx/activity/d;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroidx/activity/d;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v5, v0, v6}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v2, v1, Landroidx/activity/d;->h:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v5, v0, v6}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_b
    iget-object v1, v1, Landroidx/activity/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_f
    :goto_2
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/o;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/o;->C:Z

    iget-object v1, v1, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v1}, Landroidx/fragment/app/E;->l()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/o;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/E;->m(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final n()Z
    .locals 5

    iget v0, p0, Landroidx/fragment/app/E;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/o;

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Landroidx/fragment/app/o;->y:Z

    if-nez v4, :cond_2

    iget-object v3, v3, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v3}, Landroidx/fragment/app/E;->n()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_3
    return v1
.end method

.method public final o()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/E;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/o;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/o;->y:Z

    if-nez v2, :cond_1

    iget-object v1, v1, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v1}, Landroidx/fragment/app/E;->o()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final p(Landroidx/fragment/app/o;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v1, v0}, LM/d;->e(Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/fragment/app/E;->F(Landroidx/fragment/app/o;)Z

    move-result v0

    iget-object v1, p1, Landroidx/fragment/app/o;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/o;->j:Ljava/lang/Boolean;

    iget-object p1, p1, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {p1}, Landroidx/fragment/app/E;->V()V

    iget-object v0, p1, Landroidx/fragment/app/E;->q:Landroidx/fragment/app/o;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/E;->p(Landroidx/fragment/app/o;)V

    :cond_1
    return-void
.end method

.method public final q(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/o;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/E;->q(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r()Z
    .locals 6

    iget v0, p0, Landroidx/fragment/app/E;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v0}, LM/d;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/o;

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroidx/fragment/app/E;->E(Landroidx/fragment/app/o;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Landroidx/fragment/app/o;->y:Z

    if-nez v5, :cond_2

    iget-object v4, v4, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v4}, Landroidx/fragment/app/E;->r()Z

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final s(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/E;->b:Z

    iget-object v2, p0, Landroidx/fragment/app/E;->c:LM/d;

    iget-object v2, v2, LM/d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/K;

    if-eqz v3, :cond_0

    iput p1, v3, Landroidx/fragment/app/K;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/E;->G(IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/E;->e()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/h;

    invoke-virtual {v2}, Landroidx/fragment/app/h;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/E;->b:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/E;->w(Z)Z

    return-void

    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/E;->b:Z

    throw p1
.end method

.method public final t(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    const-string v0, "    "

    invoke-static {p1, v0}, Landroidx/fragment/app/Q;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, LM/d;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Active Fragments:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/K;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_1a

    iget-object v4, v4, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentId=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroidx/fragment/app/o;->v:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " mContainerId=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroidx/fragment/app/o;->w:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " mTag="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->x:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroidx/fragment/app/o;->a:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " mWho="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " mBackStackNesting="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroidx/fragment/app/o;->q:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAdded="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/o;->k:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mRemoving="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/o;->l:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mFromLayout="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/o;->m:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mInLayout="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/o;->n:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHidden="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/o;->y:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mDetached="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/o;->z:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mMenuVisible="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/o;->B:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mHasMenu="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mRetainInstance="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/o;->A:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mUserVisibleHint="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Landroidx/fragment/app/o;->G:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v6, v4, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    if-eqz v6, :cond_0

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentManager="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v6, v4, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    if-eqz v6, :cond_1

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v6, v4, Landroidx/fragment/app/o;->u:Landroidx/fragment/app/o;

    if-eqz v6, :cond_2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mParentFragment="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->u:Landroidx/fragment/app/o;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v6, v4, Landroidx/fragment/app/o;->f:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mArguments="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v6, v4, Landroidx/fragment/app/o;->b:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedFragmentState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v6, v4, Landroidx/fragment/app/o;->c:Landroid/util/SparseArray;

    if-eqz v6, :cond_5

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v6, v4, Landroidx/fragment/app/o;->d:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewRegistryState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->d:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-object v6, v4, Landroidx/fragment/app/o;->g:Landroidx/fragment/app/o;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    iget-object v6, v4, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    if-eqz v6, :cond_8

    iget-object v8, v4, Landroidx/fragment/app/o;->h:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v6, v6, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v6, v8}, LM/d;->e(Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v6

    goto :goto_1

    :cond_8
    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_9

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mTarget="

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v6, " mTargetRequestCode="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroidx/fragment/app/o;->i:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mPopDirection="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v6, :cond_a

    move v6, v5

    goto :goto_2

    :cond_a
    iget-boolean v6, v6, Landroidx/fragment/app/n;->a:Z

    :goto_2
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v6, v4, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v6, :cond_b

    move v6, v5

    goto :goto_3

    :cond_b
    iget v6, v6, Landroidx/fragment/app/n;->b:I

    :goto_3
    if-eqz v6, :cond_d

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v6, :cond_c

    move v6, v5

    goto :goto_4

    :cond_c
    iget v6, v6, Landroidx/fragment/app/n;->b:I

    :goto_4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_d
    iget-object v6, v4, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v6, :cond_e

    move v6, v5

    goto :goto_5

    :cond_e
    iget v6, v6, Landroidx/fragment/app/n;->c:I

    :goto_5
    if-eqz v6, :cond_10

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v6, :cond_f

    move v6, v5

    goto :goto_6

    :cond_f
    iget v6, v6, Landroidx/fragment/app/n;->c:I

    :goto_6
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_10
    iget-object v6, v4, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v6, :cond_11

    move v6, v5

    goto :goto_7

    :cond_11
    iget v6, v6, Landroidx/fragment/app/n;->d:I

    :goto_7
    if-eqz v6, :cond_13

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v6, :cond_12

    move v6, v5

    goto :goto_8

    :cond_12
    iget v6, v6, Landroidx/fragment/app/n;->d:I

    :goto_8
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_13
    iget-object v6, v4, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v6, :cond_14

    move v6, v5

    goto :goto_9

    :cond_14
    iget v6, v6, Landroidx/fragment/app/n;->e:I

    :goto_9
    if-eqz v6, :cond_16

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v6, :cond_15

    move v6, v5

    goto :goto_a

    :cond_15
    iget v6, v6, Landroidx/fragment/app/n;->e:I

    :goto_a
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_16
    iget-object v6, v4, Landroidx/fragment/app/o;->D:Landroid/view/ViewGroup;

    if-eqz v6, :cond_17

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->D:Landroid/view/ViewGroup;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_17
    iget-object v6, v4, Landroidx/fragment/app/o;->E:Landroid/view/View;

    if-eqz v6, :cond_18

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mView="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroidx/fragment/app/o;->E:Landroid/view/View;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {v4}, Landroidx/fragment/app/o;->h()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_19

    new-instance v6, LG/a;

    invoke-interface {v4}, Landroidx/lifecycle/J;->c()Landroidx/lifecycle/I;

    move-result-object v7

    invoke-direct {v6, v4, v7}, LG/a;-><init>(Landroidx/lifecycle/q;Landroidx/lifecycle/I;)V

    invoke-virtual {v6, v2, p3}, LG/a;->q(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_19
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Child "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v4, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    const-string v6, "  "

    invoke-static {v2, v6}, Landroidx/fragment/app/Q;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p2, p3, p4}, Landroidx/fragment/app/E;->t(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    iget-object p2, v1, LM/d;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_1c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Added Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v5

    :goto_b
    if-ge v1, p4, :cond_1c

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/o;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1c
    iget-object p2, p0, Landroidx/fragment/app/E;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v5

    :goto_c
    if-ge p4, p2, :cond_1d

    iget-object v1, p0, Landroidx/fragment/app/E;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/o;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_c

    :cond_1d
    iget-object p2, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v5

    :goto_d
    if-ge p4, p2, :cond_1e

    iget-object v1, p0, Landroidx/fragment/app/E;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p3, v2}, Landroidx/fragment/app/a;->d(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_d

    :cond_1e
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Back Stack Index: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Landroidx/fragment/app/E;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_1f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_e
    if-ge v5, p4, :cond_1f

    iget-object v0, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/C;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :catchall_0
    move-exception p1

    goto :goto_f

    :cond_1f
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/E;->o:LA/b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz p2, :cond_20

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_20
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/E;->m:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/E;->y:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/E;->z:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/E;->A:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroidx/fragment/app/E;->x:Z

    if-eqz p2, :cond_21

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/fragment/app/E;->x:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_21
    return-void

    :goto_f
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroidx/fragment/app/C;Z)V
    .locals 2

    if-nez p2, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/fragment/app/E;->A:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/E;->y:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/fragment/app/E;->z:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/E;->O()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final v(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/E;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/fragment/app/E;->A:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iget-object v1, v1, Landroidx/fragment/app/r;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroidx/fragment/app/E;->y:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/fragment/app/E;->z:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/E;->C:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/E;->C:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/E;->D:Ljava/util/ArrayList;

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/E;->b:Z

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Z)Z
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/E;->v(Z)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/E;->C:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/E;->D:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v3

    move v6, p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, p1

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v7, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/C;

    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/C;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/E;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iget-object v1, v1, Landroidx/fragment/app/r;->e:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/E;->G:LB/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v6, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/E;->b:Z

    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/E;->C:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/E;->D:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/E;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Landroidx/fragment/app/E;->d()V

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/E;->d()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/E;->V()V

    iget-boolean v1, p0, Landroidx/fragment/app/E;->B:Z

    if-eqz v1, :cond_3

    iput-boolean p1, p0, Landroidx/fragment/app/E;->B:Z

    invoke-virtual {p0}, Landroidx/fragment/app/E;->U()V

    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/E;->c:LM/d;

    iget-object p1, p1, LM/d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v0

    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    iget-boolean v5, v5, Landroidx/fragment/app/a;->o:Z

    iget-object v6, v1, Landroidx/fragment/app/E;->E:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Landroidx/fragment/app/E;->E:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v6, v1, Landroidx/fragment/app/E;->E:Ljava/util/ArrayList;

    iget-object v7, v1, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v7}, LM/d;->n()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v1, Landroidx/fragment/app/E;->q:Landroidx/fragment/app/o;

    move v9, v3

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v9, v4, :cond_13

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/a;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v1, Landroidx/fragment/app/E;->E:Ljava/util/ArrayList;

    const/4 v8, 0x0

    :goto_2
    iget-object v15, v12, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_c

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/L;

    iget v3, v14, Landroidx/fragment/app/L;->a:I

    if-eq v3, v11, :cond_b

    const/4 v11, 0x2

    const/16 v2, 0x9

    if-eq v3, v11, :cond_5

    const/4 v11, 0x3

    if-eq v3, v11, :cond_4

    const/4 v11, 0x6

    if-eq v3, v11, :cond_4

    const/4 v11, 0x7

    if-eq v3, v11, :cond_3

    const/16 v11, 0x8

    if-eq v3, v11, :cond_1

    goto :goto_3

    :cond_1
    new-instance v3, Landroidx/fragment/app/L;

    invoke-direct {v3, v2, v6}, Landroidx/fragment/app/L;-><init>(ILandroidx/fragment/app/o;)V

    invoke-virtual {v15, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    iget-object v2, v14, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    move-object v6, v2

    :cond_2
    :goto_3
    move-object/from16 v19, v7

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_3
    move-object/from16 v19, v7

    const/4 v0, 0x1

    goto/16 :goto_6

    :cond_4
    iget-object v3, v14, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v14, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    if-ne v3, v6, :cond_2

    new-instance v6, Landroidx/fragment/app/L;

    invoke-direct {v6, v2, v3}, Landroidx/fragment/app/L;-><init>(ILandroidx/fragment/app/o;)V

    invoke-virtual {v15, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v19, v7

    const/4 v0, 0x1

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_5
    iget-object v3, v14, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    iget v11, v3, Landroidx/fragment/app/o;->w:I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v2, v17

    const/16 v17, 0x0

    :goto_4
    if-ltz v2, :cond_9

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    check-cast v7, Landroidx/fragment/app/o;

    iget v0, v7, Landroidx/fragment/app/o;->w:I

    if-ne v0, v11, :cond_8

    if-ne v7, v3, :cond_6

    const/4 v0, 0x1

    const/16 v17, 0x1

    goto :goto_5

    :cond_6
    if-ne v7, v6, :cond_7

    new-instance v0, Landroidx/fragment/app/L;

    const/16 v6, 0x9

    invoke-direct {v0, v6, v7}, Landroidx/fragment/app/L;-><init>(ILandroidx/fragment/app/o;)V

    invoke-virtual {v15, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    :cond_7
    new-instance v0, Landroidx/fragment/app/L;

    move-object/from16 v18, v6

    const/4 v6, 0x3

    invoke-direct {v0, v6, v7}, Landroidx/fragment/app/L;-><init>(ILandroidx/fragment/app/o;)V

    iget v6, v14, Landroidx/fragment/app/L;->c:I

    iput v6, v0, Landroidx/fragment/app/L;->c:I

    iget v6, v14, Landroidx/fragment/app/L;->e:I

    iput v6, v0, Landroidx/fragment/app/L;->e:I

    iget v6, v14, Landroidx/fragment/app/L;->d:I

    iput v6, v0, Landroidx/fragment/app/L;->d:I

    iget v6, v14, Landroidx/fragment/app/L;->f:I

    iput v6, v0, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v15, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    add-int/2addr v8, v0

    move-object/from16 v6, v18

    goto :goto_5

    :cond_8
    const/4 v0, 0x1

    :goto_5
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    move-object/from16 v7, v19

    goto :goto_4

    :cond_9
    move-object/from16 v19, v7

    const/4 v0, 0x1

    if-eqz v17, :cond_a

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_a
    iput v0, v14, Landroidx/fragment/app/L;->a:I

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    move-object/from16 v19, v7

    move v0, v11

    :goto_6
    iget-object v2, v14, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v8, v0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v11, v0

    move-object/from16 v7, v19

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v19, v7

    goto :goto_a

    :cond_d
    move-object/from16 v19, v7

    move v0, v11

    iget-object v2, v1, Landroidx/fragment/app/E;->E:Ljava/util/ArrayList;

    iget-object v3, v12, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v0

    :goto_8
    if-ltz v7, :cond_10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/L;

    iget v11, v8, Landroidx/fragment/app/L;->a:I

    if-eq v11, v0, :cond_f

    const/4 v0, 0x3

    if-eq v11, v0, :cond_e

    packed-switch v11, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    iget-object v11, v8, Landroidx/fragment/app/L;->g:Landroidx/lifecycle/l;

    iput-object v11, v8, Landroidx/fragment/app/L;->h:Landroidx/lifecycle/l;

    goto :goto_9

    :pswitch_1
    iget-object v6, v8, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    goto :goto_9

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_9

    :cond_e
    :pswitch_3
    iget-object v8, v8, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    const/4 v0, 0x3

    :pswitch_4
    iget-object v8, v8, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v7, v7, -0x1

    const/4 v0, 0x1

    goto :goto_8

    :cond_10
    :goto_a
    if-nez v10, :cond_12

    iget-boolean v0, v12, Landroidx/fragment/app/a;->g:Z

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    goto :goto_c

    :cond_12
    :goto_b
    const/4 v10, 0x1

    :goto_c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v7, v19

    goto/16 :goto_1

    :cond_13
    move-object/from16 v19, v7

    iget-object v0, v1, Landroidx/fragment/app/E;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_16

    iget v0, v1, Landroidx/fragment/app/E;->m:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_16

    move/from16 v0, p3

    :goto_d
    if-ge v0, v4, :cond_16

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-object v3, v3, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/L;

    iget-object v5, v5, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    if-eqz v5, :cond_14

    iget-object v6, v5, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    if-eqz v6, :cond_14

    invoke-virtual {v1, v5}, Landroidx/fragment/app/E;->f(Landroidx/fragment/app/o;)Landroidx/fragment/app/K;

    move-result-object v5

    move-object/from16 v6, v19

    invoke-virtual {v6, v5}, LM/d;->t(Landroidx/fragment/app/K;)V

    goto :goto_f

    :cond_14
    move-object/from16 v6, v19

    :goto_f
    move-object/from16 v19, v6

    goto :goto_e

    :cond_15
    move-object/from16 v6, v19

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    move-object/from16 v2, p1

    move/from16 v0, p3

    :goto_10
    const/4 v3, -0x1

    if-ge v0, v4, :cond_22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    move-object/from16 v6, p2

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v5, v3}, Landroidx/fragment/app/a;->c(I)V

    iget-object v3, v5, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_11
    if-ltz v7, :cond_21

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/L;

    iget-object v10, v9, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    if-eqz v10, :cond_1c

    iget-object v11, v10, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v11, :cond_17

    goto :goto_12

    :cond_17
    invoke-virtual {v10}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    move-result-object v11

    iput-boolean v8, v11, Landroidx/fragment/app/n;->a:Z

    :goto_12
    iget v11, v5, Landroidx/fragment/app/a;->f:I

    const/16 v12, 0x2002

    const/16 v13, 0x1001

    if-eq v11, v13, :cond_1a

    const/16 v14, 0x1003

    if-eq v11, v14, :cond_19

    if-eq v11, v12, :cond_18

    const/4 v12, 0x0

    goto :goto_13

    :cond_18
    move v12, v13

    goto :goto_13

    :cond_19
    move v12, v14

    :cond_1a
    :goto_13
    iget-object v11, v10, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v11, :cond_1b

    if-nez v12, :cond_1b

    goto :goto_14

    :cond_1b
    invoke-virtual {v10}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    iget-object v11, v10, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    iput v12, v11, Landroidx/fragment/app/n;->f:I

    :goto_14
    invoke-virtual {v10}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    iget-object v11, v10, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1c
    iget v11, v9, Landroidx/fragment/app/L;->a:I

    iget-object v12, v5, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/E;

    packed-switch v11, :pswitch_data_1

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v9, Landroidx/fragment/app/L;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    iget-object v9, v9, Landroidx/fragment/app/L;->g:Landroidx/lifecycle/l;

    invoke-virtual {v12, v10, v9}, Landroidx/fragment/app/E;->Q(Landroidx/fragment/app/o;Landroidx/lifecycle/l;)V

    goto :goto_15

    :pswitch_7
    invoke-virtual {v12, v10}, Landroidx/fragment/app/E;->R(Landroidx/fragment/app/o;)V

    goto :goto_15

    :pswitch_8
    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/fragment/app/E;->R(Landroidx/fragment/app/o;)V

    goto :goto_15

    :pswitch_9
    iget v11, v9, Landroidx/fragment/app/L;->c:I

    iget v13, v9, Landroidx/fragment/app/L;->d:I

    iget v14, v9, Landroidx/fragment/app/L;->e:I

    iget v9, v9, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v12, v10, v8}, Landroidx/fragment/app/E;->P(Landroidx/fragment/app/o;Z)V

    invoke-virtual {v12, v10}, Landroidx/fragment/app/E;->g(Landroidx/fragment/app/o;)V

    goto :goto_15

    :pswitch_a
    iget v11, v9, Landroidx/fragment/app/L;->c:I

    iget v13, v9, Landroidx/fragment/app/L;->d:I

    iget v14, v9, Landroidx/fragment/app/L;->e:I

    iget v9, v9, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v12, v10}, Landroidx/fragment/app/E;->c(Landroidx/fragment/app/o;)V

    goto :goto_15

    :pswitch_b
    iget v11, v9, Landroidx/fragment/app/L;->c:I

    iget v13, v9, Landroidx/fragment/app/L;->d:I

    iget v14, v9, Landroidx/fragment/app/L;->e:I

    iget v9, v9, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v12, v10, v8}, Landroidx/fragment/app/E;->P(Landroidx/fragment/app/o;Z)V

    invoke-virtual {v12, v10}, Landroidx/fragment/app/E;->C(Landroidx/fragment/app/o;)V

    goto :goto_15

    :pswitch_c
    iget v11, v9, Landroidx/fragment/app/L;->c:I

    iget v13, v9, Landroidx/fragment/app/L;->d:I

    iget v14, v9, Landroidx/fragment/app/L;->e:I

    iget v9, v9, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/fragment/app/E;->T(Landroidx/fragment/app/o;)V

    goto :goto_15

    :pswitch_d
    iget v11, v9, Landroidx/fragment/app/L;->c:I

    iget v13, v9, Landroidx/fragment/app/L;->d:I

    iget v14, v9, Landroidx/fragment/app/L;->e:I

    iget v9, v9, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v12, v10}, Landroidx/fragment/app/E;->a(Landroidx/fragment/app/o;)Landroidx/fragment/app/K;

    goto :goto_15

    :pswitch_e
    iget v11, v9, Landroidx/fragment/app/L;->c:I

    iget v13, v9, Landroidx/fragment/app/L;->d:I

    iget v14, v9, Landroidx/fragment/app/L;->e:I

    iget v9, v9, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v10, v11, v13, v14, v9}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v12, v10, v8}, Landroidx/fragment/app/E;->P(Landroidx/fragment/app/o;Z)V

    invoke-virtual {v12, v10}, Landroidx/fragment/app/E;->K(Landroidx/fragment/app/o;)V

    :goto_15
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_11

    :cond_1d
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroidx/fragment/app/a;->c(I)V

    iget-object v3, v5, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_16
    if-ge v9, v7, :cond_21

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/L;

    iget-object v11, v10, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    if-eqz v11, :cond_20

    iget-object v12, v11, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v12, :cond_1e

    goto :goto_17

    :cond_1e
    invoke-virtual {v11}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    move-result-object v12

    iput-boolean v8, v12, Landroidx/fragment/app/n;->a:Z

    :goto_17
    iget v12, v5, Landroidx/fragment/app/a;->f:I

    iget-object v13, v11, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    if-nez v13, :cond_1f

    if-nez v12, :cond_1f

    goto :goto_18

    :cond_1f
    invoke-virtual {v11}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    iget-object v13, v11, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    iput v12, v13, Landroidx/fragment/app/n;->f:I

    :goto_18
    invoke-virtual {v11}, Landroidx/fragment/app/o;->f()Landroidx/fragment/app/n;

    iget-object v12, v11, Landroidx/fragment/app/o;->H:Landroidx/fragment/app/n;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_20
    iget v12, v10, Landroidx/fragment/app/L;->a:I

    iget-object v13, v5, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/E;

    packed-switch v12, :pswitch_data_2

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v10, Landroidx/fragment/app/L;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    iget-object v10, v10, Landroidx/fragment/app/L;->h:Landroidx/lifecycle/l;

    invoke-virtual {v13, v11, v10}, Landroidx/fragment/app/E;->Q(Landroidx/fragment/app/o;Landroidx/lifecycle/l;)V

    goto :goto_19

    :pswitch_11
    const/4 v10, 0x0

    invoke-virtual {v13, v10}, Landroidx/fragment/app/E;->R(Landroidx/fragment/app/o;)V

    goto :goto_19

    :pswitch_12
    invoke-virtual {v13, v11}, Landroidx/fragment/app/E;->R(Landroidx/fragment/app/o;)V

    goto :goto_19

    :pswitch_13
    iget v12, v10, Landroidx/fragment/app/L;->c:I

    iget v14, v10, Landroidx/fragment/app/L;->d:I

    iget v15, v10, Landroidx/fragment/app/L;->e:I

    iget v10, v10, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v13, v11, v8}, Landroidx/fragment/app/E;->P(Landroidx/fragment/app/o;Z)V

    invoke-virtual {v13, v11}, Landroidx/fragment/app/E;->c(Landroidx/fragment/app/o;)V

    goto :goto_19

    :pswitch_14
    iget v12, v10, Landroidx/fragment/app/L;->c:I

    iget v14, v10, Landroidx/fragment/app/L;->d:I

    iget v15, v10, Landroidx/fragment/app/L;->e:I

    iget v10, v10, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v13, v11}, Landroidx/fragment/app/E;->g(Landroidx/fragment/app/o;)V

    goto :goto_19

    :pswitch_15
    iget v12, v10, Landroidx/fragment/app/L;->c:I

    iget v14, v10, Landroidx/fragment/app/L;->d:I

    iget v15, v10, Landroidx/fragment/app/L;->e:I

    iget v10, v10, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v13, v11, v8}, Landroidx/fragment/app/E;->P(Landroidx/fragment/app/o;Z)V

    invoke-static {v11}, Landroidx/fragment/app/E;->T(Landroidx/fragment/app/o;)V

    goto :goto_19

    :pswitch_16
    iget v12, v10, Landroidx/fragment/app/L;->c:I

    iget v14, v10, Landroidx/fragment/app/L;->d:I

    iget v15, v10, Landroidx/fragment/app/L;->e:I

    iget v10, v10, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v13, v11}, Landroidx/fragment/app/E;->C(Landroidx/fragment/app/o;)V

    goto :goto_19

    :pswitch_17
    iget v12, v10, Landroidx/fragment/app/L;->c:I

    iget v14, v10, Landroidx/fragment/app/L;->d:I

    iget v15, v10, Landroidx/fragment/app/L;->e:I

    iget v10, v10, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v13, v11}, Landroidx/fragment/app/E;->K(Landroidx/fragment/app/o;)V

    goto :goto_19

    :pswitch_18
    iget v12, v10, Landroidx/fragment/app/L;->c:I

    iget v14, v10, Landroidx/fragment/app/L;->d:I

    iget v15, v10, Landroidx/fragment/app/L;->e:I

    iget v10, v10, Landroidx/fragment/app/L;->f:I

    invoke-virtual {v11, v12, v14, v15, v10}, Landroidx/fragment/app/o;->y(IIII)V

    invoke-virtual {v13, v11, v8}, Landroidx/fragment/app/E;->P(Landroidx/fragment/app/o;Z)V

    invoke-virtual {v13, v11}, Landroidx/fragment/app/E;->a(Landroidx/fragment/app/o;)Landroidx/fragment/app/K;

    :goto_19
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_16

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    :cond_22
    move-object/from16 v6, p2

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v5, p3

    :goto_1a
    if-ge v5, v4, :cond_27

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    if-eqz v0, :cond_24

    iget-object v8, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_1b
    if-ltz v8, :cond_26

    iget-object v9, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/L;

    iget-object v9, v9, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    if-eqz v9, :cond_23

    invoke-virtual {v1, v9}, Landroidx/fragment/app/E;->f(Landroidx/fragment/app/o;)Landroidx/fragment/app/K;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/K;->k()V

    :cond_23
    add-int/lit8 v8, v8, -0x1

    goto :goto_1b

    :cond_24
    iget-object v7, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_25
    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/L;

    iget-object v8, v8, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    if-eqz v8, :cond_25

    invoke-virtual {v1, v8}, Landroidx/fragment/app/E;->f(Landroidx/fragment/app/o;)Landroidx/fragment/app/K;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/K;->k()V

    goto :goto_1c

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_27
    iget v5, v1, Landroidx/fragment/app/E;->m:I

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Landroidx/fragment/app/E;->G(IZ)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move/from16 v7, p3

    :goto_1d
    if-ge v7, v4, :cond_2a

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    iget-object v8, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_28
    :goto_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/L;

    iget-object v9, v9, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    if-eqz v9, :cond_28

    iget-object v9, v9, Landroidx/fragment/app/o;->D:Landroid/view/ViewGroup;

    if-eqz v9, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/E;->B()Lp0/e;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/fragment/app/h;->f(Landroid/view/ViewGroup;Lp0/e;)Landroidx/fragment/app/h;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_2a
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/h;

    iput-boolean v0, v7, Landroidx/fragment/app/h;->d:Z

    iget-object v8, v7, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v7}, Landroidx/fragment/app/h;->g()V

    const/4 v9, 0x0

    iput-boolean v9, v7, Landroidx/fragment/app/h;->e:Z

    iget-object v10, v7, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_20
    if-ltz v10, :cond_2c

    iget-object v11, v7, Landroidx/fragment/app/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/P;

    iget-object v12, v11, Landroidx/fragment/app/P;->c:Landroidx/fragment/app/o;

    iget-object v12, v12, Landroidx/fragment/app/o;->E:Landroid/view/View;

    invoke-static {v12}, Landroidx/fragment/app/Q;->c(Landroid/view/View;)I

    move-result v12

    iget v13, v11, Landroidx/fragment/app/P;->a:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2b

    if-eq v12, v14, :cond_2b

    iget-object v10, v11, Landroidx/fragment/app/P;->c:Landroidx/fragment/app/o;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v9, v7, Landroidx/fragment/app/h;->e:Z

    goto :goto_21

    :catchall_0
    move-exception v0

    goto :goto_22

    :cond_2b
    add-int/lit8 v10, v10, -0x1

    goto :goto_20

    :cond_2c
    :goto_21
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Landroidx/fragment/app/h;->c()V

    goto :goto_1f

    :goto_22
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2d
    move/from16 v0, p3

    :goto_23
    if-ge v0, v4, :cond_2f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2e

    iget v7, v5, Landroidx/fragment/app/a;->r:I

    if-ltz v7, :cond_2e

    iput v3, v5, Landroidx/fragment/app/a;->r:I

    :cond_2e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_2f
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final y(I)Landroidx/fragment/app/o;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/E;->c:LM/d;

    iget-object v1, v0, LM/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/o;

    if-eqz v3, :cond_0

    iget v4, v3, Landroidx/fragment/app/o;->v:I

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/K;

    if-eqz v1, :cond_2

    iget-object v3, v1, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    iget v1, v3, Landroidx/fragment/app/o;->v:I

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public final z(Landroidx/fragment/app/o;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/o;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Landroidx/fragment/app/o;->w:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/E;->o:LA/b;

    invoke-virtual {v0}, LA/b;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/E;->o:LA/b;

    iget p1, p1, Landroidx/fragment/app/o;->w:I

    invoke-virtual {v0, p1}, LA/b;->N(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method
