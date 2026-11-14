.class public final LT/H4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/TempBattPillFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/TempBattPillFloaterService;I)V
    .locals 0

    iput p2, p0, LT/H4;->a:I

    iput-object p1, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, LT/H4;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    new-instance v3, LT/z;

    const/16 v4, 0x12

    invoke-direct {v3, v0, v2, p0, v4}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_0
    iget-object v0, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v1, v0, Lcom/ex/auto/TempBattPillFloaterService;->l:LT/k;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    iget-object v2, v1, LT/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    iget-boolean v0, v1, LT/k;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iput v3, v0, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/TempBattPillFloaterService;->e()V

    goto/16 :goto_6

    :cond_2
    :goto_0
    iget-object v0, v1, LT/k;->a:Ljava/util/ArrayList;

    iget-object v1, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget v1, v1, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/l;

    iget-object v1, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    iget-object v1, v0, LT/l;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v2, "wait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v1, v1, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    iget-wide v2, v0, LT/l;->b:D

    const/16 v0, 0x3e8

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :sswitch_1
    const-string v2, "temp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-wide v2, v0, LT/l;->b:D

    double-to-float v0, v2

    iget-object v1, v1, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const v2, 0x25401036

    :try_start_0
    invoke-virtual {v1, v2, v4, v0}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v3, 0x4

    :try_start_1
    invoke-virtual {v1, v2, v3, v0}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_1
    iget-object v0, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :sswitch_2
    const-string v2, "fan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-wide v4, v0, LT/l;->b:D

    double-to-int v0, v4

    iget-object v2, v1, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, v1, Lcom/ex/auto/TempBattPillFloaterService;->j:[I

    array-length v4, v1

    :goto_2
    if-ge v3, v4, :cond_8

    aget v5, v1, v3

    const v6, 0x15400500

    :try_start_2
    invoke-virtual {v2, v6, v5, v0}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v0, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :sswitch_3
    const-string v2, "recirc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_4
    iget-object v0, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_9
    iget-object v1, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-wide v5, v0, LT/l;->b:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v5, v7

    if-nez v0, :cond_a

    move v3, v4

    :cond_a
    iget-object v0, v1, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    const v1, 0x21401026

    const/16 v2, 0x75

    :try_start_3
    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :goto_5
    iget-object v0, p0, LT/H4;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x37b9aa36 -> :sswitch_3
        0x18b13 -> :sswitch_2
        0x3643d4 -> :sswitch_1
        0x379175 -> :sswitch_0
    .end sparse-switch
.end method
