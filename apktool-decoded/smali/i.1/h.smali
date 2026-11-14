.class public final Li/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/y;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Li/l;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:Li/x;

.field public f:Li/g;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/h;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Li/h;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Li/l;Z)V
    .locals 1

    iget-object v0, p0, Li/h;->e:Li/x;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Li/x;->a(Li/l;Z)V

    :cond_0
    return-void
.end method

.method public final c(Li/n;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/content/Context;Li/l;)V
    .locals 1

    iget-object v0, p0, Li/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Li/h;->a:Landroid/content/Context;

    iget-object v0, p0, Li/h;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Li/h;->b:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Li/h;->c:Li/l;

    iget-object p1, p0, Li/h;->f:Li/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Li/g;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final g(Li/x;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final h(Li/n;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Li/h;->f:Li/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final j(Li/E;)Z
    .locals 6

    invoke-virtual {p1}, Li/l;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Li/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Li/m;->a:Li/E;

    new-instance v1, LT/j1;

    iget-object v2, p1, Li/l;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, LT/j1;-><init>(Landroid/content/Context;)V

    new-instance v3, Li/h;

    iget-object v4, v1, LT/j1;->b:Ljava/lang/Object;

    check-cast v4, Le/e;

    iget-object v5, v4, Le/e;->a:Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, v5}, Li/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v3, v0, Li/m;->c:Li/h;

    iput-object v0, v3, Li/h;->e:Li/x;

    invoke-virtual {p1, v3, v2}, Li/l;->b(Li/y;Landroid/content/Context;)V

    iget-object v2, v0, Li/m;->c:Li/h;

    iget-object v3, v2, Li/h;->f:Li/g;

    if-nez v3, :cond_1

    new-instance v3, Li/g;

    invoke-direct {v3, v2}, Li/g;-><init>(Li/h;)V

    iput-object v3, v2, Li/h;->f:Li/g;

    :cond_1
    iget-object v2, v2, Li/h;->f:Li/g;

    iput-object v2, v4, Le/e;->o:Ljava/lang/Object;

    iput-object v0, v4, Le/e;->p:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p1, Li/l;->o:Landroid/view/View;

    if-eqz v2, :cond_2

    iput-object v2, v4, Le/e;->e:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Li/l;->n:Landroid/graphics/drawable/Drawable;

    iput-object v2, v4, Le/e;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Li/l;->m:Ljava/lang/CharSequence;

    iput-object v2, v4, Le/e;->d:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v4, Le/e;->m:Li/m;

    invoke-virtual {v1}, LT/j1;->b()Le/i;

    move-result-object v1

    iput-object v1, v0, Li/m;->b:Le/i;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Li/m;->b:Le/i;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Li/m;->b:Le/i;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Li/h;->e:Li/x;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Li/x;->f(Li/l;)Z

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Li/h;->c:Li/l;

    iget-object p2, p0, Li/h;->f:Li/g;

    invoke-virtual {p2, p3}, Li/g;->b(I)Li/n;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Li/l;->q(Landroid/view/MenuItem;Li/y;I)Z

    return-void
.end method
