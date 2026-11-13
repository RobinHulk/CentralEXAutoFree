.class public final synthetic LT/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LT/x4;

.field public final synthetic c:Lcom/ex/auto/SplitFloaterService;

.field public final synthetic d:LT/x4;


# direct methods
.method public synthetic constructor <init>(LT/x4;Lcom/ex/auto/SplitFloaterService;LT/x4;I)V
    .locals 0

    iput p4, p0, LT/s4;->a:I

    iput-object p1, p0, LT/s4;->b:LT/x4;

    iput-object p2, p0, LT/s4;->c:Lcom/ex/auto/SplitFloaterService;

    iput-object p3, p0, LT/s4;->d:LT/x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, LT/s4;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, LT/s4;->b:LT/x4;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-static {v2}, LT/z4;->b(LT/x4;)V

    :cond_0
    iget-object v2, p0, LT/s4;->c:Lcom/ex/auto/SplitFloaterService;

    iget-object v3, v2, Lcom/ex/auto/SplitFloaterService;->l:LT/y4;

    if-nez v3, :cond_1

    invoke-static {}, LT/z4;->e()LT/y4;

    move-result-object v3

    :cond_1
    iget-object v4, p0, LT/s4;->d:LT/x4;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    sget-object v5, LT/z4;->a:LI0/l;

    new-instance v5, LT/w4;

    iget v6, v3, LT/y4;->a:I

    iget v3, v3, LT/y4;->b:I

    iget v7, v2, Lcom/ex/auto/SplitFloaterService;->u:I

    invoke-direct {v5, v1, v7, v6, v3}, LT/w4;-><init>(IIII)V

    invoke-static {v4, v5}, LT/z4;->j(LT/x4;LT/w4;)Z

    :cond_2
    iput-object v0, v2, Lcom/ex/auto/SplitFloaterService;->j:LT/x4;

    iput-object v0, v2, Lcom/ex/auto/SplitFloaterService;->k:LT/x4;

    iget-object v0, v2, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v1, LT/t4;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, LT/t4;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v2, p0, LT/s4;->b:LT/x4;

    iget-object v3, p0, LT/s4;->c:Lcom/ex/auto/SplitFloaterService;

    iget-object v4, p0, LT/s4;->d:LT/x4;

    if-eqz v2, :cond_3

    sget-object v5, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-static {v2}, LT/z4;->b(LT/x4;)V

    :cond_3
    iget-object v2, v3, Lcom/ex/auto/SplitFloaterService;->l:LT/y4;

    if-nez v2, :cond_4

    invoke-static {}, LT/z4;->e()LT/y4;

    move-result-object v2

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    sget-object v5, LT/z4;->a:LI0/l;

    new-instance v5, LT/w4;

    iget v6, v3, Lcom/ex/auto/SplitFloaterService;->u:I

    iget v7, v2, LT/y4;->a:I

    iget v2, v2, LT/y4;->b:I

    invoke-direct {v5, v1, v6, v7, v2}, LT/w4;-><init>(IIII)V

    invoke-static {v4, v5}, LT/z4;->j(LT/x4;LT/w4;)Z

    :cond_5
    iput-object v0, v3, Lcom/ex/auto/SplitFloaterService;->j:LT/x4;

    iput-object v0, v3, Lcom/ex/auto/SplitFloaterService;->k:LT/x4;

    iput-boolean v1, v3, Lcom/ex/auto/SplitFloaterService;->o:Z

    iget-object v0, v3, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v1, LT/t4;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v2}, LT/t4;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const v0, 0x7f0f02e1

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
