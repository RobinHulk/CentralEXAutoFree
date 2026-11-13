.class public final synthetic LT/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AppPipFloaterService;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AppPipFloaterService;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, LT/r;->a:I

    iput-object p1, p0, LT/r;->b:Lcom/ex/auto/AppPipFloaterService;

    iput-object p2, p0, LT/r;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    iget v1, p0, LT/r;->a:I

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    iget-object v0, p0, LT/r;->c:Ljava/lang/String;

    iget-object v1, p0, LT/r;->b:Lcom/ex/auto/AppPipFloaterService;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    iget-object v1, p0, LT/r;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v2, p0, LT/r;->c:Ljava/lang/String;

    sget-object v3, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    invoke-static {}, LT/z4;->e()LT/y4;

    move-result-object v3

    const-string v4, "getString(...)"

    if-nez v3, :cond_0

    sget-object v0, LT/z4;->f:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f016c

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ex/auto/AppPipFloaterService;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object v3, v1, Lcom/ex/auto/AppPipFloaterService;->j:LT/y4;

    invoke-static {v1, v2}, LT/z4;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const v0, 0x7f0f0168

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ex/auto/AppPipFloaterService;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v3, v3, LT/y4;->a:I

    int-to-double v6, v3

    const-wide v8, 0x3fd47ae147ae147bL    # 0.32

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/16 v7, 0x104

    if-ge v6, v7, :cond_2

    move v6, v7

    :cond_2
    mul-int/lit8 v7, v6, 0x9

    div-int/lit8 v7, v7, 0x10

    const/16 v8, 0x96

    if-ge v7, v8, :cond_3

    move v7, v8

    :cond_3
    const/16 v8, 0x18

    invoke-virtual {v1, v8}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v9

    sub-int/2addr v3, v9

    invoke-virtual {v1, v8}, Lcom/ex/auto/AppPipFloaterService;->c(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x48

    new-instance v9, LT/w4;

    sub-int v6, v3, v6

    add-int/2addr v7, v8

    invoke-direct {v9, v6, v8, v3, v7}, LT/w4;-><init>(IIII)V

    invoke-static {v5, v2, v9}, LT/z4;->i(Ljava/lang/String;Ljava/lang/String;LT/w4;)LT/x4;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v0, LT/z4;->f:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f016a

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ex/auto/AppPipFloaterService;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    iput-object v9, v1, Lcom/ex/auto/AppPipFloaterService;->k:LT/w4;

    iput-boolean v0, v1, Lcom/ex/auto/AppPipFloaterService;->l:Z

    iput-boolean v0, v1, Lcom/ex/auto/AppPipFloaterService;->n:Z

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v3, LT/w;

    invoke-direct {v3, v1, v0}, LT/w;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, LT/r;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v1, p0, LT/r;->c:Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ex/auto/AppPipFloaterService;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
