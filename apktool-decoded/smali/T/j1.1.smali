.class public LT/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/p;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, LT/j1;->b:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LT/j1;->a:I

    iput-object p2, p0, LT/j1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Le/i;->i(Landroid/content/Context;I)I

    move-result v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v1, Le/e;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 8
    invoke-static {p1, v0}, Le/i;->i(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Le/e;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v1, p0, LT/j1;->b:Ljava/lang/Object;

    .line 9
    iput v0, p0, LT/j1;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/j1;->b:Ljava/lang/Object;

    iput p2, p0, LT/j1;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LT/j1;->a:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v1, v3, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LT/j1;->a:I

    return-object v4

    :cond_0
    return-object v1
.end method

.method public b()Le/i;
    .locals 14

    new-instance v0, Le/i;

    iget-object v1, p0, LT/j1;->b:Ljava/lang/Object;

    check-cast v1, Le/e;

    iget-object v2, v1, Le/e;->a:Landroid/view/ContextThemeWrapper;

    iget v3, p0, LT/j1;->a:I

    invoke-direct {v0, v2, v3}, Le/i;-><init>(Landroid/view/ContextThemeWrapper;I)V

    iget-object v2, v1, Le/e;->e:Landroid/view/View;

    iget-object v8, v0, Le/i;->e:Le/h;

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    iput-object v2, v8, Le/h;->w:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Le/e;->d:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iput-object v2, v8, Le/h;->d:Ljava/lang/CharSequence;

    iget-object v3, v8, Le/h;->u:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, v1, Le/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iput-object v2, v8, Le/h;->s:Landroid/graphics/drawable/Drawable;

    iget-object v3, v8, Le/h;->t:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v8, Le/h;->t:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v2, v1, Le/e;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iput-object v2, v8, Le/h;->e:Ljava/lang/CharSequence;

    iget-object v3, v8, Le/h;->v:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, v1, Le/e;->g:Ljava/lang/CharSequence;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v1, Le/e;->h:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, -0x1

    invoke-virtual {v8, v4, v2, v3}, Le/h;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    iget-object v2, v1, Le/e;->i:Ljava/lang/CharSequence;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, v1, Le/e;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, -0x2

    invoke-virtual {v8, v4, v2, v3}, Le/h;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    iget-object v2, v1, Le/e;->n:[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v2, :cond_6

    iget-object v2, v1, Le/e;->o:Ljava/lang/Object;

    if-eqz v2, :cond_e

    :cond_6
    iget v2, v8, Le/h;->A:I

    iget-object v3, v1, Le/e;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v2, v1, Le/e;->s:Z

    iget-object v4, v1, Le/e;->a:Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_7

    new-instance v13, Le/b;

    iget-object v6, v1, Le/e;->n:[Ljava/lang/CharSequence;

    iget v5, v8, Le/h;->B:I

    move-object v2, v13

    move-object v3, v1

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Le/b;-><init>(Le/e;Landroid/view/ContextThemeWrapper;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_4

    :cond_7
    iget-boolean v2, v1, Le/e;->t:Z

    if-eqz v2, :cond_8

    iget v2, v8, Le/h;->C:I

    goto :goto_3

    :cond_8
    iget v2, v8, Le/h;->D:I

    :goto_3
    iget-object v13, v1, Le/e;->o:Ljava/lang/Object;

    if-eqz v13, :cond_9

    goto :goto_4

    :cond_9
    new-instance v13, Le/g;

    iget-object v3, v1, Le/e;->n:[Ljava/lang/CharSequence;

    const v5, 0x1020014

    invoke-direct {v13, v4, v2, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_4
    iput-object v13, v8, Le/h;->x:Landroid/widget/ListAdapter;

    iget v2, v1, Le/e;->u:I

    iput v2, v8, Le/h;->y:I

    iget-object v2, v1, Le/e;->p:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_a

    new-instance v2, Le/c;

    invoke-direct {v2, v1, v8}, Le/c;-><init>(Le/e;Le/h;)V

    invoke-virtual {v12, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_5

    :cond_a
    iget-object v2, v1, Le/e;->v:LT/I2;

    if-eqz v2, :cond_b

    new-instance v2, Le/d;

    invoke-direct {v2, v1, v12, v8}, Le/d;-><init>(Le/e;Landroidx/appcompat/app/AlertController$RecycleListView;Le/h;)V

    invoke-virtual {v12, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b
    :goto_5
    iget-boolean v2, v1, Le/e;->t:Z

    if-eqz v2, :cond_c

    invoke-virtual {v12, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_6

    :cond_c
    iget-boolean v2, v1, Le/e;->s:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_d
    :goto_6
    iput-object v12, v8, Le/h;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_e
    iget-object v2, v1, Le/e;->q:Landroid/view/View;

    if-eqz v2, :cond_f

    iput-object v2, v8, Le/h;->g:Landroid/view/View;

    iput-boolean v9, v8, Le/h;->h:Z

    :cond_f
    iget-boolean v2, v1, Le/e;->k:Z

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean v2, v1, Le/e;->k:Z

    if-eqz v2, :cond_10

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_10
    iget-object v2, v1, Le/e;->l:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v1, Le/e;->m:Li/m;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_11
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LT/j1;->a:I

    iget-object v3, p0, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    if-ge v1, v2, :cond_1

    aget-object v2, v3, v1

    if-eq v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    array-length v1, v3

    if-ge v2, v1, :cond_2

    aput-object p1, v3, v2

    const/4 p1, 0x1

    add-int/2addr v2, p1

    iput v2, p0, LT/j1;->a:I

    return p1

    :cond_2
    return v0
.end method

.method public d(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, LT/j1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, p0, LT/j1;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public e(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, LT/j1;->b:Ljava/lang/Object;

    check-cast v0, Le/e;

    iget-object v1, v0, Le/e;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Le/e;->i:Ljava/lang/CharSequence;

    iput-object p2, v0, Le/e;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, LT/j1;->b:Ljava/lang/Object;

    check-cast v0, Le/e;

    iput-object p1, v0, Le/e;->i:Ljava/lang/CharSequence;

    iput-object p2, v0, Le/e;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public g(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, LT/j1;->b:Ljava/lang/Object;

    check-cast v0, Le/e;

    iget-object v1, v0, Le/e;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Le/e;->g:Ljava/lang/CharSequence;

    iput-object p2, v0, Le/e;->h:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, LT/j1;->b:Ljava/lang/Object;

    check-cast v0, Le/e;

    iput-object p1, v0, Le/e;->g:Ljava/lang/CharSequence;

    iput-object p2, v0, Le/e;->h:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public i(I)V
    .locals 2

    iget-object v0, p0, LT/j1;->b:Ljava/lang/Object;

    check-cast v0, Le/e;

    iget-object v1, v0, Le/e;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Le/e;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public j()Le/i;
    .locals 1

    invoke-virtual {p0}, LT/j1;->b()Le/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
