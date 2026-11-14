.class public final synthetic LT/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;I)V
    .locals 0

    iput p2, p0, LT/c4;->a:I

    iput-object p1, p0, LT/c4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    iget-object v0, p0, LT/c4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v1, p0, LT/c4;->a:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "screen_off_warning_seen"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->b:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object p1, v0, Lcom/ex/auto/QuickAccessFloaterService;->e:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->S(Z)V

    return-void

    :pswitch_0
    sget-object p1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->Z()V

    return-void

    :pswitch_1
    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v1, "drive_regen"

    invoke-virtual {v0, p1, v1}, Lcom/ex/auto/QuickAccessFloaterService;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
