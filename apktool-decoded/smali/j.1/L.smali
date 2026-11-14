.class public final Lj/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/S;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public a:Le/i;

.field public b:Lj/M;

.field public c:Ljava/lang/CharSequence;

.field public final synthetic d:Lj/T;


# direct methods
.method public constructor <init>(Lj/T;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/L;->d:Lj/T;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lj/L;->a:Le/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(II)V
    .locals 4

    iget-object v0, p0, Lj/L;->b:Lj/M;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LT/j1;

    iget-object v1, p0, Lj/L;->d:Lj/T;

    invoke-virtual {v1}, Lj/T;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, LT/j1;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lj/L;->c:Ljava/lang/CharSequence;

    iget-object v3, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    if-eqz v2, :cond_1

    iput-object v2, v3, Le/e;->d:Ljava/lang/CharSequence;

    :cond_1
    iget-object v2, p0, Lj/L;->b:Lj/M;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    iput-object v2, v3, Le/e;->o:Ljava/lang/Object;

    iput-object p0, v3, Le/e;->p:Landroid/content/DialogInterface$OnClickListener;

    iput v1, v3, Le/e;->u:I

    const/4 v1, 0x1

    iput-boolean v1, v3, Le/e;->t:Z

    invoke-virtual {v0}, LT/j1;->b()Le/i;

    move-result-object v0

    iput-object v0, p0, Lj/L;->a:Le/i;

    iget-object v0, v0, Le/i;->e:Le/h;

    iget-object v0, v0, Le/h;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-static {v0, p1}, Lj/J;->d(Landroid/view/View;I)V

    invoke-static {v0, p2}, Lj/J;->c(Landroid/view/View;I)V

    iget-object p1, p0, Lj/L;->a:Le/i;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lj/L;->a:Le/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/i;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj/L;->a:Le/i;

    :cond_0
    return-void
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lj/L;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lj/L;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public final m(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final n(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final o(Landroid/widget/ListAdapter;)V
    .locals 0

    check-cast p1, Lj/M;

    iput-object p1, p0, Lj/L;->b:Lj/M;

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lj/L;->d:Lj/T;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/L;->b:Lj/M;

    invoke-virtual {v0, p2}, Lj/M;->getItemId(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Lj/L;->dismiss()V

    return-void
.end method

.method public final p(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
