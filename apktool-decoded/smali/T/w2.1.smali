.class public final synthetic LT/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/Exception;I)V
    .locals 0

    iput p3, p0, LT/w2;->a:I

    iput-object p1, p0, LT/w2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/w2;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x1

    const-string v1, "binding"

    const/4 v2, 0x0

    const-string v3, "getString(...)"

    iget-object v4, p0, LT/w2;->c:Ljava/lang/Exception;

    iget-object v5, p0, LT/w2;->b:Lcom/ex/auto/MainActivity;

    iget v6, p0, LT/w2;->a:I

    packed-switch v6, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, LT/j1;

    invoke-direct {v0, v5}, LT/j1;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f014f

    invoke-virtual {v0, v1}, LT/j1;->i(I)V

    const v1, 0x7f0f0145

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const v4, 0x7f0f0243

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f0f0147

    invoke-virtual {v5, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v1, v3, Le/e;->f:Ljava/lang/CharSequence;

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, LT/j1;->j()Le/i;

    :cond_1
    return-void

    :pswitch_0
    sget v6, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    :cond_2
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f0f00ee

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v5, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_4

    iget-object v3, v3, LU/a;->R2:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "Update"

    invoke-virtual {v5, v3, v4}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v5, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_3

    iget-object v1, v3, LU/a;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_3
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    sget v6, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    :cond_5
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f0f00dc

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v5, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_7

    iget-object v3, v3, LU/a;->w2:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, v5, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_6

    iget-object v1, v3, LU/a;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_6
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
