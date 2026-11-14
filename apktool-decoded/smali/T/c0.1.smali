.class public final synthetic LT/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(IIILcom/ex/auto/CentralWatchdogService;Z)V
    .locals 0

    iput p3, p0, LT/c0;->a:I

    iput p1, p0, LT/c0;->b:I

    iput-object p4, p0, LT/c0;->c:Lcom/ex/auto/CentralWatchdogService;

    iput p2, p0, LT/c0;->d:I

    iput-boolean p5, p0, LT/c0;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, LT/c0;->a:I

    packed-switch v1, :pswitch_data_0

    iget v3, v0, LT/c0;->b:I

    iget-object v4, v0, LT/c0;->c:Lcom/ex/auto/CentralWatchdogService;

    iget v6, v0, LT/c0;->d:I

    iget-boolean v7, v0, LT/c0;->e:Z

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_2

    iget-object v1, v4, Lcom/ex/auto/CentralWatchdogService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v9, LT/i0;

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, LT/i0;-><init>(ILcom/ex/auto/CentralWatchdogService;Landroid/car/hardware/property/CarPropertyManager;IZI)V

    invoke-direct {v1, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget v11, v0, LT/c0;->b:I

    iget-object v12, v0, LT/c0;->c:Lcom/ex/auto/CentralWatchdogService;

    iget v14, v0, LT/c0;->d:I

    iget-boolean v15, v0, LT/c0;->e:Z

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_5

    iget-object v1, v12, Lcom/ex/auto/CentralWatchdogService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v11, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v13, v12, Lcom/ex/auto/CentralWatchdogService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v13, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/i0;

    const/16 v16, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, LT/i0;-><init>(ILcom/ex/auto/CentralWatchdogService;Landroid/car/hardware/property/CarPropertyManager;IZI)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
