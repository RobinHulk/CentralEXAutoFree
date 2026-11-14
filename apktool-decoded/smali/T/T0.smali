.class public final synthetic LT/T0;
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

    iput p2, p0, LT/T0;->a:I

    iput-object p1, p0, LT/T0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-wide/16 v0, 0x4b0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p0, LT/T0;->a:I

    packed-switch v6, :pswitch_data_0

    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/n;

    const-string v1, "fetchFonts result is not OK. ("

    iget-object v3, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v5, v0, Landroidx/emoji2/text/n;->h:LA/b;

    if-nez v5, :cond_0

    monitor-exit v3

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroidx/emoji2/text/n;->b()Lv/h;

    move-result-object v3

    iget v5, v3, Lv/h;->e:I

    if-ne v5, v2, :cond_1

    iget-object v2, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    goto/16 :goto_3

    :cond_1
    :goto_0
    if-nez v5, :cond_4

    :try_start_4
    const-string v1, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    sget v2, Lu/h;->a:I

    invoke-static {v1}, Lu/g;->a(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/emoji2/text/n;->c:Lp0/e;

    iget-object v2, v0, Landroidx/emoji2/text/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v3}, [Lv/h;

    move-result-object v1

    sget-object v5, Lr/f;->a:Le/a;

    invoke-virtual {v5, v2, v1, v4}, Le/a;->s(Landroid/content/Context;[Lv/h;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v2, v0, Landroidx/emoji2/text/n;->a:Landroid/content/Context;

    iget-object v3, v3, Lv/h;->a:Landroid/net/Uri;

    invoke-static {v2, v3}, Le/a;->H(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    :try_start_5
    const-string v3, "EmojiCompat.MetadataRepo.create"

    invoke-static {v3}, Lu/g;->a(Ljava/lang/String;)V

    new-instance v3, Landroidx/emoji2/text/q;

    invoke-static {v2}, LA/b;->X(Ljava/nio/MappedByteBuffer;)LF/b;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroidx/emoji2/text/q;-><init>(Landroid/graphics/Typeface;LF/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {}, Lu/g;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-static {}, Lu/g;->b()V

    iget-object v1, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v2, v0, Landroidx/emoji2/text/n;->h:LA/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, LA/b;->P(Landroidx/emoji2/text/q;)V

    goto :goto_1

    :catchall_3
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v0}, Landroidx/emoji2/text/n;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :goto_2
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_4
    move-exception v1

    :try_start_c
    sget v2, Lu/h;->a:I

    invoke-static {}, Lu/g;->b()V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open file."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v1

    :try_start_d
    sget v2, Lu/h;->a:I

    invoke-static {}, Lu/g;->b()V

    throw v1

    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_3
    iget-object v2, v0, Landroidx/emoji2/text/n;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    iget-object v3, v0, Landroidx/emoji2/text/n;->h:LA/b;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, LA/b;->M(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_6
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_4
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-virtual {v0}, Landroidx/emoji2/text/n;->a()V

    :goto_5
    return-void

    :goto_6
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :goto_7
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v0

    :pswitch_0
    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/m;

    invoke-virtual {v0}, Landroidx/activity/m;->b()V

    return-void

    :pswitch_1
    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, Le/i;

    invoke-static {v0}, Le/i;->a(Le/i;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, Le/j;

    invoke-virtual {v0}, Le/j;->invalidateOptionsMenu()V

    return-void

    :pswitch_3
    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, LX/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    iget-object v0, v0, LX/e;->b:Landroid/app/Service;

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    const-string v1, "cb"

    invoke-virtual {v0, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, LT/N;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    iget-object v0, v0, LT/N;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->e()V

    iget-boolean v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->N:Z

    if-eqz v1, :cond_8

    move v1, v4

    :goto_8
    const/4 v2, 0x3

    if-ge v4, v2, :cond_7

    invoke-static {v0, v4}, LA/b;->J(Lcom/geely/hvacstepperv2/TempStepperService;I)LX/a;

    move-result-object v2

    if-eqz v2, :cond_6

    add-int/2addr v1, v5

    :cond_6
    add-int/2addr v4, v5

    goto :goto_8

    :cond_7
    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->b()V

    goto :goto_9

    :cond_8
    iget-boolean v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->N:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v0, v0, Lcom/geely/hvacstepperv2/TempStepperService;->O:LX/b;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_9
    return-void

    :pswitch_5
    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-virtual {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->d()V

    return-void

    :pswitch_6
    iget-object v2, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v2, LT/D;

    sget-object v3, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    :try_start_11
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0

    :catch_0
    sget-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    if-eqz v0, :cond_f

    iget-object v1, v2, LT/D;->b:Ljava/lang/String;

    iget-object v2, v2, LT/D;->c:Ljava/lang/String;

    invoke-static {}, LT/z4;->e()LT/y4;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_b

    :cond_a
    invoke-static {v0, v1}, LT/z4;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_b

    :cond_b
    invoke-static {v0, v2}, LT/z4;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_b

    :cond_c
    invoke-virtual {v0, v3}, Lcom/ex/auto/SplitFloaterService;->d(LT/y4;)LT/w4;

    move-result-object v6

    invoke-static {v4, v1, v6}, LT/z4;->i(Ljava/lang/String;Ljava/lang/String;LT/w4;)LT/x4;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_b

    :cond_d
    const-wide/16 v6, 0x2bc

    :try_start_12
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_1

    :catch_1
    sget-object v6, LT/z4;->a:LI0/l;

    invoke-virtual {v0, v3}, Lcom/ex/auto/SplitFloaterService;->e(LT/y4;)LT/w4;

    move-result-object v0

    invoke-static {v5, v2, v0}, LT/z4;->i(Ljava/lang/String;Ljava/lang/String;LT/w4;)LT/x4;

    move-result-object v0

    sget-object v3, LT/L3;->a:LT/L3;

    const-string v5, "par: "

    const-string v6, " | "

    const-string v7, " \u2192 "

    invoke-static {v5, v1, v6, v2, v7}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_e

    const-string v2, "ok"

    goto :goto_a

    :cond_e
    const-string v2, "direita falhou"

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Split"

    invoke-virtual {v3, v2, v1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_f

    invoke-static {v4}, LT/z4;->f(LT/x4;)Z

    :cond_f
    :goto_b
    return-void

    :pswitch_7
    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    :try_start_13
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->reconnect()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_c

    :catchall_7
    sget-object v0, LT/B3;->a:LT/B3;

    invoke-virtual {v0}, LT/B3;->h()V

    :goto_c
    return-void

    :pswitch_8
    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, LT/B3;

    sget-boolean v1, LT/B3;->g:Z

    if-nez v1, :cond_10

    invoke-virtual {v0}, LT/B3;->h()V

    :cond_10
    return-void

    :pswitch_9
    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->u:Ljava/util/Set;

    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MediaBarFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    invoke-virtual {v0}, Lcom/ex/auto/MediaBarFloaterService;->e()V

    return-void

    :pswitch_a
    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/InstallerActivity;

    iget-object v1, v0, Lcom/ex/auto/InstallerActivity;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    const v2, 0x7f0f01cf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_11
    const-string v0, "tvStatus"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_b
    sget v0, Lcom/ex/auto/HomeWidgetsPollService;->r:I

    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-virtual {v0}, Lcom/ex/auto/HomeWidgetsPollService;->c()V

    return-void

    :pswitch_c
    const-string v0, "am force-stop "

    iget-object v1, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    :try_start_14
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmd"

    invoke-static {v0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LT/n;

    invoke-direct {v1, v4}, LT/n;-><init>(I)V

    const/16 v2, 0x1388

    invoke-static {v0, v2, v3, v1}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    return-void

    :pswitch_d
    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    const-string v1, "ExSapoCast"

    const-string v2, "sess\u00e3o iniciada com "

    const-string v4, "IP n\u00e3o vizinho: "

    sget-object v6, LT/m;->i:LT/n1;

    if-eqz v6, :cond_12

    :try_start_15
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_f

    :cond_12
    :try_start_16
    invoke-virtual {v0, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v6, 0x2710

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v6, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v7, 0x4

    new-array v7, v7, [B

    invoke-virtual {v6, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, LO0/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v7, "ESC1"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v2, "magic inv\u00e1lido"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    :try_start_17
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    goto/16 :goto_f

    :catch_2
    move-exception v2

    goto/16 :goto_e

    :cond_13
    const/16 v7, 0x20

    :try_start_18
    new-array v7, v7, [B

    invoke-virtual {v6, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v8}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, LT/m;->f:Ljava/lang/String;

    if-nez v8, :cond_14

    goto/16 :goto_d

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sget-wide v11, LT/m;->g:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_15

    goto :goto_d

    :cond_15
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_17

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-static {v0}, LT/m;->o(Ljava/net/Socket;)Z

    move-result v7

    if-nez v7, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    :try_start_19
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3

    goto :goto_f

    :cond_16
    :try_start_1a
    sput-object v3, LT/m;->f:Ljava/lang/String;

    new-instance v3, LT/n1;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const-string v7, "getOutputStream(...)"

    invoke-static {v4, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0, v6, v4}, LT/n1;-><init>(Ljava/net/Socket;Ljava/io/DataInputStream;Ljava/io/OutputStream;)V

    sput-object v3, LT/m;->i:LT/n1;

    new-instance v4, Ljava/lang/Thread;

    new-instance v6, LT/l1;

    invoke-direct {v6, v3}, LT/l1;-><init>(LT/n1;)V

    const-string v3, "exsapocast-read"

    invoke-direct {v4, v6, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    invoke-static {}, LT/m;->q()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (display="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, LT/m;->h:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_17
    :goto_d
    const-string v2, "token inv\u00e1lido/expirado"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2

    :try_start_1b
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3

    goto :goto_f

    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handshake falhou: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :try_start_1c
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    :catch_3
    :goto_f
    return-void

    :pswitch_e
    iget-object v6, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v6, LT/m;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "ExSapoCast"

    move-object v7, v3

    move v8, v4

    :goto_10
    :try_start_1d
    sget-boolean v9, LT/m;->e:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    if-eqz v9, :cond_1a

    if-nez v7, :cond_1a

    :try_start_1e
    new-instance v9, Ljava/net/ServerSocket;

    invoke-direct {v9}, Ljava/net/ServerSocket;-><init>()V

    invoke-virtual {v9, v5}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    new-instance v10, Ljava/net/InetSocketAddress;

    const v11, 0xbaba

    invoke-direct {v10, v11}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    move-object v7, v9

    goto :goto_10

    :catchall_9
    move-exception v0

    goto/16 :goto_17

    :catch_4
    move-exception v9

    add-int/2addr v8, v5

    :try_start_1f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bind 47802 falhou (tentativa "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x19

    if-lt v8, v9, :cond_19

    const-string v0, "desistindo do bind da 47802"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :catch_5
    :cond_18
    :goto_11
    sput-boolean v4, LT/m;->e:Z

    goto :goto_16

    :catch_6
    move-exception v0

    goto :goto_15

    :cond_19
    :try_start_20
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_5
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_6
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    goto :goto_10

    :cond_1a
    if-nez v7, :cond_1c

    if-eqz v7, :cond_18

    :cond_1b
    :goto_12
    :try_start_21
    invoke-virtual {v7}, Ljava/net/ServerSocket;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5

    goto :goto_11

    :cond_1c
    :try_start_22
    const-string v0, "escutando em 0.0.0.0:47802"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    sget-boolean v0, LT/m;->e:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_6
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    if-eqz v0, :cond_1b

    :try_start_23
    invoke-virtual {v7}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_7
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    goto :goto_14

    :catch_7
    move-object v0, v3

    :goto_14
    if-nez v0, :cond_1d

    goto :goto_13

    :cond_1d
    :try_start_24
    new-instance v1, Ljava/lang/Thread;

    new-instance v8, LT/T0;

    invoke-direct {v8, v0, v2}, LT/T0;-><init>(Ljava/lang/Object;I)V

    const-string v0, "exsapocast-hs"

    invoke-direct {v1, v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_6
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    goto :goto_13

    :goto_15
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptLoop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    if-eqz v7, :cond_18

    goto :goto_12

    :goto_16
    return-void

    :goto_17
    if-eqz v7, :cond_1e

    :try_start_26
    invoke-virtual {v7}, Ljava/net/ServerSocket;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_8

    :catch_8
    :cond_1e
    sput-boolean v4, LT/m;->e:Z

    throw v0

    :pswitch_f
    iget-object v0, p0, LT/T0;->b:Ljava/lang/Object;

    check-cast v0, LH0/a;

    invoke-interface {v0}, LH0/a;->a()Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
