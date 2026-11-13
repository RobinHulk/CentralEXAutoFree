.class public final synthetic LT/X3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;I)V
    .locals 0

    iput p2, p0, LT/X3;->a:I

    iput-object p1, p0, LT/X3;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v1, p0

    const/16 v0, 0x8

    const/16 v2, 0xa

    const/16 v3, 0xc

    const/4 v4, 0x0

    const-string v5, "QuickAccessFloater"

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v1, LT/X3;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v9, v1, LT/X3;->a:I

    packed-switch v9, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v2, "settings put global audio_speed_volume_enable "

    const-string v3, "settings put global heads_up_notifications_enabled "

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v4, v8, Lcom/ex/auto/QuickAccessFloaterService;->M:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, LA/b;->k0(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "wakeScreen: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v5}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0xbb8

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v8, Lcom/ex/auto/QuickAccessFloaterService;->N:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lcom/ex/auto/QuickAccessFloaterService;->O:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const v0, 0x7f0f027f

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f018e

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0f0196

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0f0034

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x7f6

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "showFreeformSetupDialog: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v5}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, v8, Lcom/ex/auto/QuickAccessFloaterService;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v8, v0}, Lcom/ex/auto/QuickAccessFloaterService;->U(Landroid/widget/TextView;)V

    :cond_1
    return-void

    :pswitch_3
    iget-boolean v0, v8, Lcom/ex/auto/QuickAccessFloaterService;->z:Z

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/ex/auto/QuickAccessFloaterService;->m()V

    :cond_2
    return-void

    :pswitch_4
    sget-object v9, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-object v9, Lw0/q;->a:Lw0/q;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    :try_start_4
    invoke-virtual {v10, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    const-string v11, "getInstalledApplications(...)"

    invoke-static {v7, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    iget v14, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v14, 0x1

    if-nez v15, :cond_3

    and-int/lit16 v14, v14, 0x80

    if-nez v14, :cond_3

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    goto/16 :goto_9

    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_a

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    const-string v12, "pidof \'"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' >/dev/null 2>&1 && echo RUNNING:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "toString(...)"

    invoke-static {v2, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x2710

    invoke-virtual {v8, v5, v2}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/j;->G0(Ljava/lang/CharSequence;)LN0/c;

    move-result-object v2

    new-instance v5, LT/a3;

    invoke-direct {v5, v0}, LT/a3;-><init>(I)V

    new-instance v0, LN0/c;

    const/4 v7, 0x3

    invoke-direct {v0, v2, v5, v7}, LN0/c;-><init>(LN0/f;Ljava/lang/Object;I)V

    new-instance v2, LT/a3;

    const/16 v5, 0x9

    invoke-direct {v2, v5}, LT/a3;-><init>(I)V

    new-instance v5, LN0/c;

    invoke-direct {v5, v0, v2, v6}, LN0/c;-><init>(LN0/f;Ljava/lang/Object;I)V

    invoke-interface {v5}, LN0/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v0, Lw0/s;->a:Lw0/s;

    goto :goto_5

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v5, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v5, "it"

    invoke-static {v2, v5}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "RUNNING:"

    invoke-static {v2, v6}, LO0/j;->K0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v2, "singleton(...)"

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v7, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v9, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-static {v2, v5}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, LO0/j;->K0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move-object v0, v7

    :goto_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_5
    invoke-virtual {v10, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_5
    move-object v5, v4

    :goto_8
    new-instance v9, Lv0/d;

    invoke-direct {v9, v6, v7, v5}, Lv0/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    new-instance v2, LT/E;

    invoke-direct {v2, v3}, LT/E;-><init>(I)V

    invoke-static {v0, v2}, Lw0/i;->f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    goto :goto_a

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "runningUserApps: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v5}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_a
    iget-object v0, v8, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, LT/H;

    const/16 v3, 0x1d

    invoke-direct {v2, v9, v3, v8}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_5
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-static {}, LT/z4;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v8, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, LT/X3;

    invoke-direct {v2, v8, v3}, LT/X3;-><init>(Lcom/ex/auto/QuickAccessFloaterService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    return-void

    :pswitch_6
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "settings get global policy_control"

    const/16 v2, 0x1388

    invoke-static {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->G(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ADB_FAIL"

    invoke-static {v0, v3}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v0, v8, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, LT/X3;

    const/16 v3, 0xd

    invoke-direct {v2, v8, v3}, LT/X3;-><init>(Lcom/ex/auto/QuickAccessFloaterService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d

    :cond_e
    const-string v3, "immersive.full"

    invoke-static {v0, v3, v7}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v3, "settings delete global policy_control"

    goto :goto_b

    :cond_f
    const-string v3, "settings put global policy_control immersive.full=*"

    :goto_b
    invoke-static {v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->G(ILjava/lang/String;)Ljava/lang/String;

    const-string v3, "am force-stop com.android.systemui"

    invoke-static {v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->G(ILjava/lang/String;)Ljava/lang/String;

    sget-object v2, LT/L3;->a:LT/L3;

    if-eqz v0, :cond_10

    const-string v0, "desligada"

    goto :goto_c

    :cond_10
    const-string v0, "ligada"

    :goto_c
    const-string v3, "tela cheia: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "QuickAccess"

    invoke-virtual {v2, v3, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :pswitch_7
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v8}, Lcom/ex/auto/QuickAccessFloaterService;->e()V

    return-void

    :pswitch_8
    iget-object v0, v8, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    goto/16 :goto_e

    :cond_11
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v10, "#B0000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v11, Lcom/ex/auto/QuickAccessFloaterService;->q0:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v12, Lcom/ex/auto/QuickAccessFloaterService;->o0:I

    const/16 v13, 0x12

    invoke-virtual {v8, v12, v13, v11, v6}, Lcom/ex/auto/QuickAccessFloaterService;->K(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v11, 0x14

    invoke-virtual {v8, v11}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v12

    invoke-virtual {v8, v13}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v14

    invoke-virtual {v8, v11}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v11

    invoke-virtual {v8, v13}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v13

    invoke-virtual {v10, v12, v14, v11, v13}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0f02ba

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget v12, Lcom/ex/auto/QuickAccessFloaterService;->v0:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0f02b9

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v13, 0x41700000    # 15.0f

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    sget v14, Lcom/ex/auto/QuickAccessFloaterService;->w0:I

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v2}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v2

    const/16 v14, 0x10

    invoke-virtual {v8, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v14

    invoke-virtual {v11, v7, v2, v7, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x104

    invoke-virtual {v8, v14}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v14

    const/4 v15, -0x2

    invoke-direct {v2, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0f0199

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v2, v11, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    sget v6, Lcom/ex/auto/QuickAccessFloaterService;->r0:I

    invoke-virtual {v8, v6, v3, v4, v7}, Lcom/ex/auto/QuickAccessFloaterService;->K(IILjava/lang/Integer;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    invoke-virtual {v8, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    invoke-virtual {v2, v7, v6, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, LT/c4;

    const/4 v6, 0x2

    invoke-direct {v3, v8, v6}, LT/c4;-><init>(Lcom/ex/auto/QuickAccessFloaterService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, v8, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v20, 0x100

    const/16 v21, -0x3

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x7f6

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :try_start_6
    iget-object v3, v8, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    if-eqz v3, :cond_12

    invoke-interface {v3, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showScreenOffWarning: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v5}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iput-object v4, v8, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Lcom/ex/auto/QuickAccessFloaterService;->S(Z)V

    :cond_12
    :goto_e
    return-void

    :pswitch_9
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v8, v7}, Lcom/ex/auto/QuickAccessFloaterService;->S(Z)V

    return-void

    :pswitch_a
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v8}, Lcom/ex/auto/QuickAccessFloaterService;->u()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-virtual {v8}, Lcom/ex/auto/QuickAccessFloaterService;->u()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    return-void

    :pswitch_b
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v8}, Lcom/ex/auto/QuickAccessFloaterService;->e()V

    return-void

    :pswitch_c
    iget-boolean v2, v8, Lcom/ex/auto/QuickAccessFloaterService;->z:Z

    if-nez v2, :cond_13

    invoke-virtual {v8}, Lcom/ex/auto/QuickAccessFloaterService;->q()V

    :cond_13
    invoke-virtual {v8}, Lcom/ex/auto/QuickAccessFloaterService;->i()V

    iget-object v2, v8, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_f

    :cond_14
    move v6, v7

    :goto_f
    iget-object v2, v8, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_15

    iget-object v3, v8, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_15

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_15
    invoke-virtual {v8}, Lcom/ex/auto/QuickAccessFloaterService;->g()Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v6, :cond_16

    move v0, v7

    :cond_16
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iput-object v2, v8, Lcom/ex/auto/QuickAccessFloaterService;->i:Landroid/widget/LinearLayout;

    iget-object v0, v8, Lcom/ex/auto/QuickAccessFloaterService;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_17
    if-eqz v6, :cond_18

    invoke-virtual {v8}, Lcom/ex/auto/QuickAccessFloaterService;->I()V

    :cond_18
    const-wide/16 v2, 0xfa0

    invoke-virtual {v8, v2, v3}, Lcom/ex/auto/QuickAccessFloaterService;->M(J)V

    return-void

    :pswitch_d
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v8}, Lcom/ex/auto/QuickAccessFloaterService;->i()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
