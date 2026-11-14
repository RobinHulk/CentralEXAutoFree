.class public final synthetic LT/L2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:LT/k3;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;LT/k3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/L2;->a:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/L2;->b:LT/k3;

    iput-object p3, p0, LT/L2;->c:Ljava/lang/String;

    iput-object p4, p0, LT/L2;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, LT/L2;->a:Lcom/ex/auto/MainActivity;

    iget-object p2, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p2, :cond_1

    iget-object p2, p2, LU/a;->m:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p2, :cond_0

    const v0, 0x7f0f015a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, LU/a;->A2:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, LT/y0;

    iget-object v0, p0, LT/L2;->b:LT/k3;

    iget-object v1, p0, LT/L2;->c:Ljava/lang/String;

    iget-object v2, p0, LT/L2;->d:Ljava/lang/String;

    invoke-direct {p2, p1, v0, v1, v2}, LT/y0;-><init>(Lcom/ex/auto/MainActivity;LT/k3;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0
.end method
