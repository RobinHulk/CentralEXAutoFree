.class public final synthetic LT/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, LT/j;->a:I

    iput-object p1, p0, LT/j;->b:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LT/j;->b:Landroid/content/ContextWrapper;

    iget v0, p0, LT/j;->a:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/FavoriteAppsActivity;->a:I

    check-cast p1, Lcom/ex/auto/FavoriteAppsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/CloseAppsWhitelistActivity;->a:I

    check-cast p1, Lcom/ex/auto/CloseAppsWhitelistActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    check-cast p1, Lcom/ex/auto/BlackoutFloaterService;

    iget-boolean v0, p1, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ex/auto/BlackoutFloaterService;->e()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/ex/auto/BlackoutFloaterService;->d:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ex/auto/BlackoutFloaterService;->d:Z

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    iput-boolean v0, p1, Lcom/ex/auto/BlackoutFloaterService;->f:Z

    sget-boolean v1, Lcom/geely/hvacstepperv2/TempStepperService;->Z:Z

    iput-boolean v1, p1, Lcom/ex/auto/BlackoutFloaterService;->g:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_2
    iget-boolean v0, p1, Lcom/ex/auto/BlackoutFloaterService;->g:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/L;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, LT/L;-><init>(Lcom/ex/auto/BlackoutFloaterService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_0
    return-void

    :pswitch_2
    sget v0, Lcom/ex/auto/BackgroundKeepAliveActivity;->a:I

    check-cast p1, Lcom/ex/auto/BackgroundKeepAliveActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_3
    sget v0, Lcom/ex/auto/AcProgramListActivity;->u:I

    check-cast p1, Lcom/ex/auto/AcProgramListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
