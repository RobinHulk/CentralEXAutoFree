.class public final synthetic LT/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    iput p2, p0, LT/e4;->a:I

    iput-object p1, p0, LT/e4;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LT/e4;->b:Landroid/widget/TextView;

    const-string v1, "..."

    iget v2, p0, LT/e4;->a:I

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
