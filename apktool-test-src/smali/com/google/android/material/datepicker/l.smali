.class public final Lcom/google/android/material/datepicker/l;
.super Lcom/google/android/material/datepicker/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/t;"
    }
.end annotation


# instance fields
.field public S:I

.field public T:Lcom/google/android/material/datepicker/b;

.field public U:Lcom/google/android/material/datepicker/o;

.field public V:I

.field public W:LM/d;

.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Landroidx/recyclerview/widget/RecyclerView;

.field public Z:Landroid/view/View;

.field public a0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/datepicker/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/material/datepicker/o;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LM/F;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/s;

    iget-object v1, v0, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/b;

    iget-object v1, v1, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/o;

    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/o;->d(Lcom/google/android/material/datepicker/o;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/datepicker/l;->U:Lcom/google/android/material/datepicker/o;

    iget-object v0, v0, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/b;

    iget-object v0, v0, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/o;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/o;->d(Lcom/google/android/material/datepicker/o;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-lez v0, :cond_1

    move v4, v5

    :cond_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/l;->U:Lcom/google/android/material/datepicker/o;

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/emoji2/text/g;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/emoji2/text/g;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/emoji2/text/g;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/emoji2/text/g;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/emoji2/text/g;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/emoji2/text/g;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final B(I)V
    .locals 4

    iput p1, p0, Lcom/google/android/material/datepicker/l;->V:I

    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()LM/O;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LM/F;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/y;

    iget-object v3, p0, Lcom/google/android/material/datepicker/l;->U:Lcom/google/android/material/datepicker/o;

    iget v3, v3, Lcom/google/android/material/datepicker/o;->d:I

    iget-object v0, v0, Lcom/google/android/material/datepicker/y;->c:Lcom/google/android/material/datepicker/l;

    iget-object v0, v0, Lcom/google/android/material/datepicker/l;->T:Lcom/google/android/material/datepicker/b;

    iget-object v0, v0, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/o;

    iget v0, v0, Lcom/google/android/material/datepicker/o;->d:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, LM/O;->i0(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->Z:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->a0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->Z:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->a0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->U:Lcom/google/android/material/datepicker/o;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/l;->A(Lcom/google/android/material/datepicker/o;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/o;->m(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/o;->f:Landroid/os/Bundle;

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/l;->S:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/b;

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->T:Lcom/google/android/material/datepicker/b;

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/o;

    iput-object p1, p0, Lcom/google/android/material/datepicker/l;->U:Lcom/google/android/material/datepicker/o;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final n(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/o;->h()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/datepicker/l;->S:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, LM/d;

    invoke-direct {v1, v0}, LM/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/datepicker/l;->W:LM/d;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->T:Lcom/google/android/material/datepicker/b;

    iget-object v1, v1, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/o;

    invoke-static {v0}, Lcom/google/android/material/datepicker/m;->C(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const v2, 0x7f0c003f

    move v5, v3

    goto :goto_0

    :cond_0
    const v2, 0x7f0c003a

    move v5, v4

    :goto_0
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09018b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance v2, LB/j;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, LB/j;-><init>(I)V

    invoke-static {p2, v2}, Ly/N;->i(Landroid/view/View;Ly/c;)V

    new-instance v2, Lcom/google/android/material/datepicker/e;

    invoke-direct {v2}, Lcom/google/android/material/datepicker/e;-><init>()V

    invoke-virtual {p2, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v1, Lcom/google/android/material/datepicker/o;->e:I

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f09018e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/google/android/material/datepicker/f;

    invoke-direct {p2, p0, v5, v5}, Lcom/google/android/material/datepicker/f;-><init>(Lcom/google/android/material/datepicker/l;II)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LM/O;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lcom/google/android/material/datepicker/s;

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->T:Lcom/google/android/material/datepicker/b;

    new-instance v2, LA/e;

    const/16 v4, 0xd

    invoke-direct {v2, p0, v4}, LA/e;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0, v1, v2}, Lcom/google/android/material/datepicker/s;-><init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/b;LA/e;)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LM/F;)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f090191

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lcom/google/android/material/datepicker/l;->X:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v4, p0, Lcom/google/android/material/datepicker/l;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LM/O;)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/google/android/material/datepicker/y;

    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/y;-><init>(Lcom/google/android/material/datepicker/l;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LM/F;)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/google/android/material/datepicker/g;

    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/g;-><init>(Lcom/google/android/material/datepicker/l;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->g(LM/L;)V

    :cond_1
    const v1, 0x7f090185

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    const-string v4, "SELECTOR_TOGGLE_TAG"

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/material/datepicker/h;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/android/material/datepicker/h;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v4}, Ly/N;->i(Landroid/view/View;Ly/c;)V

    const v4, 0x7f090187

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    const-string v5, "NAVIGATION_PREV_TAG"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f090186

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    const-string v6, "NAVIGATION_NEXT_TAG"

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/datepicker/l;->Z:Landroid/view/View;

    const v2, 0x7f09018a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/datepicker/l;->a0:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/google/android/material/datepicker/l;->B(I)V

    iget-object v2, p0, Lcom/google/android/material/datepicker/l;->U:Lcom/google/android/material/datepicker/o;

    iget-object v2, v2, Lcom/google/android/material/datepicker/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/google/android/material/datepicker/i;

    invoke-direct {v3, p0, p2, v1}, Lcom/google/android/material/datepicker/i;-><init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/s;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->h(LM/S;)V

    new-instance v2, Lcom/google/android/material/datepicker/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/material/datepicker/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/google/android/material/datepicker/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/google/android/material/datepicker/k;-><init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/s;I)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/google/android/material/datepicker/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lcom/google/android/material/datepicker/k;-><init>(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/datepicker/s;I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-static {v0}, Lcom/google/android/material/datepicker/m;->C(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, LM/A;

    invoke-direct {v0}, LM/A;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, LM/A;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v0, LM/A;->c:LM/h0;

    if-eqz v2, :cond_5

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, v0, LM/A;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(LM/Q;)V

    :cond_5
    iput-object v1, v0, LM/A;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()LM/Q;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, v0, LM/A;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->h(LM/S;)V

    iget-object v1, v0, LM/A;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(LM/Q;)V

    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, v0, LM/A;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, LM/A;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, LM/A;->f()V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An instance of OnFlingListener already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->Y:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->U:Lcom/google/android/material/datepicker/o;

    iget-object p2, p2, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/b;

    iget-object p2, p2, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/o;

    invoke-virtual {p2, v1}, Lcom/google/android/material/datepicker/o;->d(Lcom/google/android/material/datepicker/o;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)V

    return-object p1
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/l;->S:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->T:Lcom/google/android/material/datepicker/b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_MONTH_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->U:Lcom/google/android/material/datepicker/o;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
