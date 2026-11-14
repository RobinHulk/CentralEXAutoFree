.class public final synthetic LT/g4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;ZLcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p5, p0, LT/g4;->a:I

    iput-object p1, p0, LT/g4;->b:Landroid/view/KeyEvent$Callback;

    iput-boolean p2, p0, LT/g4;->c:Z

    iput-object p3, p0, LT/g4;->d:Ljava/lang/Object;

    iput-object p4, p0, LT/g4;->e:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;LI0/l;ZLI0/i;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, LT/g4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/g4;->b:Landroid/view/KeyEvent$Callback;

    iput-object p2, p0, LT/g4;->d:Ljava/lang/Object;

    iput-boolean p3, p0, LT/g4;->c:Z

    iput-object p4, p0, LT/g4;->e:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LT/g4;->e:Ljava/io/Serializable;

    iget-boolean v1, p0, LT/g4;->c:Z

    iget-object v2, p0, LT/g4;->d:Ljava/lang/Object;

    iget-object v3, p0, LT/g4;->b:Landroid/view/KeyEvent$Callback;

    iget v4, p0, LT/g4;->a:I

    packed-switch v4, :pswitch_data_0

    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    check-cast v3, Lcom/ex/auto/MainActivity;

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->d1()V

    check-cast v2, LI0/l;

    iget-object v2, v2, LI0/l;->b:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    const v0, 0x7f0f0091

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0090

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    check-cast v0, LI0/i;

    iget-boolean v0, v0, LI0/i;->a:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0f008f

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v0, 0x7f0f0092

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    sget-object v4, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    if-eqz v1, :cond_3

    const-string v1, "\u21ba AA\n\u2713"

    goto :goto_2

    :cond_3
    const-string v1, "\u21ba AA\n\u2717"

    :goto_2
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast v2, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v1, v2, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, LT/e3;

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v0, v4}, LT/e3;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1
    sget-object v4, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    if-eqz v1, :cond_4

    const-string v1, "\u25b6 AA\n\u2713"

    goto :goto_3

    :cond_4
    const-string v1, "\u25b6 AA\n\u2717"

    :goto_3
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast v2, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v1, v2, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, LT/e3;

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, LT/e3;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
