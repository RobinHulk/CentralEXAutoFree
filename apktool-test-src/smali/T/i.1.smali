.class public final synthetic LT/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;II)V
    .locals 0

    iput p3, p0, LT/i;->a:I

    iput-object p1, p0, LT/i;->c:Landroid/content/ContextWrapper;

    iput p2, p0, LT/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, LT/i;->b:I

    iget-object v0, p0, LT/i;->c:Landroid/content/ContextWrapper;

    iget v1, p0, LT/i;->a:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-virtual {v0, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->c(I)V

    return-void

    :pswitch_0
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    check-cast v0, Lcom/ex/auto/MainActivity;

    invoke-virtual {v0, p1}, Lcom/ex/auto/MainActivity;->k2(I)V

    return-void

    :pswitch_1
    check-cast v0, Lcom/ex/auto/DpadFloaterService;

    iget-boolean v0, v0, Lcom/ex/auto/DpadFloaterService;->h:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/w0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, LT/w0;-><init>(II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :pswitch_2
    sget v1, Lcom/ex/auto/AcProgramListActivity;->u:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/AcProgramEditActivity;

    check-cast v0, Lcom/ex/auto/AcProgramListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "slot"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_3
    check-cast v0, Lcom/ex/auto/AcProgramEditActivity;

    iget-object v1, v0, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ex/auto/AcProgramEditActivity;->t()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
