.class public final synthetic LT/W2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/ex/auto/MainActivity;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZZZLjava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LT/W2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/W2;->c:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, LT/W2;->b:Z

    iput-boolean p3, p0, LT/W2;->d:Z

    iput-boolean p4, p0, LT/W2;->e:Z

    iput-object p5, p0, LT/W2;->g:Ljava/lang/String;

    iput-boolean p6, p0, LT/W2;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/ex/auto/MainActivity;ZZZLjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LT/W2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LT/W2;->b:Z

    iput-object p2, p0, LT/W2;->c:Lcom/ex/auto/MainActivity;

    iput-boolean p3, p0, LT/W2;->d:Z

    iput-boolean p4, p0, LT/W2;->e:Z

    iput-boolean p5, p0, LT/W2;->f:Z

    iput-object p6, p0, LT/W2;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, LT/W2;->g:Ljava/lang/String;

    iget-boolean v1, p0, LT/W2;->f:Z

    iget-boolean v2, p0, LT/W2;->e:Z

    iget-boolean v3, p0, LT/W2;->d:Z

    iget-object v4, p0, LT/W2;->c:Lcom/ex/auto/MainActivity;

    iget-boolean v5, p0, LT/W2;->b:Z

    iget v6, p0, LT/W2;->a:I

    packed-switch v6, :pswitch_data_0

    sget v6, Lcom/ex/auto/MainActivity;->u0:I

    if-eqz v5, :cond_0

    const v0, 0x7f0f0122

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const v0, 0x7f0f0124

    goto :goto_0

    :cond_1
    const v0, 0x7f0f011d

    :goto_0
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    const v0, 0x7f0f0123

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f011c

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-static {v2, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    new-instance v1, LT/j1;

    invoke-direct {v1, v4}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f03df

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v2, v3, Le/e;->d:Ljava/lang/CharSequence;

    const-string v2, "\n\n"

    invoke-static {v0, v2}, LM/d0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->f0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Le/e;->f:Ljava/lang/CharSequence;

    const v0, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, LT/j1;->j()Le/i;

    new-instance v0, LT/U1;

    const/16 v1, 0x16

    invoke-direct {v0, v1, v4}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v4, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->e1()V

    return-void

    :pswitch_0
    sget v6, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v6, LT/E2;

    const/16 v7, 0xc

    invoke-direct {v6, v7, v4}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-static {v4, v5, v3, v2, v6}, LT/m;->x(Landroid/content/Context;ZZZLH0/l;)Z

    move-result v2

    iget-object v3, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, LT/G2;

    const/16 v6, 0x11

    invoke-direct {v5, v6, v4}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v5, LT/z2;

    invoke-direct {v5, v4, v2, v0, v1}, LT/z2;-><init>(Lcom/ex/auto/MainActivity;ZLjava/lang/String;Z)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
