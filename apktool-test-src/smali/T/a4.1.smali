.class public final synthetic LT/a4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:LI0/l;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;LI0/l;I)V
    .locals 0

    iput p3, p0, LT/a4;->a:I

    iput-object p1, p0, LT/a4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput-object p2, p0, LT/a4;->c:LI0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 p1, 0x0

    const-string v0, "dlg"

    iget-object v1, p0, LT/a4;->c:LI0/l;

    const-string v2, "QuickAccessFloater"

    const/high16 v3, 0x10000000

    iget-object v4, p0, LT/a4;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v5, p0, LT/a4;->a:I

    packed-switch v5, :pswitch_data_0

    sget-object v5, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/ex/auto/CloseAppsWhitelistActivity;

    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "confirmCloseUserApps: abrir CloseAppsWhitelistActivity falhou: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object v1, v1, LI0/l;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object v5, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/ex/auto/FavoriteAppsActivity;

    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "showFavoriteAppsPicker: abrir FavoriteAppsActivity falhou: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    iget-object v1, v1, LI0/l;->b:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_1
    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
