.class public final synthetic LT/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, LT/o0;->a:I

    iput-object p2, p0, LT/o0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p3, p0, LT/o0;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string v0, ") falhou: "

    const-wide/16 v1, 0x0

    const-string v3, "CentralWatchdog"

    const/4 v4, 0x0

    iget v5, p0, LT/o0;->a:I

    packed-switch v5, :pswitch_data_0

    iget-object v0, p0, LT/o0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->V:Ljava/lang/String;

    iget-object v2, p0, LT/o0;->c:Ljava/lang/String;

    invoke-static {v1, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->W:Ljava/lang/String;

    const-string v1, "^\\d{1,3}(\\.\\d{1,3}){3}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v3, "compile(...)"

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {v2, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, LT/o0;

    invoke-direct {v3, v4, v0, v2}, LT/o0;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LT/o0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, LT/o0;->c:Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->z(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, LT/L3;->a:LT/L3;

    const-string v4, "sa\u00fade ("

    const-string v5, "): falhou \u2014 "

    invoke-static {v4, v1, v5}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    const-string v4, "antes do AP/"

    iget-object v5, p0, LT/o0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v6, p0, LT/o0;->c:Ljava/lang/String;

    sget-object v7, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v7, "AP sempre aberto ("

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->I0()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5, v6}, Lcom/ex/auto/CentralWatchdogService;->Y(Ljava/lang/String;)Z

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_2
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->I0()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->p()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->I0()Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, LT/L3;->a:LT/L3;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "): wlan1 ausente \u2014 conserto a interface antes de gastar a tentativa"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, v5, Lcom/ex/auto/CentralWatchdogService;->P0:J

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ex/auto/CentralWatchdogService;->z(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->p()Z

    move-result v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/ex/auto/CentralWatchdogService;->K(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v10, "ap\u00f3s abrir o AP/"

    if-eqz v9, :cond_5

    if-nez v8, :cond_5

    :try_start_2
    iget-boolean v8, v5, Lcom/ex/auto/CentralWatchdogService;->d1:Z

    if-nez v8, :cond_5

    invoke-virtual {v10, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/ex/auto/CentralWatchdogService;->e0(Ljava/lang/String;)V

    :cond_5
    if-eqz v9, :cond_6

    if-nez v4, :cond_6

    iput-wide v1, v5, Lcom/ex/auto/CentralWatchdogService;->P0:J

    invoke-virtual {v10, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ex/auto/CentralWatchdogService;->z(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    sget-object v2, LT/L3;->a:LT/L3;

    invoke-static {v7, v6, v0}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void

    :pswitch_2
    iget-object v0, p0, LT/o0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    :try_start_3
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->o()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->Z()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_8

    :cond_7
    const/4 v4, 0x1

    :catchall_2
    :cond_8
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/g0;

    iget-object v3, p0, LT/o0;->c:Ljava/lang/String;

    invoke-direct {v2, v4, v3, v0}, LT/g0;-><init>(ZLjava/lang/String;Lcom/ex/auto/CentralWatchdogService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_3
    iget-object v5, p0, LT/o0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v6, p0, LT/o0;->c:Ljava/lang/String;

    sget-object v7, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v7, "precoce/"

    const-string v8, "sa\u00fade precoce ("

    move v9, v4

    :goto_5
    :try_start_4
    iget-boolean v10, v5, Lcom/ex/auto/CentralWatchdogService;->W1:Z

    if-eqz v10, :cond_9

    const v10, 0x9c40

    if-ge v9, v10, :cond_9

    const-wide/16 v10, 0x7d0

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit16 v9, v9, 0x7d0

    goto :goto_5

    :catchall_3
    move-exception v1

    goto/16 :goto_6

    :cond_9
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->I0()Z

    move-result v9

    if-eqz v9, :cond_a

    goto/16 :goto_7

    :cond_a
    const-string v9, "netstat -tln 2>/dev/null | grep -cE \'3051[56]\'"

    const/16 v10, 0x2710

    invoke-static {v10, v9}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, LO0/r;->p0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_b
    if-lez v4, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->E()Z

    move-result v4

    if-nez v4, :cond_d

    sget-object v1, LT/L3;->a:LT/L3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): wlan1 ausente, mas ConnAdaptor de f\u00e1brica \u2014 nada a recriar"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ex/auto/CentralWatchdogService;->Y(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    sget-object v4, LT/L3;->a:LT/L3;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): wlan1 ausente \u2014 recriando j\u00e1, sem esperar os 90s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v3, v9}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, v5, Lcom/ex/auto/CentralWatchdogService;->P0:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ex/auto/CentralWatchdogService;->z(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :goto_6
    sget-object v2, LT/L3;->a:LT/L3;

    invoke-static {v8, v6, v0}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_4
    iget-object v0, p0, LT/o0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, LT/o0;->c:Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v2, "AutoRota ("

    :try_start_5
    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, LT/I1;

    const/16 v7, 0x15b3

    invoke-direct {v6, v7}, LT/I1;-><init>(I)V

    const/16 v7, 0x7530

    invoke-virtual {v6, v7, v5}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v6, "FWMARK_MATCH=OK"

    invoke-static {v5, v6, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_f

    const-string v2, "OK"

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_f
    const-string v2, "ERRO"

    :goto_8
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.ex.auto.AUTO_ROUTE_APPLIED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ip"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "result"

    const/16 v4, 0x258

    invoke-static {v4, v5}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applyRoutesSilent erro: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
