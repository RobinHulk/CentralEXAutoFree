.class public final Li/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Li/d;->a:I

    iput-object p1, p0, Li/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Li/d;->b:Ljava/lang/Object;

    iget v1, p0, Li/d;->a:I

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lj/P;

    iget-object v1, v0, Lj/P;->F:Lj/T;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ly/A;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lj/P;->D:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj/P;->s()V

    invoke-virtual {v0}, Lj/E0;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj/E0;->dismiss()V

    :goto_0
    return-void

    :pswitch_0
    check-cast v0, Lj/T;

    invoke-virtual {v0}, Lj/T;->getInternalPopup()Lj/S;

    move-result-object v1

    invoke-interface {v1}, Lj/S;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lj/J;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Lj/J;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, v0, Lj/T;->f:Lj/S;

    invoke-interface {v3, v1, v2}, Lj/S;->d(II)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p0}, Lj/I;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void

    :pswitch_1
    check-cast v0, Li/D;

    invoke-virtual {v0}, Li/D;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Li/D;->h:Lj/K0;

    iget-boolean v2, v1, Lj/E0;->x:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Li/D;->m:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lj/E0;->f()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0}, Li/D;->dismiss()V

    :cond_5
    :goto_2
    return-void

    :pswitch_2
    check-cast v0, Li/f;

    invoke-virtual {v0}, Li/f;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Li/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/e;

    iget-object v2, v2, Li/e;->a:Lj/K0;

    iget-boolean v2, v2, Lj/E0;->x:Z

    if-nez v2, :cond_8

    iget-object v2, v0, Li/f;->o:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/e;

    iget-object v1, v1, Li/e;->a:Lj/K0;

    invoke-virtual {v1}, Lj/E0;->f()V

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {v0}, Li/f;->dismiss()V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
