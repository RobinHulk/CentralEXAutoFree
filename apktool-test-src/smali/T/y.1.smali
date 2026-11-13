.class public final synthetic LT/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AppPipFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AppPipFloaterService;I)V
    .locals 0

    iput p2, p0, LT/y;->a:I

    iput-object p1, p0, LT/y;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x1

    iget v1, p0, LT/y;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, LT/y;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, v1, Lcom/ex/auto/AppPipFloaterService;->n:Z

    invoke-virtual {v1}, Lcom/ex/auto/AppPipFloaterService;->i()V

    iget-object v3, v1, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v4, v1, Lcom/ex/auto/AppPipFloaterService;->t:LB/b;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, LT/s;

    invoke-direct {v4, v2, v1, v0}, LT/s;-><init>(LT/x4;Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_0
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_0
    iget-object v1, p0, LT/y;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->k:LT/w4;

    iget-object v3, v1, Lcom/ex/auto/AppPipFloaterService;->j:LT/y4;

    iget-object v4, v1, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    iget-boolean v4, v1, Lcom/ex/auto/AppPipFloaterService;->n:Z

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v4, v1, Lcom/ex/auto/AppPipFloaterService;->l:Z

    xor-int/lit8 v5, v4, 0x1

    iput-boolean v5, v1, Lcom/ex/auto/AppPipFloaterService;->l:Z

    iget v5, v2, LT/w4;->c:I

    iget v6, v2, LT/w4;->a:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    iget v7, v2, LT/w4;->d:I

    iget v8, v2, LT/w4;->b:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    const-wide/high16 v9, 0x4022000000000000L    # 9.0

    if-nez v4, :cond_2

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-instance v8, Lv0/a;

    invoke-direct {v8, v4, v7}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-instance v8, Lv0/a;

    invoke-direct {v8, v4, v7}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v4, v8, Lv0/a;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    iget-object v4, v8, Lv0/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    mul-double v11, v9, v7

    div-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v9, v4

    double-to-int v6, v9

    mul-double/2addr v7, v4

    double-to-int v4, v7

    iget v5, v2, LT/w4;->a:I

    iget v7, v2, LT/w4;->c:I

    add-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    iget v7, v2, LT/w4;->b:I

    iget v2, v2, LT/w4;->d:I

    add-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    new-instance v2, LT/w4;

    div-int/lit8 v6, v6, 0x2

    sub-int v8, v5, v6

    div-int/lit8 v4, v4, 0x2

    sub-int v9, v7, v4

    add-int/2addr v5, v6

    add-int/2addr v7, v4

    invoke-direct {v2, v8, v9, v5, v7}, LT/w4;-><init>(IIII)V

    invoke-static {v2, v3}, Lcom/ex/auto/AppPipFloaterService;->b(LT/w4;LT/y4;)LT/w4;

    move-result-object v2

    iget-object v3, v1, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v0, v1, Lcom/ex/auto/AppPipFloaterService;->n:Z

    invoke-virtual {v1}, Lcom/ex/auto/AppPipFloaterService;->i()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v4, LT/z;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v2, v1, v5}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_2
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    const-wide v0, 0x3feaaaaaaaaaaaabL    # 0.8333333333333334

    iget-object v2, p0, LT/y;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v2, v0, v1}, Lcom/ex/auto/AppPipFloaterService;->g(D)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    const-wide v0, 0x3ff3333333333333L    # 1.2

    iget-object v2, p0, LT/y;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v2, v0, v1}, Lcom/ex/auto/AppPipFloaterService;->g(D)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
