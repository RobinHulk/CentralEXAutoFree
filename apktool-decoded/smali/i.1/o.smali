.class public final Li/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public final a:Landroid/view/ActionProvider;

.field public final synthetic b:Li/s;

.field public c:LA/e;


# direct methods
.method public constructor <init>(Li/s;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/o;->b:Li/s;

    iput-object p2, p0, Li/o;->a:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final a(Li/n;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li/o;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    iget-object p1, p0, Li/o;->c:LA/e;

    if-eqz p1, :cond_0

    iget-object p1, p1, LA/e;->b:Ljava/lang/Object;

    check-cast p1, Li/n;

    iget-object p1, p1, Li/n;->n:Li/l;

    const/4 v0, 0x1

    iput-boolean v0, p1, Li/l;->h:Z

    invoke-virtual {p1, v0}, Li/l;->p(Z)V

    :cond_0
    return-void
.end method
