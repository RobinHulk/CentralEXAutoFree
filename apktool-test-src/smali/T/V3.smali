.class public final synthetic LT/V3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;Landroid/widget/TextView;I)V
    .locals 0

    iput p3, p0, LT/V3;->a:I

    iput-object p1, p0, LT/V3;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput-object p2, p0, LT/V3;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, LT/V3;->c:Landroid/widget/TextView;

    iget-object v1, p0, LT/V3;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v2, p0, LT/V3;->a:I

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->U(Landroid/widget/TextView;)V

    return-void

    :pswitch_0
    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v2, "AEB read: "

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v5, "property"

    invoke-virtual {v4, v5}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v6, :cond_0

    check-cast v5, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    move-object v5, v3

    :goto_0
    if-eqz v5, :cond_2

    const v6, 0x2140403a

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x1

    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_2
    iput-object v3, v1, Lcom/ex/auto/QuickAccessFloaterService;->u:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "aeb_state_saved"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Landroid/car/Car;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_2
    :try_start_3
    const-string v5, "QuickAccessFloater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_4

    goto :goto_1

    :catch_2
    :cond_4
    :goto_3
    iget-object v2, v1, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v3, LT/V3;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v0, v4}, LT/V3;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Landroid/widget/TextView;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_4
    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Landroid/car/Car;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_5
    throw v0

    :pswitch_1
    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->Y(Landroid/widget/TextView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
