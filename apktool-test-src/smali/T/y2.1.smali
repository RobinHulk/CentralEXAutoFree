.class public final synthetic LT/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/y2;->a:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, LT/y2;->b:Z

    iput-boolean p3, p0, LT/y2;->c:Z

    iput-boolean p4, p0, LT/y2;->d:Z

    iput-object p5, p0, LT/y2;->e:Ljava/lang/String;

    iput-boolean p6, p0, LT/y2;->f:Z

    iput-object p7, p0, LT/y2;->g:Ljava/lang/String;

    iput-object p8, p0, LT/y2;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-boolean v0, p0, LT/y2;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, LT/y2;->a:Lcom/ex/auto/MainActivity;

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->H1(Z)V

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v0, :cond_11

    iget-object v0, v0, LU/a;->o0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_10

    iget-object v0, v0, LU/a;->p0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_f

    iget-object v0, v0, LU/a;->o0:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_e

    iget-object v0, v0, LU/a;->p0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, LT/y2;->c:Z

    iget-boolean v1, p0, LT/y2;->d:Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const v0, 0x7f0f00c7

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const v0, 0x7f0f00c8

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const v0, 0x7f0f00c5

    goto :goto_0

    :cond_2
    const v0, 0x7f0f00c6

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, LT/y2;->f:Z

    if-eqz v5, :cond_3

    const v6, 0x7f0f00fb

    goto :goto_1

    :cond_3
    const v6, 0x7f0f00fc

    :goto_1
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u00b7 "

    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "auto_apply_paused"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0f00e2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    sget-object v5, LT/q;->a:[I

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "<get-prefs>(...)"

    invoke-static {v5, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, LT/q;->a(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0f00e1

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->Y()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0f00de

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LT/q;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ex/auto/MainActivity;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v7, 0x7f0f00e0

    invoke-virtual {v2, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    const v5, 0x7f0f00df

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "toString(...)"

    invoke-static {v1, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, LT/y2;->e:Ljava/lang/String;

    if-eqz v7, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-static {}, Lcom/ex/auto/MainActivity;->s2()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v8, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f01fc

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f01fb

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_a

    const v1, 0x7f0f01fd

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_a
    const v1, 0x7f0f01fe

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LT/y2;->g:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, LT/y2;->h:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v8, LU/a;->y2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_d
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_e
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_f
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_10
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_11
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3
.end method
