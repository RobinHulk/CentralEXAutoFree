.class public final synthetic LT/t0;
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

    iput p2, p0, LT/t0;->a:I

    iput-object p1, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x6

    const-string v1, "CentralWatchdog"

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, LT/t0;->a:I

    packed-switch v4, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->x0()V

    return-void

    :pswitch_0
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lcom/ex/auto/CentralWatchdogService;->e(Lcom/ex/auto/CentralWatchdogService;)V

    return-void

    :pswitch_1
    const-string v0, "quick_access"

    iget-object v1, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->v(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->X:Ljava/lang/String;

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->V:Ljava/lang/String;

    const-wide/16 v1, 0x1388

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->Y:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->Z:J

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/d0;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_3
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "aeb_restore_on_boot"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v3, v0, Lcom/ex/auto/CentralWatchdogService;->A:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->N()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->z:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->S1:LT/E0;

    invoke-virtual {v1, v3}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->y:Landroid/car/Car;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->y:Landroid/car/Car;

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->z:Landroid/car/hardware/property/CarPropertyManager;

    :goto_0
    return-void

    :pswitch_4
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->w0()V

    return-void

    :pswitch_5
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->c0()V

    return-void

    :pswitch_6
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->x0()V

    return-void

    :pswitch_7
    iget-object v2, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_3

    const-string v3, "triggerDriveRegenApply: cpm null \u2014 initDriveRegenCar e retentando"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->O()V

    iget-object v1, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, LT/z0;

    invoke-direct {v3, v2, v0}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/z0;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void

    :pswitch_8
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->S()V

    :cond_4
    return-void

    :pswitch_9
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Q()V

    :cond_5
    return-void

    :pswitch_a
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->S()V

    :cond_6
    return-void

    :pswitch_b
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->v0()V

    :cond_7
    return-void

    :pswitch_c
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->t()V

    return-void

    :pswitch_d
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->d0:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/ex/auto/CentralWatchdogService;->U(ILjava/lang/String;)V

    :cond_8
    return-void

    :pswitch_e
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v0, "boot"

    iget-object v1, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->v(Ljava/lang/String;)V

    return-void

    :pswitch_f
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_9

    const-string v1, "CarService voltou"

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->J(Ljava/lang/String;)V

    :cond_9
    return-void

    :pswitch_10
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-static {}, LT/m;->l()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "hvac_digital_temp"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "hvac_digital_batt"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_a
    invoke-static {}, LT/m;->l()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    const-string v1, "DST=$(pm path com.flyme.auto.systemuiplugin | sed \'s/^package://\'); grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo Y || echo N"

    const/16 v4, 0x1770

    invoke-static {v4, v1}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Y"

    invoke-static {v1, v4, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    sget-object v3, LT/L3;->a:LT/L3;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "migra\u00e7\u00e3o para pm install: bindLegado="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 instalando o plugin"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HvacDigital"

    invoke-virtual {v3, v4, v1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, LT/m;->e(Landroid/content/Context;LH0/l;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "conclu\u00edda"

    goto :goto_2

    :cond_c
    const-string v0, "FALHOU (tenta de novo no pr\u00f3ximo boot)"

    :goto_2
    const-string v1, "migra\u00e7\u00e3o para pm install: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void

    :pswitch_11
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->r()V

    return-void

    :pswitch_12
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->D()V

    :cond_e
    return-void

    :pswitch_13
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->P()V

    :cond_f
    return-void

    :pswitch_14
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->s()V

    return-void

    :pswitch_15
    iget-object v1, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LT/p0;

    invoke-direct {v3, v1, v0}, LT/p0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_10
    return-void

    :pswitch_16
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, LT/Y;->b0(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-static {v0}, LT/Y;->R(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->U:Ljava/lang/Boolean;

    return-void

    :pswitch_17
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    :try_start_2
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    sget-object v2, LT/L3;->a:LT/L3;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "observa\u00e7\u00e3o do ConnAdaptor falhou: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_18
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_11

    goto :goto_5

    :cond_11
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/t0;

    const/16 v3, 0x10

    invoke-direct {v2, v0, v3}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_5
    return-void

    :pswitch_19
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v2, "\necho PERMS_OK"

    :try_start_3
    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x3a98

    invoke-static {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PERMS_OK"

    invoke-static {v0, v2, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v2, "permiss\u00f5es de fixes/ normalizadas no arranque"

    invoke-virtual {v0, v1, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_12
    sget-object v0, LT/L3;->a:LT/L3;

    const-string v2, "permiss\u00f5es de fixes/: canal local n\u00e3o respondeu (o BootScript se vira)"

    invoke-virtual {v0, v1, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :goto_6
    sget-object v2, LT/L3;->a:LT/L3;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "permiss\u00f5es de fixes/: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (o BootScript se vira)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_1a
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_13

    invoke-static {v0}, Lcom/ex/auto/CentralWatchdogService;->A0(Lcom/ex/auto/CentralWatchdogService;)V

    :cond_13
    return-void

    :pswitch_1b
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/t0;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_14
    return-void

    :pswitch_1c
    iget-object v0, p0, LT/t0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_15

    goto :goto_8

    :cond_15
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/t0;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
