.class public final synthetic LT/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;
.implements Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
.implements LH0/p;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LT/a3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "%02x"

    const/16 v1, 0x27

    const/4 v2, 0x1

    const-string v3, "it"

    iget v4, p0, LT/a3;->a:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    check-cast p1, Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p1

    :pswitch_1
    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p1

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    const-string v0, "s"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\'\\\'\'"

    invoke-static {p1, v2, v3}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-static {p1, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "am force-stop \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-static {p1, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RUNNING:"

    invoke-static {p1, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-static {p1, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, LT/z0;

    const/16 v2, 0xb

    invoke-direct {v1, p1, v2}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-object p1, Lcom/ex/auto/QuickAccessFloaterService;->l0:Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ex/auto/QuickAccessFloaterService;->H()V

    :cond_1
    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, LT/z0;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_a
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {p1, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MONITOR_"

    invoke-static {p1, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "FALHOU"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ERRO"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :cond_4
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {p1, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LT/a3;->a:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    const-string v0, "c"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, LT/I1;

    const/16 v1, 0x15b3

    invoke-direct {v0, v1}, LT/I1;-><init>(I)V

    invoke-virtual {v0, p2, p1}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ADB_FAIL: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    const-string v0, "c"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, LT/p4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string v0, "c"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, LT/p4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAPIReady(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAPIReady: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, LT/B3;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, LT/B3;->k:Landroid/os/Handler;

    if-eqz p1, :cond_2

    new-instance v0, LT/a0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LT/a0;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    sget-object p1, LT/B3;->k:Landroid/os/Handler;

    if-eqz p1, :cond_2

    new-instance v0, LT/a0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LT/a0;-><init>(I)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
