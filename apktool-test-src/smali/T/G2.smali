.class public final synthetic LT/G2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 0

    iput p1, p0, LT/G2;->a:I

    iput-object p2, p0, LT/G2;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v3, "Update"

    const-string v5, " "

    const-string v6, "\n"

    const-string v7, "erro: "

    const v0, 0x104000a

    const/4 v8, 0x1

    const/16 v9, 0x10

    const-string v10, "<get-prefs>(...)"

    const/4 v11, 0x6

    const/16 v12, 0x1f40

    const/4 v14, 0x0

    const-string v15, "binding"

    const/4 v2, 0x0

    iget-object v4, v1, LT/G2;->b:Lcom/ex/auto/MainActivity;

    iget v13, v1, LT/G2;->a:I

    packed-switch v13, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v12, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/V1;

    const/4 v5, 0x5

    invoke-direct {v3, v4, v0, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LT/U1;

    invoke-direct {v0, v11, v4}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v2, v4, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_1
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    sget-object v0, LT/Y0;->a:LT/Y0;

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, LT/Y0;->d(Landroid/content/SharedPreferences;)I

    return-void

    :pswitch_2
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->r:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {v15}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void

    :pswitch_3
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "auto_connect_preferred_bt"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v2, v0

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, LT/V1;

    invoke-direct {v3, v4, v2, v14}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_4
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    :try_start_0
    iget-object v0, v4, Lcom/ex/auto/MainActivity;->h0:Le/i;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Le/i;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    iput-object v2, v4, Lcom/ex/auto/MainActivity;->h0:Le/i;

    iput-object v2, v4, Lcom/ex/auto/MainActivity;->g0:Landroid/widget/ProgressBar;

    return-void

    :pswitch_5
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v0, LT/E2;

    invoke-direct {v0, v9, v4}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-static {v4, v0}, LT/m;->d(Landroid/content/Context;LH0/l;)Z

    move-result v0

    iget-object v2, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/c2;

    invoke-direct {v3, v4, v0, v9}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_6
    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4, v8}, Lcom/ex/auto/MainActivity;->H1(Z)V

    iput-boolean v14, v4, Lcom/ex/auto/MainActivity;->K:Z

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, LT/j1;

    invoke-direct {v3, v4}, LT/j1;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f03df

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, LT/j1;->b:Ljava/lang/Object;

    check-cast v6, Le/e;

    iput-object v5, v6, Le/e;->d:Ljava/lang/CharSequence;

    const v5, 0x7f0f02c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Le/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0, v2}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, LT/j1;->j()Le/i;

    :cond_5
    return-void

    :pswitch_7
    iget-object v0, v4, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_6

    const v2, 0x7f0f01d8

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, LU/a;->A2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    invoke-static {v15}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_8
    iget-object v0, v4, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_7

    const v2, 0x7f0f01d9

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, LU/a;->w2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    invoke-static {v15}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_9
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    sget-object v0, LT/Y0;->a:LT/Y0;

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, LT/Y0;->d(Landroid/content/SharedPreferences;)I

    move-result v0

    iget-object v2, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/Z1;

    const/4 v5, 0x3

    invoke-direct {v3, v4, v0, v5}, LT/Z1;-><init>(Lcom/ex/auto/MainActivity;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_a
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v5, "Ativar"

    const-string v6, "in\u00edcio"

    invoke-virtual {v0, v5, v6}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/ex/auto/MainActivity;->T()Z

    move-result v6

    iget-object v7, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    if-nez v6, :cond_8

    const-string v2, "ABORTADO: canal do ADB local fora do ar"

    invoke-virtual {v0, v5, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LT/G2;

    const/16 v2, 0xf

    invoke-direct {v0, v2, v4}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->r2()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "md5 do ca_fix conferido em "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x73

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LT/V1;

    const/16 v2, 0x13

    invoke-direct {v0, v6, v4, v2}, LT/V1;-><init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :pswitch_b
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    :try_start_1
    invoke-static {}, LT/Y;->B()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7530

    invoke-virtual {v4, v2, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/16 v2, 0xa0

    invoke-static {v2, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6, v5}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_2
    const-string v3, "grep -F \' /system/bin/CarplayMonitor \' /proc/mounts >/dev/null && echo SIM || echo NAO"

    invoke-virtual {v4, v12, v3}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SIM"

    invoke-static {v3, v4, v14}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    sget-object v3, LT/L3;->a:LT/L3;

    if-nez v14, :cond_9

    const-string v0, "modo AA: patch do monitor desfeito"

    goto :goto_3

    :cond_9
    invoke-static {v0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "modo AA: canal ADB indispon\u00edvel \u2014 o patch do monitor sai s\u00f3 no pr\u00f3ximo boot"

    goto :goto_3

    :cond_a
    const-string v0, "modo AA: o monitor CONTINUA montado \u2014 "

    invoke-static {v0, v2}, LM/d0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v2, "Modo"

    invoke-virtual {v3, v2, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_c
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    :try_start_3
    new-instance v0, LT/n;

    const/16 v2, 0x12

    invoke-direct {v0, v2}, LT/n;-><init>(I)V

    invoke-static {v4, v0}, LT/m;->d(Landroid/content/Context;LH0/l;)Z

    move-result v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "dep gestos update: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v0, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/c2;

    const/16 v3, 0xd

    invoke-direct {v2, v4, v14, v3}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_d
    const/4 v5, 0x3

    :try_start_4
    invoke-static {v4, v2, v5}, Lcom/ex/auto/MainActivity;->q0(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)LT/k3;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "dep ConnAdaptor update: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/w2;

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, LT/w2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Exception;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_b

    iget-object v2, v0, LT/k3;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_b
    iget-object v3, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, LT/z;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v0, v2, v6}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_e
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->e1()V

    :cond_c
    return-void

    :pswitch_f
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v2, "Reiniciar"

    const-string v3, "garantindo o bind do CarplayMonitor"

    invoke-virtual {v0, v2, v3}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, LT/Y;->v()Ljava/lang/String;

    move-result-object v0

    const v3, 0xea60

    invoke-virtual {v4, v3, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    sget-object v3, LT/L3;->a:LT/L3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LO0/j;->G0(Ljava/lang/CharSequence;)LN0/c;

    move-result-object v7

    new-instance v9, LT/n;

    const/16 v10, 0x1c

    invoke-direct {v9, v10}, LT/n;-><init>(I)V

    new-instance v10, LN0/c;

    const/4 v11, 0x3

    invoke-direct {v10, v7, v9, v11}, LN0/c;-><init>(LN0/f;Ljava/lang/Object;I)V

    new-instance v7, LT/n;

    const/16 v9, 0x1d

    invoke-direct {v7, v9}, LT/n;-><init>(I)V

    new-instance v9, LN0/c;

    invoke-direct {v9, v10, v7, v8}, LN0/c;-><init>(LN0/f;Ljava/lang/Object;I)V

    invoke-static {v9}, LN0/h;->n0(LN0/f;)Ljava/util/List;

    move-result-object v11

    const/4 v14, 0x0

    const/16 v16, 0x3e

    const-string v12, " | "

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v16}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_d

    invoke-static {v0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x78

    invoke-static {v8, v7}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6, v5}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_d
    const-string v5, "bind do monitor: "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/V1;

    const/16 v5, 0x12

    invoke-direct {v3, v4, v0, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_10
    iget-object v0, v4, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_e

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->s:Landroid/widget/TextView;

    const v2, 0x7f0f01ef

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_e
    invoke-static {v15}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_11
    iget-object v0, v4, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_f

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->s:Landroid/widget/TextView;

    const v2, 0x7f0f01f1

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_f
    invoke-static {v15}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_12
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->Y()Z

    move-result v0

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->f0()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ex/auto/MainActivity;->T()Z

    move-result v3

    iget-object v5, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v6, LT/z2;

    invoke-direct {v6, v4, v3, v0, v2}, LT/z2;-><init>(Lcom/ex/auto/MainActivity;ZZLjava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_13
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->q2()V

    return-void

    :pswitch_14
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-class v0, Ljava/lang/String;

    :try_start_6
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "set"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v3, "ctl.start"

    const-string v5, "adbd"

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, LT/I1;

    const/16 v2, 0x15b3

    invoke-direct {v0, v2}, LT/I1;-><init>(I)V

    const-string v2, "echo adb_ok"

    const/16 v3, 0x1388

    invoke-virtual {v0, v3, v2}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v2, "adb_ok"

    invoke-static {v0, v2, v14}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    iget-object v0, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/c2;

    invoke-direct {v2, v4, v14, v11}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_15
    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_7

    :cond_10
    iget-object v3, v4, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_11

    const v5, 0x7f0f029e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v3, LU/a;->M2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, LT/j1;

    invoke-direct {v3, v4}, LT/j1;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f029f

    invoke-virtual {v3, v4}, LT/j1;->i(I)V

    iget-object v4, v3, LT/j1;->b:Ljava/lang/Object;

    check-cast v4, Le/e;

    iget-object v6, v4, Le/e;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Le/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0, v2}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, LT/j1;->j()Le/i;

    goto :goto_7

    :cond_11
    invoke-static {v15}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_12
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
