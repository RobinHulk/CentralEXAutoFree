.class public final synthetic LT/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, LT/t1;->a:I

    iput-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 p1, -0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, LT/t1;->a:I

    packed-switch v3, :pswitch_data_0

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(I)V

    return-void

    :pswitch_0
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {p1, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(I)V

    return-void

    :pswitch_1
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->C(F)V

    return-void

    :pswitch_2
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const/high16 p1, -0x40800000    # -1.0f

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->C(F)V

    return-void

    :pswitch_3
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->p()V

    return-void

    :pswitch_4
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->p()V

    return-void

    :pswitch_5
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {p1, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->o(Z)V

    return-void

    :pswitch_6
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {p1, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->o(Z)V

    return-void

    :pswitch_7
    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, LT/H1;->n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    xor-int/2addr v1, v2

    sget-object v2, LT/H1;->a:[I

    const v2, 0x10200c00

    const/16 v3, 0x75

    :try_start_0
    invoke-virtual {v0, v2, v3, v1}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->G()V

    :goto_2
    return-void

    :pswitch_8
    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    iget-object v3, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->p:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_4
    invoke-static {v0}, LT/H1;->f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    xor-int/2addr v1, v2

    sget-object v3, LT/H1;->a:[I

    const v3, 0x15200507

    :try_start_1
    invoke-virtual {v0, v3, v2, v1}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->p:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->G()V

    :goto_5
    return-void

    :pswitch_9
    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v3, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_6

    goto :goto_8

    :cond_6
    iget-object v4, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->n:Ljava/lang/Boolean;

    if-eqz v4, :cond_7

    :goto_6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_7

    :cond_7
    invoke-static {v3}, LT/H1;->h(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    :goto_7
    xor-int/2addr v1, v2

    sget-object v2, LT/H1;->a:[I

    const v2, 0x15200514

    :try_start_2
    invoke-virtual {v3, v2, v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->n:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->G()V

    :goto_8
    return-void

    :pswitch_a
    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_9

    goto :goto_d

    :cond_9
    iget-object v3, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->o:Ljava/lang/Boolean;

    if-eqz v3, :cond_a

    :goto_9
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_a

    :cond_a
    invoke-static {v0}, LT/H1;->m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_b

    goto :goto_9

    :cond_b
    move v3, v1

    :goto_a
    xor-int/2addr v3, v2

    sget-object v4, LT/H1;->a:[I

    sget-object v4, LT/H1;->l:[I

    array-length v5, v4

    :goto_b
    if-ge v1, v5, :cond_c

    aget v6, v4, v1

    const v7, 0x1140050d

    :try_start_3
    invoke-virtual {v0, v7, v6, v3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_c

    :catchall_3
    add-int/2addr v1, v2

    goto :goto_b

    :cond_c
    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->o:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->G()V

    :goto_d
    return-void

    :pswitch_b
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const p1, 0x20020503

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->w(I)V

    return-void

    :pswitch_c
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const p1, 0x20020502

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->w(I)V

    return-void

    :pswitch_d
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const p1, 0x20020501

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->w(I)V

    return-void

    :pswitch_e
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const p1, 0x22010103

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(I)V

    return-void

    :pswitch_f
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const p1, 0x22010102

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(I)V

    return-void

    :pswitch_10
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const p1, 0x22010101

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->v(I)V

    return-void

    :pswitch_11
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {p1, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->A(I)V

    return-void

    :pswitch_12
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->A(I)V

    return-void

    :pswitch_13
    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    iget-object v3, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    if-eqz v3, :cond_e

    :goto_e
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_f

    :cond_e
    invoke-static {v0}, LT/H1;->d(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_f

    goto :goto_e

    :cond_f
    :goto_f
    xor-int/2addr v1, v2

    invoke-static {v0, v1}, LT/H1;->q(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->I()V

    :goto_10
    return-void

    :pswitch_14
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {p1, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->B(I)V

    return-void

    :pswitch_15
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->B(I)V

    return-void

    :pswitch_16
    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    iget-object v3, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->m:Ljava/lang/Boolean;

    if-eqz v3, :cond_11

    :goto_11
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_12

    :cond_11
    invoke-static {v0}, LT/H1;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_12

    goto :goto_11

    :cond_12
    :goto_12
    xor-int/2addr v1, v2

    invoke-static {v0, v1}, LT/H1;->t(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->m:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->I()V

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    :goto_13
    return-void

    :pswitch_17
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const/4 p1, 0x6

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(I)V

    return-void

    :pswitch_18
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const/4 p1, 0x4

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(I)V

    return-void

    :pswitch_19
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const/4 p1, 0x3

    iget-object v0, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0, p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(I)V

    return-void

    :pswitch_1a
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(I)V

    return-void

    :pswitch_1b
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {p1, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->y(I)V

    return-void

    :pswitch_1c
    iget-object p1, p0, LT/t1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    iget-object v3, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->m:Ljava/lang/Boolean;

    if-eqz v3, :cond_14

    :goto_14
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_15

    :cond_14
    invoke-static {v0}, LT/H1;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_15

    goto :goto_14

    :cond_15
    :goto_15
    xor-int/2addr v1, v2

    invoke-static {v0, v1}, LT/H1;->t(Landroid/car/hardware/property/CarPropertyManager;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/ex/auto/HomeFloatingWidgetsService;->m:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
