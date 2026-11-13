.class public final LT/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LT/Q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT/Q;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, LT/U;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LT/S;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, LT/S;-><init>(Landroid/car/hardware/property/CarPropertyManager;III)V

    const-wide/16 p0, 0x320

    invoke-static {p0, p1, v0}, LT/U;->f(JLH0/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static b(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Float;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LT/S;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LT/S;-><init>(Landroid/car/hardware/property/CarPropertyManager;III)V

    const-wide/16 p0, 0x320

    invoke-static {p0, p1, v0}, LT/U;->f(JLH0/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LT/S;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LT/S;-><init>(Landroid/car/hardware/property/CarPropertyManager;III)V

    const-wide/16 p0, 0x320

    invoke-static {p0, p1, v0}, LT/U;->f(JLH0/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static d(Landroid/car/hardware/property/CarPropertyManager;II)Landroid/car/hardware/CarPropertyValue;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LT/S;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, p2, v1}, LT/S;-><init>(Landroid/car/hardware/property/CarPropertyManager;III)V

    const-wide/16 p0, 0x320

    invoke-static {p0, p1, v0}, LT/U;->f(JLH0/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/CarPropertyValue;

    return-object p0
.end method

.method public static e(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Object;
    .locals 2

    const-string v0, "cpm"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LT/S;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, LT/S;-><init>(Landroid/car/hardware/property/CarPropertyManager;III)V

    const-wide/16 p0, 0x320

    invoke-static {p0, p1, v0}, LT/U;->f(JLH0/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static f(JLH0/a;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LT/U;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, LT/T;

    invoke-direct {v2, p2}, LT/T;-><init>(LH0/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p0, p1, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, LT/G3;->d:LT/F3;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    sget-object v8, LT/G3;->a:LT/G3;

    invoke-virtual {v8, v5, v6, v7, v3}, LT/G3;->c(LT/F3;JZ)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    goto :goto_0

    :catchall_0
    sget-object p0, LT/G3;->d:LT/F3;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v1

    sget-object v1, LT/G3;->a:LT/G3;

    invoke-virtual {v1, p0, p1, p2, v3}, LT/G3;->c(LT/F3;JZ)V

    goto :goto_0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "leitura estourou "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms \u2014 devolvendo null (binder possivelmente preso)"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarProps"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-interface {p2, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    sget-object p1, LT/G3;->a:LT/G3;

    sget-object p2, LT/G3;->d:LT/F3;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, p2, v3, v4, p0}, LT/G3;->c(LT/F3;JZ)V

    :catchall_1
    :goto_0
    return-object v0
.end method
