.class public final synthetic LT/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:LT/D0;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;JILT/D0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/L0;->a:Lcom/ex/auto/CentralWatchdogService;

    iput-wide p2, p0, LT/L0;->b:J

    iput p4, p0, LT/L0;->c:I

    iput-object p5, p0, LT/L0;->d:LT/D0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, LT/L0;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v1, p0, LT/L0;->b:J

    iget v3, p0, LT/L0;->c:I

    iget-object v4, p0, LT/L0;->d:LT/D0;

    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v5, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/ex/auto/CentralWatchdogService;->n0:J

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_1

    cmp-long v7, v1, v7

    if-eqz v7, :cond_2

    :cond_1
    iput-wide v5, v0, Lcom/ex/auto/CentralWatchdogService;->o0:J

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/ex/auto/CentralWatchdogService;->p0:Z

    :cond_2
    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->n0:J

    iget-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->o0:J

    sub-long/2addr v5, v1

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->p0:Z

    if-nez v1, :cond_3

    int-to-long v1, v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v1, v7

    cmp-long v1, v5, v1

    if-ltz v1, :cond_3

    new-instance v1, LT/M0;

    invoke-direct {v1, v0, v3}, LT/M0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-static {v1}, LT/U0;->a(LH0/a;)V

    :cond_3
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->k0:J

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
