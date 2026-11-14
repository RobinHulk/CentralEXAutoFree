.class public final synthetic LT/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LT/v2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LT/v2;->b:Lcom/ex/auto/MainActivity;

    iput p1, p0, LT/v2;->c:I

    iput-object p3, p0, LT/v2;->d:Ljava/lang/Object;

    iput-object p4, p0, LT/v2;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/car/hardware/property/CarPropertyManager;ILcom/ex/auto/MainActivity;LT/W1;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LT/v2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/v2;->d:Ljava/lang/Object;

    iput p2, p0, LT/v2;->c:I

    iput-object p3, p0, LT/v2;->b:Lcom/ex/auto/MainActivity;

    iput-object p4, p0, LT/v2;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x1

    iget-object v1, p0, LT/v2;->e:Ljava/lang/Object;

    iget-object v2, p0, LT/v2;->d:Ljava/lang/Object;

    iget v3, p0, LT/v2;->c:I

    iget-object v4, p0, LT/v2;->b:Lcom/ex/auto/MainActivity;

    iget v5, p0, LT/v2;->a:I

    packed-switch v5, :pswitch_data_0

    iget v0, v4, Lcom/ex/auto/MainActivity;->J:I

    if-ne v0, v3, :cond_1

    iget-object v0, v4, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Lcom/ex/auto/MainActivity;->m2(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    iget-object v0, v0, LU/a;->M2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast v2, Landroid/car/hardware/property/CarPropertyManager;

    sget v5, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v5, LI0/i;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sget-object v6, LT/q;->a:[I

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget v9, v6, v8

    const v10, 0x21407057

    :try_start_0
    invoke-virtual {v2, v10, v9, v3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    iput-boolean v0, v5, LI0/i;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v10

    const-string v11, "AVAS sound type write area="

    const-string v12, ": "

    invoke-static {v11, v9, v12}, LM/d0;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MainActivity"

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v8, v0

    goto :goto_1

    :cond_2
    :goto_2
    iget-boolean v0, v5, LI0/i;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "avas_sound_type_saved"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iget-object v0, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/H;

    check-cast v1, LT/W1;

    const/16 v3, 0x13

    invoke-direct {v2, v1, v3, v5}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
