.class public final synthetic LT/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Landroid/widget/Button;I)V
    .locals 0

    iput p3, p0, LT/s2;->a:I

    iput-object p1, p0, LT/s2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/s2;->c:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "volume"

    iget-object v0, p0, LT/s2;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    iget-object v2, p0, LT/s2;->b:Lcom/ex/auto/MainActivity;

    iget v3, p0, LT/s2;->a:I

    packed-switch v3, :pswitch_data_0

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "widget_volume_signs"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    invoke-static {v2, v4, v3}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    if-nez v1, :cond_0

    const v1, 0x7f0f0379

    goto :goto_0

    :cond_0
    const v1, 0x7f0f037a

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {p1}, LT/Y;->Z(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "widget_volume_vertical"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    invoke-static {v2, v4, v3}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    if-nez v1, :cond_1

    const v1, 0x7f0f037c

    goto :goto_1

    :cond_1
    const v1, 0x7f0f0378

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {p1}, LT/Y;->Z(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
