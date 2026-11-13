.class public final LM/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM/a;)V
    .locals 3

    iget v0, p1, LM/a;->a:I

    const/4 v1, 0x1

    iget-object v2, p0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LM/O;

    iget v1, p1, LM/a;->b:I

    iget p1, p1, LM/a;->c:I

    invoke-virtual {v0, v1, p1}, LM/O;->T(II)V

    goto :goto_0

    :cond_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LM/O;

    iget v1, p1, LM/a;->b:I

    iget p1, p1, LM/a;->c:I

    invoke-virtual {v0, v1, p1}, LM/O;->V(II)V

    goto :goto_0

    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LM/O;

    iget v1, p1, LM/a;->b:I

    iget p1, p1, LM/a;->c:I

    invoke-virtual {v0, v1, p1}, LM/O;->U(II)V

    goto :goto_0

    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LM/O;

    iget v1, p1, LM/a;->b:I

    iget p1, p1, LM/a;->c:I

    invoke-virtual {v0, v1, p1}, LM/O;->R(II)V

    :goto_0
    return-void
.end method

.method public b(I)LM/e0;
    .locals 7

    iget-object v0, p0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LM/d;

    invoke-virtual {v1}, LM/d;->r()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LM/d;

    invoke-virtual {v5, v3}, LM/d;->q(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)LM/e0;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, LM/e0;->i()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v5, LM/e0;->c:I

    if-eq v6, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LM/d;

    iget-object v4, v4, LM/d;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, v5, LM/e0;->a:Landroid/view/View;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    move-object v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LM/d;

    iget-object p1, p1, LM/d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, v4, LM/e0;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v2

    :cond_5
    return-object v4
.end method

.method public c(II)V
    .locals 8

    iget-object v0, p0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LM/d;

    invoke-virtual {v1}, LM/d;->r()I

    move-result v1

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge v2, v1, :cond_2

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LM/d;

    invoke-virtual {v5, v2}, LM/d;->q(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)LM/e0;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, LM/e0;->p()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    iget v7, v6, LM/e0;->c:I

    if-lt v7, p1, :cond_1

    if-ge v7, p2, :cond_1

    invoke-virtual {v6, v4}, LM/e0;->a(I)V

    const/16 v4, 0x400

    invoke-virtual {v6, v4}, LM/e0;->a(I)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LM/P;

    iput-boolean v3, v4, LM/P;->c:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:LM/V;

    iget-object v2, v1, LM/V;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_2
    if-ltz v5, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LM/e0;

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    iget v7, v6, LM/e0;->c:I

    if-lt v7, p1, :cond_4

    if-ge v7, p2, :cond_4

    invoke-virtual {v6, v4}, LM/e0;->a(I)V

    invoke-virtual {v1, v5}, LM/V;->e(I)V

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    return-void
.end method

.method public d(II)V
    .locals 7

    iget-object v0, p0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LM/d;

    invoke-virtual {v1}, LM/d;->r()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LM/d;

    invoke-virtual {v5, v3}, LM/d;->q(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)LM/e0;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, LM/e0;->p()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, LM/e0;->c:I

    if-lt v6, p1, :cond_0

    invoke-virtual {v5, p2, v2}, LM/e0;->m(IZ)V

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:LM/a0;

    iput-boolean v4, v5, LM/a0;->f:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:LM/V;

    iget-object v1, v1, LM/V;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM/e0;

    if-eqz v5, :cond_2

    iget v6, v5, LM/e0;->c:I

    if-lt v6, p1, :cond_2

    invoke-virtual {v5, p2, v4}, LM/e0;->m(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    return-void
.end method

.method public e(II)V
    .locals 11

    iget-object v0, p0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LM/d;

    invoke-virtual {v1}, LM/d;->r()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ge p1, p2, :cond_0

    move v4, p1

    move v5, p2

    move v6, v3

    goto :goto_0

    :cond_0
    move v5, p1

    move v4, p2

    move v6, v2

    :goto_0
    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v1, :cond_4

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LM/d;

    invoke-virtual {v9, v8}, LM/d;->q(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)LM/e0;

    move-result-object v9

    if-eqz v9, :cond_3

    iget v10, v9, LM/e0;->c:I

    if-lt v10, v4, :cond_3

    if-le v10, v5, :cond_1

    goto :goto_3

    :cond_1
    if-ne v10, p1, :cond_2

    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v7}, LM/e0;->m(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v6, v7}, LM/e0;->m(IZ)V

    :goto_2
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:LM/a0;

    iput-boolean v2, v9, LM/a0;->f:Z

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:LM/V;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ge p1, p2, :cond_5

    move v4, p1

    move v5, p2

    goto :goto_4

    :cond_5
    move v5, p1

    move v4, p2

    move v3, v2

    :goto_4
    iget-object v1, v1, LM/V;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v7

    :goto_5
    if-ge v8, v6, :cond_9

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LM/e0;

    if-eqz v9, :cond_8

    iget v10, v9, LM/e0;->c:I

    if-lt v10, v4, :cond_8

    if-le v10, v5, :cond_6

    goto :goto_6

    :cond_6
    if-ne v10, p1, :cond_7

    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v7}, LM/e0;->m(IZ)V

    goto :goto_6

    :cond_7
    invoke-virtual {v9, v3, v7}, LM/e0;->m(IZ)V

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    return-void
.end method

.method public f(LM/e0;LM/J;LM/J;)V
    .locals 8

    iget-object v0, p0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LM/e0;->o(Z)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->H:LM/K;

    move-object v2, v1

    check-cast v2, LM/k;

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, LM/J;->a:I

    iget v6, p3, LM/J;->a:I

    if-ne v4, v6, :cond_0

    iget v1, p2, LM/J;->b:I

    iget v3, p3, LM/J;->b:I

    if-eq v1, v3, :cond_1

    :cond_0
    iget v5, p2, LM/J;->b:I

    iget v7, p3, LM/J;->b:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, LM/k;->g(LM/e0;IIII)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, LM/k;->l(LM/e0;)V

    iget-object p2, p1, LM/e0;->a:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, v2, LM/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    :cond_2
    return-void
.end method

.method public g(LM/e0;LM/J;LM/J;)V
    .locals 8

    iget-object v0, p0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:LM/V;

    invoke-virtual {v1, p1}, LM/V;->j(LM/e0;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(LM/e0;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LM/e0;->o(Z)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->H:LM/K;

    move-object v2, v1

    check-cast v2, LM/k;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, LM/J;->a:I

    iget v5, p2, LM/J;->b:I

    iget-object p2, p1, LM/e0;->a:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_0
    iget v1, p3, LM/J;->a:I

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    :goto_2
    move v7, p3

    goto :goto_3

    :cond_1
    iget p3, p3, LM/J;->b:I

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, LM/e0;->i()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v4, v6, :cond_2

    if-eq v5, v7, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p2, v6, v7, p3, v1}, Landroid/view/View;->layout(IIII)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, LM/k;->g(LM/e0;IIII)Z

    move-result p1

    goto :goto_4

    :cond_3
    invoke-virtual {v2, p1}, LM/k;->l(LM/e0;)V

    iget-object p2, v2, LM/k;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    :cond_4
    return-void
.end method

.method public h(I)V
    .locals 2

    iget-object v0, p0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)LM/e0;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method
