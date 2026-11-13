.class public final synthetic LT/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/CentralWatchdogService;Z)V
    .locals 0

    iput p1, p0, LT/n0;->a:I

    iput-object p2, p0, LT/n0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean p3, p0, LT/n0;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, LT/n0;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, LT/n0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v3, p0, LT/n0;->c:Z

    iput-boolean v1, v2, Lcom/ex/auto/CentralWatchdogService;->a0:Z

    if-eqz v3, :cond_0

    iput v1, v2, Lcom/ex/auto/CentralWatchdogService;->b0:I

    goto :goto_0

    :cond_0
    invoke-static {v2, v0}, Lcom/ex/auto/CentralWatchdogService;->f(Lcom/ex/auto/CentralWatchdogService;Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LT/n0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-boolean v2, p0, LT/n0;->c:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0f02ef

    goto :goto_1

    :cond_1
    const v2, 0x7f0f02f0

    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :pswitch_1
    iget-object v2, p0, LT/n0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    :try_start_1
    const-string v3, "settings get global global_http_proxy_host 2>/dev/null"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x1388

    invoke-static {v4, v3}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    move v1, v0

    :catchall_1
    iget-boolean v0, p0, LT/n0;->c:Z

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, LT/d0;

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
