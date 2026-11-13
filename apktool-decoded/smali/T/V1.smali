.class public final synthetic LT/V1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, LT/V1;->a:I

    iput-object p1, p0, LT/V1;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/V1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;I)V
    .locals 0

    .line 2
    iput p3, p0, LT/V1;->a:I

    iput-object p1, p0, LT/V1;->c:Ljava/lang/String;

    iput-object p2, p0, LT/V1;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "Reiniciar"

    const-string v2, "Falha no ADB local"

    const-string v3, "/data/local/tmp/fixes/ca_fix.apk"

    const-string v4, "MONITOR_BIND_OK"

    const-string v5, "MONITOR_JA_MONTADO"

    const/4 v6, 0x3

    const-string v7, "getString(...)"

    const-string v8, "Update"

    const/4 v9, 0x0

    const-string v10, "binding"

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v13, v1, LT/V1;->b:Lcom/ex/auto/MainActivity;

    iget-object v14, v1, LT/V1;->c:Ljava/lang/String;

    iget v15, v1, LT/V1;->a:I

    packed-switch v15, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v13}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v13, v14, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2

    iget-object v0, v0, LU/a;->w2:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :pswitch_2
    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3

    iget-object v0, v0, LU/a;->A2:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :pswitch_3
    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4

    iget-object v0, v0, LU/a;->R2:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :pswitch_4
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v15, v1, LT/V1;->b:Lcom/ex/auto/MainActivity;

    if-eqz v14, :cond_5

    invoke-virtual {v15, v11}, Lcom/ex/auto/MainActivity;->H1(Z)V

    invoke-static {v15, v14, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "bloqueado: "

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ativar ConnAdaptor"

    invoke-virtual {v15, v2, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LT/Y;->Q()Ljava/lang/String;

    move-result-object v22

    iput-boolean v11, v15, Lcom/ex/auto/MainActivity;->K:Z

    invoke-virtual {v15, v9}, Lcom/ex/auto/MainActivity;->H1(Z)V

    iget-object v0, v15, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_7

    iget-object v2, v0, LU/a;->g:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, v0, LU/a;->M2:Landroid/widget/TextView;

    const v3, 0x7f0f007e

    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0f007b

    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v4, LT/E2;

    const/16 v5, 0xe

    invoke-direct {v4, v5, v15}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v5, LT/E2;

    const/16 v6, 0xf

    invoke-direct {v5, v6, v15}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-wide/16 v19, 0x3a98

    const v21, 0x1d4c0

    const/16 v26, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    invoke-virtual/range {v15 .. v26}, Lcom/ex/auto/MainActivity;->E1(Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;Z)V

    :goto_1
    return-void

    :cond_6
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :cond_7
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :pswitch_5
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v13}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v13}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {v14, v5, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const-string v2, "CarplayMonitor"

    if-nez v0, :cond_11

    invoke-static {v14, v4, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "MONITOR_JA_PATCHADO_EM_EXECUCAO"

    invoke-static {v14, v0, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_3

    :cond_8
    const-string v0, "SEM_MONITOR"

    invoke-static {v14, v0, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0f0235

    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    const-string v0, "MONITOR_MD5_INESPERADO"

    invoke-static {v14, v0, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0f0232

    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_a
    const-string v0, "PATCH_MD5_ERRADO"

    invoke-static {v14, v0, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f0f0233

    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    const-string v0, "CHCON_FALHOU"

    invoke-static {v14, v0, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0f0234

    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    const-string v0, "MONITOR_BIND_FALHOU"

    invoke-static {v14, v0, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f0f0231

    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_d
    invoke-static {v14}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f0f0236

    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_e
    invoke-static {v14}, LO0/j;->G0(Ljava/lang/CharSequence;)LN0/c;

    move-result-object v0

    new-instance v3, LT/a3;

    invoke-direct {v3, v9}, LT/a3;-><init>(I)V

    new-instance v4, LN0/c;

    invoke-direct {v4, v0, v3, v6}, LN0/c;-><init>(LN0/f;Ljava/lang/Object;I)V

    new-instance v0, LT/a3;

    invoke-direct {v0, v11}, LT/a3;-><init>(I)V

    new-instance v3, LN0/c;

    invoke-direct {v3, v4, v0, v11}, LN0/c;-><init>(LN0/f;Ljava/lang/Object;I)V

    const-string v0, " | "

    invoke-static {v3, v0}, LN0/h;->m0(LN0/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v14}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa0

    invoke-static {v3, v0}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_f
    :goto_2
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    sget-object v3, LT/L3;->a:LT/L3;

    const-string v4, "Reiniciar: bind FALHOU \u2014 "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v13}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_4

    :cond_10
    new-instance v2, LT/j1;

    invoke-direct {v2, v13}, LT/j1;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0230

    invoke-virtual {v2, v3}, LT/j1;->i(I)V

    const v3, 0x7f0f022f

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v0, v3, Le/e;->f:Ljava/lang/CharSequence;

    const v0, 0x104000a

    invoke-virtual {v2, v0, v12}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, LT/j1;->j()Le/i;

    goto :goto_4

    :cond_11
    :goto_3
    sget-object v0, LT/L3;->a:LT/L3;

    const-string v3, "Reiniciar: bind OK"

    invoke-virtual {v0, v2, v3}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_4
    invoke-virtual {v13}, Lcom/ex/auto/MainActivity;->e1()V

    :cond_13
    return-void

    :pswitch_6
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x3e80

    invoke-static {v0, v14}, Lcom/ex/auto/MainActivity;->n2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v8, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_15

    iget-object v0, v0, LU/a;->R2:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v13, v14, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_14

    iget-object v0, v0, LU/a;->n:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_14
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :cond_15
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :pswitch_7
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CarplayMonitor: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v8, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_17

    iget-object v0, v0, LU/a;->w2:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v13, v14, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_16

    iget-object v0, v0, LU/a;->l:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_16
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :cond_17
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :pswitch_8
    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_18

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_18
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :pswitch_9
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v13}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v13}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_19

    iget-object v0, v0, LU/a;->A2:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_19
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :cond_1a
    :goto_5
    return-void

    :pswitch_a
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-string v0, "KeyServerAtivador"

    const-string v2, "runKeyServerApply: post na UI, userInitiated=true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_1c

    iget-object v2, v2, LU/a;->R0:LU/b;

    iget-object v2, v2, LU/b;->c:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {v13, v14, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "runKeyServerApply: Toast.show() chamado"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1b

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, LT/U1;

    invoke-direct {v0, v6, v13}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v2, v13, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1b
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :cond_1c
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :pswitch_b
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v13}, Lcom/ex/auto/MainActivity;->c0()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    sget-object v5, LT/q;->a:[I

    invoke-static {v14, v0}, LT/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-gtz v5, :cond_1d

    goto/16 :goto_6

    :cond_1d
    invoke-static {v14, v0}, LT/q;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4}, Lcom/ex/auto/MainActivity;->S0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1e

    goto/16 :goto_6

    :cond_1e
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": md5 n\u00e3o confere com a variante \u2014 ignorando o cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v8, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1f
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cp -f "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v7, "getAbsolutePath(...)"

    invoke-static {v4, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 && chown system:system "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>/dev/null; chmod 664 "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>/dev/null; echo CACHE_OK"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4e20

    invoke-virtual {v13, v4, v3}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CACHE_OK"

    invoke-static {v3, v4, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {v3, v2, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_20

    move v9, v11

    :cond_20
    if-eqz v9, :cond_21

    invoke-virtual {v13}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "connadaptor_expected_md5"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "connadaptor_arquivo_versao"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v2, LT/L3;->a:LT/L3;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ConnAdaptor servido do cache local ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") \u2014 sem download"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_6
    iget-object v0, v13, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/c2;

    const/16 v3, 0xc

    invoke-direct {v2, v9, v13, v3}, LT/c2;-><init>(ZLcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_c
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v13, v1, LT/V1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v13}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v13}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_24

    sget-object v2, LT/L3;->a:LT/L3;

    const-string v3, "in\u00edcio \u2014 reiniciando AA/CarPlay"

    invoke-virtual {v2, v0, v3}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v11, v13, Lcom/ex/auto/MainActivity;->K:Z

    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_23

    iget-object v14, v0, LU/a;->o0:Landroid/widget/Button;

    if-eqz v0, :cond_22

    iget-object v15, v0, LU/a;->M2:Landroid/widget/TextView;

    const v0, 0x7f0f02aa

    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f02a9

    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    new-instance v2, LT/E2;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v13}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v3, LT/E2;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v13}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v4, v1, LT/V1;->c:Ljava/lang/String;

    const-wide/16 v17, 0x3a98

    const v19, 0xea60

    const/16 v24, 0x1

    move-object/from16 v16, v0

    move-object/from16 v20, v4

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-virtual/range {v13 .. v24}, Lcom/ex/auto/MainActivity;->E1(Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;Z)V

    goto :goto_7

    :cond_22
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :cond_23
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :cond_24
    :goto_7
    return-void

    :pswitch_d
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const v0, 0x7f0f00af

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_26

    iget-object v2, v2, LU/a;->R2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v13, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v13, v8, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v13, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_25

    iget-object v0, v0, LU/a;->n:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_25
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :cond_26
    invoke-static {v10}, LI0/f;->h(Ljava/lang/String;)V

    throw v12

    :pswitch_e
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v13, v14, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_f
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v13, v14, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_10
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-string v0, "OK"

    invoke-static {v14, v0, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "/data/local/tmp/avas_preview/preview.wav"

    invoke-virtual {v13, v0}, Lcom/ex/auto/MainActivity;->X0(Ljava/lang/String;)V

    goto :goto_8

    :cond_27
    const v0, 0x7f0f0274

    invoke-static {v13, v0, v13, v9}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    :goto_8
    return-void

    :pswitch_11
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/ex/auto/MainActivity;->T()Z

    move-result v2

    iget-object v3, v13, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    if-nez v2, :cond_28

    sget-object v2, LT/L3;->a:LT/L3;

    const-string v4, "canal ADB local fora \u2014 nada foi feito"

    invoke-virtual {v2, v0, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LT/G2;

    invoke-direct {v0, v9, v13}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_28
    new-instance v0, LT/V1;

    const/16 v2, 0xb

    invoke-direct {v0, v13, v14, v2}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_9
    return-void

    :pswitch_12
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Pastas centrais (arranque)\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xfa0

    invoke-static {v2, v14}, Lcom/ex/auto/MainActivity;->n2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ADB"

    invoke-virtual {v13, v2, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_13
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v13, v14, v0}, Lcom/ex/auto/MainActivity;->q0(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)LT/k3;

    move-result-object v0

    iget-object v2, v0, LT/k3;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v13, v4}, Lcom/ex/auto/MainActivity;->S0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v3, v0

    goto :goto_b

    :cond_29
    :goto_a
    new-instance v3, Lv0/d;

    invoke-direct {v3, v0, v2, v12}, Lv0/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const v2, 0x7f0f0115

    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_b
    iget-object v0, v13, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/z;

    const/4 v4, 0x7

    invoke-direct {v2, v13, v3, v14, v4}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_14
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {}, LT/z4;->c()Z

    move-result v0

    iget-object v2, v13, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/v;

    invoke-direct {v3, v0, v13, v14, v6}, LT/v;-><init>(ZLandroid/content/ContextWrapper;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_15
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-string v0, "[ -f \'/data/local/hvac-digital/sysui.apk\' ] && echo HV_YES || echo HV_NO"

    const/16 v3, 0x1f40

    invoke-virtual {v13, v3, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "HV_YES"

    invoke-static {v0, v3, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    invoke-static {v0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-static {v0, v2, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2b
    move v9, v11

    :cond_2c
    iget-object v0, v13, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/z2;

    invoke-direct {v2, v3, v9, v13, v14}, LT/z2;-><init>(ZZLcom/ex/auto/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_16
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v13}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v13}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_e

    :cond_2d
    invoke-static {v14, v4, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {v14, v5, v9}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_c

    :cond_2e
    const v0, 0x7f0f00d9

    goto :goto_d

    :cond_2f
    :goto_c
    const v0, 0x7f0f00da

    :goto_d
    invoke-virtual {v13, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v13}, Lcom/ex/auto/MainActivity;->e1()V

    :cond_30
    :goto_e
    return-void

    :pswitch_17
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-string v2, "CarPlay connect"

    :try_start_1
    invoke-static {v13, v14}, LT/Y;->w(Landroid/content/Context;Ljava/lang/String;)LT/X;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resultado="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (preferido="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v14, :cond_31

    const-string v14, "qualquer"

    :cond_31
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v2, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "erro: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v2, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
