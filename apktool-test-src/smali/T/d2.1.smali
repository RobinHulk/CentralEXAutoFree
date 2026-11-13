.class public final synthetic LT/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LT/d2;->a:I

    iput-object p1, p0, LT/d2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, LT/d2;->b:Ljava/lang/Object;

    iget v0, p0, LT/d2;->a:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast p1, LH0/l;

    invoke-interface {p1, p2}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p1, Lcom/ex/auto/MainActivity;

    iget-object v0, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LU/a;->q2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, LT/c2;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
