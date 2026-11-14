.class public final synthetic LT/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/car/hardware/property/CarPropertyManager;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/CentralWatchdogService;ZLandroid/car/hardware/property/CarPropertyManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LT/j0;->a:I

    iput-object p2, p0, LT/j0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean p3, p0, LT/j0;->c:Z

    iput-object p4, p0, LT/j0;->d:Landroid/car/hardware/property/CarPropertyManager;

    iput p5, p0, LT/j0;->e:I

    iput-object p6, p0, LT/j0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, LT/j0;->d:Landroid/car/hardware/property/CarPropertyManager;

    iget v1, p0, LT/j0;->e:I

    iget-object v2, p0, LT/j0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v2, Lcom/ex/auto/CentralWatchdogService;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, LT/j0;->a:I

    if-eq v3, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v2, p0, LT/j0;->c:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    move v5, v4

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    aget v6, v2, v5

    const v7, 0x20020500

    :try_start_0
    invoke-virtual {v0, v7, v6, v1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    goto :goto_1

    :catchall_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "regen write ok="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LT/j0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentralWatchdog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
