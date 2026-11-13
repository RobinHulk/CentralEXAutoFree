.class public final synthetic LT/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;II)V
    .locals 0

    iput p3, p0, LT/l0;->a:I

    iput-object p1, p0, LT/l0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput p2, p0, LT/l0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    iget v1, p0, LT/l0;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, LT/l0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v2, p0, LT/l0;->c:I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v3, "CentralWatchdog"

    :try_start_0
    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->u()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    sget-object v5, LT/L3;->a:LT/L3;

    const-string v6, "patch do monitor: exce\u00e7\u00e3o na tentativa "

    const-string v7, " \u2014 "

    invoke-static {v6, v2, v7}, LM/d0;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    :goto_0
    if-nez v4, :cond_0

    iget v4, v1, Lcom/ex/auto/CentralWatchdogService;->T1:I

    if-ge v2, v4, :cond_0

    sget-object v4, LT/L3;->a:LT/L3;

    const-string v5, "patch do monitor: tentativa "

    const-string v6, " n\u00e3o confirmou \u2014 nova tentativa em "

    invoke-static {v5, v2, v6}, LM/d0;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3e8

    int-to-long v6, v6

    iget-wide v8, v1, Lcom/ex/auto/CentralWatchdogService;->V1:J

    div-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v6, 0x73

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, LT/l0;

    invoke-direct {v4, v1, v2, v0}, LT/l0;-><init>(Lcom/ex/auto/CentralWatchdogService;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LT/l0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v1, p0, LT/l0;->c:I

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LT/l0;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, LT/l0;-><init>(Lcom/ex/auto/CentralWatchdogService;II)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void

    :pswitch_1
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget v0, p0, LT/l0;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LT/l0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->l(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
