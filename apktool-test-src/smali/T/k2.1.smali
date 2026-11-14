.class public final synthetic LT/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/ex/auto/MainActivity;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LT/k2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/k2;->c:Lcom/ex/auto/MainActivity;

    iput-boolean p3, p0, LT/k2;->b:Z

    iput-object p2, p0, LT/k2;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/ex/auto/MainActivity;LT/D;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LT/k2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LT/k2;->b:Z

    iput-object p2, p0, LT/k2;->c:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, LT/k2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-boolean v0, p0, LT/k2;->b:Z

    iget-object v1, p0, LT/k2;->d:Ljava/lang/Object;

    iget v2, p0, LT/k2;->a:I

    packed-switch v2, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    const-string p1, "escolhido"

    invoke-static {v6, p1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LT/D;

    iget-object p1, p0, LT/k2;->c:Lcom/ex/auto/MainActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v7, 0x0

    iget v4, v1, LT/D;->a:I

    const/16 v8, 0x18

    move-object v3, p1

    move-object v5, v6

    move-object v6, v0

    invoke-static/range {v3 .. v8}, LT/m;->g(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v4, v1, LT/D;->a:I

    const/16 v8, 0x14

    move-object v3, p1

    invoke-static/range {v3 .. v8}, LT/m;->g(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    :goto_0
    iget-object v0, p1, Lcom/ex/auto/MainActivity;->k0:Le/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le/i;->dismiss()V

    :cond_1
    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->x0()V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v2, p0, LT/k2;->c:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v4, 0x0

    const-string v5, "binding"

    if-eqz v3, :cond_6

    iget-object v3, v3, LU/a;->c:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    const-string v3, "adb_gpio_enabled"

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->c1()V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->m0(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->c1()V

    goto :goto_1

    :cond_3
    iget-object p1, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p1, :cond_5

    iget-object v3, p1, LU/a;->c:Landroid/widget/Button;

    if-eqz p1, :cond_4

    iget-object v4, p1, LU/a;->M2:Landroid/widget/TextView;

    const p1, 0x7f0f00ed

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p1, "getString(...)"

    invoke-static {v5, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, LT/B2;

    invoke-direct {v12, v2, v0}, LT/B2;-><init>(Lcom/ex/auto/MainActivity;Z)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v6, 0x7d0

    const/16 v8, 0x2710

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    const/16 v13, 0x2c0

    invoke-static/range {v2 .. v13}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    :goto_1
    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :cond_4
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
