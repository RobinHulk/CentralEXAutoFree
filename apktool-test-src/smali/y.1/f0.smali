.class public Ly/f0;
.super Ly/e0;
.source "SourceFile"


# instance fields
.field public l:Lr/c;


# direct methods
.method public constructor <init>(Ly/j0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly/e0;-><init>(Ly/j0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ly/f0;->l:Lr/c;

    return-void
.end method


# virtual methods
.method public f()Lr/c;
    .locals 4

    iget-object v0, p0, Ly/f0;->l:Lr/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Ly/c0;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, LM/D;->c(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LM/D;->a(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {v0}, LM/D;->o(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {v0}, LM/D;->r(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {v0}, LM/D;->t(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lr/c;->a(IIII)Lr/c;

    move-result-object v0

    iput-object v0, p0, Ly/f0;->l:Lr/c;

    :cond_0
    iget-object v0, p0, Ly/f0;->l:Lr/c;

    return-object v0
.end method

.method public i(IIII)Ly/j0;
    .locals 1

    iget-object v0, p0, Ly/c0;->c:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, LM/D;->g(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ly/j0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Ly/j0;

    move-result-object p1

    return-object p1
.end method

.method public n(Lr/c;)V
    .locals 0

    return-void
.end method
