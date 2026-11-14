.class public final Le/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final a:Landroid/view/Window$Callback;

.field public b:Z

.field public c:Z

.field public d:Z

.field public final synthetic e:Le/x;


# direct methods
.method public constructor <init>(Le/x;Landroid/view/Window$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/t;->e:Le/x;

    if-eqz p2, :cond_0

    iput-object p2, p0, Le/t;->a:Landroid/view/Window$Callback;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Window callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Le/t;->b:Z

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Le/t;->b:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Le/t;->b:Z

    throw p1
.end method

.method public final b(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final c(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final d(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2, p3}, Lh/m;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Le/t;->c:Z

    iget-object v1, p0, Le/t;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Le/t;->e:Le/x;

    invoke-virtual {v0, p1}, Le/x;->A(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v2, p0, Le/t;->e:Le/x;

    invoke-virtual {v2}, Le/x;->G()V

    iget-object v3, v2, Le/x;->o:Le/J;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, v3, Le/J;->k:Le/I;

    if-nez v3, :cond_1

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    iget-object v3, v3, Le/I;->d:Li/l;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v1, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Li/l;->setQwertyMode(Z)V

    invoke-virtual {v3, v0, p1, v4}, Li/l;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    move p1, v1

    goto :goto_3

    :cond_4
    iget-object v0, v2, Le/x;->M:Le/w;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Le/x;->L(Le/w;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, v2, Le/x;->M:Le/w;

    if-eqz p1, :cond_3

    iput-boolean v1, p1, Le/w;->l:Z

    goto :goto_2

    :cond_5
    iget-object v0, v2, Le/x;->M:Le/w;

    if-nez v0, :cond_6

    invoke-virtual {v2, v4}, Le/x;->F(I)Le/w;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Le/x;->M(Le/w;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Le/x;->L(Le/w;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v4, v0, Le/w;->k:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, v4

    :goto_3
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v4

    :cond_8
    :goto_4
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    iget-boolean v0, p0, Le/t;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Li/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Le/t;->b(ILandroid/view/Menu;)Z

    const/16 p2, 0x6c

    const/4 v0, 0x1

    iget-object v1, p0, Le/t;->e:Le/x;

    if-ne p1, p2, :cond_2

    invoke-virtual {v1}, Le/x;->G()V

    iget-object p1, v1, Le/x;->o:Le/J;

    if-eqz p1, :cond_3

    iget-boolean p2, p1, Le/J;->n:Z

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p1, Le/J;->n:Z

    iget-object p1, p1, Le/J;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-boolean v0, p0, Le/t;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Le/t;->c(ILandroid/view/Menu;)V

    const/16 p2, 0x6c

    const/4 v0, 0x0

    iget-object v1, p0, Le/t;->e:Le/x;

    if-ne p1, p2, :cond_3

    invoke-virtual {v1}, Le/x;->G()V

    iget-object p1, v1, Le/x;->o:Le/J;

    if-eqz p1, :cond_5

    iget-boolean p2, p1, Le/J;->n:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p1, Le/J;->n:Z

    iget-object p1, p1, Le/J;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v1, p1}, Le/x;->F(I)Le/w;

    move-result-object p1

    iget-boolean p2, p1, Le/w;->m:Z

    if-eqz p2, :cond_5

    invoke-virtual {v1, p1, v0}, Le/x;->y(Le/w;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    :goto_0
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lh/n;->a(Landroid/view/Window$Callback;Z)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    instance-of v0, p3, Li/l;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Li/l;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v0, Li/l;->x:Z

    :cond_2
    iget-object v2, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    iput-boolean v1, v0, Li/l;->x:Z

    :cond_3
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Le/t;->e:Le/x;

    invoke-virtual {v1, v0}, Le/x;->F(I)Le/w;

    move-result-object v0

    iget-object v0, v0, Le/w;->h:Li/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Le/t;->d(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/t;->d(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    .line 2
    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lh/l;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 98
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 8

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Le/t;->e:Le/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Le/t;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lh/l;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Landroidx/emoji2/text/q;

    iget-object v2, v1, Le/x;->k:Landroid/content/Context;

    invoke-direct {p2, v2, p1}, Landroidx/emoji2/text/q;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 4
    iget-object p1, v1, Le/x;->u:Lh/a;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lh/a;->a()V

    .line 6
    :cond_1
    new-instance p1, LG/a;

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2, p2}, LG/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Le/x;->G()V

    .line 8
    iget-object v2, v1, Le/x;->o:Le/J;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 9
    iget-object v5, v2, Le/J;->k:Le/I;

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v5}, Le/I;->a()V

    .line 11
    :cond_2
    iget-object v5, v2, Le/J;->e:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 12
    iget-object v5, v2, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 13
    new-instance v5, Le/I;

    iget-object v6, v2, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v2, v6, p1}, Le/I;-><init>(Le/J;Landroid/content/Context;LG/a;)V

    .line 14
    iget-object v6, v5, Le/I;->d:Li/l;

    invoke-virtual {v6}, Li/l;->w()V

    .line 15
    :try_start_0
    iget-object v7, v5, Le/I;->e:LG/a;

    .line 16
    iget-object v7, v7, LG/a;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/emoji2/text/q;

    invoke-virtual {v7, v5, v6}, Landroidx/emoji2/text/q;->d(Lh/a;Li/l;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v6}, Li/l;->v()V

    if-eqz v7, :cond_3

    .line 18
    iput-object v5, v2, Le/J;->k:Le/I;

    .line 19
    invoke-virtual {v5}, Le/I;->h()V

    .line 20
    iget-object v6, v2, Le/J;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lh/a;)V

    .line 21
    invoke-virtual {v2, v0}, Le/J;->m0(Z)V

    goto :goto_0

    :cond_3
    move-object v5, v4

    .line 22
    :goto_0
    iput-object v5, v1, Le/x;->u:Lh/a;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v6}, Li/l;->v()V

    .line 24
    throw p1

    .line 25
    :cond_4
    :goto_1
    iget-object v2, v1, Le/x;->u:Lh/a;

    if-nez v2, :cond_12

    .line 26
    iget-object v2, v1, Le/x;->y:Ly/V;

    if-eqz v2, :cond_5

    .line 27
    invoke-virtual {v2}, Ly/V;->b()V

    .line 28
    :cond_5
    iget-object v2, v1, Le/x;->u:Lh/a;

    if-eqz v2, :cond_6

    .line 29
    invoke-virtual {v2}, Lh/a;->a()V

    .line 30
    :cond_6
    iget-object v2, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v2, :cond_b

    .line 31
    iget-boolean v2, v1, Le/x;->I:Z

    iget-object v5, v1, Le/x;->k:Landroid/content/Context;

    if-eqz v2, :cond_8

    .line 32
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 33
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f030009

    .line 34
    invoke-virtual {v6, v7, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 35
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_7

    .line 36
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 37
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 38
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 39
    new-instance v6, Lh/d;

    invoke-direct {v6, v5, v3}, Lh/d;-><init>(Landroid/content/Context;I)V

    .line 40
    invoke-virtual {v6}, Lh/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v6

    .line 41
    :cond_7
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    .line 42
    invoke-direct {v6, v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v6, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 44
    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x7f030018

    invoke-direct {v6, v5, v4, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, v1, Le/x;->w:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    .line 45
    invoke-static {v6, v7}, LB/p;->d(Landroid/widget/PopupWindow;I)V

    .line 46
    iget-object v6, v1, Le/x;->w:Landroid/widget/PopupWindow;

    iget-object v7, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 47
    iget-object v6, v1, Le/x;->w:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 48
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f030003

    invoke-virtual {v6, v7, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 49
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 50
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 51
    invoke-static {v2, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 52
    iget-object v5, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 53
    iget-object v2, v1, Le/x;->w:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 54
    new-instance v2, Le/o;

    invoke-direct {v2, v1, v0}, Le/o;-><init>(Le/x;I)V

    iput-object v2, v1, Le/x;->x:Le/o;

    goto :goto_4

    .line 55
    :cond_8
    iget-object v2, v1, Le/x;->A:Landroid/view/ViewGroup;

    const v6, 0x7f09003f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v2, :cond_b

    .line 56
    invoke-virtual {v1}, Le/x;->G()V

    .line 57
    iget-object v6, v1, Le/x;->o:Le/J;

    if-eqz v6, :cond_9

    .line 58
    invoke-virtual {v6}, Le/J;->n0()Landroid/content/Context;

    move-result-object v6

    goto :goto_2

    :cond_9
    move-object v6, v4

    :goto_2
    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    move-object v5, v6

    .line 59
    :goto_3
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 60
    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v2, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 61
    :cond_b
    :goto_4
    iget-object v2, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v2, :cond_11

    .line 62
    iget-object v2, v1, Le/x;->y:Ly/V;

    if-eqz v2, :cond_c

    .line 63
    invoke-virtual {v2}, Ly/V;->b()V

    .line 64
    :cond_c
    iget-object v2, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 65
    new-instance v2, Lh/e;

    iget-object v5, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 66
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v5, v2, Lh/e;->c:Landroid/content/Context;

    .line 68
    iput-object v6, v2, Lh/e;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 69
    iput-object p1, v2, Lh/e;->e:LG/a;

    .line 70
    new-instance v5, Li/l;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Li/l;-><init>(Landroid/content/Context;)V

    .line 71
    iput v0, v5, Li/l;->l:I

    .line 72
    iput-object v5, v2, Lh/e;->h:Li/l;

    .line 73
    iput-object v2, v5, Li/l;->e:Li/j;

    .line 74
    iget-object p1, p1, LG/a;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/emoji2/text/q;

    .line 75
    invoke-virtual {p1, v2, v5}, Landroidx/emoji2/text/q;->d(Lh/a;Li/l;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 76
    invoke-virtual {v2}, Lh/e;->h()V

    .line 77
    iget-object p1, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lh/a;)V

    .line 78
    iput-object v2, v1, Le/x;->u:Lh/a;

    .line 79
    iget-boolean p1, v1, Le/x;->z:Z

    if-eqz p1, :cond_d

    iget-object p1, v1, Le/x;->A:Landroid/view/ViewGroup;

    if-eqz p1, :cond_d

    sget-object v2, Ly/N;->a:Ljava/util/WeakHashMap;

    .line 80
    invoke-static {p1}, Ly/A;->c(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_d

    move p1, v0

    goto :goto_5

    :cond_d
    move p1, v3

    :goto_5
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_e

    .line 81
    iget-object p1, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 82
    iget-object p1, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Ly/N;->a(Landroid/view/View;)Ly/V;

    move-result-object p1

    invoke-virtual {p1, v2}, Ly/V;->a(F)V

    iput-object p1, v1, Le/x;->y:Ly/V;

    .line 83
    new-instance v2, Le/q;

    invoke-direct {v2, v1, v0}, Le/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Ly/V;->d(Ly/W;)V

    goto :goto_6

    .line 84
    :cond_e
    iget-object p1, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 85
    iget-object p1, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 86
    iget-object p1, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_f

    .line 87
    iget-object p1, v1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Ly/N;->a:Ljava/util/WeakHashMap;

    .line 88
    invoke-static {p1}, Ly/B;->c(Landroid/view/View;)V

    .line 89
    :cond_f
    :goto_6
    iget-object p1, v1, Le/x;->w:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_11

    .line 90
    iget-object p1, v1, Le/x;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, v1, Le/x;->x:Le/o;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 91
    :cond_10
    iput-object v4, v1, Le/x;->u:Lh/a;

    .line 92
    :cond_11
    :goto_7
    invoke-virtual {v1}, Le/x;->O()V

    .line 93
    iget-object p1, v1, Le/x;->u:Lh/a;

    .line 94
    iput-object p1, v1, Le/x;->u:Lh/a;

    .line 95
    :cond_12
    invoke-virtual {v1}, Le/x;->O()V

    .line 96
    iget-object p1, v1, Le/x;->u:Lh/a;

    if-eqz p1, :cond_13

    .line 97
    invoke-virtual {p2, p1}, Landroidx/emoji2/text/q;->b(Lh/a;)Lh/f;

    move-result-object v4

    :cond_13
    return-object v4
.end method
