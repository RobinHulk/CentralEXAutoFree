.class public final Ly/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public a:Ly/j0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ly/q;


# direct methods
.method public constructor <init>(Landroid/view/View;Ly/q;)V
    .locals 0

    iput-object p1, p0, Ly/C;->b:Landroid/view/View;

    iput-object p2, p0, Ly/C;->c:Ly/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ly/C;->a:Ly/j0;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    invoke-static {p2, p1}, Ly/j0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Ly/j0;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Ly/C;->c:Ly/q;

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_0

    iget-object v4, p0, Ly/C;->b:Landroid/view/View;

    invoke-static {p2, v4}, Ly/D;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    iget-object p2, p0, Ly/C;->a:Ly/j0;

    invoke-virtual {v0, p2}, Ly/j0;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v2, p1, v0}, Ly/q;->i(Landroid/view/View;Ly/j0;)Ly/j0;

    move-result-object p1

    invoke-virtual {p1}, Ly/j0;->f()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object v0, p0, Ly/C;->a:Ly/j0;

    invoke-interface {v2, p1, v0}, Ly/q;->i(Landroid/view/View;Ly/j0;)Ly/j0;

    move-result-object p2

    if-lt v1, v3, :cond_1

    invoke-virtual {p2}, Ly/j0;->f()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ly/B;->c(Landroid/view/View;)V

    invoke-virtual {p2}, Ly/j0;->f()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
