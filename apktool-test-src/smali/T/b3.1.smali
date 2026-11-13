.class public final synthetic LT/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/content/ContextWrapper;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/ContextWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, LT/b3;->a:I

    iput-object p1, p0, LT/b3;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/b3;->c:Landroid/content/ContextWrapper;

    iput-object p3, p0, LT/b3;->d:Ljava/lang/Object;

    iput-object p4, p0, LT/b3;->e:Ljava/lang/Object;

    iput-object p5, p0, LT/b3;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, LT/b3;->f:Ljava/lang/Object;

    iget-object v1, p0, LT/b3;->e:Ljava/lang/Object;

    iget-object v2, p0, LT/b3;->d:Ljava/lang/Object;

    iget-object v3, p0, LT/b3;->c:Landroid/content/ContextWrapper;

    iget-object v4, p0, LT/b3;->b:Ljava/lang/Object;

    iget v5, p0, LT/b3;->a:I

    packed-switch v5, :pswitch_data_0

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/ex/auto/MediaBarFloaterService;

    iget-object v5, v3, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-static {v5, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v4, v3, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    iget-object v2, v3, Lcom/ex/auto/MediaBarFloaterService;->g:Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v3, Lcom/ex/auto/MediaBarFloaterService;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->u:Ljava/util/Set;

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    sget v5, Lcom/ex/auto/MainActivity;->u0:I

    check-cast v3, Lcom/ex/auto/MainActivity;

    const v5, 0x7f0f0099

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast v2, LT/i3;

    new-instance v5, Lx0/c;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lx0/c;-><init>(I)V

    iget-object v2, v2, LT/i3;->e:Ljava/lang/String;

    const-string v6, "https://play.google.com/store/apps/details?id="

    invoke-static {v2, v6}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "android.intent.action.VIEW"

    if-eqz v6, :cond_4

    new-instance v6, Landroid/content/Intent;

    const-string v8, "?id="

    invoke-static {v2, v8}, LO0/j;->R0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "market://details?id="

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lx0/c;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v6, Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lx0/c;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lx0/c;->f()V

    const/4 v6, 0x1

    iput-boolean v6, v5, Lx0/c;->c:Z

    iget v7, v5, Lx0/c;->b:I

    if-lez v7, :cond_5

    goto :goto_2

    :cond_5
    sget-object v5, Lx0/c;->d:Lx0/c;

    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lx0/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :catchall_0
    move-object v7, v5

    check-cast v7, Lx0/a;

    invoke-virtual {v7}, Lx0/a;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lx0/a;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    const/high16 v8, 0x10000000

    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_6
    const v5, 0x7f0f009f

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
