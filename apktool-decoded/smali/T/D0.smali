.class public final LT/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, LT/D0;->a:I

    iput-object p1, p0, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, v1, LT/D0;->a:I

    packed-switch v4, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, LT/J3;->a:Ljava/util/List;

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "modo_oficina"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-wide/16 v4, 0x3a98

    if-eqz v0, :cond_1

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, LT/J3;->j(Landroid/content/Context;)V

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, LT/J3;->l(Landroid/content/Context;)V

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "status_temp_ext_enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "status_battery_enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "status_total_km_enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "status_trip_km_enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "status_signal_enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v7, :cond_2

    if-nez v9, :cond_2

    if-nez v10, :cond_2

    if-nez v11, :cond_2

    if-nez v12, :cond_2

    sget-object v0, LT/A4;->a:Ljava/util/HashMap;

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, LT/A4;->c(Landroid/content/Context;)V

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, LT/A4;->f(Landroid/content/Context;)V

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, LT/A4;->g(Landroid/content/Context;)V

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string v2, "context"

    invoke-static {v0, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_4

    const/16 v2, 0x3ab6

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_2
    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_3

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lcom/ex/auto/CentralWatchdogService;->e(Lcom/ex/auto/CentralWatchdogService;)V

    :cond_3
    sget-object v0, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v8, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v0, LT/O0;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, LT/O0;-><init>(ZLcom/ex/auto/CentralWatchdogService;ZZZZ)V

    const-string v2, "status-icons"

    invoke-static {v2, v0}, LT/U0;->b(Ljava/lang/String;LH0/a;)V

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "screen_rest_timeout_sec"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->n0:J

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v3, v0, Lcom/ex/auto/CentralWatchdogService;->k0:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-boolean v2, Lcom/ex/auto/QuickAccessFloaterService;->n0:Z

    if-eqz v2, :cond_7

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/ex/auto/CentralWatchdogService;->o0:J

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v3, v0, Lcom/ex/auto/CentralWatchdogService;->p0:Z

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v3, v0, Lcom/ex/auto/CentralWatchdogService;->k0:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    sget-object v2, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v3, LT/K0;

    invoke-direct {v3, v2, v0, v1}, LT/K0;-><init>(Lcom/ex/auto/CentralWatchdogService;ILT/D0;)V

    invoke-static {v3}, LT/U0;->a(LH0/a;)V

    :goto_1
    return-void

    :pswitch_1
    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v4, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    iget-object v4, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v4, v4, Lcom/ex/auto/CentralWatchdogService;->r:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v4, :cond_a

    iget-object v5, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v5, v5, Lcom/ex/auto/CentralWatchdogService;->x:Z

    if-nez v5, :cond_9

    iget-object v5, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v2, v5, Lcom/ex/auto/CentralWatchdogService;->x:Z

    :try_start_0
    sget-object v2, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v5, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v6, LT/H;

    invoke-direct {v6, v5, v0, v4}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v3, v0, Lcom/ex/auto/CentralWatchdogService;->x:Z

    :cond_9
    :goto_2
    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_3
    return-void

    :pswitch_2
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v0, :cond_b

    goto/16 :goto_9

    :cond_b
    sget-object v4, LT/G3;->a:LT/G3;

    monitor-enter v4

    :try_start_1
    sget-object v0, LT/G3;->c:LT/F3;

    iget-wide v5, v0, LT/F3;->b:J

    sget-object v7, LT/G3;->d:LT/F3;

    iget-wide v8, v7, LT/F3;->b:J

    add-long/2addr v5, v8

    sget-object v8, LT/G3;->e:LT/F3;

    iget-wide v9, v8, LT/F3;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-long/2addr v5, v9

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-lez v5, :cond_c

    goto :goto_4

    :cond_c
    move v2, v3

    :goto_4
    monitor-exit v4

    if-eqz v2, :cond_f

    sget-object v2, LT/L3;->a:LT/L3;

    const-string v5, "Metricas"

    const-string v6, " \u00b7 filas m\u00e1x: "

    monitor-enter v4

    :try_start_2
    sget-object v11, LT/G3;->f:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v6, ""

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_d
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    const-string v12, "<get-entries>(...)"

    invoke-static {v11, v12}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, " "

    new-instance v15, LT/a3;

    const/4 v13, 0x7

    invoke-direct {v15, v13}, LT/a3;-><init>(I)V

    const/16 v16, 0x1e

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, LT/G3;->a(LT/F3;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " \u00b7 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, LT/G3;->a(LT/F3;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " \u00b7 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, LT/G3;->a(LT/F3;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v7, v8}, [LT/F3;

    move-result-object v0

    invoke-static {v0}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LT/F3;

    iput-wide v9, v7, LT/F3;->b:J

    iput-wide v9, v7, LT/F3;->c:J

    iput-wide v9, v7, LT/F3;->d:J

    iput-wide v9, v7, LT/F3;->e:J

    iget-object v7, v7, LT/F3;->f:[J

    array-length v8, v7

    invoke-static {v7, v3, v8, v9, v10}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_6

    :cond_e
    sget-object v0, LT/G3;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    invoke-virtual {v2, v5, v6}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_f
    :goto_8
    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v3, v0, Lcom/ex/auto/CentralWatchdogService;->a2:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_9
    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_3
    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v4, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v4, :cond_10

    goto :goto_a

    :cond_10
    iget-object v4, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v4}, LT/Y;->V(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_a

    :cond_11
    iget-object v5, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v6, v5, Lcom/ex/auto/CentralWatchdogService;->g0:I

    rem-int/lit8 v0, v6, 0x3

    if-nez v0, :cond_12

    move v3, v2

    :cond_12
    add-int/2addr v6, v2

    iput v6, v5, Lcom/ex/auto/CentralWatchdogService;->g0:I

    new-instance v0, LT/H0;

    invoke-direct {v0, v4, v3}, LT/H0;-><init>(Ljava/util/List;Z)V

    const-string v2, "keep-alive"

    invoke-static {v2, v0}, LT/U0;->b(Ljava/lang/String;LH0/a;)V

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_a
    return-void

    :pswitch_4
    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v2, :cond_13

    goto :goto_d

    :cond_13
    iget-object v2, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v2, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_14

    sget-boolean v3, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    if-nez v3, :cond_14

    sget-object v3, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v3, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v4, LT/B0;

    invoke-direct {v4, v3, v2, v0}, LT/B0;-><init>(Landroid/app/Service;Ljava/lang/Object;I)V

    const-string v0, "drive-regen-gear"

    invoke-static {v0, v4}, LT/U0;->b(Ljava/lang/String;LH0/a;)V

    :cond_14
    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v2, v0, Lcom/ex/auto/CentralWatchdogService;->J:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_15

    goto :goto_b

    :cond_15
    const/16 v3, 0x10

    if-lt v2, v3, :cond_16

    const/16 v3, 0x1000

    if-gt v2, v3, :cond_16

    :goto_b
    iget-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->L:J

    goto :goto_c

    :cond_16
    iget-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->K:J

    :goto_c
    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v0, :cond_17

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    :goto_d
    return-void

    :pswitch_5
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v0, :cond_18

    goto :goto_e

    :cond_18
    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "remember_brightness"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v2, LT/e0;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, LT/e0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    const-string v0, "brightness-memory"

    invoke-static {v0, v2}, LT/U0;->b(Ljava/lang/String;LH0/a;)V

    :cond_19
    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_e
    return-void

    :pswitch_6
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v0, :cond_1a

    goto :goto_f

    :cond_1a
    sget-object v0, LT/J3;->a:Ljava/util/List;

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, LT/J3;->l(Landroid/content/Context;)V

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "auto_update_enabled"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->i2:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, "auto-update desligado (Config \u2192 Atualiza\u00e7\u00f5es)"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    :cond_1b
    sget-object v0, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v2, LT/B0;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, LT/B0;-><init>(Landroid/app/Service;Ljava/lang/Object;I)V

    invoke-static {v2}, LT/U0;->a(LH0/a;)V

    :goto_f
    return-void

    :pswitch_7
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v0, :cond_1c

    goto :goto_10

    :cond_1c
    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->n()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->V:Ljava/lang/String;

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->W:Ljava/lang/String;

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->X:Ljava/lang/String;

    goto :goto_10

    :cond_1d
    sget-object v0, LT/U0;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v3, LT/B0;

    invoke-direct {v3, v0, v1, v2}, LT/B0;-><init>(Landroid/app/Service;Ljava/lang/Object;I)V

    invoke-static {v3}, LT/U0;->a(LH0/a;)V

    :goto_10
    return-void

    :pswitch_8
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v0, :cond_1f

    iget-object v0, v1, LT/D0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v4, v0, Lcom/ex/auto/CentralWatchdogService;->G0:Z

    if-nez v4, :cond_1e

    goto :goto_11

    :cond_1e
    iget v4, v0, Lcom/ex/auto/CentralWatchdogService;->I0:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->I0:I

    iget v4, v0, Lcom/ex/auto/CentralWatchdogService;->J0:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->J0:I

    new-instance v2, LT/B0;

    invoke-direct {v2, v0, v1, v3}, LT/B0;-><init>(Landroid/app/Service;Ljava/lang/Object;I)V

    invoke-static {v2}, LT/U0;->a(LH0/a;)V

    :cond_1f
    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
