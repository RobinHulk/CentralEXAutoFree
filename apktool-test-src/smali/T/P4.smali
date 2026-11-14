.class public final synthetic LT/P4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LT/P4;->a:I

    iput-object p1, p0, LT/P4;->b:Ljava/lang/Object;

    iput-object p3, p0, LT/P4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x1

    iget v1, p0, LT/P4;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, LT/P4;->b:Ljava/lang/Object;

    check-cast v0, Lq/b;

    iget-object v1, p0, LT/P4;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lq/b;->e(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LT/P4;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, LT/P4;->b:Ljava/lang/Object;

    check-cast v1, Le/D;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Le/D;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Le/D;->a()V

    throw v0

    :pswitch_1
    iget-object v0, p0, LT/P4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget-object v0, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->i:Landroid/widget/TextView;

    iget-object v1, p0, LT/P4;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_2
    sget-boolean v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    iget-object v1, p0, LT/P4;->b:Ljava/lang/Object;

    check-cast v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LT/x3;

    invoke-direct {v1, v0}, LT/x3;-><init>(I)V

    iget-object v2, p0, LT/P4;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void

    :pswitch_3
    iget-object v1, p0, LT/P4;->b:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/VhalProviderService;

    iget-object v2, p0, LT/P4;->c:Ljava/lang/Object;

    check-cast v2, Ljava/net/Socket;

    sget-boolean v3, Lcom/ex/auto/VhalProviderService;->j:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "\n"

    sget v4, Lcom/ex/auto/VhalProviderService;->k:I

    add-int/2addr v4, v0

    sput v4, Lcom/ex/auto/VhalProviderService;->k:I

    invoke-virtual {v1}, Lcom/ex/auto/VhalProviderService;->d()V

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, v1, Lcom/ex/auto/VhalProviderService;->e:LT/S0;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, LT/S0;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catchall_1
    move-exception v3

    goto/16 :goto_3

    :cond_0
    const-string v5, "{\"tripsDone\":true}\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    iget-object v5, v1, Lcom/ex/auto/VhalProviderService;->g:LT/S0;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, LT/S0;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_1
    const-string v5, "{\"chargesDone\":true}\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :goto_2
    :try_start_3
    iget-boolean v8, v1, Lcom/ex/auto/VhalProviderService;->d:Z

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/ex/auto/VhalProviderService;->c()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v6, v5

    move-object v5, v8

    :cond_3
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_1
    sget v2, Lcom/ex/auto/VhalProviderService;->k:I

    sub-int/2addr v2, v0

    sput v2, Lcom/ex/auto/VhalProviderService;->k:I

    invoke-virtual {v1}, Lcom/ex/auto/VhalProviderService;->d()V

    goto :goto_6

    :catchall_2
    move-exception v2

    goto :goto_5

    :goto_3
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_5
    sget v3, Lcom/ex/auto/VhalProviderService;->k:I

    sub-int/2addr v3, v0

    sput v3, Lcom/ex/auto/VhalProviderService;->k:I

    invoke-virtual {v1}, Lcom/ex/auto/VhalProviderService;->d()V

    throw v2

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
