.class public final synthetic LT/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/SplitFloaterService;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/SplitFloaterService;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/v4;->a:Lcom/ex/auto/SplitFloaterService;

    iput p2, p0, LT/v4;->b:F

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v2, p0, LT/v4;->a:Lcom/ex/auto/SplitFloaterService;

    iget p1, p0, LT/v4;->b:F

    iget-object v3, v2, Lcom/ex/auto/SplitFloaterService;->l:LT/y4;

    iget-object v1, v2, Lcom/ex/auto/SplitFloaterService;->j:LT/x4;

    iget-object v4, v2, Lcom/ex/auto/SplitFloaterService;->k:LT/x4;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    iget-boolean v0, v2, Lcom/ex/auto/SplitFloaterService;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v2, Lcom/ex/auto/SplitFloaterService;->m:F

    add-float/2addr v0, p1

    const p1, 0x3e19999a    # 0.15f

    const v5, 0x3f59999a    # 0.85f

    invoke-static {v0, p1, v5}, LA/b;->n(FFF)F

    move-result p1

    iput p1, v2, Lcom/ex/auto/SplitFloaterService;->m:F

    const/4 p1, 0x1

    iput-boolean p1, v2, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {v2}, Lcom/ex/auto/SplitFloaterService;->h()V

    new-instance p1, Ljava/lang/Thread;

    new-instance v6, LT/y0;

    const/4 v5, 0x7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LT/y0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
