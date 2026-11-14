.class public final Ly/T;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ly/W;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ly/W;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ly/T;->a:Ly/W;

    iput-object p2, p0, Ly/T;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ly/T;->a:Ly/W;

    iget-object v0, p0, Ly/T;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ly/W;->b(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Ly/T;->a:Ly/W;

    invoke-interface {p1}, Ly/W;->a()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Ly/T;->a:Ly/W;

    invoke-interface {p1}, Ly/W;->c()V

    return-void
.end method
