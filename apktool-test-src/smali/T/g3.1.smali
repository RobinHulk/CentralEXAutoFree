.class public final synthetic LT/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, LT/g3;->a:I

    iput-object p1, p0, LT/g3;->b:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 10

    const/4 p1, 0x1

    iget-object v0, p0, LT/g3;->b:Landroid/content/ContextWrapper;

    iget v1, p0, LT/g3;->a:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-wide/16 v1, 0x320

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/QuickAccessFloaterService;->M(J)V

    invoke-static {v0}, LA/b;->V(Landroid/content/Context;)V

    return p1

    :pswitch_0
    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, LU/a;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v2, LI0/k;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x5

    iput v3, v2, LI0/k;->a:I

    new-instance v9, LT/u3;

    invoke-direct {v9, v2, v1, v7, v0}, LT/u3;-><init>(LI0/k;Landroid/widget/Button;Ljava/lang/String;Lcom/ex/auto/MainActivity;)V

    new-instance v2, LT/i1;

    const/4 v8, 0x1

    move-object v3, v2

    move-object v4, v0

    move-object v5, v9

    move-object v6, v1

    invoke-direct/range {v3 .. v8}, LT/i1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p1

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
