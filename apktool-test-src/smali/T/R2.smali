.class public final synthetic LT/R2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/widget/Button;

.field public final synthetic f:Landroid/widget/Button;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, LT/R2;->a:Lcom/ex/auto/MainActivity;

    iput-object p5, p0, LT/R2;->b:Ljava/lang/String;

    iput-object p6, p0, LT/R2;->c:Ljava/lang/String;

    iput-object p7, p0, LT/R2;->d:Ljava/lang/String;

    iput-object p1, p0, LT/R2;->e:Landroid/widget/Button;

    iput-object p2, p0, LT/R2;->f:Landroid/widget/Button;

    iput-object p3, p0, LT/R2;->g:Landroid/widget/TextView;

    iput-object p8, p0, LT/R2;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/R2;->a:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LT/R2;->e:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0f00f0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, LT/R2;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, LT/Y2;

    iget-object v5, p0, LT/R2;->b:Ljava/lang/String;

    iget-object v7, p0, LT/R2;->c:Ljava/lang/String;

    iget-object v8, p0, LT/R2;->h:Ljava/lang/String;

    iget-object v2, p0, LT/R2;->f:Landroid/widget/Button;

    iget-object v6, p0, LT/R2;->d:Ljava/lang/String;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, LT/Y2;-><init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
