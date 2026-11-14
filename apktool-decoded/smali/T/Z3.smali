.class public final synthetic LT/Z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;II)V
    .locals 0

    iput p3, p0, LT/Z3;->a:I

    iput-object p1, p0, LT/Z3;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput p2, p0, LT/Z3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LT/Z3;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/Z3;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v0, v0, Lcom/ex/auto/QuickAccessFloaterService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, LT/Z3;->c:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LT/Z3;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v1, p0, LT/Z3;->c:I

    iget-object v0, v0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LT/C2;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, LT/C2;-><init>(Landroid/car/hardware/property/CarPropertyManager;II)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget v0, p0, LT/Z3;->c:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, LT/Z3;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->v(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
