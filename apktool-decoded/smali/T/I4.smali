.class public final synthetic LT/I4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/TimerFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/TimerFloaterService;I)V
    .locals 0

    iput p2, p0, LT/I4;->a:I

    iput-object p1, p0, LT/I4;->b:Lcom/ex/auto/TimerFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    const/4 v0, -0x1

    const v1, 0x7f0f0308

    const-wide/16 v2, 0x0

    const-string v4, "regressiva"

    const/4 v5, 0x0

    iget v6, p0, LT/I4;->a:I

    packed-switch v6, :pswitch_data_0

    sget-boolean v0, Lcom/ex/auto/TimerFloaterService;->o:Z

    iget-object v0, p0, LT/I4;->b:Lcom/ex/auto/TimerFloaterService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_0
    sget-boolean v0, Lcom/ex/auto/TimerFloaterService;->o:Z

    const v0, 0x3e19999a    # 0.15f

    iget-object v1, p0, LT/I4;->b:Lcom/ex/auto/TimerFloaterService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/TimerFloaterService;->h(F)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_1
    sget-boolean v0, Lcom/ex/auto/TimerFloaterService;->o:Z

    const v0, -0x41e66666    # -0.15f

    iget-object v1, p0, LT/I4;->b:Lcom/ex/auto/TimerFloaterService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/TimerFloaterService;->h(F)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_2
    iget-object v6, p0, LT/I4;->b:Lcom/ex/auto/TimerFloaterService;

    iput-boolean v5, v6, Lcom/ex/auto/TimerFloaterService;->k:Z

    iget-object v7, v6, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-static {v7, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v2, v6, Lcom/ex/auto/TimerFloaterService;->l:J

    :cond_0
    iput-wide v2, v6, Lcom/ex/auto/TimerFloaterService;->i:J

    iget-object v2, v6, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    if-eqz v2, :cond_1

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v6, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, v6, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {v6}, Lcom/ex/auto/TimerFloaterService;->b()V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_3
    iget-object v6, p0, LT/I4;->b:Lcom/ex/auto/TimerFloaterService;

    iget-object v7, v6, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-static {v7, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, v6, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-nez v7, :cond_4

    iget-wide v7, v6, Lcom/ex/auto/TimerFloaterService;->i:J

    cmp-long v2, v7, v2

    if-gtz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v2, v6, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz v2, :cond_6

    invoke-virtual {v6}, Lcom/ex/auto/TimerFloaterService;->a()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/ex/auto/TimerFloaterService;->i:J

    iput-boolean v5, v6, Lcom/ex/auto/TimerFloaterService;->k:Z

    iget-object v0, v6, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    if-eqz v0, :cond_5

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, v6, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-static {v0, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/ex/auto/TimerFloaterService;->j:J

    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/ex/auto/TimerFloaterService;->k:Z

    iget-object v1, v6, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    if-eqz v1, :cond_7

    const v2, 0x7f0f030a

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v1, v6, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iget-object v0, v6, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-static {v0, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_0
    invoke-virtual {v6}, Lcom/ex/auto/TimerFloaterService;->b()V

    :goto_1
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
