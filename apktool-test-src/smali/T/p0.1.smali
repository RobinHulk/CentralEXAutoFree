.class public final synthetic LT/p0;
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

    iput p2, p0, LT/p0;->a:I

    iput-object p1, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x2

    const-string v1, "wifi_auto_enable_on_wake"

    const-string v2, "CentralWatchdog"

    const/4 v3, 0x5

    const-string v4, "boot"

    const/4 v5, 0x1

    const-string v6, "despertar"

    const/4 v7, 0x0

    iget v8, p0, LT/p0;->a:I

    packed-switch v8, :pswitch_data_0

    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/t0;

    invoke-direct {v2, v0, v3}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    :try_start_0
    const-string v1, "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\niptables  -t mangle -A POSTROUTING -j TTL --ttl-set 65 2>&1\nip6tables -t mangle -A POSTROUTING -j HL  --hl-set  65 2>&1\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c \'ttl-set 65\')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c \'hl-set 65\')"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x61a8

    invoke-static {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "erro: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v1, LT/L3;->a:LT/L3;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TTL 65 no boot: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "saida"

    invoke-static {v0, v4}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "TTL_V4"

    invoke-static {v0, v4}, LT/q4;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "TTL_V6"

    invoke-static {v0, v4}, LT/q4;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "reaplicado"

    goto :goto_2

    :cond_1
    const-string v4, "FALHOU"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u2014 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    const-string v5, " "

    invoke-static {v0, v4, v5}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x78

    invoke-static {v4, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v0, "gear_change"

    iget-object v1, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->v(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/p0;

    const/16 v3, 0x1b

    invoke-direct {v2, v0, v3}, LT/p0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void

    :pswitch_3
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/d0;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_3
    return-void

    :pswitch_4
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->d0()V

    return-void

    :pswitch_5
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/d0;

    invoke-direct {v2, v0, v5}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_4
    return-void

    :pswitch_6
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/t0;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_5
    return-void

    :pswitch_7
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/f0;

    const/4 v3, 0x0

    const-string v4, "wakeup"

    invoke-direct {v2, v3, v0, v4}, LT/f0;-><init>(Ljava/lang/String;Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_6
    return-void

    :pswitch_8
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->D()V

    :cond_7
    return-void

    :pswitch_9
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0, v6}, Lcom/ex/auto/CentralWatchdogService;->y(Ljava/lang/String;)V

    :cond_8
    return-void

    :pswitch_a
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/o0;

    invoke-direct {v2, v5, v0, v6}, LT/o0;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_9
    return-void

    :pswitch_b
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0, v7, v6, v7}, Lcom/ex/auto/CentralWatchdogService;->V(ILjava/lang/String;Z)V

    :cond_a
    return-void

    :pswitch_c
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_b

    new-instance v1, LT/e0;

    invoke-direct {v1, v0, v7}, LT/e0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-static {v1}, LT/U0;->a(LH0/a;)V

    :cond_b
    return-void

    :pswitch_d
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0, v6}, Lcom/ex/auto/CentralWatchdogService;->W(Ljava/lang/String;)V

    :cond_c
    return-void

    :pswitch_e
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-boolean v1, Lcom/ex/auto/QuickAccessFloaterService;->n0:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/ex/auto/BlackoutFloaterService;->q:Z

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->s0:Z

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/t0;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_e
    :goto_6
    return-void

    :pswitch_f
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_11

    sget-boolean v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->O()V

    goto :goto_7

    :cond_10
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/d0;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_11
    :goto_7
    return-void

    :pswitch_10
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/d0;

    invoke-direct {v2, v0, v3}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_8
    return-void

    :pswitch_11
    iget-object v2, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_9

    :cond_13
    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v4, v2, Lcom/ex/auto/CentralWatchdogService;->R:LT/p0;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v7, v2, Lcom/ex/auto/CentralWatchdogService;->Q:I

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_9

    :cond_14
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, LT/o0;

    const-string v4, "ipo_wakeup"

    invoke-direct {v3, v0, v2, v4}, LT/o0;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_15
    :goto_9
    return-void

    :pswitch_12
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->O()V

    :goto_a
    return-void

    :pswitch_13
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_17

    goto :goto_b

    :cond_17
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/d0;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_b
    return-void

    :pswitch_14
    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v2, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_c

    :cond_18
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, LT/o0;

    const-string v4, "retry"

    invoke-direct {v3, v0, v2, v4}, LT/o0;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_c
    return-void

    :pswitch_15
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v0, "grep -F \' /system/etc/automotive/evsapp/rvc/rvc_left_bg.png \' /proc/mounts >/dev/null 2>&1 && echo Y || echo N"

    const/16 v1, 0x1770

    invoke-static {v1, v0}, LT/p4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-static {v0, v1, v7}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, LT/p4;->b(Landroid/content/Context;)Z

    :cond_19
    return-void

    :pswitch_16
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    :try_start_1
    const-string v1, "settings get global policy_control"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x1f40

    invoke-static {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "immersive"

    invoke-static {v1, v3, v7}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_d

    :cond_1a
    sget-object v1, LT/L3;->a:LT/L3;

    const-string v3, "tela cheia estava ligada de um boot anterior \u2014 desligando por seguran\u00e7a"

    invoke-virtual {v1, v2, v3}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settings delete global policy_control"

    invoke-static {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    const-string v1, "am force-stop com.android.systemui"

    invoke-static {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    sget-object v1, LT/L3;->a:LT/L3;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "n\u00e3o deu pra conferir a tela cheia no boot: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :pswitch_17
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->D()V

    :cond_1b
    return-void

    :pswitch_18
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->x0()V

    :cond_1c
    return-void

    :pswitch_19
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v4}, Lcom/ex/auto/CentralWatchdogService;->y(Ljava/lang/String;)V

    :cond_1d
    return-void

    :pswitch_1a
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/o0;

    invoke-direct {v2, v5, v0, v4}, LT/o0;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1e
    return-void

    :pswitch_1b
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v1, :cond_1f

    goto :goto_e

    :cond_1f
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/p0;

    const/16 v3, 0x1c

    invoke-direct {v2, v0, v3}, LT/p0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_e
    return-void

    :pswitch_1c
    iget-object v0, p0, LT/p0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_20

    invoke-virtual {v0, v4}, Lcom/ex/auto/CentralWatchdogService;->W(Ljava/lang/String;)V

    :cond_20
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
