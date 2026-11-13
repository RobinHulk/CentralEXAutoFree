.class public final synthetic LT/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZLjava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, LT/z2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/z2;->b:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, LT/z2;->c:Z

    iput-object p3, p0, LT/z2;->e:Ljava/lang/String;

    iput-boolean p4, p0, LT/z2;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZZLjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LT/z2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/z2;->b:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, LT/z2;->c:Z

    iput-boolean p3, p0, LT/z2;->d:Z

    iput-object p4, p0, LT/z2;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/ex/auto/MainActivity;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, LT/z2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LT/z2;->c:Z

    iput-boolean p2, p0, LT/z2;->d:Z

    iput-object p3, p0, LT/z2;->b:Lcom/ex/auto/MainActivity;

    iput-object p4, p0, LT/z2;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, LT/z2;->d:Z

    iget-object v3, p0, LT/z2;->e:Ljava/lang/String;

    iget-boolean v4, p0, LT/z2;->c:Z

    iget-object v5, p0, LT/z2;->b:Lcom/ex/auto/MainActivity;

    iget v6, p0, LT/z2;->a:I

    packed-switch v6, :pswitch_data_0

    sget v6, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v4, :cond_1

    const v6, 0x7f0f00a0

    :goto_0
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const v6, 0x7f0f00a1

    goto :goto_0

    :goto_1
    xor-int/2addr v1, v4

    invoke-static {v5, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-nez v4, :cond_3

    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_2

    const-string v2, "hvac_digital_batt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->v1()V

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    if-nez v4, :cond_5

    new-instance v1, LT/j1;

    invoke-direct {v1, v5}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f03df

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v2, v3, Le/e;->d:Ljava/lang/CharSequence;

    const v2, 0x7f0f02c6

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Le/e;->f:Ljava/lang/CharSequence;

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    goto :goto_6

    :cond_5
    new-instance v1, LT/j1;

    invoke-direct {v1, v5}, LT/j1;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_6

    const v4, 0x7f0f010e

    goto :goto_3

    :cond_6
    const v4, 0x7f0f010c

    :goto_3
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v6, Le/e;

    iput-object v4, v6, Le/e;->d:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    const v4, 0x7f0f010d

    goto :goto_4

    :cond_7
    const v4, 0x7f0f010b

    :goto_4
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Le/e;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    const v3, 0x7f0f0413

    goto :goto_5

    :cond_8
    const v3, 0x7f0f03ef

    :goto_5
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, LT/X2;

    invoke-direct {v4, v5, v2}, LT/X2;-><init>(Lcom/ex/auto/MainActivity;Z)V

    invoke-virtual {v1, v3, v4}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, LT/j1;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    :cond_9
    :goto_6
    return-void

    :pswitch_1
    sget v6, Lcom/ex/auto/MainActivity;->u0:I

    if-nez v4, :cond_a

    if-nez v2, :cond_a

    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->D0()Z

    move-result v6

    if-nez v6, :cond_a

    new-instance v1, LT/j1;

    invoke-direct {v1, v5}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0244

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v2, v3, Le/e;->d:Ljava/lang/CharSequence;

    const v2, 0x7f0f0242

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Le/e;->f:Ljava/lang/CharSequence;

    iput-boolean v0, v3, Le/e;->k:Z

    const v0, 0x7f0f0034

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, LT/X1;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v5}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v1, v0, v2}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    goto/16 :goto_b

    :cond_a
    if-nez v4, :cond_b

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    move v1, v0

    :goto_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "temp"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "batt"

    if-eqz v4, :cond_c

    const v4, 0x7f0f01a7

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_c
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, 0x7f0f01a3

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_d
    const v4, 0x7f0f0446

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const v2, 0x7f0f01a6

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_e
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const v2, 0x7f0f046f

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_f
    const v2, 0x7f0f0445

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v7, 0x7f0f01a4

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f01a5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v2, 0x7f0f0131

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    new-instance v2, LT/j1;

    invoke-direct {v2, v5}, LT/j1;-><init>(Landroid/content/Context;)V

    iget-object v6, v2, LT/j1;->b:Ljava/lang/Object;

    check-cast v6, Le/e;

    iput-object v4, v6, Le/e;->d:Ljava/lang/CharSequence;

    iput-object v1, v6, Le/e;->f:Ljava/lang/CharSequence;

    iput-boolean v0, v6, Le/e;->k:Z

    const v0, 0x7f0f002f

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT/X1;

    const/16 v4, 0x16

    invoke-direct {v1, v4, v5}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v2, v0, v1}, LT/j1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f0f002d

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT/a2;

    const/4 v4, 0x3

    invoke-direct {v1, v5, v3, v4}, LT/a2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v2, v0, v1}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, LT/j1;->j()Le/i;

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
