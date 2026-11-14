.class public final synthetic LT/T1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 0

    iput p1, p0, LT/T1;->a:I

    iput-object p2, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    const p1, 0x102000b

    const v0, 0x7f0f0030

    const v1, 0x7f0f0335

    const-string v2, "\n\n"

    const-string v3, "context"

    const/4 v4, -0x1

    const v5, 0x7f0f002f

    const/4 v6, 0x3

    const-string v7, "getString(...)"

    const-string v8, "binding"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget v13, p0, LT/T1;->a:I

    packed-switch v13, :pswitch_data_0

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    const-string p1, "es-CL"

    iget-object v0, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0, p1}, Lcom/ex/auto/MainActivity;->J1(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    const-string p1, "pt-BR"

    iget-object v0, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0, p1}, Lcom/ex/auto/MainActivity;->J1(Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "light_mode"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    invoke-static {p1, v1, v2}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    move v9, v12

    :cond_0
    invoke-static {v9}, Le/n;->q(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    return-void

    :pswitch_2
    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, LU/a;->i1:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    :cond_1
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_3
    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3

    iget-object v0, v0, LU/a;->x:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/ex/auto/MainActivity;->g2(Lcom/ex/auto/MainActivity;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hvac_digital_ext_temp"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "exttemp"

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/ex/auto/MainActivity;->g0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, LT/V1;

    invoke-direct {v0, p1, v1, v9}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_3
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_4
    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5

    iget-object v0, v0, LU/a;->w:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/ex/auto/MainActivity;->g2(Lcom/ex/auto/MainActivity;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hvac_digital_batt"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "batt"

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/ex/auto/MainActivity;->g0(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, LT/V1;

    invoke-direct {v0, p1, v1, v9}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_5
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_5
    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_7

    iget-object v0, v0, LU/a;->y:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/ex/auto/MainActivity;->g2(Lcom/ex/auto/MainActivity;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hvac_digital_temp"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "temp"

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Lcom/ex/auto/MainActivity;->g0(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v0, LT/V1;

    invoke-direct {v0, p1, v1, v9}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_7
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_6
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    const v0, 0x7f0f02e9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, LT/U1;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_7
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    const-string v2, "getInstalledApplications(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v2}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lv0/a;

    invoke-direct {v5, v4, v3}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    new-instance v0, LT/E;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, LT/E;-><init>(I)V

    invoke-static {v1, v0}, Lw0/i;->f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    sget-object v0, Lw0/q;->a:Lw0/q;

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_c

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/a;

    iget-object v3, v3, Lv0/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    new-array v2, v11, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "widget_apps_list"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    move-object v4, v2

    :goto_7
    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    invoke-static {v2}, Lw0/i;->j0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv0/a;

    iget-object v5, v5, Lv0/a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    add-int/lit8 v6, v11, 0x1

    aput-boolean v5, v4, v11

    move v11, v6

    goto :goto_b

    :cond_12
    new-instance v3, LT/j1;

    invoke-direct {v3, p1}, LT/j1;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f033b

    invoke-virtual {v3, v5}, LT/j1;->i(I)V

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v5, LT/I2;

    invoke-direct {v5, v0, v2}, LT/I2;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    iget-object v0, v3, LT/j1;->b:Ljava/lang/Object;

    check-cast v0, Le/e;

    iput-object v1, v0, Le/e;->n:[Ljava/lang/CharSequence;

    iput-object v5, v0, Le/e;->v:LT/I2;

    iput-object v4, v0, Le/e;->r:[Z

    iput-boolean v12, v0, Le/e;->s:Z

    new-instance v0, LT/F2;

    invoke-direct {v0, p1, v2, v12}, LT/F2;-><init>(Lcom/ex/auto/MainActivity;Ljava/util/ArrayList;I)V

    const p1, 0x104000a

    invoke-virtual {v3, p1, v0}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p1, 0x1040000

    invoke-virtual {v3, p1, v10}, LT/j1;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, LT/j1;->j()Le/i;

    :goto_c
    return-void

    :pswitch_8
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    const v0, 0x7f0f009c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, LT/U1;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_9
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    sget-object p1, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    sget-object p1, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    if-eqz p1, :cond_13

    move p1, v12

    goto :goto_d

    :cond_13
    move p1, v11

    :goto_d
    iget-object v0, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    const-class v1, Lcom/ex/auto/AppPipFloaterService;

    if-eqz p1, :cond_16

    invoke-static {v0, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    if-nez p1, :cond_14

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_e

    :cond_14
    iget-object v1, p1, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    if-nez v1, :cond_15

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_e

    :cond_15
    iput-boolean v12, p1, Lcom/ex/auto/AppPipFloaterService;->n:Z

    invoke-virtual {p1}, Lcom/ex/auto/AppPipFloaterService;->i()V

    iget-object v2, p1, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v3, p1, Lcom/ex/auto/AppPipFloaterService;->t:LB/b;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LT/s;

    invoke-direct {v3, v1, p1, v11}, LT/s;-><init>(LT/x4;Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_e
    const p1, 0x7f0f009a

    invoke-static {v0, p1, v0, v11}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto :goto_f

    :cond_16
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const p1, 0x7f0f009b

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LT/V1;

    invoke-direct {v1, v0, p1, v6}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    iget-object p1, v0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_f
    return-void

    :pswitch_a
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    sget-object p1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    sget-object p1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    if-eqz p1, :cond_17

    move p1, v12

    goto :goto_10

    :cond_17
    move p1, v11

    :goto_10
    iget-object v0, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    const-class v1, Lcom/ex/auto/SplitFloaterService;

    if-eqz p1, :cond_1a

    invoke-static {v0, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    if-nez p1, :cond_18

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_11

    :cond_18
    iget-object v1, p1, Lcom/ex/auto/SplitFloaterService;->j:LT/x4;

    iget-object v2, p1, Lcom/ex/auto/SplitFloaterService;->k:LT/x4;

    if-nez v1, :cond_19

    if-nez v2, :cond_19

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_11

    :cond_19
    iput-boolean v12, p1, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {p1}, Lcom/ex/auto/SplitFloaterService;->h()V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, LT/s4;

    invoke-direct {v4, v2, p1, v1, v12}, LT/s4;-><init>(LT/x4;Lcom/ex/auto/SplitFloaterService;LT/x4;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_11
    const p1, 0x7f0f02e7

    invoke-static {v0, p1, v0, v11}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto :goto_12

    :cond_1a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const p1, 0x7f0f02e8

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LT/V1;

    invoke-direct {v1, v0, p1, v6}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    iget-object p1, v0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_12
    return-void

    :pswitch_b
    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v3, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "aeb_restore_on_boot"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1b

    new-instance v6, LT/j1;

    invoke-direct {v6, v3}, LT/j1;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0f008a

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, LT/j1;->b:Ljava/lang/Object;

    check-cast v8, Le/e;

    iput-object v7, v8, Le/e;->d:Ljava/lang/CharSequence;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0f0084

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f0f0089

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Le/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT/X1;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v6, v0, v1}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v10}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6}, LT/j1;->j()Le/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1c

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_13

    :cond_1b
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v7, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->d1()V

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_1c

    iget-object v0, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, LT/t0;

    const/16 v2, 0x19

    invoke-direct {v1, p1, v2}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    :goto_13
    return-void

    :pswitch_c
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lw0/q;->a:Lw0/q;

    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_14

    :catchall_0
    move-object v1, v10

    :goto_14
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_1f

    :cond_1d
    :try_start_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-static {v1}, Lw0/i;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_15

    :cond_1e
    move-object v1, v10

    :goto_15
    if-nez v1, :cond_1f

    goto :goto_16

    :cond_1f
    move-object v0, v1

    :catchall_1
    :goto_16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    const v0, 0x7f0f00ea

    :goto_17
    invoke-static {p1, v0, p1, v12}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto/16 :goto_20

    :cond_20
    invoke-static {v10}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_21
    invoke-static {v1, v2}, Lw0/i;->e0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    const v2, 0x7f0f00e9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    :try_start_3
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1a

    :catchall_2
    move-object v7, v10

    :goto_1a
    if-nez v7, :cond_22

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    :cond_22
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_23
    invoke-static {v2, v3}, Lw0/i;->e0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "auto_connect_preferred_bt"

    invoke-interface {v2, v3, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-static {v2}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_1b

    :cond_24
    move-object v2, v10

    :goto_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v11

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_25

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    move v4, v6

    goto :goto_1d

    :cond_25
    add-int/2addr v6, v12

    goto :goto_1c

    :cond_26
    :goto_1d
    if-gez v4, :cond_27

    goto :goto_1e

    :cond_27
    move v11, v4

    :goto_1e
    new-instance v2, LT/j1;

    invoke-direct {v2, p1}, LT/j1;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f00ec

    invoke-virtual {v2, v3}, LT/j1;->i(I)V

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v3, LT/F2;

    invoke-direct {v3, v1, p1}, LT/F2;-><init>(Ljava/util/ArrayList;Lcom/ex/auto/MainActivity;)V

    iget-object p1, v2, LT/j1;->b:Ljava/lang/Object;

    check-cast p1, Le/e;

    iput-object v0, p1, Le/e;->n:[Ljava/lang/CharSequence;

    iput-object v3, p1, Le/e;->p:Landroid/content/DialogInterface$OnClickListener;

    iput v11, p1, Le/e;->u:I

    iput-boolean v12, p1, Le/e;->t:Z

    invoke-virtual {v2, v5, v10}, LT/j1;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, LT/j1;->j()Le/i;

    goto :goto_20

    :cond_28
    :goto_1f
    const v0, 0x7f0f00e7

    goto/16 :goto_17

    :goto_20
    return-void

    :pswitch_d
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    const p1, 0x7f0f01bc

    iget-object v0, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0f01bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/ex/auto/MainActivity;->d2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_e
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    const p1, 0x7f0f0389

    iget-object v0, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-static {v0, p1, v0, v12}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    return-void

    :pswitch_f
    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v3, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "gestures_restore_on_boot"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_29

    new-instance v6, LT/j1;

    invoke-direct {v6, v3}, LT/j1;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0f043c

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, LT/j1;->b:Ljava/lang/Object;

    check-cast v8, Le/e;

    iput-object v7, v8, Le/e;->d:Ljava/lang/CharSequence;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0f0436

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f0f043b

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Le/e;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT/X1;

    const/16 v2, 0x12

    invoke-direct {v1, v2, v3}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v6, v0, v1}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v10}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6}, LT/j1;->j()Le/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2a

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_21

    :cond_29
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v7, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->m1()V

    :cond_2a
    :goto_21
    return-void

    :pswitch_10
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    const p1, 0x7f0f0439

    iget-object v0, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0f0437

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/ex/auto/MainActivity;->d2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_11
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gestures_ac_swipe_single_step"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->b1()V

    new-instance v1, LT/c2;

    const/4 v2, 0x5

    invoke-direct {v1, v0, p1, v2}, LT/c2;-><init>(ZLcom/ex/auto/MainActivity;I)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_12
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ex/auto/AcProgramListActivity;

    iget-object v1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_13
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    const p1, 0x7f0f02ea

    iget-object v0, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-static {v0, p1, v0, v12}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    return-void

    :pswitch_14
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status_brightness2_enabled"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1, v2}, Lcom/ex/auto/MainActivity;->h1(Z)V

    if-nez v0, :cond_2b

    const v0, 0x7f0f02c3

    :goto_22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_2b
    const v0, 0x7f0f02c4

    goto :goto_22

    :goto_23
    invoke-static {p1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_15
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-nez p1, :cond_2c

    goto :goto_24

    :cond_2c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/H;

    invoke-direct {v1, p1, v9, v10}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_24
    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    const v0, 0x7f0f02ef

    invoke-static {p1, v0, p1, v11}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    return-void

    :pswitch_16
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1, v12}, Lcom/ex/auto/MainActivity;->L1(I)V

    return-void

    :pswitch_17
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1, v12}, Lcom/ex/auto/MainActivity;->M1(I)V

    return-void

    :pswitch_18
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1, v9}, Lcom/ex/auto/MainActivity;->M1(I)V

    return-void

    :pswitch_19
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1, v6}, Lcom/ex/auto/MainActivity;->M1(I)V

    return-void

    :pswitch_1a
    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2d

    iget-object v0, v0, LU/a;->D1:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    add-int/2addr v0, v12

    new-instance v1, LT/Z1;

    invoke-direct {v1, p1, v0, v11}, LT/Z1;-><init>(Lcom/ex/auto/MainActivity;II)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2d
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_1b
    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_30

    iget-object v0, v0, LU/a;->D1:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    add-int/2addr v0, v12

    invoke-static {v0, v12, v6}, LA/b;->o(III)I

    move-result v0

    iget-object v1, p1, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_2e

    const v0, 0x7f0f00d0

    invoke-static {p1, v0, p1, v11}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    goto :goto_25

    :cond_2e
    new-instance v1, LT/W1;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-static {v0, v12, v6}, LA/b;->o(III)I

    move-result v0

    iget-object v2, p1, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_2f

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, LT/W1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_2f
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, LT/v2;

    invoke-direct {v4, v2, v0, p1, v1}, LT/v2;-><init>(Landroid/car/hardware/property/CarPropertyManager;ILcom/ex/auto/MainActivity;LT/W1;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_25
    return-void

    :cond_30
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_1c
    iget-object p1, p0, LT/T1;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v0, p1, Lcom/ex/auto/MainActivity;->M:Z

    if-eqz v0, :cond_31

    invoke-virtual {p1, v11}, Lcom/ex/auto/MainActivity;->K1(Z)V

    goto :goto_26

    :cond_31
    new-instance v0, LT/j1;

    invoke-direct {v0, p1}, LT/j1;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0153

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v2, Le/e;

    iput-object v1, v2, Le/e;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0f0152

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Le/e;->f:Ljava/lang/CharSequence;

    const v1, 0x7f0f0036

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LT/X1;

    const/16 v3, 0xf

    invoke-direct {v2, v3, p1}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v1, v2}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f0f0032

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v10}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, LT/j1;->j()Le/i;

    :goto_26
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
