.class public final synthetic LT/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LH0/l;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Z

.field public final synthetic g:Landroid/widget/Button;

.field public final synthetic h:LH0/l;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;LH0/l;Landroid/widget/TextView;ZLandroid/widget/Button;LH0/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/u2;->a:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/u2;->b:Ljava/lang/String;

    iput-object p3, p0, LT/u2;->c:Ljava/lang/String;

    iput-object p4, p0, LT/u2;->d:LH0/l;

    iput-object p5, p0, LT/u2;->e:Landroid/widget/TextView;

    iput-boolean p6, p0, LT/u2;->f:Z

    iput-object p7, p0, LT/u2;->g:Landroid/widget/Button;

    iput-object p8, p0, LT/u2;->h:LH0/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LT/u2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LT/u2;->a:Lcom/ex/auto/MainActivity;

    iget-object v2, p0, LT/u2;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x2ee0

    invoke-static {v3, v2}, Lcom/ex/auto/MainActivity;->n2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ADB"

    invoke-virtual {v1, v3, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LT/u2;->d:LH0/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move-object v4, v0

    goto :goto_2

    :cond_1
    const-string v4, "Falha no ADB local"

    invoke-static {v2, v4, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    const-string v5, "getString(...)"

    if-nez v4, :cond_3

    const-string v4, "NAO_CONFIRMADO"

    invoke-static {v2, v4, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ERRO"

    invoke-static {v2, v4, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "error"

    invoke-static {v2, v4, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "not found"

    invoke-static {v2, v4, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "No such"

    invoke-static {v2, v4, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Permission denied"

    invoke-static {v2, v4, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Read-only file system"

    invoke-static {v2, v4, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const v4, 0x7f0f00fe

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const v4, 0x7f0f024a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iget-object v5, p0, LT/u2;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    iget-boolean v0, p0, LT/u2;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, LT/u2;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, LT/u2;->h:LH0/l;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method
