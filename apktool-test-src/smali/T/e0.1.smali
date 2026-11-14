.class public final synthetic LT/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, LT/e0;->a:I

    iput-object p1, p0, LT/e0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LT/e0;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v0, "conex\u00e3o BT"

    iget-object v1, p0, LT/e0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->f0(Ljava/lang/String;)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_0
    iget-object v0, p0, LT/e0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, LT/Y;->R(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-boolean v2, Lcom/ex/auto/QuickAccessFloaterService;->n0:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/ex/auto/BlackoutFloaterService;->q:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->s0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->U:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->U:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v0, v2}, LT/Y;->b0(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v0, v2}, LT/Y;->c0(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->U:Ljava/lang/Boolean;

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const/4 v0, 0x1

    iget-object v1, p0, LT/e0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->a(Z)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_2
    iget-object v0, p0, LT/e0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, LT/p0;

    const/16 v3, 0x18

    invoke-direct {v2, v0, v3}, LT/p0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    iget-object v2, p0, LT/e0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v0, "despertar"

    iget-object v1, p0, LT/e0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->f0(Ljava/lang/String;)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
