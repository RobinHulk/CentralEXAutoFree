.class public final synthetic LT/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/SharedPreferences;

.field public final synthetic c:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p3, p0, LT/h2;->a:I

    iput-object p1, p0, LT/h2;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, LT/h2;->c:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "pill_text_white"

    iget v0, p0, LT/h2;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/h2;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, LT/h2;->c:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/ex/auto/TempBattPillFloaterService;->u:Lcom/ex/auto/TempBattPillFloaterService;

    sget-object p1, Lcom/ex/auto/TempBattPillFloaterService;->u:Lcom/ex/auto/TempBattPillFloaterService;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Lcom/ex/auto/TempBattPillFloaterService;->c(Z)V

    :cond_0
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->q1()V

    return-void

    :pswitch_0
    iget-object v0, p0, LT/h2;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, LT/h2;->c:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/ex/auto/TempBattPillFloaterService;->u:Lcom/ex/auto/TempBattPillFloaterService;

    sget-object p1, Lcom/ex/auto/TempBattPillFloaterService;->u:Lcom/ex/auto/TempBattPillFloaterService;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lcom/ex/auto/TempBattPillFloaterService;->c(Z)V

    :cond_1
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->q1()V

    return-void

    :pswitch_1
    const-string p1, "both"

    iget-object v0, p0, LT/h2;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, LT/h2;->c:Lcom/ex/auto/MainActivity;

    invoke-static {v0, v1, p1}, Lcom/ex/auto/MainActivity;->W1(Landroid/content/SharedPreferences;Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "batt"

    iget-object v0, p0, LT/h2;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, LT/h2;->c:Lcom/ex/auto/MainActivity;

    invoke-static {v0, v1, p1}, Lcom/ex/auto/MainActivity;->W1(Landroid/content/SharedPreferences;Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "temp"

    iget-object v0, p0, LT/h2;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, LT/h2;->c:Lcom/ex/auto/MainActivity;

    invoke-static {v0, v1, p1}, Lcom/ex/auto/MainActivity;->W1(Landroid/content/SharedPreferences;Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
