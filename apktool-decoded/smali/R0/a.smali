.class public final LR0/a;
.super LP0/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LP0/i;


# instance fields
.field public final b:Lkotlinx/coroutines/scheduling/j;

.field public final c:I

.field public final d:LR0/b;

.field public final e:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/scheduling/j;I)V
    .locals 0

    invoke-direct {p0}, LP0/c;-><init>()V

    iput-object p1, p0, LR0/a;->b:Lkotlinx/coroutines/scheduling/j;

    iput p2, p0, LR0/a;->c:I

    instance-of p2, p1, LP0/i;

    if-eqz p2, :cond_0

    check-cast p1, LP0/i;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget p1, LP0/h;->a:I

    :cond_1
    new-instance p1, LR0/b;

    invoke-direct {p1}, LR0/b;-><init>()V

    iput-object p1, p0, LR0/a;->d:LR0/b;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lz0/i;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p1, p0, LR0/a;->d:LR0/b;

    invoke-virtual {p1, p2}, LR0/b;->a(Ljava/lang/Runnable;)Z

    iget p1, p0, LR0/a;->runningWorkers:I

    iget p2, p0, LR0/a;->c:I

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LR0/a;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget p2, p0, LR0/a;->runningWorkers:I

    iget v0, p0, LR0/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p2, v0, :cond_1

    monitor-exit p1

    goto :goto_0

    :cond_1
    :try_start_1
    iget p2, p0, LR0/a;->runningWorkers:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, LR0/a;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    iget-object p1, p0, LR0/a;->b:Lkotlinx/coroutines/scheduling/j;

    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/scheduling/j;->a(Lz0/i;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    iget-object v2, p0, LR0/a;->d:LR0/b;

    invoke-virtual {v2}, LR0/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v2}, LP0/f;->a(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v0, p0, LR0/a;->b:Lkotlinx/coroutines/scheduling/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LR0/a;->b:Lkotlinx/coroutines/scheduling/j;

    invoke-virtual {v0, p0, p0}, Lkotlinx/coroutines/scheduling/j;->a(Lz0/i;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, LR0/a;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, LR0/a;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LR0/a;->runningWorkers:I

    iget-object v2, p0, LR0/a;->d:LR0/b;

    invoke-virtual {v2}, LR0/b;->c()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    iget v2, p0, LR0/a;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LR0/a;->runningWorkers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
