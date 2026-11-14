.class public final synthetic LT/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:LT/D0;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;ZZLT/D0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/C0;->a:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean p2, p0, LT/C0;->b:Z

    iput-boolean p3, p0, LT/C0;->c:Z

    iput-object p4, p0, LT/C0;->d:LT/D0;

    iput-boolean p5, p0, LT/C0;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, LT/C0;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v1, p0, LT/C0;->b:Z

    iget-boolean v2, p0, LT/C0;->c:Z

    iget-object v3, p0, LT/C0;->d:LT/D0;

    iget-boolean v4, p0, LT/C0;->e:Z

    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-boolean v5, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v5, :cond_7

    iget-boolean v5, v0, Lcom/ex/auto/CentralWatchdogService;->G0:Z

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v1, "proje\u00e7\u00e3o ativa"

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->y0(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    if-eqz v2, :cond_5

    iget v1, v0, Lcom/ex/auto/CentralWatchdogService;->H0:I

    iget v2, v0, Lcom/ex/auto/CentralWatchdogService;->C0:I

    if-lt v1, v2, :cond_2

    const-string v1, "limite de pedidos de sa\u00fade"

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->y0(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "boot_stable"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "CentralWatchdog"

    if-nez v1, :cond_3

    const-string v1, "AA trigger: sem conex\u00e3o, mas boot ainda n\u00e3o estabilizou \u2014 adiando"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v4, v0, Lcom/ex/auto/CentralWatchdogService;->D0:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const-string v1, "CarPlay em sess\u00e3o"

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->y0(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v1, v0, Lcom/ex/auto/CentralWatchdogService;->H0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ex/auto/CentralWatchdogService;->H0:I

    iput v5, v0, Lcom/ex/auto/CentralWatchdogService;->J0:I

    sget-object v1, LT/L3;->a:LT/L3;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AA trigger: sem conex\u00e3o em ~"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/ex/auto/CentralWatchdogService;->E0:I

    int-to-long v5, v5

    iget-wide v7, v0, Lcom/ex/auto/CentralWatchdogService;->D0:J

    mul-long/2addr v5, v7

    const/16 v7, 0x3e8

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "s \u2014 pedindo avalia\u00e7\u00e3o de sa\u00fade (#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/ex/auto/CentralWatchdogService;->H0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "); n\u00e3o reinicio servi\u00e7os por conta pr\u00f3pria"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->P0:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AA trigger #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/ex/auto/CentralWatchdogService;->H0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->y(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/z0;

    const/16 v4, 0xc

    invoke-direct {v2, v0, v4}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    iget v1, v0, Lcom/ex/auto/CentralWatchdogService;->I0:I

    iget v2, v0, Lcom/ex/auto/CentralWatchdogService;->F0:I

    if-lt v1, v2, :cond_6

    const-string v1, "timeout geral"

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->y0(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v4, v0, Lcom/ex/auto/CentralWatchdogService;->D0:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_0
    return-void
.end method
