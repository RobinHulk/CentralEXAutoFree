.class public final synthetic LT/M2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LT/M2;->a:I

    iput-object p1, p0, LT/M2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, LT/M2;->b:Ljava/lang/Object;

    iget v0, p0, LT/M2;->a:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    check-cast p1, LH0/a;

    invoke-interface {p1}, LH0/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    check-cast p1, Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->l1()V

    return-void

    :pswitch_1
    check-cast p1, Lcom/ex/auto/MainActivity;

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, LU/a;->n:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
