.class public Ly/Z;
.super Ly/b0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ly/b0;-><init>()V

    .line 2
    invoke-static {}, LM/D;->d()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Ly/Z;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Ly/j0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ly/b0;-><init>(Ly/j0;)V

    .line 4
    invoke-virtual {p1}, Ly/j0;->f()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, LM/D;->e(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, LM/D;->d()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ly/Z;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Ly/j0;
    .locals 3

    invoke-virtual {p0}, Ly/b0;->a()V

    iget-object v0, p0, Ly/Z;->a:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, LM/D;->f(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ly/j0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Ly/j0;

    move-result-object v0

    iget-object v2, v0, Ly/j0;->a:Ly/i0;

    invoke-virtual {v2, v1}, Ly/i0;->l([Lr/c;)V

    return-object v0
.end method

.method public c(Lr/c;)V
    .locals 1

    iget-object v0, p0, Ly/Z;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lr/c;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LM/D;->q(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public d(Lr/c;)V
    .locals 1

    iget-object v0, p0, Ly/Z;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lr/c;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LM/D;->k(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method
