.class public abstract LP0/l;
.super LP0/m;
.source "SourceFile"

# interfaces
.implements LP0/i;


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue"

    const-class v1, LP0/l;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LP0/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LP0/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LP0/l;->_queue:Ljava/lang/Object;

    iput-object v0, p0, LP0/l;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, LP0/l;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, LP0/l;->_delayed:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, LP0/l;->_queue:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, v0, LR0/d;

    if-eqz v2, :cond_1

    check-cast v0, LR0/d;

    invoke-virtual {v0}, LR0/d;->d()Z

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v2, LP0/n;->a:LA/e;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public final b()J
    .locals 7

    iget-object v0, p0, LP0/l;->_delayed:Ljava/lang/Object;

    if-nez v0, :cond_e

    :goto_0
    iget-object v0, p0, LP0/l;->_queue:Ljava/lang/Object;

    sget-object v1, LP0/n;->a:LA/e;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v0, LR0/d;

    if-eqz v3, :cond_4

    move-object v2, v0

    check-cast v2, LR0/d;

    invoke-virtual {v2}, LR0/d;->f()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, LR0/d;->g:LA/e;

    if-eq v3, v4, :cond_1

    move-object v2, v3

    check-cast v2, Ljava/lang/Runnable;

    goto :goto_1

    :cond_1
    sget-object v3, LP0/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2}, LR0/d;->e()LR0/d;

    move-result-object v4

    :cond_2
    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    sget-object v3, LP0/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_6
    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    :goto_1
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-wide v3

    :cond_7
    iget-object v0, p0, LP0/l;->_queue:Ljava/lang/Object;

    const-wide v5, 0x7fffffffffffffffL

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    instance-of v2, v0, LR0/d;

    if-eqz v2, :cond_b

    check-cast v0, LR0/d;

    invoke-virtual {v0}, LR0/d;->d()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    :goto_2
    iget-object v0, p0, LP0/l;->_delayed:Ljava/lang/Object;

    if-nez v0, :cond_a

    :goto_3
    move-wide v3, v5

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_b
    if-ne v0, v1, :cond_c

    goto :goto_3

    :cond_c
    :goto_4
    return-wide v3

    :cond_d
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_6

    goto :goto_0

    :cond_e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LP0/l;->_queue:Ljava/lang/Object;

    iput-object v0, p0, LP0/l;->_delayed:Ljava/lang/Object;

    return-void
.end method
