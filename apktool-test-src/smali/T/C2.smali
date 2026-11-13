.class public final synthetic LT/C2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/car/hardware/property/CarPropertyManager;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/property/CarPropertyManager;II)V
    .locals 0

    iput p3, p0, LT/C2;->a:I

    iput-object p1, p0, LT/C2;->b:Landroid/car/hardware/property/CarPropertyManager;

    iput p2, p0, LT/C2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    iget v1, p0, LT/C2;->c:I

    iget-object v2, p0, LT/C2;->b:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v3, 0x1

    iget v4, p0, LT/C2;->a:I

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    filled-new-array {v0, v3}, [I

    move-result-object v4

    :goto_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_0

    aget v5, v4, v0

    const v6, 0x20020500

    :try_start_0
    invoke-virtual {v2, v6, v5, v1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    sget-object v4, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const/high16 v4, 0x1000000

    filled-new-array {v0, v3, v4}, [I

    move-result-object v4

    :goto_2
    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    aget v5, v4, v0

    const v6, 0x22010100

    :try_start_1
    invoke-virtual {v2, v6, v5, v1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    add-int/2addr v0, v3

    goto :goto_2

    :cond_1
    :goto_3
    return-void

    :pswitch_1
    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    sget-object v4, LT/q;->a:[I

    array-length v5, v4

    :goto_4
    if-ge v0, v5, :cond_2

    aget v6, v4, v0

    const v7, 0x21407057

    :try_start_2
    invoke-virtual {v2, v7, v6, v1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v7

    const-string v8, "restoreSavedAvasSoundType area="

    const-string v9, ": "

    invoke-static {v8, v6, v9}, LM/d0;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MainActivity"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v0, v3

    goto :goto_4

    :cond_2
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
