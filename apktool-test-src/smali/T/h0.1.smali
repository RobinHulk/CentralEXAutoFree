.class public final synthetic LT/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LT/h0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/h0;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/h0;->d:Ljava/lang/Object;

    iput p3, p0, LT/h0;->c:I

    iput-boolean p4, p0, LT/h0;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;ZI)V
    .locals 0

    .line 2
    iput p5, p0, LT/h0;->a:I

    iput-object p1, p0, LT/h0;->b:Ljava/lang/Object;

    iput p2, p0, LT/h0;->c:I

    iput-object p3, p0, LT/h0;->d:Ljava/lang/Object;

    iput-boolean p4, p0, LT/h0;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, LT/h0;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, LT/h0;->b:Ljava/lang/Object;

    check-cast v2, Landroid/car/hardware/property/CarPropertyManager;

    iget v3, p0, LT/h0;->c:I

    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v4, LI0/i;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const v5, 0x21402015

    :try_start_0
    invoke-virtual {v2, v5, v0, v3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    iput-boolean v1, v4, LI0/i;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance v0, LT/v;

    iget-boolean v1, p0, LT/h0;->e:Z

    iget-object v2, p0, LT/h0;->d:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    invoke-direct {v0, v4, v2, v1}, LT/v;-><init>(LI0/i;Lcom/ex/auto/MainActivity;Z)V

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v2, p0, LT/h0;->b:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    :try_start_1
    const-string v2, "netstat -tln 2>/dev/null | grep -cE \'3051[56]\'"

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x2710

    invoke-static {v3, v2}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO0/r;->p0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    :cond_0
    move v2, v0

    :goto_0
    if-lez v2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    iget v9, p0, LT/h0;->c:I

    int-to-long v0, v9

    iget-wide v2, v8, Lcom/ex/auto/CentralWatchdogService;->T0:J

    mul-long v6, v0, v2

    iget-object v0, v8, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, LT/v0;

    iget-object v2, p0, LT/h0;->d:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    iget-boolean v10, p0, LT/h0;->e:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, LT/v0;-><init>(ZLjava/lang/String;JLcom/ex/auto/CentralWatchdogService;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, LT/h0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, p0, LT/h0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p0, LT/h0;->c:I

    iget-boolean v4, p0, LT/h0;->e:Z

    sget-boolean v5, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v5, :cond_2

    add-int/2addr v3, v1

    invoke-virtual {v0, v3, v2, v4}, Lcom/ex/auto/CentralWatchdogService;->V(ILjava/lang/String;Z)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
