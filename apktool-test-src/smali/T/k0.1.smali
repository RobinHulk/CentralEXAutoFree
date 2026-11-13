.class public final synthetic LT/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, LT/k0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LT/k0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput p1, p0, LT/k0;->d:I

    iput-object p3, p0, LT/k0;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;II)V
    .locals 0

    .line 2
    iput p4, p0, LT/k0;->a:I

    iput-object p1, p0, LT/k0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p2, p0, LT/k0;->c:Ljava/lang/String;

    iput p3, p0, LT/k0;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, LT/k0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/k0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, LT/k0;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->V:Ljava/lang/String;

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->X:Ljava/lang/String;

    const-wide/16 v2, 0x1388

    iput-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->Y:J

    iget v2, p0, LT/k0;->d:I

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/CentralWatchdogService;->w(ILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LT/k0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v1, p0, LT/k0;->d:I

    iget-object v2, p0, LT/k0;->c:Ljava/lang/String;

    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/CentralWatchdogService;->U(ILjava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, LT/k0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, LT/k0;->c:Ljava/lang/String;

    iget v2, p0, LT/k0;->d:I

    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/CentralWatchdogService;->L(ILjava/lang/String;)V

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, p0, LT/k0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, LT/k0;->c:Ljava/lang/String;

    iget v2, p0, LT/k0;->d:I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v3, "CentralWatchdog"

    const-string v4, "Auto-proxy aplicado: "

    const-string v5, "\n                    setenforce 0 2>/dev/null || true\n                    settings delete global http_proxy 2>/dev/null || true\n                    settings delete global global_http_proxy_exclusion_list 2>/dev/null || true\n                    settings put global global_http_proxy_host \""

    :try_start_0
    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v6

    const-class v7, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const-class v9, Landroid/net/ProxyInfo;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    const-string v10, "setGlobalProxy"

    invoke-virtual {v7, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setGlobalProxy erro: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    new-instance v6, LT/I1;

    const/16 v7, 0x15b3

    invoke-direct {v6, v7}, LT/I1;-><init>(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"\n                    settings put global global_http_proxy_port "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n                    echo \"PROXY_AUTO_SET="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\"\n                    "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1f40

    invoke-virtual {v6, v7, v5}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.ex.auto.AUTO_PROXY_APPLIED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "ip"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "port"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applyProxyToCentral erro: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
