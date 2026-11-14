.class public final Le/I;
.super Lh/a;
.source "SourceFile"

# interfaces
.implements Li/j;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Li/l;

.field public e:LG/a;

.field public f:Ljava/lang/ref/WeakReference;

.field public final synthetic g:Le/J;


# direct methods
.method public constructor <init>(Le/J;Landroid/content/Context;LG/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/I;->g:Le/J;

    iput-object p2, p0, Le/I;->c:Landroid/content/Context;

    iput-object p3, p0, Le/I;->e:LG/a;

    new-instance p1, Li/l;

    invoke-direct {p1, p2}, Li/l;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Li/l;->l:I

    iput-object p1, p0, Le/I;->d:Li/l;

    iput-object p0, p1, Li/l;->e:Li/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v1, v0, Le/J;->k:Le/I;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Le/J;->r:Z

    if-eqz v1, :cond_1

    iput-object p0, v0, Le/J;->l:Le/I;

    iget-object v1, p0, Le/I;->e:LG/a;

    iput-object v1, v0, Le/J;->m:LG/a;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le/I;->e:LG/a;

    invoke-virtual {v1, p0}, LG/a;->z(Lh/a;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Le/I;->e:LG/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Le/J;->m0(Z)V

    iget-object v2, v0, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    :cond_2
    iget-object v2, v0, Le/J;->e:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Le/J;->w:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iput-object v1, v0, Le/J;->k:Le/I;

    return-void
.end method

.method public final b(Li/l;)V
    .locals 0

    iget-object p1, p0, Le/I;->e:LG/a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le/I;->h()V

    iget-object p1, p0, Le/I;->g:Le/J;

    iget-object p1, p1, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->d:Lj/j;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lj/j;->l()Z

    :cond_1
    return-void
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/I;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d()Li/l;
    .locals 1

    iget-object v0, p0, Le/I;->d:Li/l;

    return-object v0
.end method

.method public final e()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lh/i;

    iget-object v1, p0, Le/I;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lh/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v0, v0, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v0, v0, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v0, v0, Le/J;->k:Le/I;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/I;->d:Li/l;

    invoke-virtual {v0}, Li/l;->w()V

    :try_start_0
    iget-object v1, p0, Le/I;->e:LG/a;

    invoke-virtual {v1, p0, v0}, LG/a;->A(Lh/a;Li/l;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Li/l;->v()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Li/l;->v()V

    throw v1
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v0, v0, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    return v0
.end method

.method public final j(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v0, v0, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/I;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v0, v0, Le/J;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/I;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v0, v0, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(I)V
    .locals 1

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v0, v0, Le/J;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/I;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v0, v0, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Li/l;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Le/I;->e:LG/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, LG/a;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/emoji2/text/q;

    invoke-virtual {p1, p0, p2}, Landroidx/emoji2/text/q;->c(Lh/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p(Z)V
    .locals 1

    iput-boolean p1, p0, Lh/a;->b:Z

    iget-object v0, p0, Le/I;->g:Le/J;

    iget-object v0, v0, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
