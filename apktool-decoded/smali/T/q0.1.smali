.class public final synthetic LT/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/Car$CarServiceLifecycleListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, LT/q0;->a:I

    iput-object p1, p0, LT/q0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLifecycleChanged(Landroid/car/Car;Z)V
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "CentralWatchdog"

    const-string v6, "property"

    const/4 v7, 0x0

    iget v8, p0, LT/q0;->a:I

    packed-switch v8, :pswitch_data_0

    iget-object v0, p0, LT/q0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v7

    :goto_0
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_2

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_2
    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, LT/q0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->h0()V

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v7

    :goto_2
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_5

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_5
    if-nez v7, :cond_6

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->h0()V

    goto :goto_3

    :cond_6
    :try_start_0
    iput-boolean v4, v0, Lcom/ex/auto/CentralWatchdogService;->B:Z

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->S1:LT/E0;

    const p2, 0x2140403a

    invoke-virtual {v7, p1, p2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->z:Landroid/car/hardware/property/CarPropertyManager;

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->A:I

    const-string p1, "aebObserver: registerCallback(AEB) OK"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "aebObserver: registerCallback falhou: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->h0()V

    :goto_3
    return-void

    :pswitch_1
    iget-object v0, p0, LT/q0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    if-nez p2, :cond_7

    const-string p1, "windowDriver: Car desconectado (ready=false)"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->m0()V

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_8
    move-object p1, v7

    :goto_4
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_9

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_9
    if-nez v7, :cond_a

    const-string p1, "windowDriver: getCarManager(PROPERTY_SERVICE) devolveu null"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->m0()V

    goto :goto_5

    :cond_a
    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->l:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :try_start_1
    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->I1:LT/E0;

    const p2, 0x16400b00

    invoke-virtual {v7, p1, p2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->k:Landroid/car/hardware/property/CarPropertyManager;

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->H1:I

    const-string p1, "windowDriver: registerCallback(DOOR_POS) OK \u2014 aguardando eventos de porta"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "windowDriver: registerCallback DOOR_POS falhou: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->m0()V

    :goto_5
    return-void

    :pswitch_2
    iget-object v0, p0, LT/q0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    if-nez p2, :cond_b

    const-string p1, "rearCamTurnSignal: Car desconectado (ready=false)"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->j0()V

    goto :goto_7

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_c
    move-object p1, v7

    :goto_6
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_d

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_d
    if-nez v7, :cond_e

    const-string p1, "rearCamTurnSignal: getCarManager(PROPERTY_SERVICE) devolveu null"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->j0()V

    goto :goto_7

    :cond_e
    :try_start_2
    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->N1:LT/E0;

    const p2, 0x2140a205

    invoke-virtual {v7, p1, p2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->E:Landroid/car/hardware/property/CarPropertyManager;

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->F:I

    const-string p1, "rearCamTurnSignal: registerCallback OK \u2014 aguardando seta"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "rearCamTurnSignal: registerCallback falhou: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->j0()V

    :goto_7
    return-void

    :pswitch_3
    iget-object v2, p0, LT/q0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v8, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    if-nez p2, :cond_f

    const-string p1, "Car desconectado"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/ex/auto/CentralWatchdogService;->P:J

    goto/16 :goto_b

    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    :cond_10
    move-object p1, v7

    :goto_8
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_11

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_11
    iput-object v7, v2, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    iget-object p1, v2, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez p1, :cond_12

    const-string p1, "CarPropertyManager null"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_12
    iget-wide p1, v2, Lcom/ex/auto/CentralWatchdogService;->P:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v6, v2, Lcom/ex/auto/CentralWatchdogService;->P:J

    sub-long/2addr p1, v6

    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr p1, v6

    iput-wide v0, v2, Lcom/ex/auto/CentralWatchdogService;->P:J

    sget-object v0, LT/L3;->a:LT/L3;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "CarService voltou ap\u00f3s "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s fora \u2014 tratando como despertar"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance p2, LT/t0;

    const/16 v0, 0xd

    invoke-direct {p2, v2, v0}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    :try_start_3
    iget-object p1, v2, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {p1}, LI0/f;->b(Ljava/lang/Object;)V

    iget-object p2, v2, Lcom/ex/auto/CentralWatchdogService;->P1:LT/E0;

    const v0, 0x11400400

    invoke-virtual {p1, p2, v0, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "registerCallback GEAR_SELECTION falhou: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v5}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_9
    :try_start_4
    iget-object p1, v2, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {p1}, LI0/f;->b(Ljava/lang/Object;)V

    iget-object p2, v2, Lcom/ex/auto/CentralWatchdogService;->P1:LT/E0;

    const v0, 0x11400401

    invoke-virtual {p1, p2, v0, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "registerCallback CURRENT_GEAR falhou: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v5}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_a
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, LT/t0;

    const/16 v0, 0xe

    invoke-direct {p2, v2, v0}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iput v4, v2, Lcom/ex/auto/CentralWatchdogService;->J:I

    iget-object p1, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object p2, v2, Lcom/ex/auto/CentralWatchdogService;->R1:LT/D0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object p2, v2, Lcom/ex/auto/CentralWatchdogService;->R1:LT/D0;

    iget-wide v0, v2, Lcom/ex/auto/CentralWatchdogService;->K:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "DriveRegen watchdog iniciado"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :pswitch_4
    iget-object v0, p0, LT/q0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v1, "recircGuard: registerCallback OK (hvacPower="

    if-nez p2, :cond_14

    const-string p1, "recircGuard: Car desconectado (ready=false)"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->k0()V

    goto/16 :goto_d

    :cond_14
    if-eqz p1, :cond_15

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_c

    :cond_15
    move-object p1, v7

    :goto_c
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_16

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_16
    if-nez v7, :cond_17

    const-string p1, "recircGuard: getCarManager(PROPERTY_SERVICE) devolveu null"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->k0()V

    goto/16 :goto_d

    :cond_17
    const/4 p1, 0x5

    const p2, 0x15200510

    :try_start_5
    invoke-static {v7, p2, p1}, LT/U;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->t:Ljava/lang/Boolean;

    invoke-static {v7}, LT/H1;->f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->u:Ljava/lang/Boolean;

    invoke-static {v7}, LT/H1;->n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->v:Ljava/lang/Boolean;

    invoke-static {v7}, LT/H1;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->w:Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->L1:LT/E0;

    invoke-virtual {v7, p1, p2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->L1:LT/E0;

    const p2, 0x15200507

    invoke-virtual {v7, p1, p2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->L1:LT/E0;

    const p2, 0x10200c00

    invoke-virtual {v7, p1, p2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->r:Landroid/car/hardware/property/CarPropertyManager;

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->s:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->t:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", frontMaxDefrost="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->u:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", windshieldHeat="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->v:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", recirc="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->w:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->K1:LT/D0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "recircGuard: registerCallback falhou: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->k0()V

    :goto_d
    return-void

    :pswitch_5
    iget-object v8, p0, LT/q0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v9, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    if-nez p2, :cond_18

    const-string p1, "swcModes: Car desconectado (ready=false)"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/ex/auto/CentralWatchdogService;->l0()V

    goto/16 :goto_11

    :cond_18
    if-eqz p1, :cond_19

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_e

    :cond_19
    move-object p1, v7

    :goto_e
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_1a

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_1a
    if-nez v7, :cond_1b

    const-string p1, "swcModes: getCarManager(PROPERTY_SERVICE) null"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/ex/auto/CentralWatchdogService;->l0()V

    goto :goto_11

    :cond_1b
    sget-object p1, LT/Y;->e:[I

    move p2, v4

    move v6, p2

    :goto_f
    const/4 v9, 0x2

    if-ge p2, v9, :cond_1c

    aget v10, p1, p2

    :try_start_6
    iget-object v11, v8, Lcom/ex/auto/CentralWatchdogService;->J1:LT/Q0;

    invoke-virtual {v7, v11, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    add-int/2addr v6, v2

    goto :goto_10

    :catchall_6
    move-exception v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "swcModes: registro 0x%x ignorado (%s)"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    add-int/2addr p2, v2

    goto :goto_f

    :cond_1c
    if-nez v6, :cond_1d

    const-string p1, "swcModes: nenhum prop registrou"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/ex/auto/CentralWatchdogService;->l0()V

    goto :goto_11

    :cond_1d
    iput-object v7, v8, Lcom/ex/auto/CentralWatchdogService;->o:Landroid/car/hardware/property/CarPropertyManager;

    iput v4, v8, Lcom/ex/auto/CentralWatchdogService;->p:I

    iget-object p1, v8, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-string p2, "h"

    invoke-static {p1, p2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, LT/Y;->g:Landroid/os/Handler;

    sput-wide v0, LT/Y;->h:J

    sput-boolean v2, LT/Y;->f:Z

    const-string p1, "SwcModeCtrl"

    const-string p2, "start: observando mic pra cancelar o Gemini no segurar"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "swcModes: registerCallback OK ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " props) \u2014 aguardando bot\u00f5es do volante"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
