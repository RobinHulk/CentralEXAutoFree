.class public final synthetic LT/F2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, LT/F2;->a:I

    iput-object p1, p0, LT/F2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/F2;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/ex/auto/MainActivity;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LT/F2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/F2;->c:Ljava/util/ArrayList;

    iput-object p2, p0, LT/F2;->b:Lcom/ex/auto/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, LT/F2;->c:Ljava/util/ArrayList;

    iget-object v1, p0, LT/F2;->b:Lcom/ex/auto/MainActivity;

    iget v2, p0, LT/F2;->a:I

    packed-switch v2, :pswitch_data_0

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/o3;

    iget-object v1, v0, LT/o3;->a:Ljava/lang/String;

    const-string v2, "dep_update_notified_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, LT/o3;->c:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_0
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/F2;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v1, 0x7f0f014e

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/o3;

    iget-object v0, v0, LT/o3;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "dualdashcam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_4

    iget-object v5, v0, LU/a;->B:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v6, v0, LU/a;->h0:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v7, v0, LU/a;->B2:Landroid/widget/TextView;

    const-string v3, "DualDashcam-install.apk"

    const-string v4, "br.com.central.dualdashcam"

    const-string v2, "https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/dualdashcam.json"

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/ex/auto/MainActivity;->G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    const-string v1, "keyserver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->D1()V

    goto :goto_1

    :sswitch_2
    const-string v1, "gestos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, LT/G2;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :sswitch_3
    const-string v1, "connadaptor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance v0, LT/G2;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_8
    return-void

    :pswitch_1
    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v2, p0, LT/F2;->c:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/16 v7, 0x3e

    invoke-static/range {v2 .. v7}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "widget_apps_list"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {v1}, LT/Y;->E(Landroid/content/Context;)V

    const-string p1, "apps"

    invoke-static {p1}, LT/Y;->Z(Ljava/lang/String;)V

    return-void

    :pswitch_2
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "auto_connect_preferred_bt"

    if-nez p2, :cond_9

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_9
    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, LT/L3;->a:LT/L3;

    if-nez p2, :cond_a

    const-string p2, "qualquer"

    :cond_a
    const-string v2, "celular preferido: "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Preferido"

    invoke-virtual {v0, v2, p2}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->y()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x6c213427 -> :sswitch_3
        -0x4a778a1d -> :sswitch_2
        -0x40bab59e -> :sswitch_1
        0x25ce1301 -> :sswitch_0
    .end sparse-switch
.end method
