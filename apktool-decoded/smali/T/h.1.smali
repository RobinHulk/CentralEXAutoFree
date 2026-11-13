.class public final synthetic LT/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LT/h;->a:I

    iput-object p1, p0, LT/h;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/h;->c:Ljava/lang/Object;

    iput-object p3, p0, LT/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 p1, 0x0

    const/4 p2, 0x0

    iget-object v0, p0, LT/h;->c:Ljava/lang/Object;

    iget-object v1, p0, LT/h;->d:Ljava/lang/Object;

    iget-object v2, p0, LT/h;->b:Ljava/lang/Object;

    iget v3, p0, LT/h;->a:I

    packed-switch v3, :pswitch_data_0

    sget-object v3, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, p2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_1

    move-object v7, v5

    check-cast v7, Lv0/d;

    move-object v7, v1

    check-cast v7, [Z

    aget-boolean v4, v7, v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lw0/j;->U()V

    throw p1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v3}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv0/d;

    iget-object v2, v2, Lv0/d;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v1, :cond_4

    const p1, 0x7f0f00f6

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/Thread;

    new-instance v1, LT/j4;

    invoke-direct {v1, p1, v0}, LT/j4;-><init>(Ljava/util/ArrayList;Lcom/ex/auto/QuickAccessFloaterService;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void

    :pswitch_0
    check-cast v2, Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v4, "binding"

    if-eqz v3, :cond_6

    iget-object v3, v3, LU/a;->l:Landroid/widget/Button;

    invoke-virtual {v3, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, v2, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p2, :cond_5

    const p1, 0x7f0f015b

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, LU/a;->w2:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, LT/z;

    check-cast v0, LT/j3;

    check-cast v1, Ljava/lang/String;

    const/16 p2, 0xc

    invoke-direct {p1, v2, v0, v1, p2}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p2, v2, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    sget p1, Lcom/ex/auto/AcProgramEditActivity;->y:I

    check-cast v2, Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    check-cast v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    add-int/2addr p2, p1

    if-lez p2, :cond_7

    check-cast v1, Lcom/ex/auto/AcProgramEditActivity;

    iget-object p1, v1, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    new-instance v0, LT/l;

    const-string v2, "wait"

    int-to-double v3, p2

    invoke-direct {v0, v2, v3, v4}, LT/l;-><init>(Ljava/lang/String;D)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/ex/auto/AcProgramEditActivity;->t()V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
