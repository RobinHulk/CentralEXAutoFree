.class public final synthetic LT/Q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/WifiFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/WifiFloaterService;I)V
    .locals 0

    iput p2, p0, LT/Q4;->a:I

    iput-object p1, p0, LT/Q4;->b:Lcom/ex/auto/WifiFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LT/Q4;->b:Lcom/ex/auto/WifiFloaterService;

    iget v1, p0, LT/Q4;->a:I

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/ex/auto/WifiFloaterService;->n:I

    invoke-virtual {v0}, Lcom/ex/auto/WifiFloaterService;->a()V

    return-void

    :pswitch_0
    sget v1, Lcom/ex/auto/WifiFloaterService;->n:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
