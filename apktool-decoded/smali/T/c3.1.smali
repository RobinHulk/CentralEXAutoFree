.class public final synthetic LT/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/ex/auto/MainActivity;

.field public final synthetic d:LT/i3;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/ex/auto/MainActivity;LT/i3;I)V
    .locals 0

    iput p4, p0, LT/c3;->a:I

    iput-object p1, p0, LT/c3;->b:Landroid/widget/TextView;

    iput-object p2, p0, LT/c3;->c:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, LT/c3;->d:LT/i3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LT/c3;->b:Landroid/widget/TextView;

    iget-object v1, p0, LT/c3;->c:Lcom/ex/auto/MainActivity;

    iget-object v2, p0, LT/c3;->d:LT/i3;

    iget v3, p0, LT/c3;->a:I

    packed-switch v3, :pswitch_data_0

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v2, LT/i3;->b:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f01dc

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v2, LT/i3;->b:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f00f1

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
