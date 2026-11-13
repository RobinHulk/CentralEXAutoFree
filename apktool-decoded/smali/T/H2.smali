.class public final synthetic LT/H2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;ZZI)V
    .locals 0

    .line 1
    iput p4, p0, LT/H2;->a:I

    iput-object p1, p0, LT/H2;->b:Landroid/content/ContextWrapper;

    iput-boolean p2, p0, LT/H2;->c:Z

    iput-boolean p3, p0, LT/H2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/ex/auto/MainActivity;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LT/H2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LT/H2;->c:Z

    iput-boolean p2, p0, LT/H2;->d:Z

    iput-object p3, p0, LT/H2;->b:Landroid/content/ContextWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const v0, 0x7f0f0034

    const v1, 0x7f0f002f

    const-string v2, "binding"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p0, LT/H2;->a:I

    packed-switch v6, :pswitch_data_0

    iget-object v0, p0, LT/H2;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v1, p0, LT/H2;->c:Z

    iget-boolean v2, p0, LT/H2;->d:Z

    iget-boolean v6, v0, Lcom/ex/auto/QuickAccessFloaterService;->L:Z

    if-nez v6, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v1, :cond_3

    sput-boolean v5, Lcom/ex/auto/QuickAccessFloaterService;->n0:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/ex/auto/QuickAccessFloaterService;->P:J

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v6, LC/a;

    const/4 v7, 0x2

    invoke-direct {v6, v0, v1, v7}, LC/a;-><init>(Landroid/app/Service;Landroid/os/Handler;I)V

    iput-object v6, v0, Lcom/ex/auto/QuickAccessFloaterService;->Q:LC/a;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v7, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, LT/k4;

    const/4 v6, 0x5

    invoke-direct {v1, v0, v6}, LT/k4;-><init>(Lcom/ex/auto/QuickAccessFloaterService;I)V

    iput-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->R:LT/k4;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v2, :cond_4

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->S:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v6, -0x1000000

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    new-instance v3, LT/c4;

    invoke-direct {v3, v0, v5}, LT/c4;-><init>(Lcom/ex/auto/QuickAccessFloaterService;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "HH:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x42b00000    # 88.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v5, "#5A5A5A"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    iput-object v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->T:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->S:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x100

    const/4 v11, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x7f6

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :try_start_0
    iget-object v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    if-eqz v3, :cond_2

    invoke-interface {v3, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->U:LB/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showScreenOffClockOverlay: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 desfazendo turnOffScreen"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickAccessFloater"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->S:Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->T:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->Z()V

    goto :goto_2

    :cond_3
    iput-boolean v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->L:Z

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, LT/H2;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_a

    iget-object v1, v1, LU/a;->q2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v1, p0, LT/H2;->c:Z

    iget-boolean v3, p0, LT/H2;->d:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_6

    const-string v6, "swTtl65"

    iget-object v1, v1, LU/a;->q2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/ex/auto/MainActivity;->O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_5

    const v2, 0x7f0f0316

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, LU/a;->Q2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_7
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_9

    if-eqz v3, :cond_8

    const v2, 0x7f0f0318

    goto :goto_3

    :cond_8
    const v2, 0x7f0f0317

    :goto_3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, LU/a;->Q2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void

    :cond_9
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    iget-object v3, p0, LT/H2;->b:Landroid/content/ContextWrapper;

    check-cast v3, Lcom/ex/auto/MainActivity;

    iget-object v6, v3, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v6, :cond_f

    iget-object v2, v6, LU/a;->g:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v2, p0, LT/H2;->c:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, LT/H2;->d:Z

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->D0()Z

    move-result v2

    new-instance v5, LT/j1;

    invoke-direct {v5, v3}, LT/j1;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0f020a

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, LT/j1;->b:Ljava/lang/Object;

    check-cast v7, Le/e;

    iput-object v6, v7, Le/e;->d:Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    const v6, 0x7f0f0209

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_c
    const v6, 0x7f0f0208

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    iput-object v6, v7, Le/e;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_d

    const v0, 0x7f0f0154

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, LT/X1;

    const/16 v6, 0x15

    invoke-direct {v2, v6, v3}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v5, v0, v2}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_6
    invoke-virtual {v5}, LT/j1;->j()Le/i;

    goto :goto_8

    :cond_e
    :goto_7
    new-instance v0, LT/G2;

    const/16 v1, 0xb

    invoke-direct {v0, v1, v3}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v3, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_8
    return-void

    :cond_f
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_2
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    iget-boolean v2, p0, LT/H2;->c:Z

    iget-boolean v4, p0, LT/H2;->d:Z

    iget-object v6, p0, LT/H2;->b:Landroid/content/ContextWrapper;

    check-cast v6, Lcom/ex/auto/MainActivity;

    if-nez v2, :cond_10

    if-nez v4, :cond_10

    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->D0()Z

    move-result v7

    if-nez v7, :cond_10

    new-instance v1, LT/j1;

    invoke-direct {v1, v6}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0244

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v4, Le/e;

    iput-object v2, v4, Le/e;->d:Ljava/lang/CharSequence;

    const v2, 0x7f0f0242

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Le/e;->f:Ljava/lang/CharSequence;

    iput-boolean v3, v4, Le/e;->k:Z

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, LT/X1;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v6}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v1, v0, v2}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, LT/M2;

    invoke-direct {v0, v6, v5}, LT/M2;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v4, Le/e;->l:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    goto :goto_a

    :cond_10
    if-nez v2, :cond_11

    if-nez v4, :cond_11

    const v0, 0x7f0f0435

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_11
    const v0, 0x7f0f0131

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    new-instance v2, LT/j1;

    invoke-direct {v2, v6}, LT/j1;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0439

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, LT/j1;->b:Ljava/lang/Object;

    check-cast v5, Le/e;

    iput-object v4, v5, Le/e;->d:Ljava/lang/CharSequence;

    iput-object v0, v5, Le/e;->f:Ljava/lang/CharSequence;

    iput-boolean v3, v5, Le/e;->k:Z

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT/X1;

    const/16 v3, 0x19

    invoke-direct {v1, v3, v6}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v2, v0, v1}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f0f0030

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT/X1;

    const/16 v3, 0x1a

    invoke-direct {v1, v3, v6}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v2, v0, v1}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, LT/j1;->j()Le/i;

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
