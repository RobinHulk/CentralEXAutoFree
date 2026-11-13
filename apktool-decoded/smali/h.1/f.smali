.class public final Lh/f;
.super Landroid/view/ActionMode;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lh/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lh/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lh/f;->b:Lh/a;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->a()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 3

    new-instance v0, Li/B;

    iget-object v1, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v1}, Lh/a;->d()Li/l;

    move-result-object v1

    iget-object v2, p0, Lh/f;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Li/B;-><init>(Landroid/content/Context;Li/l;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->e()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    iget-object v0, v0, Lh/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    iget-boolean v0, v0, Lh/a;->b:Z

    return v0
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->h()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0}, Lh/a;->i()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->j(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->k(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    iput-object p1, v0, Lh/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->m(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Lh/f;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->p(Z)V

    return-void
.end method
