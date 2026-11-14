.class public final synthetic LA/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LA/c;->a:I

    iput-object p1, p0, LA/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, LA/c;->b:Ljava/lang/Object;

    iget v2, p0, LA/c;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast p1, Landroid/content/pm/ActivityInfo;

    check-cast v1, Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_1
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v1, Lv0/a;

    invoke-direct {v1, v0, p1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_0
    check-cast p1, Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    if-nez p1, :cond_2

    check-cast v1, Le/i;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Le/i;->dismiss()V

    sget-object p1, LT/L3;->a:LT/L3;

    const-string v0, "BanChecker"

    const-string v1, "bloqueio removido \u2014 este XDSN saiu da banlist"

    invoke-virtual {p1, v0, v1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v2, LT/L3;->a:LT/L3;

    if-eqz p1, :cond_3

    const-string v3, "viagem zerada pelo toque no \u00edcone da barra"

    goto :goto_0

    :cond_3
    const-string v3, "toque no \u00edcone da barra: N\u00c3O zerou (od\u00f4metro ileg\u00edvel)"

    :goto_0
    const-string v4, "CentralWatchdog"

    invoke-virtual {v2, v4, v3}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, LT/n0;

    invoke-direct {v3, v0, v1, p1}, LT/n0;-><init>(ILcom/ex/auto/CentralWatchdogService;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
