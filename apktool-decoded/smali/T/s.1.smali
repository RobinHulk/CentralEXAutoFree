.class public final synthetic LT/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LT/x4;

.field public final synthetic c:Lcom/ex/auto/AppPipFloaterService;


# direct methods
.method public synthetic constructor <init>(LT/x4;Lcom/ex/auto/AppPipFloaterService;I)V
    .locals 0

    .line 1
    iput p3, p0, LT/s;->a:I

    iput-object p1, p0, LT/s;->b:LT/x4;

    iput-object p2, p0, LT/s;->c:Lcom/ex/auto/AppPipFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/AppPipFloaterService;LT/x4;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, LT/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/s;->c:Lcom/ex/auto/AppPipFloaterService;

    iput-object p2, p0, LT/s;->b:LT/x4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, LT/s;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, LT/s;->c:Lcom/ex/auto/AppPipFloaterService;

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    if-eqz v2, :cond_0

    iget-object v3, p0, LT/s;->b:LT/x4;

    iget v3, v3, LT/x4;->b:I

    iget v2, v2, LT/x4;->b:I

    if-ne v2, v3, :cond_0

    const v2, 0x7f0f0265

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ex/auto/AppPipFloaterService;->h(Ljava/lang/String;)Z

    iput-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    iput-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->k:LT/w4;

    invoke-virtual {v1}, Lcom/ex/auto/AppPipFloaterService;->i()V

    iget-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v1, v1, Lcom/ex/auto/AppPipFloaterService;->t:LB/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, LT/s;->b:LT/x4;

    iget-object v2, p0, LT/s;->c:Lcom/ex/auto/AppPipFloaterService;

    sget-object v3, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    invoke-static {v1}, LT/z4;->b(LT/x4;)V

    iput-object v0, v2, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    iput-object v0, v2, Lcom/ex/auto/AppPipFloaterService;->k:LT/w4;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/ex/auto/AppPipFloaterService;->n:Z

    iget-object v0, v2, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v1, LT/w;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LT/w;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    sget-object v1, LT/z4;->a:LI0/l;

    iget-object v1, p0, LT/s;->b:LT/x4;

    invoke-static {v1}, LT/z4;->b(LT/x4;)V

    iget-object v1, p0, LT/s;->c:Lcom/ex/auto/AppPipFloaterService;

    iput-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    iput-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->k:LT/w4;

    iget-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v2, LT/w;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, LT/w;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
