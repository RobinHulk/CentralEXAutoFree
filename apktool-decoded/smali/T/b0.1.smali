.class public final LT/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LT/b0;

.field public static final b:Ljava/util/UUID;

.field public static c:Landroid/bluetooth/BluetoothServerSocket;

.field public static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LT/b0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LT/b0;->a:LT/b0;

    const-string v0, "1a29eaab-0173-bc88-1c45-4de166248d2d"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LT/b0;->b:Ljava/util/UUID;

    return-void
.end method

.method public static a(J)Z
    .locals 2

    :goto_0
    sget-boolean v0, LT/b0;->d:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr p0, v0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_0
    sget-boolean p0, LT/b0;->d:Z

    return p0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, LT/b0;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, LT/b0;->d:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/a0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LT/a0;-><init>(I)V

    const-string v3, "carplay-sdp"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v1, "CarplaySdp"

    const-string v2, "an\u00fancio SDP de CarPlay iniciado"

    invoke-virtual {v0, v1, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, LT/b0;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, LT/b0;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, LT/b0;->c:Landroid/bluetooth/BluetoothServerSocket;

    const-string v0, "CarplaySdp"

    const-string v1, "an\u00fancio SDP de CarPlay parado"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
