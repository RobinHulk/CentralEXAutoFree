.class public final synthetic LT/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/car/hardware/property/CarPropertyManager;

.field public final synthetic c:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p3, p0, LT/e2;->a:I

    iput-object p1, p0, LT/e2;->b:Landroid/car/hardware/property/CarPropertyManager;

    iput-object p2, p0, LT/e2;->c:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, LT/e2;->b:Landroid/car/hardware/property/CarPropertyManager;

    iget v1, p0, LT/e2;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, LT/e2;->c:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    const v2, 0x2140403a

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v2, v3}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "aeb_desired"

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void

    :pswitch_0
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    :try_start_1
    new-instance v1, LT/G4;

    invoke-direct {v1, v0}, LT/G4;-><init>(Landroid/car/hardware/property/CarPropertyManager;)V

    invoke-virtual {v1}, LT/G4;->a()LT/F4;

    move-result-object v1

    iget-object v1, v1, LT/F4;->n:Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v4, v1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v3, p0, LT/e2;->c:Lcom/ex/auto/MainActivity;

    iget-object v1, v3, Lcom/ex/auto/MainActivity;->q0:[I

    iget-object v2, v3, Lcom/ex/auto/MainActivity;->s0:Ljava/util/Set;

    const v5, 0x20020500

    invoke-static {v0, v5, v1, v2}, Lcom/ex/auto/MainActivity;->Z0(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, v3, Lcom/ex/auto/MainActivity;->r0:[I

    iget-object v2, v3, Lcom/ex/auto/MainActivity;->t0:Ljava/util/Set;

    const v6, 0x22010100

    invoke-static {v0, v6, v1, v2}, Lcom/ex/auto/MainActivity;->Z0(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, LT/y0;

    const/4 v7, 0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, LT/y0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
