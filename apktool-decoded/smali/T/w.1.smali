.class public final synthetic LT/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AppPipFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AppPipFloaterService;I)V
    .locals 0

    iput p2, p0, LT/w;->a:I

    iput-object p1, p0, LT/w;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "getString(...)"

    iget v1, p0, LT/w;->a:I

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    iget-object v0, p0, LT/w;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->i()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    iget-object v0, p0, LT/w;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void

    :pswitch_1
    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    iget-object v1, p0, LT/w;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v1}, Lcom/ex/auto/AppPipFloaterService;->i()V

    const v2, 0x7f0f026a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ex/auto/AppPipFloaterService;->h(Ljava/lang/String;)Z

    return-void

    :pswitch_2
    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    iget-object v1, p0, LT/w;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v1}, Lcom/ex/auto/AppPipFloaterService;->i()V

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v3, v1, Lcom/ex/auto/AppPipFloaterService;->t:LB/b;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v2, 0x7f0f026c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ex/auto/AppPipFloaterService;->h(Ljava/lang/String;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
