.class public final synthetic LT/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;JLcom/ex/auto/CentralWatchdogService;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LT/v0;->a:Z

    iput-object p2, p0, LT/v0;->b:Ljava/lang/String;

    iput-wide p3, p0, LT/v0;->c:J

    iput-object p5, p0, LT/v0;->d:Lcom/ex/auto/CentralWatchdogService;

    iput p6, p0, LT/v0;->e:I

    iput-boolean p7, p0, LT/v0;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-boolean v0, p0, LT/v0;->a:Z

    iget-object v1, p0, LT/v0;->b:Ljava/lang/String;

    iget-wide v2, p0, LT/v0;->c:J

    iget-object v4, p0, LT/v0;->d:Lcom/ex/auto/CentralWatchdogService;

    iget v5, p0, LT/v0;->e:I

    iget-boolean v6, p0, LT/v0;->f:Z

    sget-boolean v7, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    const/16 v8, 0x3e8

    const-string v9, "BT ("

    const-string v10, "CentralWatchdog"

    if-eqz v0, :cond_1

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v5, "): proje\u00e7\u00e3o pronta em "

    invoke-static {v9, v1, v5}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v8, v8

    div-long/2addr v2, v8

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s \u2014 ligando agora"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7, v1}, Lcom/ex/auto/CentralWatchdogService;->L(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-wide v11, v4, Lcom/ex/auto/CentralWatchdogService;->U0:J

    cmp-long v0, v2, v11

    if-ltz v0, :cond_2

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v5, "): proje\u00e7\u00e3o n\u00e3o ficou pronta em "

    invoke-static {v9, v1, v5}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v8, v8

    div-long/2addr v2, v8

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s \u2014 ligando assim mesmo (Bluetooth n\u00e3o \u00e9 s\u00f3 para projetar)"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7, v1}, Lcom/ex/auto/CentralWatchdogService;->L(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, v4, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/h0;

    invoke-direct {v2, v4, v1, v5, v6}, LT/h0;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;IZ)V

    iget-wide v3, v4, Lcom/ex/auto/CentralWatchdogService;->T0:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
