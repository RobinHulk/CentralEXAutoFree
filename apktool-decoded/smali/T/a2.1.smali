.class public final synthetic LT/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, LT/a2;->a:I

    iput-object p1, p0, LT/a2;->c:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/a2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;I)V
    .locals 0

    .line 2
    iput p3, p0, LT/a2;->a:I

    iput-object p1, p0, LT/a2;->b:Ljava/lang/String;

    iput-object p2, p0, LT/a2;->c:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/16 v0, 0xa

    const/4 v1, 0x0

    iget-object v2, p0, LT/a2;->c:Lcom/ex/auto/MainActivity;

    iget-object v3, p0, LT/a2;->b:Ljava/lang/String;

    iget v4, p0, LT/a2;->a:I

    packed-switch v4, :pswitch_data_0

    const-string p1, "\n\nFalha ao aplicar o fundo preto na r\u00e9\n\n"

    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    sget-object v4, LT/Y0;->a:LT/Y0;

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "<get-prefs>(...)"

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "DR"

    const-string v6, "error_report_queue"

    const-string v7, "[CentralEXAuto] Erro \u2014 "

    const-string v8, "Falha ao aplicar o fundo preto na r\u00e9"

    const-string v9, "details"

    invoke-static {v3, v9}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    const-string v10, "[]"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v4}, LT/Y0;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "s"

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "b"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v9, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "erro enfileirado ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " na fila)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "queueErrorReport: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v5}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->D0()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f02c8

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, LT/G2;

    const/16 p2, 0xc

    invoke-direct {p1, p2, v2}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object p2, v2, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_1
    const p1, 0x7f0f016d

    invoke-static {v2, p1, v2, p2}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    :goto_3
    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, p0, LT/a2;->c:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "temp"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "hvac_digital_ext_temp"

    const-string v5, "hvac_digital_batt"

    const-string v6, "hvac_digital_temp"

    if-eqz v2, :cond_2

    move-object v9, v6

    goto :goto_4

    :cond_2
    const-string v2, "batt"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v9, v5

    goto :goto_4

    :cond_3
    move-object v9, v4

    :goto_4
    const-string v2, "exttemp"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    move v10, p2

    goto :goto_5

    :cond_4
    move v10, v1

    :goto_5
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v9, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz v10, :cond_5

    invoke-interface {v2, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const v2, 0x7f0f00a2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {}, LT/m;->l()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Landroid/widget/ProgressBar;

    const v3, 0x1010078

    invoke-direct {v2, v0, p1, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 p1, 0x64

    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    const/16 p1, 0x14

    int-to-float p1, p1

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    iput-object v2, v0, Lcom/ex/auto/MainActivity;->g0:Landroid/widget/ProgressBar;

    new-instance p1, LT/j1;

    invoke-direct {p1, v0}, LT/j1;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f01a2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p1, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object p2, v3, Le/e;->d:Ljava/lang/CharSequence;

    const p2, 0x7f0f01a1

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Le/e;->f:Ljava/lang/CharSequence;

    iput-object v2, v3, Le/e;->q:Landroid/view/View;

    iput-boolean v1, v3, Le/e;->k:Z

    invoke-virtual {p1}, LT/j1;->j()Le/i;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/MainActivity;->h0:Le/i;

    :cond_6
    new-instance p1, LT/W2;

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v4 .. v10}, LT/W2;-><init>(Lcom/ex/auto/MainActivity;ZZZLjava/lang/String;Z)V

    iget-object p2, v0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    invoke-static {v2, v3}, Lcom/ex/auto/MainActivity;->Q1(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_2
    invoke-static {v2, v3}, Lcom/ex/auto/MainActivity;->R1(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object p2, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p2, :cond_7

    iget-object p1, p2, LU/a;->H:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, LT/i2;

    const/4 p2, 0x6

    invoke-direct {p1, p2, v2}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance p2, LT/z;

    invoke-direct {p2, v2, v3, p1, v0}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, v2, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    const-string p2, "binding"

    invoke-static {p2}, LI0/f;->h(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
