.class public final synthetic LT/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/SplitFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/SplitFloaterService;I)V
    .locals 0

    iput p2, p0, LT/r4;->a:I

    iput-object p1, p0, LT/r4;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/16 p1, 0x8

    const/4 v0, 0x0

    iget v1, p0, LT/r4;->a:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v1, p0, LT/r4;->b:Lcom/ex/auto/SplitFloaterService;

    iget-object v2, v1, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-boolean v0, v1, Lcom/ex/auto/SplitFloaterService;->n:Z

    return-void

    :pswitch_0
    iget-object v1, p0, LT/r4;->b:Lcom/ex/auto/SplitFloaterService;

    iget-boolean v2, v1, Lcom/ex/auto/SplitFloaterService;->o:Z

    if-eqz v2, :cond_1

    const p1, 0x7f0f030f

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-boolean v2, v1, Lcom/ex/auto/SplitFloaterService;->n:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iput-boolean v0, v1, Lcom/ex/auto/SplitFloaterService;->n:Z

    goto :goto_1

    :cond_3
    iget-object p1, v1, Lcom/ex/auto/SplitFloaterService;->j:LT/x4;

    const/4 v2, 0x1

    if-nez p1, :cond_5

    iget-object v3, v1, Lcom/ex/auto/SplitFloaterService;->k:LT/x4;

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v2, v1, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {v1}, Lcom/ex/auto/SplitFloaterService;->h()V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, LT/t4;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LT/t4;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v3, v1, Lcom/ex/auto/SplitFloaterService;->k:LT/x4;

    iput-boolean v2, v1, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {v1}, Lcom/ex/auto/SplitFloaterService;->h()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, LT/s4;

    invoke-direct {v4, v3, v1, p1, v0}, LT/s4;-><init>(LT/x4;Lcom/ex/auto/SplitFloaterService;LT/x4;I)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
