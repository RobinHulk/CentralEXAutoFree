.class public final LT/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LA/e;Li/e;Li/n;Li/l;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LT/u3;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/u3;->e:Ljava/lang/Object;

    iput-object p2, p0, LT/u3;->b:Ljava/lang/Object;

    iput-object p3, p0, LT/u3;->c:Ljava/lang/Object;

    iput-object p4, p0, LT/u3;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LI0/k;Landroid/widget/Button;Ljava/lang/String;Lcom/ex/auto/MainActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LT/u3;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LT/u3;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/u3;->c:Ljava/lang/Object;

    iput-object p3, p0, LT/u3;->d:Ljava/lang/Object;

    iput-object p4, p0, LT/u3;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LT/u3;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/u3;->b:Ljava/lang/Object;

    check-cast v0, Li/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, LT/u3;->e:Ljava/lang/Object;

    check-cast v1, LA/e;

    iget-object v2, v1, LA/e;->b:Ljava/lang/Object;

    check-cast v2, Li/f;

    const/4 v3, 0x1

    iput-boolean v3, v2, Li/f;->z:Z

    iget-object v0, v0, Li/e;->b:Li/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Li/l;->c(Z)V

    iget-object v0, v1, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Li/f;

    iput-boolean v2, v0, Li/f;->z:Z

    :cond_0
    iget-object v0, p0, LT/u3;->c:Ljava/lang/Object;

    check-cast v0, Li/n;

    invoke-virtual {v0}, Li/n;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Li/n;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LT/u3;->d:Ljava/lang/Object;

    check-cast v1, Li/l;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Li/l;->q(Landroid/view/MenuItem;Li/y;I)Z

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, LT/u3;->b:Ljava/lang/Object;

    check-cast v0, LI0/k;

    iget v1, v0, LI0/k;->a:I

    iget-object v2, p0, LT/u3;->c:Ljava/lang/Object;

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, LT/u3;->e:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/MainActivity;

    if-gtz v1, :cond_3

    iget-object v0, p0, LT/u3;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2

    iget-object v0, v0, LU/a;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, LT/G2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v3, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f0f01a0

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, LI0/k;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LI0/k;->a:I

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
