.class public final Landroidx/lifecycle/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ll/a;

.field public b:Landroidx/lifecycle/l;

.field public final c:Ljava/lang/ref/WeakReference;

.field public d:I

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ll/a;

    invoke-direct {v0}, Ll/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/s;->a:Ll/a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/s;->d:I

    iput-boolean v0, p0, Landroidx/lifecycle/s;->e:Z

    iput-boolean v0, p0, Landroidx/lifecycle/s;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/s;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroidx/lifecycle/l;->b:Landroidx/lifecycle/l;

    iput-object p1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/s;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/p;)V
    .locals 11

    iget-object v0, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "addObserver"

    invoke-virtual {p0, v3}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    sget-object v4, Landroidx/lifecycle/l;->a:Landroidx/lifecycle/l;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Landroidx/lifecycle/l;->b:Landroidx/lifecycle/l;

    :goto_0
    new-instance v3, Landroidx/lifecycle/r;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sget-object v5, Landroidx/lifecycle/t;->a:Ljava/util/HashMap;

    instance-of v5, p1, Landroidx/lifecycle/o;

    instance-of v6, p1, Landroidx/lifecycle/d;

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    new-instance v5, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v6, p1

    check-cast v6, Landroidx/lifecycle/d;

    move-object v9, p1

    check-cast v9, Landroidx/lifecycle/o;

    invoke-direct {v5, v6, v9}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/d;Landroidx/lifecycle/o;)V

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_2

    new-instance v5, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v6, p1

    check-cast v6, Landroidx/lifecycle/d;

    invoke-direct {v5, v6, v1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/d;Landroidx/lifecycle/o;)V

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    move-object v5, p1

    check-cast v5, Landroidx/lifecycle/o;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Landroidx/lifecycle/t;->c(Ljava/lang/Class;)I

    move-result v6

    if-ne v6, v7, :cond_6

    sget-object v6, Landroidx/lifecycle/t;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_4

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;

    invoke-static {v5, p1}, Landroidx/lifecycle/t;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/p;)V

    new-instance v5, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroidx/lifecycle/g;

    move v9, v8

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Constructor;

    invoke-static {v10, p1}, Landroidx/lifecycle/t;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/p;)V

    aput-object v1, v6, v9

    add-int/2addr v9, v2

    goto :goto_1

    :cond_5
    new-instance v5, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {v5, v6}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/g;)V

    goto :goto_2

    :cond_6
    new-instance v5, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v5, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Landroidx/lifecycle/p;)V

    :goto_2
    iput-object v5, v3, Landroidx/lifecycle/r;->b:Landroidx/lifecycle/o;

    iput-object v4, v3, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    iget-object v4, p0, Landroidx/lifecycle/s;->a:Ll/a;

    invoke-virtual {v4, p1}, Ll/a;->a(Ljava/lang/Object;)Ll/c;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v4, v5, Ll/c;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-object v5, v4, Ll/a;->e:Ljava/util/HashMap;

    new-instance v6, Ll/c;

    invoke-direct {v6, p1, v3}, Ll/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v9, v4, Ll/f;->d:I

    add-int/2addr v9, v2

    iput v9, v4, Ll/f;->d:I

    iget-object v9, v4, Ll/f;->b:Ll/c;

    if-nez v9, :cond_8

    iput-object v6, v4, Ll/f;->a:Ll/c;

    iput-object v6, v4, Ll/f;->b:Ll/c;

    goto :goto_3

    :cond_8
    iput-object v6, v9, Ll/c;->c:Ll/c;

    iput-object v9, v6, Ll/c;->d:Ll/c;

    iput-object v6, v4, Ll/f;->b:Ll/c;

    :goto_3
    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    :goto_4
    check-cast v4, Landroidx/lifecycle/r;

    if-eqz v4, :cond_9

    return-void

    :cond_9
    iget-object v4, p0, Landroidx/lifecycle/s;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/q;

    if-nez v4, :cond_a

    return-void

    :cond_a
    iget v5, p0, Landroidx/lifecycle/s;->d:I

    if-nez v5, :cond_b

    iget-boolean v5, p0, Landroidx/lifecycle/s;->e:Z

    if-eqz v5, :cond_c

    :cond_b
    move v8, v2

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->b(Landroidx/lifecycle/p;)Landroidx/lifecycle/l;

    move-result-object v5

    iget v6, p0, Landroidx/lifecycle/s;->d:I

    add-int/2addr v6, v2

    iput v6, p0, Landroidx/lifecycle/s;->d:I

    :goto_5
    iget-object v6, v3, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v6, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_11

    iget-object v5, p0, Landroidx/lifecycle/s;->a:Ll/a;

    iget-object v5, v5, Ll/a;->e:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v3, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v3, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eq v5, v2, :cond_f

    if-eq v5, v7, :cond_e

    const/4 v6, 0x3

    if-eq v5, v6, :cond_d

    move-object v5, v1

    goto :goto_6

    :cond_d
    sget-object v5, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    goto :goto_6

    :cond_e
    sget-object v5, Landroidx/lifecycle/k;->ON_START:Landroidx/lifecycle/k;

    goto :goto_6

    :cond_f
    sget-object v5, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    :goto_6
    if-eqz v5, :cond_10

    invoke-virtual {v3, v4, v5}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/q;Landroidx/lifecycle/k;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->b(Landroidx/lifecycle/p;)Landroidx/lifecycle/l;

    move-result-object v5

    goto :goto_5

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no event up from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    if-nez v8, :cond_12

    invoke-virtual {p0}, Landroidx/lifecycle/s;->g()V

    :cond_12
    iget p1, p0, Landroidx/lifecycle/s;->d:I

    sub-int/2addr p1, v2

    iput p1, p0, Landroidx/lifecycle/s;->d:I

    return-void
.end method

.method public final b(Landroidx/lifecycle/p;)Landroidx/lifecycle/l;
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/s;->a:Ll/a;

    iget-object v0, v0, Ll/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll/c;

    iget-object p1, p1, Ll/c;->d:Ll/c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Ll/c;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/r;

    iget-object p1, p1, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/l;

    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, p1

    :goto_3
    return-object v2
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/lifecycle/s;->h:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lk/a;->T()Lk/a;

    move-result-object v0

    iget-object v0, v0, Lk/a;->a:Ljava/lang/Object;

    check-cast v0, Lk/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method "

    const-string v2, " must be called on the main thread"

    invoke-static {v1, p1, v2}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Landroidx/lifecycle/k;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/k;->a()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->e(Landroidx/lifecycle/l;)V

    return-void
.end method

.method public final e(Landroidx/lifecycle/l;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroidx/lifecycle/l;->b:Landroidx/lifecycle/l;

    sget-object v2, Landroidx/lifecycle/l;->a:Landroidx/lifecycle/l;

    if-ne v0, v1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no event down from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    iget-boolean p1, p0, Landroidx/lifecycle/s;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/lifecycle/s;->d:I

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/s;->e:Z

    invoke-virtual {p0}, Landroidx/lifecycle/s;->g()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/s;->e:Z

    iget-object p1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    if-ne p1, v2, :cond_4

    new-instance p1, Ll/a;

    invoke-direct {p1}, Ll/a;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/s;->a:Ll/a;

    :cond_4
    return-void

    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/s;->f:Z

    return-void
.end method

.method public final f(Landroidx/lifecycle/p;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/s;->a:Ll/a;

    invoke-virtual {v0, p1}, Ll/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g()V
    .locals 11

    iget-object v0, p0, Landroidx/lifecycle/s;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/q;

    if-eqz v0, :cond_e

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/s;->a:Ll/a;

    iget v2, v1, Ll/f;->d:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Ll/f;->a:Ll/c;

    iget-object v2, v2, Ll/c;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroidx/lifecycle/r;

    iget-object v4, v4, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    iget-object v1, v1, Ll/f;->b:Ll/c;

    iget-object v1, v1, Ll/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/r;

    iget-object v1, v1, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    if-ne v4, v1, :cond_2

    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/s;->f:Z

    return-void

    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/s;->f:Z

    iget-object v1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    check-cast v2, Landroidx/lifecycle/r;

    iget-object v2, v2, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-gez v1, :cond_8

    iget-object v1, p0, Landroidx/lifecycle/s;->a:Ll/a;

    new-instance v6, Ll/b;

    iget-object v7, v1, Ll/f;->b:Ll/c;

    iget-object v8, v1, Ll/f;->a:Ll/c;

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Ll/b;-><init>(Ll/c;Ll/c;I)V

    iget-object v1, v1, Ll/f;->c:Ljava/util/WeakHashMap;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v6}, Ll/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroidx/lifecycle/s;->f:Z

    if-nez v1, :cond_8

    invoke-virtual {v6}, Ll/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/r;

    :goto_1
    iget-object v8, v7, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    iget-object v9, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-lez v8, :cond_3

    iget-boolean v8, p0, Landroidx/lifecycle/s;->f:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Landroidx/lifecycle/s;->a:Ll/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/lifecycle/p;

    iget-object v8, v8, Ll/a;->e:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v7, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eq v8, v4, :cond_6

    if-eq v8, v3, :cond_5

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    move-object v8, v2

    goto :goto_2

    :cond_4
    sget-object v8, Landroidx/lifecycle/k;->ON_PAUSE:Landroidx/lifecycle/k;

    goto :goto_2

    :cond_5
    sget-object v8, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    goto :goto_2

    :cond_6
    sget-object v8, Landroidx/lifecycle/k;->ON_DESTROY:Landroidx/lifecycle/k;

    :goto_2
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroidx/lifecycle/k;->a()Landroidx/lifecycle/l;

    move-result-object v9

    iget-object v10, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0, v8}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/q;Landroidx/lifecycle/k;)V

    iget-object v8, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no event down from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v1, p0, Landroidx/lifecycle/s;->a:Ll/a;

    iget-object v1, v1, Ll/f;->b:Ll/c;

    iget-boolean v6, p0, Landroidx/lifecycle/s;->f:Z

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    iget-object v6, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    iget-object v1, v1, Ll/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/r;

    iget-object v1, v1, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v6, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/s;->a:Ll/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ll/d;

    invoke-direct {v6, v1}, Ll/d;-><init>(Ll/f;)V

    iget-object v1, v1, Ll/f;->c:Ljava/util/WeakHashMap;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v6}, Ll/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/lifecycle/s;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ll/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/r;

    :goto_3
    iget-object v8, v7, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    iget-object v9, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-gez v8, :cond_9

    iget-boolean v8, p0, Landroidx/lifecycle/s;->f:Z

    if-nez v8, :cond_9

    iget-object v8, p0, Landroidx/lifecycle/s;->a:Ll/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/lifecycle/p;

    iget-object v8, v8, Ll/a;->e:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v7, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    iget-object v9, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eq v8, v5, :cond_c

    if-eq v8, v4, :cond_b

    if-eq v8, v3, :cond_a

    move-object v8, v2

    goto :goto_4

    :cond_a
    sget-object v8, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    goto :goto_4

    :cond_b
    sget-object v8, Landroidx/lifecycle/k;->ON_START:Landroidx/lifecycle/k;

    goto :goto_4

    :cond_c
    sget-object v8, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    :goto_4
    if-eqz v8, :cond_d

    invoke-virtual {v7, v0, v8}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/q;Landroidx/lifecycle/k;)V

    iget-object v8, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no event up from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
