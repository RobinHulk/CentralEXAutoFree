.class public abstract LT/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LT/Q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LT/Q;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newCachedThreadPool(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    sput-object v0, LT/U0;->b:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    return-void
.end method

.method public static a(LH0/a;)V
    .locals 3

    :try_start_0
    sget-object v0, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LT/T0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LT/T0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static b(Ljava/lang/String;LH0/a;)V
    .locals 4

    sget-object v0, LT/U0;->b:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, LT/H;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3, p0}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
