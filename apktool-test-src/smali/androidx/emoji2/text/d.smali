.class public final Landroidx/emoji2/text/d;
.super LA/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:Landroidx/emoji2/text/e;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/d;->c:Landroidx/emoji2/text/e;

    return-void
.end method


# virtual methods
.method public final M(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/d;->c:Landroidx/emoji2/text/e;

    iget-object v0, v0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/i;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/i;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final P(Landroidx/emoji2/text/q;)V
    .locals 4

    iget-object v0, p0, Landroidx/emoji2/text/d;->c:Landroidx/emoji2/text/e;

    iput-object p1, v0, Landroidx/emoji2/text/e;->c:Landroidx/emoji2/text/q;

    new-instance p1, LG/a;

    iget-object v1, v0, Landroidx/emoji2/text/e;->c:Landroidx/emoji2/text/q;

    new-instance v2, Lp0/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, v0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/i;

    iget-object v3, v3, Landroidx/emoji2/text/i;->h:Landroidx/emoji2/text/c;

    invoke-direct {p1, v1, v2, v3}, LG/a;-><init>(Landroidx/emoji2/text/q;Lp0/e;Landroidx/emoji2/text/c;)V

    iput-object p1, v0, Landroidx/emoji2/text/e;->b:LG/a;

    iget-object p1, v0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput v1, p1, Landroidx/emoji2/text/i;->c:I

    iget-object v1, p1, Landroidx/emoji2/text/i;->b:Lm/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p1, Landroidx/emoji2/text/i;->b:Lm/c;

    invoke-virtual {v1}, Lm/c;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p1, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p1, Landroidx/emoji2/text/i;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/g;

    iget p1, p1, Landroidx/emoji2/text/i;->c:I

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Landroidx/emoji2/text/g;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p1, p1, Landroidx/emoji2/text/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
