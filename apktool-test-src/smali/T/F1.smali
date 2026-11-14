.class public final LT/F1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, LT/F1;->a:I

    iput-object p1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LT/F1;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/w1;

    iget-object v2, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, LT/w1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/H;

    iget-object v2, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, p0}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_1
    iget-object v0, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v2, LT/H1;->a:[I

    sget-object v2, LT/H1;->f:[I

    sget-object v3, LT/H1;->h:Ljava/util/Set;

    const v4, 0x22010100

    invoke-static {v0, v4, v2, v3}, LT/H1;->g(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->h:Ljava/lang/Integer;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    sget-object v2, LT/H1;->e:[I

    sget-object v3, LT/H1;->i:Ljava/util/Set;

    const v4, 0x20020500

    invoke-static {v0, v4, v2, v3}, LT/H1;->g(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/lang/Integer;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {v0}, LT/H1;->e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/lang/Integer;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {v0}, LT/H1;->k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->k:Ljava/lang/Float;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {v0}, LT/H1;->l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {v0}, LT/H1;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->m:Ljava/lang/Boolean;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {v0}, LT/H1;->h(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->n:Ljava/lang/Boolean;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {v0}, LT/H1;->m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->o:Ljava/lang/Boolean;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {v0}, LT/H1;->f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->p:Ljava/lang/Boolean;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {v0}, LT/H1;->n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Boolean;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, LT/H1;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Integer;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    const/4 v2, 0x4

    invoke-static {v0, v2}, LT/H1;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    iget-object v1, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-static {v0}, LT/H1;->d(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->E()V

    iget-object v0, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->F()V

    iget-object v0, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->H()V

    iget-object v0, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    iget-object v0, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->I()V

    iget-object v0, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-virtual {v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->G()V

    iget-object v0, p0, LT/F1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
