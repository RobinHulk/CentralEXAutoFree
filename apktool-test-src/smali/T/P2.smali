.class public final synthetic LT/P2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;ILandroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0

    iput p6, p0, LT/P2;->a:I

    iput-object p1, p0, LT/P2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/P2;->c:Ljava/lang/String;

    iput p3, p0, LT/P2;->d:I

    iput-object p4, p0, LT/P2;->e:Landroid/widget/TextView;

    iput-object p5, p0, LT/P2;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget p1, p0, LT/P2;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, LT/P2;->c:Ljava/lang/String;

    iget-object v3, p0, LT/P2;->e:Landroid/widget/TextView;

    iget-object v4, p0, LT/P2;->f:Ljava/lang/String;

    iget-object v0, p0, LT/P2;->b:Lcom/ex/auto/MainActivity;

    iget v2, p0, LT/P2;->d:I

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->Q(Lcom/ex/auto/MainActivity;Ljava/lang/String;ILandroid/widget/TextView;Ljava/lang/String;I)V

    return-void

    :pswitch_0
    iget-object v7, p0, LT/P2;->c:Ljava/lang/String;

    iget-object v9, p0, LT/P2;->e:Landroid/widget/TextView;

    iget-object v10, p0, LT/P2;->f:Ljava/lang/String;

    iget-object v6, p0, LT/P2;->b:Lcom/ex/auto/MainActivity;

    iget v8, p0, LT/P2;->d:I

    const/4 v11, -0x1

    invoke-static/range {v6 .. v11}, Lcom/ex/auto/MainActivity;->Q(Lcom/ex/auto/MainActivity;Ljava/lang/String;ILandroid/widget/TextView;Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
