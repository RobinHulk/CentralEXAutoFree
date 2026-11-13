.class public final synthetic LT/W1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;
.implements LH0/p;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 0

    iput p1, p0, LT/W1;->a:I

    iput-object p2, p0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    const-string v2, "getString(...)"

    const v4, 0x7f0f00bd

    const/16 v5, 0x12c

    const v6, 0x7f0f02d6

    const v7, 0x7f0f02d5

    const-string v10, "exit_code=0"

    const-string v11, "apps"

    const-string v12, "volume"

    const-class v13, Lcom/ex/auto/CentralWatchdogService;

    const-string v14, "binding"

    const/4 v8, 0x1

    const-string v9, "it"

    const-string v1, "result"

    const/4 v15, 0x0

    iget v3, v0, LT/W1;->a:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "widget_float_volume_size_pct"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {v12}, LT/Y;->Z(Ljava/lang/String;)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    const-string v3, "widget_float_volume_enabled"

    invoke-static {v2, v3, v1}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    sget-object v1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {v2}, LT/Y;->E(Landroid/content/Context;)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "widget_float_apps_alpha_pct"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {v11}, LT/Y;->Z(Ljava/lang/String;)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "widget_float_apps_size_pct"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {v11}, LT/Y;->Z(Ljava/lang/String;)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    const-string v3, "widget_float_apps_enabled"

    invoke-static {v2, v3, v1}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    sget-object v1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {v2}, LT/Y;->E(Landroid/content/Context;)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    const-string v3, "widgets_poslock_all"

    invoke-static {v2, v3, v1}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "widget_float_volume_alpha_pct"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {v12}, LT/Y;->Z(Ljava/lang/String;)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "widget_bg_opacity_pct"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget v1, Lcom/ex/auto/HomeWidgetsPollService;->r:I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.ex.auto.widget.REFRESH_OPACITY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    const-string v3, "quick_access_enabled"

    invoke-static {v2, v3, v1}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    const-class v3, Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_0
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_9
    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v2, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    const-string v3, "REMOVIDO_OK"

    invoke-static {v2, v3, v15}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const v3, 0x7f0f00ac

    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const v3, 0x7f0f00ab

    goto :goto_1

    :goto_2
    xor-int/2addr v2, v8

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->i1(Lcom/ex/auto/MainActivity;)V

    :goto_3
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v9}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->i1(Lcom/ex/auto/MainActivity;)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_b
    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v2, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_3
    invoke-static {v2, v10, v15}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    iget-object v8, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v8, :cond_8

    if-eqz v3, :cond_4

    const v9, 0x7f0f00fe

    goto :goto_4

    :cond_4
    const v9, 0x7f0f024a

    :goto_4
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, LU/a;->M2:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, LT/j1;

    invoke-direct {v8, v1}, LT/j1;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_5

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    iget-object v7, v8, LT/j1;->b:Ljava/lang/Object;

    check-cast v7, Le/e;

    iput-object v6, v7, Le/e;->d:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    const v2, 0x7f0f02d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    invoke-static {v5, v2}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    iput-object v2, v7, Le/e;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v8}, LT/j1;->j()Le/i;

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->i1(Lcom/ex/auto/MainActivity;)V

    :cond_7
    :goto_7
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :cond_8
    const/4 v4, 0x0

    invoke-static {v14}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_c
    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v2, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_b

    :cond_9
    invoke-static {v2, v10, v15}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    iget-object v8, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v8, :cond_e

    if-eqz v3, :cond_a

    const v9, 0x7f0f00fe

    goto :goto_8

    :cond_a
    const v9, 0x7f0f024a

    :goto_8
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, LU/a;->M2:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, LT/j1;

    invoke-direct {v8, v1}, LT/j1;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_b

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_b
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_9
    iget-object v7, v8, LT/j1;->b:Ljava/lang/Object;

    check-cast v7, Le/e;

    iput-object v6, v7, Le/e;->d:Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    const v2, 0x7f0f02d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_c
    invoke-static {v5, v2}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    iput-object v2, v7, Le/e;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v8}, LT/j1;->j()Le/i;

    if-eqz v3, :cond_d

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->i1(Lcom/ex/auto/MainActivity;)V

    :cond_d
    :goto_b
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :cond_e
    const/4 v4, 0x0

    invoke-static {v14}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_d
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v9}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o1()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_e
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v9}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    iput-boolean v15, v1, Lcom/ex/auto/MainActivity;->K:Z

    const-string v2, "aa_wifi_bind_enabled"

    invoke-static {v1, v2, v15}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->E:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/U1;

    const/16 v4, 0x1d

    invoke-direct {v3, v4, v1}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->e1()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :cond_f
    const-string v1, "wifiManager"

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :pswitch_f
    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/String;

    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v3, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x190

    invoke-static {v1, v3}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Desinstalar ConnAdaptor"

    iget-object v5, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v5, v4, v1}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LT/L3;->a:LT/L3;

    const-string v4, "CONNADAPTOR_REVERTIDO_STOCK"

    invoke-static {v3, v4, v8}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "ConnAdaptor revertido pro de f\u00e1brica"

    goto :goto_c

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FALHOU: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x78

    invoke-static {v7, v3}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_c
    const-string v7, "Desativar"

    invoke-virtual {v1, v7, v6}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4, v8}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x7f0f0094

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    :cond_11
    const v1, 0x7f0f0164

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    return-object v1

    :pswitch_10
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v9}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o1()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_11
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    iget-object v1, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_12

    iget-object v1, v1, LU/a;->c:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :cond_12
    invoke-static {v14}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :pswitch_12
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v1, v9}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    const-string v2, "keyserver_bind_enabled"

    invoke-static {v1, v2, v15}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v2, :cond_13

    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, LT/z0;

    invoke-direct {v4, v2, v15}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    new-instance v2, LT/U1;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_13
    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/String;

    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v3, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "desativado"

    invoke-static {v3, v1, v15}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    iget-object v3, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_14

    const v1, 0x7f0f01e8

    :goto_e
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    :cond_14
    const v1, 0x7f0f0164

    goto :goto_e

    :goto_f
    return-object v1

    :pswitch_14
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_15

    const v1, 0x7f0f00b4

    :goto_10
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_15
    const v1, 0x7f0f00b5

    goto :goto_10

    :goto_11
    invoke-static {v2, v1, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_15
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    if-eqz v1, :cond_16

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_12

    :cond_16
    const-string v3, "context"

    invoke-static {v2, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    if-eqz v3, :cond_17

    const/16 v4, 0x3ab6

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_17
    :goto_12
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-static {}, LT/Y;->a0()V

    if-eqz v1, :cond_18

    const v1, 0x7f0f02cf

    :goto_13
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_18
    const v1, 0x7f0f02ce

    goto :goto_13

    :goto_14
    invoke-static {v2, v1, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_16
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    const-class v3, Lcom/ex/auto/TempBattPillFloaterService;

    if-eqz v1, :cond_19

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_15

    :cond_19
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_15
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_17
    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    if-eqz v2, :cond_1a

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1a
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v3, :cond_1b

    iget-object v4, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, LT/t0;

    const/16 v6, 0x17

    invoke-direct {v5, v3, v6}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    if-eqz v2, :cond_1c

    const v2, 0x7f0f038b

    :goto_16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_1c
    const v2, 0x7f0f038a

    goto :goto_16

    :goto_17
    invoke-static {v1, v2, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_18
    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v2, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "routes_removed"

    invoke-static {v2, v1, v15}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    iput-boolean v15, v1, Lcom/ex/auto/MainActivity;->Q:Z

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/U1;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v1}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    :pswitch_19
    iget-object v1, v0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    if-eqz v2, :cond_1e

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1e
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v3, :cond_1f

    iget-object v4, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, LT/z0;

    const/16 v6, 0xa

    invoke-direct {v5, v3, v6}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    if-eqz v2, :cond_20

    const v2, 0x7f0f00c1

    :goto_18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_20
    const v2, 0x7f0f00c0

    goto :goto_18

    :goto_19
    invoke-static {v1, v2, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
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
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const v0, 0x7f0f002f

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, LT/W1;->b:Lcom/ex/auto/MainActivity;

    iget v4, p0, LT/W1;->a:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, LH0/a;

    sparse-switch v4, :sswitch_data_0

    sget p2, Lcom/ex/auto/MainActivity;->u0:I

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LT/j1;

    invoke-direct {p1, v3}, LT/j1;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f02b4

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p1, LT/j1;->b:Ljava/lang/Object;

    check-cast v2, Le/e;

    iput-object p2, v2, Le/e;->d:Ljava/lang/CharSequence;

    const p2, 0x7f0f02b3

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Le/e;->f:Ljava/lang/CharSequence;

    iput-boolean v1, v2, Le/e;->k:Z

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, LT/X1;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v3}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {p1, p2, v0}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const p2, 0x7f0f002d

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, LT/X1;

    const/16 v1, 0xb

    invoke-direct {v0, v1, v3}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {p1, p2, v0}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, LT/j1;->j()Le/i;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "rvc_black_bg"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->v1()V

    const p1, 0x7f0f02b2

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, LT/U1;

    const/4 p2, 0x4

    invoke-direct {p1, p2, v3}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object p2, v3, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :sswitch_0
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    if-nez p1, :cond_1

    new-instance p1, LT/j1;

    invoke-direct {p1, v3}, LT/j1;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f02dc

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, LT/j1;->b:Ljava/lang/Object;

    check-cast v4, Le/e;

    iput-object v1, v4, Le/e;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0f02d8

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Le/e;->f:Ljava/lang/CharSequence;

    const v1, 0x7f0f0030

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, LT/X1;

    invoke-direct {v5, v2, v3}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {p1, v1, v5}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT/g;

    invoke-direct {v1, p2, v2}, LT/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v1}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, LT/M2;

    invoke-direct {v0, p2, v2}, LT/M2;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v4, Le/e;->l:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1}, LT/j1;->j()Le/i;

    move-result-object p1

    const p2, 0x102000b

    invoke-virtual {p1, p2}, Le/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "speed_auto_lock_enabled"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3, v0}, Lcom/ex/auto/MainActivity;->x(Z)V

    :cond_2
    :goto_1
    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :sswitch_1
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_3

    const p1, 0x7f0f00cf

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-interface {p2}, LH0/a;->a()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "aeb_desired"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->d1()V

    new-instance p2, Ljava/lang/Thread;

    new-instance v1, LT/v;

    invoke-direct {v1, v0, p1, v3, v2}, LT/v;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :goto_2
    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :sswitch_2
    sget p2, Lcom/ex/auto/MainActivity;->u0:I

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LT/U1;

    const/16 p2, 0x10

    invoke-direct {p1, p2, v3}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object p2, v3, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "gestures_enabled"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->l1()V

    iget-object p1, v3, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p1, :cond_5

    iget-object p1, p1, LU/a;->R0:LU/b;

    iget-object p1, p1, LU/b;->r:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0f02a3

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, LT/U1;

    const/16 p2, 0xf

    invoke-direct {p1, p2, v3}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object p2, v3, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :cond_5
    const-string p1, "binding"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x7 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method
