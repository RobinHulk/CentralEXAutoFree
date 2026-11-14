.class public final synthetic LT/Y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;I)V
    .locals 0

    iput p2, p0, LT/Y3;->a:I

    iput-object p1, p0, LT/Y3;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, LT/Y3;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v2, p0, LT/Y3;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v1, Lcom/ex/auto/QuickAccessFloaterService;->r:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v4, LT/V3;

    invoke-direct {v4, v1, v2, v0}, LT/V3;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Landroid/widget/TextView;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v0, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0

    :pswitch_1
    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v2, "tela_preta_prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-static {v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->h(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const v0, 0x20020503

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->O(I)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const v0, 0x20020502

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->O(I)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const v0, 0x20020501

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->O(I)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_6
    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v2, "quick_access_prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const v0, 0x22010103

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->N(I)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const v0, 0x22010102

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->N(I)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const v0, 0x22010101

    invoke-virtual {v1, v0}, Lcom/ex/auto/QuickAccessFloaterService;->N(I)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
