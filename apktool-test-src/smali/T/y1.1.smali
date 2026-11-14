.class public final synthetic LT/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, LT/y1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LT/y1;->b:I

    iput-object p3, p0, LT/y1;->c:Ljava/lang/Object;

    iput-object p2, p0, LT/y1;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;LT/C;I)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, LT/y1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/y1;->c:Ljava/lang/Object;

    iput-object p2, p0, LT/y1;->d:Ljava/lang/Object;

    iput p3, p0, LT/y1;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, LT/y1;->a:I

    iput-object p1, p0, LT/y1;->c:Ljava/lang/Object;

    iput p2, p0, LT/y1;->b:I

    iput-object p3, p0, LT/y1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, LT/y1;->b:I

    iget-object v3, p0, LT/y1;->c:Ljava/lang/Object;

    iget-object v4, p0, LT/y1;->d:Ljava/lang/Object;

    iget v5, p0, LT/y1;->a:I

    packed-switch v5, :pswitch_data_0

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    check-cast v4, LT/C;

    check-cast v3, Lcom/ex/auto/MainActivity;

    const-string p1, "ctx"

    invoke-static {v3, p1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, v4, LT/C;->a:I

    if-ltz p1, :cond_1

    const/4 v4, 0x5

    if-ge p1, v4, :cond_1

    if-ltz v2, :cond_1

    if-ge v2, v4, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, LT/m;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LT/C;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LT/C;

    const/4 v6, 0x6

    invoke-static {v5, v2, v1, v0, v6}, LT/C;->a(LT/C;ILjava/lang/String;ZI)LT/C;

    move-result-object v2

    invoke-static {v3, v2}, LT/m;->w(Landroid/content/Context;LT/C;)V

    invoke-static {v4, p1, v1, v0, v6}, LT/C;->a(LT/C;ILjava/lang/String;ZI)LT/C;

    move-result-object p1

    invoke-static {v3, p1}, LT/m;->w(Landroid/content/Context;LT/C;)V

    :cond_1
    :goto_0
    iget-object p1, v3, Lcom/ex/auto/MainActivity;->k0:Le/i;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Le/i;->dismiss()V

    :cond_2
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->v0()V

    return-void

    :pswitch_0
    sget v5, Lcom/ex/auto/MainActivity;->u0:I

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_7

    check-cast v6, Lv0/a;

    iget-object v8, v6, Lv0/a;->a:Ljava/lang/Object;

    check-cast v8, Landroid/widget/Button;

    iget-object v6, v6, Lv0/a;->b:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    if-ne v5, v2, :cond_3

    move v5, p1

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    if-eqz v5, :cond_4

    move v9, v0

    goto :goto_3

    :cond_4
    const/16 v9, 0x8

    :goto_3
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_5

    const v6, 0x7f05002e

    goto :goto_4

    :cond_5
    const v6, 0x7f05003e

    :goto_4
    move-object v9, v4

    check-cast v9, Lcom/ex/auto/MainActivity;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v5, :cond_6

    const v5, 0x7f050038

    goto :goto_5

    :cond_6
    const v5, 0x7f05003f

    :goto_5
    invoke-virtual {v9, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    move v5, v7

    goto :goto_1

    :cond_7
    invoke-static {}, Lw0/j;->U()V

    throw v1

    :cond_8
    return-void

    :pswitch_1
    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v3, LH0/l;

    invoke-interface {v3, p1}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Lcom/ex/auto/LyricsFloaterService;

    invoke-virtual {v4}, Lcom/ex/auto/LyricsFloaterService;->b()V

    invoke-virtual {v4}, Lcom/ex/auto/LyricsFloaterService;->l()V

    return-void

    :pswitch_2
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    check-cast v3, Ly/f;

    invoke-virtual {v3}, Ly/f;->f()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v3, p1}, Ly/f;->o(I)V

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->l(Ly/f;Landroid/widget/ImageView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
