.class public final synthetic LT/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/CentralWatchdogService;Landroid/car/hardware/property/CarPropertyManager;IZI)V
    .locals 0

    .line 1
    iput p6, p0, LT/i0;->a:I

    iput p1, p0, LT/i0;->b:I

    iput-object p2, p0, LT/i0;->c:Lcom/ex/auto/CentralWatchdogService;

    iput-object p3, p0, LT/i0;->d:Ljava/lang/Object;

    iput p4, p0, LT/i0;->e:I

    iput-boolean p5, p0, LT/i0;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/ex/auto/CentralWatchdogService;ZILjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, LT/i0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LT/i0;->b:I

    iput-object p2, p0, LT/i0;->c:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean p3, p0, LT/i0;->f:Z

    iput p4, p0, LT/i0;->e:I

    iput-object p5, p0, LT/i0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, LT/i0;->a:I

    packed-switch v0, :pswitch_data_0

    iget v2, p0, LT/i0;->b:I

    iget-object v3, p0, LT/i0;->c:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v4, p0, LT/i0;->f:Z

    iget v6, p0, LT/i0;->e:I

    iget-object v0, p0, LT/i0;->d:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/ex/auto/CentralWatchdogService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v3, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, LT/j0;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, LT/j0;-><init>(ILcom/ex/auto/CentralWatchdogService;ZLandroid/car/hardware/property/CarPropertyManager;ILjava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LT/i0;->c:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, LT/i0;->b:I

    if-eq v1, v0, :cond_3

    goto :goto_5

    :cond_3
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const v4, 0x20020500

    iget-object v5, p0, LT/i0;->d:Ljava/lang/Object;

    check-cast v5, Landroid/car/hardware/property/CarPropertyManager;

    const/4 v6, 0x2

    if-ge v3, v6, :cond_5

    aget v7, v0, v3

    invoke-static {v5, v4, v7}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iget v7, p0, LT/i0;->e:I

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "regen reassert: HAL j\u00e1 em "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", gen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 n\u00e3o reaplicar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentralWatchdog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    :goto_3
    iget-boolean v1, p0, LT/i0;->f:Z

    if-eqz v1, :cond_8

    :goto_4
    if-ge v2, v6, :cond_8

    aget v1, v0, v2

    :try_start_0
    invoke-virtual {v5, v4, v1, v7}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void

    :pswitch_1
    iget-object v0, p0, LT/i0;->c:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, LT/i0;->b:I

    if-eq v1, v0, :cond_9

    goto :goto_a

    :cond_9
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->e2:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const v4, 0x22010100

    iget-object v5, p0, LT/i0;->d:Ljava/lang/Object;

    check-cast v5, Landroid/car/hardware/property/CarPropertyManager;

    const/4 v6, 0x3

    if-ge v3, v6, :cond_b

    aget v7, v0, v3

    invoke-static {v5, v4, v7}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_7
    iget v7, p0, LT/i0;->e:I

    if-nez v3, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "drive reassert: HAL j\u00e1 em "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", gen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 n\u00e3o reaplicar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentralWatchdog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    :goto_8
    iget-boolean v1, p0, LT/i0;->f:Z

    if-eqz v1, :cond_e

    :goto_9
    if-ge v2, v6, :cond_e

    aget v1, v0, v2

    :try_start_1
    invoke-virtual {v5, v4, v1, v7}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_a

    :catchall_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
