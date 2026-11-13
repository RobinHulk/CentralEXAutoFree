.class public final synthetic LT/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LT/z;->a:I

    iput-object p1, p0, LT/z;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/z;->c:Ljava/lang/Object;

    iput-object p3, p0, LT/z;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    move-object/from16 v1, p0

    const/4 v0, 0x2

    const/4 v2, 0x3

    const/16 v3, 0x1770

    const/16 v4, 0xa

    const/16 v5, 0x8

    const v6, 0x7f0f0243

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget v11, v1, LT/z;->a:I

    packed-switch v11, :pswitch_data_0

    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, LA/e;

    iget-object v2, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v2, LA/b;

    iget-object v3, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, LA/b;->u(Landroid/content/Context;)Landroidx/emoji2/text/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v0, LM/C;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/emoji2/text/h;

    check-cast v4, Landroidx/emoji2/text/n;

    iget-object v5, v4, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v3, v4, Landroidx/emoji2/text/n;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v0, LM/C;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/h;

    new-instance v4, Landroidx/emoji2/text/j;

    invoke-direct {v4, v2, v3}, Landroidx/emoji2/text/j;-><init>(LA/b;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v4}, Landroidx/emoji2/text/h;->q(LA/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-virtual {v2, v0}, LA/b;->M(Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_1
    return-void

    :pswitch_0
    sget-object v0, LT/A4;->a:Ljava/util/HashMap;

    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v0}, LT/A4;->l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0}, LT/A4;->m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v5

    iget-object v0, v1, LT/z;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v0, v3, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    new-instance v8, LT/y0;

    iget-object v2, v1, LT/z;->d:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, LT/H4;

    const/16 v7, 0x8

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LT/y0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_5
    sget-object v3, LT/n4;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v0, v2}, LT/n4;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    const-string v3, "fetch \'"

    const-string v4, "\' falhou: "

    invoke-static {v3, v2, v4}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "RemoteArtwork"

    invoke-static {v0, v3, v4}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    sget-object v0, LT/n4;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v0, LH0/l;

    invoke-interface {v0, v8}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/ex/auto/QuickAccessFloaterService;

    const-string v0, "ip link set ap0 down 2>/dev/null || true\nip rule show | grep -w \'ap0\' | awk \'{print $1}\' | sed \'s/://\' | while read p; do ip rule del prio $p 2>/dev/null; done\nam force-stop com.njda.adapter; am force-stop com.njda.aauto\nfor i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15; do\n  _s=$(getprop init.svc.AAutoMonitor); [ \"$_s\" != \"running\" ] && break; sleep 1; done\nsetprop ctl.restart AAutoMonitor\necho \"reset_ok\""

    const v2, 0x9c40

    invoke-virtual {v5, v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "reset_ok"

    invoke-static {v0, v2, v10}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    iget-object v0, v5, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v8, LT/g4;

    iget-object v2, v1, LT/z;->c:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    iget-object v2, v1, LT/z;->d:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LT/g4;-><init>(Landroid/widget/TextView;ZLcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_3
    sget-boolean v0, Lcom/ex/auto/PhoneSyncService;->v:Z

    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v2, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/PhoneSyncService;

    if-eqz v0, :cond_1

    invoke-static {v2}, LT/p4;->b(Landroid/content/Context;)Z

    goto :goto_3

    :cond_1
    invoke-static {v2}, LT/p4;->d(Landroid/content/Context;)Z

    :goto_3
    return-void

    :pswitch_4
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "ConnAdaptor: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x3e80

    invoke-static {v4, v2}, Lcom/ex/auto/MainActivity;->n2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Update"

    invoke-virtual {v3, v4, v2}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v3, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v4, "binding"

    if-eqz v2, :cond_4

    iget-object v2, v2, LU/a;->A2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3

    iget-object v0, v0, LU/a;->m:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->e1()V

    iget-object v0, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v0, LI0/i;

    iget-boolean v0, v0, LI0/i;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v3, Lcom/ex/auto/MainActivity;->n0:Z

    if-eqz v0, :cond_2

    new-instance v0, LT/j1;

    invoke-direct {v0, v3}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0038

    invoke-virtual {v0, v2}, LT/j1;->i(I)V

    iget-object v2, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v2, Le/e;

    iget-object v3, v2, Le/e;->a:Landroid/view/ContextThemeWrapper;

    const v4, 0x7f0f0037

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Le/e;->f:Ljava/lang/CharSequence;

    const v2, 0x104000a

    invoke-virtual {v0, v2, v8}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, LT/j1;->j()Le/i;

    :cond_2
    return-void

    :cond_3
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :cond_4
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :pswitch_5
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    iget-object v2, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v2, LT/k3;

    if-eqz v2, :cond_8

    iget-object v3, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v4, :cond_7

    const v5, 0x7f0f015a

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, LU/a;->A2:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->c0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, LT/y0;

    invoke-direct {v5, v0, v2, v3, v4}, LT/y0;-><init>(Lcom/ex/auto/MainActivity;LT/k3;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_7
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    invoke-static {v0, v6, v0, v9}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    :cond_9
    :goto_5
    return-void

    :pswitch_6
    const-string v0, "/data/local/tmp/CarplayMonitor-update"

    iget-object v2, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    iget-object v3, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v3, LT/j3;

    iget-object v4, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    sget v6, Lcom/ex/auto/MainActivity;->u0:I

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f40

    invoke-virtual {v2, v7, v6}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    iget-object v12, v3, LT/j3;->b:Ljava/lang/String;

    new-instance v3, LT/E2;

    const/16 v6, 0x9

    invoke-direct {v3, v6, v2}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "CarplayMonitor-update-staging"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v14, "CarplayMonitor"

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x68

    move-object v11, v2

    move-object v13, v6

    move-object/from16 v16, v4

    move-object/from16 v19, v3

    invoke-static/range {v11 .. v20}, Lcom/ex/auto/MainActivity;->j0(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILH0/a;LH0/l;I)V

    const-string v3, "CarplayMonitor"

    invoke-virtual {v2, v6, v0, v3, v10}, Lcom/ex/auto/MainActivity;->f2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "MD5"

    invoke-static {v3, v0}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/G2;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v2}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/ex/auto/MainActivity;->Z1()Ljava/lang/String;

    move-result-object v0

    const v3, 0xea60

    invoke-virtual {v2, v3, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Falha no ADB local"

    invoke-static {v0, v3, v10}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_a

    const v0, 0x7f0f00e5

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_a
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v5, v4}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f0f0205

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_c
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f0197

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/V1;

    const/16 v5, 0x10

    invoke-direct {v4, v2, v0, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_7
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void

    :pswitch_8
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pm uninstall "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x7530

    invoke-virtual {v2, v4, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, LT/y0;

    iget-object v6, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v6, LH0/a;

    invoke-direct {v5, v0, v2, v3, v6}, LT/y0;-><init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;Ljava/lang/String;LH0/a;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_9
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_e

    iget-object v0, v0, LU/a;->n:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    :cond_e
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :cond_f
    new-instance v2, LT/j1;

    invoke-direct {v2, v0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f03d2

    invoke-virtual {v2, v3}, LT/j1;->i(I)V

    iget-object v3, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v3, LT/p3;

    iget-object v4, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, LT/p3;->b:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f0f03d1

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, LT/j1;->b:Ljava/lang/Object;

    check-cast v5, Le/e;

    iput-object v4, v5, Le/e;->f:Ljava/lang/CharSequence;

    new-instance v4, LT/f;

    invoke-direct {v4, v0, v9, v3}, LT/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const v3, 0x7f0f03d6

    invoke-virtual {v2, v3, v4}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, LT/X1;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v0}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    const v4, 0x7f0f03d4

    invoke-virtual {v2, v4, v3}, LT/j1;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, LT/M2;

    invoke-direct {v3, v0, v10}, LT/M2;-><init>(Ljava/lang/Object;I)V

    iput-object v3, v5, Le/e;->l:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2}, LT/j1;->j()Le/i;

    :goto_8
    return-void

    :pswitch_a
    iget-object v0, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v0, Le/i;

    iget-object v2, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v3, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/MainActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f02ed

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Le/i;->e:Le/h;

    iput-object v2, v0, Le/h;->e:Ljava/lang/CharSequence;

    iget-object v0, v0, Le/h;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    :cond_11
    :goto_9
    return-void

    :pswitch_b
    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v3, "binding"

    if-eqz v2, :cond_18

    iget-object v2, v2, LU/a;->m:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/Serializable;

    instance-of v5, v2, Ljava/lang/Exception;

    iget-object v7, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    const-string v11, "getString(...)"

    if-eqz v5, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ConnAdaptor check erro: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Update"

    invoke-virtual {v0, v5, v4}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f0f012d

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_13

    iget-object v2, v2, LU/a;->A2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    :cond_13
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :cond_14
    check-cast v2, Lv0/d;

    iget-object v5, v2, Lv0/d;->a:Ljava/lang/Object;

    const-string v6, "null cannot be cast to non-null type com.ex.auto.MainActivity.ConnadaptorManifestInfo"

    invoke-static {v5, v6}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, LT/k3;

    iget-object v6, v2, Lv0/d;->b:Ljava/lang/Object;

    const-string v9, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v6, v9}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    iget-object v2, v2, Lv0/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v12, "connadaptor_expected_md5"

    invoke-interface {v9, v12, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v2, :cond_16

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const v2, 0x7f0f003c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v5, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f0f012e

    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, LU/a;->A2:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "connadaptor_arquivo_versao"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    :cond_15
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :cond_16
    new-instance v3, LT/j1;

    invoke-direct {v3, v0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0126

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v3, LT/j1;->b:Ljava/lang/Object;

    check-cast v9, Le/e;

    iput-object v4, v9, Le/e;->d:Ljava/lang/CharSequence;

    if-nez v2, :cond_17

    const v2, 0x7f0f0103

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_17
    const v2, 0x7f0f011b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_b
    iput-object v2, v9, Le/e;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0031

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, LT/L2;

    invoke-direct {v4, v0, v5, v6, v7}, LT/L2;-><init>(Lcom/ex/auto/MainActivity;LT/k3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0f0033

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v8}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, LT/j1;->j()Le/i;

    :goto_c
    return-void

    :cond_18
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v8

    :pswitch_c
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    sget-object v0, LT/K1;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, LT/K1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/LyricsFloaterService;

    iput-object v0, v2, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    invoke-virtual {v2}, Lcom/ex/auto/LyricsFloaterService;->g()V

    return-void

    :pswitch_d
    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/widget/TextView;

    if-eqz v2, :cond_1a

    iget-object v3, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\ud83c\udf21 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\u00b0C"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    goto :goto_d

    :cond_19
    const-string v3, "\ud83c\udf21 --\u00b0C"

    :goto_d
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    iget-object v2, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CPU "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    goto :goto_e

    :cond_1b
    const-string v2, "CPU --%"

    :goto_e
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    return-void

    :pswitch_e
    :try_start_8
    const-string v0, "top -b -n 1 -m 25 -s 9"

    new-instance v2, LT/n;

    invoke-direct {v2, v10}, LT/n;-><init>(I)V

    invoke-static {v0, v3, v8, v2}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_f

    :catchall_4
    const-string v0, ""

    :goto_f
    sget-object v2, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object v2, v1, LT/z;->b:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v6, "(\\d+)%cpu"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v11, "compile(...)"

    invoke-static {v6, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "input"

    invoke-static {v0, v13}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v14, "matcher(...)"

    invoke-static {v6, v14}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v10, v0}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object v6

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, LO0/e;->a()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v9}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1d

    invoke-static {v6}, LO0/q;->o0(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-lez v14, :cond_1d

    goto :goto_10

    :cond_1d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v6

    if-ge v6, v9, :cond_1e

    move v6, v9

    :cond_1e
    mul-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    :goto_10
    invoke-static {v0}, LO0/j;->G0(Ljava/lang/CharSequence;)LN0/c;

    move-result-object v0

    iget-object v14, v0, LN0/c;->b:LN0/f;

    invoke-interface {v14}, LN0/f;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_26

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v0, LN0/c;->c:Ljava/lang/Object;

    check-cast v9, LH0/l;

    invoke-interface {v9, v8}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-static {v9, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v13}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, LO0/j;->L0(I)V

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-nez v18, :cond_1f

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_12

    :cond_1f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v10

    :cond_20
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v7

    :goto_12
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_25

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, LO0/r;->p0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_25

    const/16 v5, 0x8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, LO0/q;->o0(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    div-float v24, v4, v6

    const/16 v4, 0xb

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, ":"

    invoke-static {v4, v7}, LO0/j;->T0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "["

    invoke-static {v4, v7}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_21

    const-string v7, "/"

    invoke-static {v4, v7}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_21

    const-string v7, " "

    invoke-static {v4, v7, v10}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-eqz v7, :cond_22

    :catchall_5
    :cond_21
    const/16 v4, 0xa

    :goto_13
    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_11

    :cond_22
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    :try_start_9
    invoke-virtual {v2, v4, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    :try_start_a
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v22, v8

    goto :goto_14

    :catchall_6
    move-object/from16 v22, v4

    :goto_14
    :try_start_b
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object/from16 v23, v8

    goto :goto_15

    :catchall_7
    const/16 v23, 0x0

    :goto_15
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-nez v7, :cond_24

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    goto :goto_16

    :cond_23
    move/from16 v25, v10

    goto :goto_17

    :cond_24
    :goto_16
    const/16 v25, 0x1

    :goto_17
    new-instance v7, LT/B1;

    move-object/from16 v20, v7

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v25}, LT/B1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;FZ)V

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x5

    if-lt v4, v7, :cond_21

    goto :goto_18

    :cond_25
    const/16 v4, 0xa

    const/16 v5, 0x8

    goto :goto_13

    :cond_26
    :goto_18
    iget-object v0, v12, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v2, LT/y0;

    iget-object v3, v1, LT/z;->c:Ljava/lang/Object;

    move-object v13, v3

    check-cast v13, Landroid/widget/FrameLayout;

    iget-object v3, v1, LT/z;->d:Ljava/lang/Object;

    move-object v14, v3

    check-cast v14, Landroid/widget/LinearLayout;

    const/16 v16, 0x1

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, LT/y0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_f
    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, LT/C1;

    iget-boolean v2, v0, LT/C1;->a:Z

    iget-object v3, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-boolean v4, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Z

    iget-boolean v0, v0, LT/C1;->b:Z

    if-ne v2, v4, :cond_28

    iget-boolean v4, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->g:Z

    if-eq v0, v4, :cond_27

    goto :goto_19

    :cond_27
    move v9, v10

    goto :goto_1a

    :cond_28
    :goto_19
    const/4 v9, 0x1

    :goto_1a
    iput-boolean v2, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Z

    iput-boolean v0, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->g:Z

    if-eqz v9, :cond_29

    invoke-static {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->a(Lcom/ex/auto/HomeFloatingWidgetsService;)V

    :cond_29
    iget-object v0, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    iget-object v4, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v4, LT/F1;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_10
    iget-object v0, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v2, "DR"

    const-string v3, "adbClickReport: "

    new-instance v4, LI0/i;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    :try_start_c
    sget-object v5, LT/Y0;->a:LT/Y0;

    invoke-static {}, LT/Y0;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    const-string v6, "DESCONHECIDO"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "recovery_name"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1b

    :catchall_8
    move-exception v0

    goto :goto_1c

    :cond_2a
    :goto_1b
    invoke-static {v5}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "IBANES"

    invoke-static {v0, v6}, LO0/s;->s0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, v4, LI0/i;->a:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :try_start_d
    invoke-static {}, LT/Y0;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LT/Y0;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6}, LT/Y0;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_1d

    :catchall_9
    move-exception v0

    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_1d

    :goto_1c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "gateAdbClick: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_1d
    new-instance v0, LT/H;

    iget-object v2, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v2, LH0/l;

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v4}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_11
    iget-object v3, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/CentralWatchdogService;

    iget-object v4, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v5, LT/D0;

    sget-object v6, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v6, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v6, :cond_2c

    goto/16 :goto_20

    :cond_2c
    iget-object v6, v3, Lcom/ex/auto/CentralWatchdogService;->V:Ljava/lang/String;

    if-eqz v6, :cond_2d

    const/4 v7, 0x1

    goto :goto_1e

    :cond_2d
    move v7, v10

    :goto_1e
    const-string v8, "auto_proxy_enabled"

    if-eqz v4, :cond_31

    iput v10, v3, Lcom/ex/auto/CentralWatchdogService;->b0:I

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-object v4, v3, Lcom/ex/auto/CentralWatchdogService;->V:Ljava/lang/String;

    if-nez v0, :cond_2f

    invoke-virtual {v3}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "auto_route_on_aa_connect"

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-wide/16 v6, 0x1388

    if-eqz v0, :cond_2e

    iget-object v0, v3, Lcom/ex/auto/CentralWatchdogService;->W:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/o0;

    const/4 v9, 0x5

    invoke-direct {v2, v9, v3, v4}, LT/o0;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    iput-wide v6, v3, Lcom/ex/auto/CentralWatchdogService;->Y:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long/2addr v11, v6

    iput-wide v11, v3, Lcom/ex/auto/CentralWatchdogService;->Z:J

    :cond_2f
    invoke-virtual {v3}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v2, v3, Lcom/ex/auto/CentralWatchdogService;->X:Ljava/lang/String;

    invoke-static {v2, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-boolean v2, v3, Lcom/ex/auto/CentralWatchdogService;->a0:Z

    if-nez v2, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v3, Lcom/ex/auto/CentralWatchdogService;->Z:J

    cmp-long v2, v6, v8

    if-ltz v2, :cond_30

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/ex/auto/CentralWatchdogService;->a0:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v3, Lcom/ex/auto/CentralWatchdogService;->Y:J

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/ex/auto/CentralWatchdogService;->Z:J

    new-instance v0, LT/F0;

    invoke-direct {v0, v10, v3, v4}, LT/F0;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-static {v0}, LT/U0;->a(LH0/a;)V

    goto :goto_1f

    :cond_30
    if-eqz v0, :cond_33

    iget-object v0, v3, Lcom/ex/auto/CentralWatchdogService;->X:Ljava/lang/String;

    invoke-static {v0, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, v3, Lcom/ex/auto/CentralWatchdogService;->c0:Z

    if-nez v0, :cond_33

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/ex/auto/CentralWatchdogService;->c0:Z

    new-instance v0, LT/F0;

    invoke-direct {v0, v6, v3, v4}, LT/F0;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-static {v0}, LT/U0;->a(LH0/a;)V

    goto :goto_1f

    :cond_31
    const/4 v6, 0x1

    iget v4, v3, Lcom/ex/auto/CentralWatchdogService;->b0:I

    add-int/2addr v4, v6

    iput v4, v3, Lcom/ex/auto/CentralWatchdogService;->b0:I

    invoke-virtual {v3}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget v6, v3, Lcom/ex/auto/CentralWatchdogService;->b0:I

    if-lt v6, v2, :cond_33

    if-eqz v4, :cond_32

    iget-object v2, v3, Lcom/ex/auto/CentralWatchdogService;->X:Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-boolean v2, v3, Lcom/ex/auto/CentralWatchdogService;->a0:Z

    if-nez v2, :cond_32

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/ex/auto/CentralWatchdogService;->a0:Z

    iget-object v2, v3, Lcom/ex/auto/CentralWatchdogService;->X:Ljava/lang/String;

    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    new-instance v4, LT/F0;

    invoke-direct {v4, v0, v3, v2}, LT/F0;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-static {v4}, LT/U0;->a(LH0/a;)V

    goto :goto_1f

    :cond_32
    invoke-static {v3, v7}, Lcom/ex/auto/CentralWatchdogService;->f(Lcom/ex/auto/CentralWatchdogService;Z)V

    :cond_33
    :goto_1f
    invoke-virtual {v3}, Lcom/ex/auto/CentralWatchdogService;->n()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_34
    :goto_20
    return-void

    :pswitch_12
    iget-object v4, v1, LT/z;->b:Ljava/lang/Object;

    check-cast v4, LT/x4;

    iget-object v5, v1, LT/z;->c:Ljava/lang/Object;

    check-cast v5, LT/w4;

    iget-object v6, v1, LT/z;->d:Ljava/lang/Object;

    check-cast v6, Lcom/ex/auto/AppPipFloaterService;

    sget-object v7, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    invoke-static {v4, v5}, LT/z4;->j(LT/x4;LT/w4;)Z

    move-result v7

    iget v4, v4, LT/x4;->b:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "am stack list"

    invoke-static {v3, v8}, LT/z4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "taskId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":.*?bounds=\\[(\\d+),(\\d+)]\\[(\\d+),(\\d+)]"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "pattern"

    invoke-static {v4, v8}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v8, "compile(...)"

    invoke-static {v4, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, "matcher(...)"

    invoke-static {v4, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10, v3}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object v3

    if-nez v3, :cond_35

    const/4 v8, 0x0

    goto :goto_21

    :cond_35
    new-instance v8, LT/w4;

    invoke-virtual {v3}, LO0/e;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, LO0/d;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, LO0/e;->a()Ljava/util/List;

    move-result-object v9

    check-cast v9, LO0/d;

    invoke-virtual {v9, v0}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3}, LO0/e;->a()Ljava/util/List;

    move-result-object v9

    check-cast v9, LO0/d;

    invoke-virtual {v9, v2}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, LO0/e;->a()Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x4

    check-cast v3, LO0/d;

    invoke-virtual {v3, v9}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v8, v4, v0, v2, v3}, LT/w4;-><init>(IIII)V

    :goto_21
    if-nez v8, :cond_37

    if-eqz v7, :cond_36

    goto :goto_22

    :cond_36
    iget-object v5, v6, Lcom/ex/auto/AppPipFloaterService;->k:LT/w4;

    goto :goto_22

    :cond_37
    move-object v5, v8

    :goto_22
    iput-object v5, v6, Lcom/ex/auto/AppPipFloaterService;->k:LT/w4;

    iput-boolean v10, v6, Lcom/ex/auto/AppPipFloaterService;->n:Z

    iget-object v0, v6, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v2, LT/v;

    invoke-direct {v2, v6, v7, v8, v10}, LT/v;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

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
