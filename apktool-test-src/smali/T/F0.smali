.class public final synthetic LT/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, LT/F0;->a:I

    iput-object p2, p0, LT/F0;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p3, p0, LT/F0;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LT/F0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/F0;->c:Ljava/lang/String;

    iget-object v1, p0, LT/F0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->g(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)Z

    move-result v0

    iget-object v2, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, LT/n0;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1, v0}, LT/n0;-><init>(ILcom/ex/auto/CentralWatchdogService;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_0
    :try_start_0
    new-instance v0, LT/I1;

    const/16 v1, 0x15b3

    invoke-direct {v0, v1}, LT/I1;-><init>(I)V

    const-string v1, "settings get global global_http_proxy_host 2>/dev/null"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2, v1}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "runShell(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, LT/F0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, LT/f0;

    iget-object v4, p0, LT/F0;->c:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v0}, LT/f0;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_1
    iget-object v0, p0, LT/F0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, LT/F0;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->g(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)Z

    move-result v2

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, LT/g0;

    invoke-direct {v4, v0, v1, v2}, LT/g0;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1f90

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/CentralWatchdogService;->w(ILjava/lang/String;)V

    :cond_0
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
