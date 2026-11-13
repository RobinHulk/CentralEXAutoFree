.class public final synthetic LT/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LT/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/g0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p2, p0, LT/g0;->c:Ljava/lang/String;

    iput-boolean p3, p0, LT/g0;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Lcom/ex/auto/CentralWatchdogService;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LT/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LT/g0;->d:Z

    iput-object p2, p0, LT/g0;->c:Ljava/lang/String;

    iput-object p3, p0, LT/g0;->b:Lcom/ex/auto/CentralWatchdogService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, LT/g0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/g0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, LT/g0;->c:Ljava/lang/String;

    iget-boolean v2, p0, LT/g0;->d:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/ex/auto/CentralWatchdogService;->a0:Z

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->V:Ljava/lang/String;

    invoke-static {v3, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->X:Ljava/lang/String;

    const-wide/16 v1, 0x1388

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->Y:J

    goto :goto_1

    :cond_1
    iget-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->Y:J

    const-wide/16 v3, 0x3a98

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    const-wide/32 v3, 0xea60

    :goto_0
    iput-wide v3, v0, Lcom/ex/auto/CentralWatchdogService;->Y:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/ex/auto/CentralWatchdogService;->Y:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->Z:J

    :goto_1
    return-void

    :pswitch_0
    iget-boolean v0, p0, LT/g0;->d:Z

    iget-object v1, p0, LT/g0;->c:Ljava/lang/String;

    iget-object v2, p0, LT/g0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string v3, "CentralWatchdog"

    if-eqz v0, :cond_5

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v2, "WiFi ao acordar ("

    const-string v4, "): pulado \u2014 h\u00e1 proje\u00e7\u00e3o em curso; ligar o WiFi cliente derrubaria a sess\u00e3o (r\u00e1dio \u00fanica)"

    invoke-static {v2, v1, v4, v0, v3}, LM/d0;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LT/L3;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    const-string v0, ") tentativa "

    iget-object v4, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-string v5, "WiFi auto-enable ("

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v7, v8}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    const-wide/16 v9, 0x7d0

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "): j\u00e1 ligado (tentativa "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/ex/auto/CentralWatchdogService;->Q:I

    add-int/2addr v11, v6

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v11, 0x29

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, LT/m0;

    const/4 v11, 0x0

    invoke-direct {v8, v7, v1, v11}, LT/m0;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;I)V

    invoke-virtual {v4, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :catch_0
    move-exception v7

    goto :goto_2

    :cond_6
    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Lcom/ex/auto/CentralWatchdogService;->Q:I

    add-int/2addr v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/3: setWifiEnabled retornou "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, LT/m0;

    const/4 v11, 0x1

    invoke-direct {v8, v7, v1, v11}, LT/m0;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;I)V

    invoke-virtual {v4, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {v5, v1, v0}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lcom/ex/auto/CentralWatchdogService;->Q:I

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " falhou: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget v0, v2, Lcom/ex/auto/CentralWatchdogService;->Q:I

    add-int/2addr v0, v6

    iput v0, v2, Lcom/ex/auto/CentralWatchdogService;->Q:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    iget-object v0, v2, Lcom/ex/auto/CentralWatchdogService;->R:LT/p0;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
