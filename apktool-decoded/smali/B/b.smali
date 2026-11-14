.class public final LB/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LB/b;->a:I

    iput-object p1, p0, LB/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    move-object/from16 v1, p0

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0xbb8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v12, v1, LB/b;->b:Ljava/lang/Object;

    iget v13, v1, LB/b;->a:I

    packed-switch v13, :pswitch_data_0

    check-cast v12, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v12, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Lj/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/j;->l()Z

    :cond_0
    return-void

    :pswitch_0
    check-cast v12, Lj/s0;

    iput-object v8, v12, Lj/s0;->l:LB/b;

    invoke-virtual {v12}, Lj/s0;->drawableStateChanged()V

    return-void

    :pswitch_1
    check-cast v12, Landroidx/lifecycle/z;

    iget v0, v12, Landroidx/lifecycle/z;->b:I

    iget-object v2, v12, Landroidx/lifecycle/z;->f:Landroidx/lifecycle/s;

    if-nez v0, :cond_1

    iput-boolean v11, v12, Landroidx/lifecycle/z;->c:Z

    sget-object v0, Landroidx/lifecycle/k;->ON_PAUSE:Landroidx/lifecycle/k;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    :cond_1
    iget v0, v12, Landroidx/lifecycle/z;->a:I

    if-nez v0, :cond_2

    iget-boolean v0, v12, Landroidx/lifecycle/z;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    iput-boolean v11, v12, Landroidx/lifecycle/z;->d:Z

    :cond_2
    return-void

    :pswitch_2
    check-cast v12, Landroidx/fragment/app/E;

    invoke-virtual {v12, v11}, Landroidx/fragment/app/E;->w(Z)Z

    return-void

    :pswitch_3
    check-cast v12, Landroidx/fragment/app/l;

    iget-object v0, v12, Landroidx/fragment/app/l;->S:Landroidx/fragment/app/j;

    iget-object v2, v12, Landroidx/fragment/app/l;->a0:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/j;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_4
    check-cast v12, Landroidx/fragment/app/d;

    iget-object v0, v12, Landroidx/fragment/app/d;->a:Landroid/view/ViewGroup;

    iget-object v2, v12, Landroidx/fragment/app/d;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, v12, Landroidx/fragment/app/d;->c:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->d()V

    return-void

    :pswitch_5
    :try_start_0
    check-cast v12, Le/j;

    invoke-static {v12}, Landroidx/activity/g;->e(Le/j;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can not perform this action after onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    return-void

    :cond_3
    throw v0

    :pswitch_6
    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    check-cast v12, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-virtual {v12}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->k()V

    iget-object v0, v12, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :pswitch_7
    check-cast v12, Lcom/ex/auto/TimerFloaterService;

    iget-object v0, v12, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v12}, Lcom/ex/auto/TimerFloaterService;->b()V

    iget-object v0, v12, Lcom/ex/auto/TimerFloaterService;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :pswitch_8
    check-cast v12, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v0, v12, Lcom/ex/auto/QuickAccessFloaterService;->T:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const-string v2, "HH:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, v12, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, LT/H;

    check-cast v12, Lcom/ex/auto/MediaBarFloaterService;

    const/16 v3, 0x15

    invoke-direct {v2, v12, v3, v1}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_a
    check-cast v12, Lcom/ex/auto/MainActivity;

    iget-boolean v0, v12, Lcom/ex/auto/MainActivity;->I:Z

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    const-string v0, "n/d"

    iget-object v2, v12, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v3, "binding"

    if-eqz v2, :cond_a

    :try_start_1
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const-string v7, "%.1f GB"

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v13

    long-to-double v13, v13

    const-wide/high16 v15, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-object v6, v0

    :goto_3
    iget-object v2, v2, LU/a;->G2:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v12, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_9

    iget-object v2, v12, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_8

    iget-object v2, v2, LU/a;->v2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :cond_9
    new-instance v0, LT/e2;

    invoke-direct {v0, v2, v12, v10}, LT/e2;-><init>(Landroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/MainActivity;I)V

    iget-object v2, v12, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_4
    iget-object v0, v12, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    return-void

    :cond_a
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :pswitch_b
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    check-cast v12, Lcom/ex/auto/LyricsFloaterService;

    invoke-virtual {v12}, Lcom/ex/auto/LyricsFloaterService;->q()V

    iget-object v0, v12, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_c
    check-cast v12, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-static {v12}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    sget v2, Lcom/ex/auto/HomeWidgetsPollService;->r:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v20, Lcom/ex/auto/HvacDirectionWidgetProvider;

    const-class v21, Lcom/ex/auto/HvacDirectionVerticalWidgetProvider;

    const-class v13, Lcom/ex/auto/DriveRegenWidgetProvider;

    const-class v14, Lcom/ex/auto/DriveModeVerticalWidgetProvider;

    const-class v15, Lcom/ex/auto/RegenVerticalWidgetProvider;

    const-class v16, Lcom/ex/auto/FanSpeedWidgetProvider;

    const-class v17, Lcom/ex/auto/FanSpeedVerticalWidgetProvider;

    const-class v18, Lcom/ex/auto/TemperatureWidgetProvider;

    const-class v19, Lcom/ex/auto/TemperatureVerticalWidgetProvider;

    const-class v22, Lcom/ex/auto/HvacDirectionFanWidgetProvider;

    const-class v23, Lcom/ex/auto/HeatingTestWidgetProvider;

    filled-new-array/range {v13 .. v23}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_7

    :cond_b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v12, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    const-string v4, "getAppWidgetIds(...)"

    invoke-static {v3, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v3

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, v12, Lcom/ex/auto/HomeWidgetsPollService;->c:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_d

    sget-object v3, LT/H1;->a:[I

    sget-object v3, LT/H1;->f:[I

    sget-object v4, LT/H1;->h:Ljava/util/Set;

    const v5, 0x22010100

    invoke-static {v2, v5, v3, v4}, LT/H1;->g(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->d:Ljava/lang/Integer;

    sget-object v3, LT/H1;->e:[I

    sget-object v4, LT/H1;->i:Ljava/util/Set;

    const v5, 0x20020500

    invoke-static {v2, v5, v3, v4}, LT/H1;->g(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->e:Ljava/lang/Integer;

    invoke-static {v2}, LT/H1;->e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/lang/Integer;

    invoke-static {v2}, LT/H1;->k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/lang/Float;

    invoke-static {v2}, LT/H1;->l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/lang/Integer;

    invoke-static {v2}, LT/H1;->h(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->i:Ljava/lang/Boolean;

    invoke-static {v2}, LT/H1;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->j:Ljava/lang/Boolean;

    invoke-static {v2}, LT/H1;->m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Boolean;

    invoke-static {v2}, LT/H1;->f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Boolean;

    invoke-static {v2}, LT/H1;->n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Boolean;

    invoke-static {v2, v11}, LT/H1;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-static {v2, v3}, LT/H1;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v12, Lcom/ex/auto/HomeWidgetsPollService;->o:Ljava/lang/Integer;

    invoke-static {v2}, LT/H1;->d(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v12, Lcom/ex/auto/HomeWidgetsPollService;->p:Ljava/lang/Boolean;

    :cond_d
    invoke-virtual {v12, v0}, Lcom/ex/auto/HomeWidgetsPollService;->d(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v12, v0}, Lcom/ex/auto/HomeWidgetsPollService;->e(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v12, v0}, Lcom/ex/auto/HomeWidgetsPollService;->g(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v12, v0}, Lcom/ex/auto/HomeWidgetsPollService;->i(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v12, v0}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v12, v0}, Lcom/ex/auto/HomeWidgetsPollService;->f(Landroid/appwidget/AppWidgetManager;)V

    iget-object v0, v12, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    :cond_e
    :goto_7
    invoke-virtual {v12}, Landroid/app/Service;->stopSelf()V

    :goto_8
    return-void

    :pswitch_d
    check-cast v12, Lcom/ex/auto/AppPipFloaterService;

    iget-object v0, v12, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LT/B;

    invoke-direct {v3, v0, v12, v1}, LT/B;-><init>(LT/x4;Lcom/ex/auto/AppPipFloaterService;LB/b;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_9
    return-void

    :pswitch_e
    check-cast v12, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w0()Z

    return-void

    :pswitch_f
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v12, Landroidx/recyclerview/widget/RecyclerView;->H:LM/K;

    if-eqz v4, :cond_1c

    check-cast v4, LM/k;

    iget-object v5, v4, LM/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    iget-object v7, v4, LM/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    iget-object v13, v4, LM/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    iget-object v15, v4, LM/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v6, :cond_10

    if-eqz v8, :cond_10

    if-eqz v16, :cond_10

    if-eqz v14, :cond_10

    goto/16 :goto_11

    :cond_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    iget-wide v2, v4, LM/K;->d:J

    if-eqz v18, :cond_11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, LM/e0;

    iget-object v11, v9, LM/e0;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v0, v4, LM/k;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, LM/f;

    invoke-direct {v2, v4, v9, v10, v11}, LM/f;-><init>(LM/k;LM/e0;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_a

    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-nez v8, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v4, LM/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    new-instance v5, LM/e;

    const/4 v7, 0x0

    invoke-direct {v5, v4, v0, v7}, LM/e;-><init>(LM/k;Ljava/util/ArrayList;I)V

    if-nez v6, :cond_12

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM/j;

    iget-object v0, v0, LM/j;->a:LM/e0;

    iget-object v0, v0, LM/e0;->a:Landroid/view/View;

    sget-object v7, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v5, v2, v3}, Ly/y;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_b

    :cond_12
    invoke-virtual {v5}, LM/e;->run()V

    :cond_13
    :goto_b
    if-nez v14, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v4, LM/k;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v5, LM/e;

    const/4 v7, 0x1

    invoke-direct {v5, v4, v0, v7}, LM/e;-><init>(LM/k;Ljava/util/ArrayList;I)V

    if-nez v6, :cond_14

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM/i;

    iget-object v0, v0, LM/i;->a:LM/e0;

    iget-object v0, v0, LM/e0;->a:Landroid/view/View;

    sget-object v7, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v5, v2, v3}, Ly/y;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_c

    :cond_14
    invoke-virtual {v5}, LM/e;->run()V

    :cond_15
    :goto_c
    if-nez v16, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v4, LM/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    new-instance v5, LM/e;

    const/4 v7, 0x2

    invoke-direct {v5, v4, v0, v7}, LM/e;-><init>(LM/k;Ljava/util/ArrayList;I)V

    if-eqz v6, :cond_17

    if-eqz v8, :cond_17

    if-nez v14, :cond_16

    goto :goto_d

    :cond_16
    invoke-virtual {v5}, LM/e;->run()V

    goto :goto_11

    :cond_17
    :goto_d
    if-nez v6, :cond_18

    goto :goto_e

    :cond_18
    const-wide/16 v2, 0x0

    :goto_e
    if-nez v8, :cond_19

    iget-wide v6, v4, LM/K;->e:J

    goto :goto_f

    :cond_19
    const-wide/16 v6, 0x0

    :goto_f
    if-nez v14, :cond_1a

    iget-wide v8, v4, LM/K;->f:J

    goto :goto_10

    :cond_1a
    const-wide/16 v8, 0x0

    :goto_10
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v6, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM/e0;

    iget-object v0, v0, LM/e0;->a:Landroid/view/View;

    sget-object v2, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v5, v6, v7}, Ly/y;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_1b
    :goto_11
    const/4 v0, 0x0

    goto :goto_12

    :cond_1c
    move v0, v10

    :goto_12
    iput-boolean v0, v12, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    return-void

    :pswitch_10
    check-cast v12, LM/o;

    iget v0, v12, LM/o;->A:I

    iget-object v2, v12, LM/o;->z:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1e

    goto :goto_13

    :cond_1d
    const/4 v3, 0x2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1e
    const/4 v0, 0x3

    iput v0, v12, LM/o;->A:I

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v0, 0x1f4

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :goto_13
    return-void

    :pswitch_11
    move v4, v10

    check-cast v12, LE/e;

    invoke-virtual {v12, v4}, LE/e;->n(I)V

    return-void

    :pswitch_12
    move v4, v10

    check-cast v12, LB/h;

    iget-boolean v0, v12, LB/h;->o:Z

    if-nez v0, :cond_1f

    goto/16 :goto_16

    :cond_1f
    iget-boolean v0, v12, LB/h;->m:Z

    iget-object v2, v12, LB/h;->a:LB/a;

    if-eqz v0, :cond_20

    iput-boolean v4, v12, LB/h;->m:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, LB/a;->e:J

    const-wide/16 v5, -0x1

    iput-wide v5, v2, LB/a;->g:J

    iput-wide v3, v2, LB/a;->f:J

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v2, LB/a;->h:F

    :cond_20
    iget-wide v3, v2, LB/a;->g:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_21

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, LB/a;->g:J

    iget v0, v2, LB/a;->i:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_21

    :goto_14
    const/4 v0, 0x0

    goto :goto_15

    :cond_21
    invoke-virtual {v12}, LB/h;->e()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_14

    :goto_15
    iput-boolean v0, v12, LB/h;->o:Z

    goto :goto_16

    :cond_22
    const/4 v0, 0x0

    iget-boolean v3, v12, LB/h;->n:Z

    iget-object v4, v12, LB/h;->c:Landroid/widget/ListView;

    if-eqz v3, :cond_23

    iput-boolean v0, v12, LB/h;->n:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-wide/from16 v21, v23

    invoke-static/range {v21 .. v28}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_23
    iget-wide v5, v2, LB/a;->f:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_24

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, LB/a;->a(J)F

    move-result v0

    const/high16 v3, -0x3f800000    # -4.0f

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v0, v7

    add-float/2addr v0, v3

    iget-wide v7, v2, LB/a;->f:J

    sub-long v7, v5, v7

    iput-wide v5, v2, LB/a;->f:J

    long-to-float v3, v7

    mul-float/2addr v3, v0

    iget v0, v2, LB/a;->d:F

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iget-object v2, v12, LB/h;->q:Lj/s0;

    invoke-static {v2, v0}, LB/i;->b(Landroid/widget/ListView;I)V

    sget-object v0, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v4, v1}, Ly/y;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_16
    return-void

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
