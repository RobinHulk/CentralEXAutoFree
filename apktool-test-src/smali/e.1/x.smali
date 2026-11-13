.class public final Le/x;
.super Le/n;
.source "SourceFile"

# interfaces
.implements Li/j;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final h0:Lm/k;

.field public static final i0:[I

.field public static final j0:Z

.field public static final k0:Z


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/view/View;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:[Le/w;

.field public M:Le/w;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Landroid/content/res/Configuration;

.field public final S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Le/u;

.field public X:Le/u;

.field public Y:Z

.field public Z:I

.field public final a0:Le/o;

.field public b0:Z

.field public c0:Landroid/graphics/Rect;

.field public d0:Landroid/graphics/Rect;

.field public e0:Le/A;

.field public f0:Landroid/window/OnBackInvokedDispatcher;

.field public g0:Landroid/window/OnBackInvokedCallback;

.field public final j:Ljava/lang/Object;

.field public final k:Landroid/content/Context;

.field public l:Landroid/view/Window;

.field public m:Le/t;

.field public final n:Ljava/lang/Object;

.field public o:Le/J;

.field public p:Lh/i;

.field public q:Ljava/lang/CharSequence;

.field public r:Lj/i0;

.field public s:Le/p;

.field public t:Le/p;

.field public u:Lh/a;

.field public v:Landroidx/appcompat/widget/ActionBarContextView;

.field public w:Landroid/widget/PopupWindow;

.field public x:Le/o;

.field public y:Ly/V;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/k;

    invoke-direct {v0}, Lm/k;-><init>()V

    sput-object v0, Le/x;->h0:Lm/k;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Le/x;->i0:[I

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Le/x;->j0:Z

    sput-boolean v1, Le/x;->k0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Le/k;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-object p3, p0, Le/x;->y:Ly/V;

    const/16 v0, -0x64

    iput v0, p0, Le/x;->S:I

    new-instance v1, Le/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/o;-><init>(Le/x;I)V

    iput-object v1, p0, Le/x;->a0:Le/o;

    iput-object p1, p0, Le/x;->k:Landroid/content/Context;

    iput-object p4, p0, Le/x;->j:Ljava/lang/Object;

    instance-of p4, p4, Landroid/app/Dialog;

    if-eqz p4, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p4, p1, Le/j;

    if-eqz p4, :cond_0

    check-cast p1, Le/j;

    goto :goto_1

    :cond_0
    instance-of p4, p1, Landroid/content/ContextWrapper;

    if-eqz p4, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p3

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Le/j;->i()Le/n;

    move-result-object p1

    check-cast p1, Le/x;

    iget p1, p1, Le/x;->S:I

    iput p1, p0, Le/x;->S:I

    :cond_2
    iget p1, p0, Le/x;->S:I

    if-ne p1, v0, :cond_3

    sget-object p1, Le/x;->h0:Lm/k;

    iget-object p4, p0, Le/x;->j:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Lm/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Le/x;->S:I

    iget-object p3, p0, Le/x;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lm/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Le/x;->u(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lj/s;->d()V

    return-void
.end method

.method public static v(Landroid/content/Context;)Lu/e;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Le/n;->c:Lu/e;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Le/r;->b(Landroid/content/res/Configuration;)Lu/e;

    move-result-object p0

    invoke-virtual {v0}, Lu/e;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lu/e;->b:Lu/e;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lu/e;->a:Lu/f;

    iget-object v4, v3, Lu/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v4

    iget-object v5, p0, Lu/e;->a:Lu/f;

    iget-object v5, v5, Lu/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v5

    add-int/2addr v5, v4

    if-ge v2, v5, :cond_5

    iget-object v4, v3, Lu/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v3, v3, Lu/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, v3, Lu/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, p0, Lu/e;->a:Lu/f;

    iget-object v4, v4, Lu/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v4, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    invoke-static {v0}, Lu/d;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, Lu/e;

    new-instance v2, Lu/f;

    invoke-direct {v2, v0}, Lu/f;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v1, v2}, Lu/e;-><init>(Lu/f;)V

    move-object v0, v1

    :goto_2
    invoke-virtual {v0}, Lu/e;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, v0

    :goto_3
    return-object p0
.end method

.method public static z(Landroid/content/Context;ILu/e;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p4, 0x0

    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p0, p3

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p2, :cond_4

    invoke-static {p1, p2}, Le/r;->d(Landroid/content/res/Configuration;Lu/e;)V

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final A(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Le/x;->j:Ljava/lang/Object;

    instance-of v1, v0, Ly/k;

    if-nez v1, :cond_0

    instance-of v0, v0, Le/i;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Ly/N;->a:Ljava/util/WeakHashMap;

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Le/x;->m:Le/t;

    iget-object v4, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iput-boolean v1, v0, Le/t;->c:Z

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v0, Le/t;->c:Z

    if-eqz v4, :cond_2

    return v1

    :catchall_0
    move-exception p1

    iput-boolean v2, v0, Le/t;->c:Z

    throw p1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_7

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, v2}, Le/x;->F(I)Le/w;

    move-result-object v0

    iget-boolean v2, v0, Le/w;->m:Z

    if-nez v2, :cond_12

    invoke-virtual {p0, v0, p1}, Le/x;->M(Le/w;Landroid/view/KeyEvent;)Z

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Le/x;->N:Z

    :cond_6
    :goto_1
    move v1, v2

    goto/16 :goto_7

    :cond_7
    if-eq v0, v5, :cond_11

    if-eq v0, v3, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Le/x;->u:Lh/a;

    if-eqz v0, :cond_9

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p0, v2}, Le/x;->F(I)Le/w;

    move-result-object v0

    iget-object v3, p0, Le/x;->r:Lj/i0;

    iget-object v4, p0, Le/x;->k:Landroid/content/Context;

    if-eqz v3, :cond_b

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast v3, Lj/q1;

    iget-object v3, v3, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_b

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->s:Z

    if-eqz v3, :cond_b

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Le/x;->r:Lj/i0;

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast v3, Lj/q1;

    iget-object v3, v3, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_a

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->t:Lj/j;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lj/j;->k()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object p1, p0, Le/x;->r:Lj/i0;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast p1, Lj/q1;

    iget-object p1, p1, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_e

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Lj/j;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lj/j;->f()Z

    move-result p1

    if-eqz p1, :cond_e

    :goto_2
    goto :goto_4

    :cond_a
    iget-boolean v3, p0, Le/x;->Q:Z

    if-nez v3, :cond_e

    invoke-virtual {p0, v0, p1}, Le/x;->M(Le/w;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Le/x;->r:Lj/i0;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast p1, Lj/q1;

    iget-object p1, p1, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_e

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Lj/j;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lj/j;->l()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_2

    :cond_b
    iget-boolean v3, v0, Le/w;->m:Z

    if-nez v3, :cond_f

    iget-boolean v5, v0, Le/w;->l:Z

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_c
    iget-boolean v3, v0, Le/w;->k:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v0, Le/w;->o:Z

    if-eqz v3, :cond_d

    iput-boolean v2, v0, Le/w;->k:Z

    invoke-virtual {p0, v0, p1}, Le/x;->M(Le/w;Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_3

    :cond_d
    move v3, v1

    :goto_3
    if-eqz v3, :cond_e

    invoke-virtual {p0, v0, p1}, Le/x;->K(Le/w;Landroid/view/KeyEvent;)V

    :goto_4
    move p1, v1

    goto :goto_6

    :cond_e
    move p1, v2

    goto :goto_6

    :cond_f
    :goto_5
    invoke-virtual {p0, v0, v1}, Le/x;->y(Le/w;Z)V

    move p1, v3

    :goto_6
    if-eqz p1, :cond_12

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_7

    :cond_10
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    invoke-virtual {p0}, Le/x;->J()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_12
    :goto_7
    return v1
.end method

.method public final B(I)V
    .locals 3

    invoke-virtual {p0, p1}, Le/x;->F(I)Le/w;

    move-result-object v0

    iget-object v1, v0, Le/w;->h:Li/l;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Le/w;->h:Li/l;

    invoke-virtual {v2, v1}, Li/l;->t(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Le/w;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Le/w;->h:Li/l;

    invoke-virtual {v1}, Li/l;->w()V

    iget-object v1, v0, Le/w;->h:Li/l;

    invoke-virtual {v1}, Li/l;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Le/w;->o:Z

    iput-boolean v1, v0, Le/w;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Le/x;->r:Lj/i0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le/x;->F(I)Le/w;

    move-result-object v0

    iput-boolean p1, v0, Le/w;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Le/x;->M(Le/w;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final C()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Le/x;->z:Z

    if-nez v2, :cond_1b

    sget-object v2, Ld/a;->j:[I

    iget-object v3, p0, Le/x;->k:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0x75

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v6, 0x7e

    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/16 v7, 0x6c

    if-eqz v6, :cond_0

    invoke-virtual {p0, v0}, Le/x;->k(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v7}, Le/x;->k(I)Z

    :cond_1
    :goto_0
    const/16 v5, 0x76

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v6, 0x6d

    if-eqz v5, :cond_2

    invoke-virtual {p0, v6}, Le/x;->k(I)Z

    :cond_2
    const/16 v5, 0x77

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Le/x;->k(I)Z

    :cond_3
    invoke-virtual {v4, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Le/x;->I:Z

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Le/x;->D()V

    iget-object v4, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-boolean v5, p0, Le/x;->J:Z

    const/4 v8, 0x0

    if-nez v5, :cond_9

    iget-boolean v5, p0, Le/x;->I:Z

    if-eqz v5, :cond_4

    const v5, 0x7f0c000c

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-boolean v1, p0, Le/x;->G:Z

    iput-boolean v1, p0, Le/x;->F:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v4, p0, Le/x;->F:Z

    if-eqz v4, :cond_8

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v9, 0x7f030009

    invoke-virtual {v5, v9, v4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_5

    new-instance v5, Lh/d;

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v5, v3, v4}, Lh/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    move-object v5, v3

    :goto_1
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c0017

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0900ff

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lj/i0;

    iput-object v5, p0, Le/x;->r:Lj/i0;

    iget-object v9, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v5, v9}, Lj/i0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v5, p0, Le/x;->G:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Le/x;->r:Lj/i0;

    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    :cond_6
    iget-boolean v5, p0, Le/x;->D:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Le/x;->r:Lj/i0;

    const/4 v6, 0x2

    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    :cond_7
    iget-boolean v5, p0, Le/x;->E:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Le/x;->r:Lj/i0;

    const/4 v6, 0x5

    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    goto :goto_2

    :cond_8
    move-object v4, v8

    goto :goto_2

    :cond_9
    iget-boolean v5, p0, Le/x;->H:Z

    if-eqz v5, :cond_a

    const v5, 0x7f0c0016

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v5, 0x7f0c0015

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v4, :cond_19

    new-instance v5, Le/p;

    invoke-direct {v5, p0, v1}, Le/p;-><init>(Le/x;I)V

    sget-object v6, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v4, v5}, Ly/D;->u(Landroid/view/View;Ly/q;)V

    iget-object v5, p0, Le/x;->r:Lj/i0;

    if-nez v5, :cond_c

    const v5, 0x7f090299

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Le/x;->B:Landroid/widget/TextView;

    :cond_c
    sget-object v5, Lj/u1;->a:Ljava/lang/reflect/Method;

    const-string v5, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v6, "ViewUtils"

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "makeOptionalFitsSystemWindows"

    invoke-virtual {v9, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v9, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3

    :catch_0
    move-exception v9

    goto :goto_4

    :catch_1
    move-exception v9

    goto :goto_5

    :cond_d
    :goto_3
    invoke-virtual {v9, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    invoke-static {v6, v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    invoke-static {v6, v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    const-string v5, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const v5, 0x7f090032

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v6, p0, Le/x;->l:Landroid/view/Window;

    const v9, 0x1020002

    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_f

    :goto_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_e

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_e
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    instance-of v10, v6, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_f

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v6, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v6, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v6, Le/p;

    invoke-direct {v6, p0, v0}, Le/p;-><init>(Le/x;I)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Lj/h0;)V

    iput-object v4, p0, Le/x;->A:Landroid/view/ViewGroup;

    iget-object v4, p0, Le/x;->j:Ljava/lang/Object;

    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_10

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_8

    :cond_10
    iget-object v4, p0, Le/x;->q:Ljava/lang/CharSequence;

    :goto_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, p0, Le/x;->r:Lj/i0;

    if-eqz v5, :cond_11

    invoke-interface {v5, v4}, Lj/i0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_11
    iget-object v5, p0, Le/x;->o:Le/J;

    if-eqz v5, :cond_12

    iget-object v5, v5, Le/J;->g:Lj/j0;

    check-cast v5, Lj/q1;

    iget-boolean v6, v5, Lj/q1;->g:Z

    if-nez v6, :cond_13

    iput-object v4, v5, Lj/q1;->h:Ljava/lang/CharSequence;

    iget v6, v5, Lj/q1;->b:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_13

    iget-object v6, v5, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v5, v5, Lj/q1;->g:Z

    if-eqz v5, :cond_13

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v4}, Ly/N;->j(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_12
    iget-object v5, p0, Le/x;->B:Landroid/widget/TextView;

    if-eqz v5, :cond_13

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_9
    iget-object v4, p0, Le/x;->A:Landroid/view/ViewGroup;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v5, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    iget-object v10, v4, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    invoke-virtual {v10, v6, v8, v9, v5}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v5, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Ly/A;->c(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    :cond_14
    invoke-virtual {v3, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v3, 0x7d

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v3, 0x7a

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v3, 0x79

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    iput-boolean v0, p0, Le/x;->z:Z

    invoke-virtual {p0, v1}, Le/x;->F(I)Le/w;

    move-result-object v0

    iget-boolean v1, p0, Le/x;->Q:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Le/w;->h:Li/l;

    if-nez v0, :cond_1b

    invoke-virtual {p0, v7}, Le/x;->H(I)V

    goto :goto_a

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Le/x;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/x;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/x;->I:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/x;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/x;->J:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_a
    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/x;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/x;->u(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final E(Landroid/content/Context;)Landroidx/fragment/app/f;
    .locals 3

    iget-object v0, p0, Le/x;->W:Le/u;

    if-nez v0, :cond_1

    new-instance v0, Le/u;

    sget-object v1, LM/d;->e:LM/d;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, LM/d;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, LM/d;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, LM/d;->e:LM/d;

    :cond_0
    sget-object p1, LM/d;->e:LM/d;

    invoke-direct {v0, p0, p1}, Le/u;-><init>(Le/x;LM/d;)V

    iput-object v0, p0, Le/x;->W:Le/u;

    :cond_1
    iget-object p1, p0, Le/x;->W:Le/u;

    return-object p1
.end method

.method public final F(I)Le/w;
    .locals 4

    iget-object v0, p0, Le/x;->L:[Le/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p1, :cond_2

    :cond_0
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Le/w;

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Le/x;->L:[Le/w;

    move-object v0, v2

    :cond_2
    aget-object v2, v0, p1

    if-nez v2, :cond_3

    new-instance v2, Le/w;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput p1, v2, Le/w;->a:I

    iput-boolean v1, v2, Le/w;->n:Z

    aput-object v2, v0, p1

    :cond_3
    return-object v2
.end method

.method public final G()V
    .locals 3

    invoke-virtual {p0}, Le/x;->C()V

    iget-boolean v0, p0, Le/x;->F:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/x;->o:Le/J;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le/x;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Le/J;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Le/x;->G:Z

    invoke-direct {v1, v0, v2}, Le/J;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Le/x;->o:Le/J;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Le/J;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Le/J;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Le/x;->o:Le/J;

    :cond_2
    :goto_0
    iget-object v0, p0, Le/x;->o:Le/J;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Le/x;->b0:Z

    invoke-virtual {v0, v1}, Le/J;->p0(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final H(I)V
    .locals 3

    iget v0, p0, Le/x;->Z:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Le/x;->Z:I

    iget-boolean p1, p0, Le/x;->Y:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Le/x;->a0:Le/o;

    sget-object v2, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v0}, Ly/y;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Le/x;->Y:Z

    :cond_0
    return-void
.end method

.method public final I(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Le/x;->X:Le/u;

    if-nez p2, :cond_0

    new-instance p2, Le/u;

    invoke-direct {p2, p0, p1}, Le/u;-><init>(Le/x;Landroid/content/Context;)V

    iput-object p2, p0, Le/x;->X:Le/u;

    :cond_0
    iget-object p1, p0, Le/x;->X:Le/u;

    invoke-virtual {p1}, Le/u;->f()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Le/x;->E(Landroid/content/Context;)Landroidx/fragment/app/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/f;->f()I

    move-result p1

    return p1

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final J()Z
    .locals 5

    iget-boolean v0, p0, Le/x;->N:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Le/x;->N:Z

    invoke-virtual {p0, v1}, Le/x;->F(I)Le/w;

    move-result-object v2

    iget-boolean v3, v2, Le/w;->m:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v4}, Le/x;->y(Le/w;Z)V

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Le/x;->u:Lh/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lh/a;->a()V

    return v4

    :cond_2
    invoke-virtual {p0}, Le/x;->G()V

    iget-object v0, p0, Le/x;->o:Le/J;

    if-eqz v0, :cond_5

    iget-object v0, v0, Le/J;->g:Lj/j0;

    if-eqz v0, :cond_5

    move-object v2, v0

    check-cast v2, Lj/q1;

    iget-object v2, v2, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->L:Lj/l1;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lj/l1;->b:Li/n;

    if-eqz v2, :cond_5

    check-cast v0, Lj/q1;

    iget-object v0, v0, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->L:Lj/l1;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lj/l1;->b:Li/n;

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Li/n;->collapseActionView()Z

    :cond_4
    return v4

    :cond_5
    return v1
.end method

.method public final K(Le/w;Landroid/view/KeyEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Le/w;->m:Z

    if-nez v2, :cond_1b

    iget-boolean v2, v0, Le/x;->Q:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v2, v1, Le/w;->a:I

    iget-object v3, v0, Le/x;->k:Landroid/content/Context;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v6, v1, Le/w;->h:Li/l;

    invoke-interface {v4, v2, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1, v5}, Le/x;->y(Le/w;Z)V

    return-void

    :cond_2
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p2}, Le/x;->M(Le/w;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    iget-object v6, v1, Le/w;->e:Le/v;

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v6, :cond_6

    iget-boolean v9, v1, Le/w;->n:Z

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, v1, Le/w;->g:Landroid/view/View;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_18

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_18

    move v10, v6

    goto/16 :goto_7

    :cond_6
    :goto_0
    if-nez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Le/x;->G()V

    iget-object v6, v0, Le/x;->o:Le/J;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Le/J;->n0()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v6

    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v10, 0x7f030002

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_9

    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9
    const v10, 0x7f030252

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_a
    const v6, 0x7f100181

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v6, Lh/d;

    invoke-direct {v6, v3, v7}, Lh/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lh/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v6, v1, Le/w;->j:Lh/d;

    sget-object v3, Ld/a;->j:[I

    invoke-virtual {v6, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v6, 0x56

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Le/w;->b:I

    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Le/w;->d:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Le/v;

    iget-object v6, v1, Le/w;->j:Lh/d;

    invoke-direct {v3, v0, v6}, Le/v;-><init>(Le/x;Lh/d;)V

    iput-object v3, v1, Le/w;->e:Le/v;

    const/16 v3, 0x51

    iput v3, v1, Le/w;->c:I

    goto :goto_4

    :cond_b
    iget-boolean v3, v1, Le/w;->n:Z

    if-eqz v3, :cond_c

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, v1, Le/w;->e:Le/v;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_c
    :goto_4
    iget-object v3, v1, Le/w;->g:Landroid/view/View;

    if-eqz v3, :cond_d

    iput-object v3, v1, Le/w;->f:Landroid/view/View;

    goto :goto_5

    :cond_d
    iget-object v3, v1, Le/w;->h:Li/l;

    if-nez v3, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object v3, v0, Le/x;->t:Le/p;

    if-nez v3, :cond_f

    new-instance v3, Le/p;

    const/4 v6, 0x3

    invoke-direct {v3, v0, v6}, Le/p;-><init>(Le/x;I)V

    iput-object v3, v0, Le/x;->t:Le/p;

    :cond_f
    iget-object v3, v0, Le/x;->t:Le/p;

    iget-object v6, v1, Le/w;->i:Li/h;

    if-nez v6, :cond_10

    new-instance v6, Li/h;

    iget-object v9, v1, Le/w;->j:Lh/d;

    invoke-direct {v6, v9}, Li/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v6, v1, Le/w;->i:Li/h;

    iput-object v3, v6, Li/h;->e:Li/x;

    iget-object v3, v1, Le/w;->h:Li/l;

    iget-object v9, v3, Li/l;->a:Landroid/content/Context;

    invoke-virtual {v3, v6, v9}, Li/l;->b(Li/y;Landroid/content/Context;)V

    :cond_10
    iget-object v3, v1, Le/w;->i:Li/h;

    iget-object v6, v1, Le/w;->e:Le/v;

    iget-object v9, v3, Li/h;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v9, :cond_12

    iget-object v9, v3, Li/h;->b:Landroid/view/LayoutInflater;

    const v10, 0x7f0c000d

    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v6, v3, Li/h;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v6, v3, Li/h;->f:Li/g;

    if-nez v6, :cond_11

    new-instance v6, Li/g;

    invoke-direct {v6, v3}, Li/g;-><init>(Li/h;)V

    iput-object v6, v3, Li/h;->f:Li/g;

    :cond_11
    iget-object v6, v3, Li/h;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v9, v3, Li/h;->f:Li/g;

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, v3, Li/h;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    iget-object v3, v3, Li/h;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v3, v1, Le/w;->f:Landroid/view/View;

    if-eqz v3, :cond_1a

    :goto_5
    iget-object v3, v1, Le/w;->f:Landroid/view/View;

    if-nez v3, :cond_13

    goto/16 :goto_8

    :cond_13
    iget-object v3, v1, Le/w;->g:Landroid/view/View;

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    iget-object v3, v1, Le/w;->i:Li/h;

    iget-object v6, v3, Li/h;->f:Li/g;

    if-nez v6, :cond_15

    new-instance v6, Li/g;

    invoke-direct {v6, v3}, Li/g;-><init>(Li/h;)V

    iput-object v6, v3, Li/h;->f:Li/g;

    :cond_15
    iget-object v3, v3, Li/h;->f:Li/g;

    invoke-virtual {v3}, Li/g;->getCount()I

    move-result v3

    if-lez v3, :cond_1a

    :goto_6
    iget-object v3, v1, Le/w;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_16

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_16
    iget v6, v1, Le/w;->b:I

    iget-object v9, v1, Le/w;->e:Le/v;

    invoke-virtual {v9, v6}, Le/v;->setBackgroundResource(I)V

    iget-object v6, v1, Le/w;->f:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v9, v6, Landroid/view/ViewGroup;

    if-eqz v9, :cond_17

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v9, v1, Le/w;->f:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v6, v1, Le/w;->e:Le/v;

    iget-object v9, v1, Le/w;->f:Landroid/view/View;

    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, Le/w;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Le/w;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_18
    move v10, v8

    :goto_7
    iput-boolean v7, v1, Le/w;->l:Z

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/high16 v15, 0x820000

    const/16 v16, -0x3

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v6, v1, Le/w;->c:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v6, v1, Le/w;->d:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v6, v1, Le/w;->e:Le/v;

    invoke-interface {v4, v6, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, v1, Le/w;->m:Z

    if-nez v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Le/x;->O()V

    :cond_19
    return-void

    :cond_1a
    :goto_8
    iput-boolean v5, v1, Le/w;->n:Z

    :cond_1b
    :goto_9
    return-void
.end method

.method public final L(Le/w;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Le/w;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Le/x;->M(Le/w;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p1, Le/w;->h:Li/l;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Li/l;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final M(Le/w;Landroid/view/KeyEvent;)Z
    .locals 12

    iget-boolean v0, p0, Le/x;->Q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Le/w;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Le/x;->M:Le/w;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Le/x;->y(Le/w;Z)V

    :cond_2
    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget v3, p1, Le/w;->a:I

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Le/w;->g:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Le/x;->r:Lj/i0;

    if-eqz v6, :cond_6

    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast v6, Lj/q1;

    iput-boolean v2, v6, Lj/q1;->l:Z

    :cond_6
    iget-object v6, p1, Le/w;->g:Landroid/view/View;

    if-nez v6, :cond_1d

    iget-object v6, p1, Le/w;->h:Li/l;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iget-boolean v8, p1, Le/w;->o:Z

    if-eqz v8, :cond_17

    :cond_7
    if-nez v6, :cond_10

    iget-object v6, p0, Le/x;->k:Landroid/content/Context;

    if-eqz v3, :cond_8

    if-ne v3, v4, :cond_c

    :cond_8
    iget-object v4, p0, Le/x;->r:Lj/i0;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f030009

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    const v10, 0x7f03000a

    if-eqz v9, :cond_9

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v11, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v8, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_b

    if-nez v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v9, :cond_c

    new-instance v4, Lh/d;

    invoke-direct {v4, v6, v1}, Lh/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lh/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_c
    new-instance v4, Li/l;

    invoke-direct {v4, v6}, Li/l;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Li/l;->e:Li/j;

    iget-object v6, p1, Le/w;->h:Li/l;

    if-ne v4, v6, :cond_d

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_e

    iget-object v8, p1, Le/w;->i:Li/h;

    invoke-virtual {v6, v8}, Li/l;->r(Li/y;)V

    :cond_e
    iput-object v4, p1, Le/w;->h:Li/l;

    iget-object v6, p1, Le/w;->i:Li/h;

    if-eqz v6, :cond_f

    iget-object v8, v4, Li/l;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, Li/l;->b(Li/y;Landroid/content/Context;)V

    :cond_f
    :goto_3
    iget-object v4, p1, Le/w;->h:Li/l;

    if-nez v4, :cond_10

    return v1

    :cond_10
    if-eqz v5, :cond_12

    iget-object v4, p0, Le/x;->r:Lj/i0;

    if-eqz v4, :cond_12

    iget-object v6, p0, Le/x;->s:Le/p;

    if-nez v6, :cond_11

    new-instance v6, Le/p;

    const/4 v8, 0x2

    invoke-direct {v6, p0, v8}, Le/p;-><init>(Le/x;I)V

    iput-object v6, p0, Le/x;->s:Le/p;

    :cond_11
    iget-object v6, p1, Le/w;->h:Li/l;

    iget-object v8, p0, Le/x;->s:Le/p;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Li/l;Li/x;)V

    :cond_12
    iget-object v4, p1, Le/w;->h:Li/l;

    invoke-virtual {v4}, Li/l;->w()V

    iget-object v4, p1, Le/w;->h:Li/l;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object p2, p1, Le/w;->h:Li/l;

    if-nez p2, :cond_13

    goto :goto_4

    :cond_13
    if-eqz p2, :cond_14

    iget-object v0, p1, Le/w;->i:Li/h;

    invoke-virtual {p2, v0}, Li/l;->r(Li/y;)V

    :cond_14
    iput-object v7, p1, Le/w;->h:Li/l;

    :goto_4
    if-eqz v5, :cond_15

    iget-object p1, p0, Le/x;->r:Lj/i0;

    if-eqz p1, :cond_15

    iget-object p2, p0, Le/x;->s:Le/p;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v7, p2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Li/l;Li/x;)V

    :cond_15
    return v1

    :cond_16
    iput-boolean v1, p1, Le/w;->o:Z

    :cond_17
    iget-object v3, p1, Le/w;->h:Li/l;

    invoke-virtual {v3}, Li/l;->w()V

    iget-object v3, p1, Le/w;->p:Landroid/os/Bundle;

    if-eqz v3, :cond_18

    iget-object v4, p1, Le/w;->h:Li/l;

    invoke-virtual {v4, v3}, Li/l;->s(Landroid/os/Bundle;)V

    iput-object v7, p1, Le/w;->p:Landroid/os/Bundle;

    :cond_18
    iget-object v3, p1, Le/w;->g:Landroid/view/View;

    iget-object v4, p1, Le/w;->h:Li/l;

    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz v5, :cond_19

    iget-object p2, p0, Le/x;->r:Lj/i0;

    if-eqz p2, :cond_19

    iget-object v0, p0, Le/x;->s:Le/p;

    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, v7, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Li/l;Li/x;)V

    :cond_19
    iget-object p1, p1, Le/w;->h:Li/l;

    invoke-virtual {p1}, Li/l;->v()V

    return v1

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_5

    :cond_1b
    const/4 p2, -0x1

    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_1c

    move p2, v2

    goto :goto_6

    :cond_1c
    move p2, v1

    :goto_6
    iget-object v0, p1, Le/w;->h:Li/l;

    invoke-virtual {v0, p2}, Li/l;->setQwertyMode(Z)V

    iget-object p2, p1, Le/w;->h:Li/l;

    invoke-virtual {p2}, Li/l;->v()V

    :cond_1d
    iput-boolean v2, p1, Le/w;->k:Z

    iput-boolean v1, p1, Le/w;->l:Z

    iput-object p1, p0, Le/x;->M:Le/w;

    return v2
.end method

.method public final N()V
    .locals 2

    iget-boolean v0, p0, Le/x;->z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final O()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Le/x;->f0:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Le/x;->F(I)Le/w;

    move-result-object v0

    iget-boolean v0, v0, Le/w;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Le/x;->u:Lh/a;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Le/x;->g0:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Le/x;->f0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v0, p0}, Le/s;->b(Ljava/lang/Object;Le/x;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Le/x;->g0:Landroid/window/OnBackInvokedCallback;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Le/x;->g0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_4

    iget-object v1, p0, Le/x;->f0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v1, v0}, Le/s;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final b(Li/l;)V
    .locals 5

    iget-object p1, p0, Le/x;->r:Lj/i0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast p1, Lj/q1;

    iget-object p1, p1, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->s:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Le/x;->k:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/x;->r:Lj/i0;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast p1, Lj/q1;

    iget-object p1, p1, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_5

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Lj/j;

    if-eqz p1, :cond_5

    iget-object v2, p1, Lj/j;->u:Lj/h;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lj/j;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    iget-object p1, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Le/x;->r:Lj/i0;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast v2, Lj/q1;

    iget-object v2, v2, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->t:Lj/j;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lj/j;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const/16 v3, 0x6c

    if-eqz v2, :cond_3

    iget-object v1, p0, Le/x;->r:Lj/i0;

    check-cast v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast v1, Lj/q1;

    iget-object v1, v1, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->t:Lj/j;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lj/j;->f()Z

    move-result v1

    :cond_2
    iget-boolean v1, p0, Le/x;->Q:Z

    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Le/x;->F(I)Le/w;

    move-result-object v0

    iget-object v0, v0, Le/w;->h:Li/l;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_6

    iget-boolean v2, p0, Le/x;->Q:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Le/x;->Y:Z

    if-eqz v2, :cond_4

    iget v2, p0, Le/x;->Z:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Le/x;->a0:Le/o;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Le/o;->run()V

    :cond_4
    invoke-virtual {p0, v0}, Le/x;->F(I)Le/w;

    move-result-object v1

    iget-object v2, v1, Le/w;->h:Li/l;

    if-eqz v2, :cond_6

    iget-boolean v4, v1, Le/w;->o:Z

    if-nez v4, :cond_6

    iget-object v4, v1, Le/w;->g:Landroid/view/View;

    invoke-interface {p1, v0, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Le/w;->h:Li/l;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Le/x;->r:Lj/i0;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast p1, Lj/q1;

    iget-object p1, p1, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->t:Lj/j;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lj/j;->l()Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Le/x;->F(I)Le/w;

    move-result-object p1

    iput-boolean v1, p1, Le/w;->n:Z

    invoke-virtual {p0, p1, v0}, Le/x;->y(Le/w;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le/x;->K(Le/w;Landroid/view/KeyEvent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Le/x;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Le/x;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Le/x;->o:Le/J;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/x;->G()V

    iget-object v0, p0, Le/x;->o:Le/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/x;->H(I)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/x;->O:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Le/x;->t(ZZ)Z

    invoke-virtual {p0}, Le/x;->D()V

    iget-object v1, p0, Le/x;->j:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, LA/b;->C(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Le/x;->o:Le/J;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Le/x;->b0:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Le/J;->p0(Z)V

    :cond_1
    :goto_1
    sget-object v1, Le/n;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Le/n;->j(Le/x;)V

    sget-object v2, Le/n;->g:Lm/c;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lm/c;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Le/x;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Le/x;->R:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Le/x;->P:Z

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Le/x;->j:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Le/n;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Le/n;->j(Le/x;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Le/x;->Y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Le/x;->a0:Le/o;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/x;->Q:Z

    iget v0, p0, Le/x;->S:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Le/x;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Le/x;->h0:Lm/k;

    iget-object v1, p0, Le/x;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Le/x;->S:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lm/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Le/x;->h0:Lm/k;

    iget-object v1, p0, Le/x;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Le/x;->W:Le/u;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/f;->c()V

    :cond_3
    iget-object v0, p0, Le/x;->X:Le/u;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/f;->c()V

    :cond_4
    return-void
.end method

.method public final k(I)Z
    .locals 5

    const/16 v0, 0x6d

    const/16 v1, 0x6c

    const/16 v2, 0x8

    const-string v3, "AppCompatDelegate"

    if-ne p1, v2, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Le/x;->J:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    iget-boolean v2, p0, Le/x;->F:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Le/x;->F:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Le/x;->N()V

    iput-boolean v4, p0, Le/x;->G:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Le/x;->N()V

    iput-boolean v4, p0, Le/x;->F:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Le/x;->N()V

    iput-boolean v4, p0, Le/x;->H:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Le/x;->N()V

    iput-boolean v4, p0, Le/x;->E:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Le/x;->N()V

    iput-boolean v4, p0, Le/x;->D:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Le/x;->N()V

    iput-boolean v4, p0, Le/x;->J:Z

    return v4
.end method

.method public final m(I)V
    .locals 2

    invoke-virtual {p0}, Le/x;->C()V

    iget-object v0, p0, Le/x;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Le/x;->k:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Le/x;->m:Le/t;

    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/t;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Le/x;->C()V

    iget-object v0, p0, Le/x;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Le/x;->m:Le/t;

    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/t;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final o(Li/l;Landroid/view/MenuItem;)Z
    .locals 7

    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Le/x;->Q:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Li/l;->k()Li/l;

    move-result-object p1

    iget-object v2, p0, Le/x;->L:[Le/w;

    if-eqz v2, :cond_0

    array-length v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    iget-object v6, v5, Le/w;->h:Li/l;

    if-ne v6, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    iget p1, v5, Le/w;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x4

    const/4 v8, 0x1

    .line 1
    iget-object v0, v1, Le/x;->e0:Le/A;

    const/4 v9, 0x0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Ld/a;->j:[I

    iget-object v10, v1, Le/x;->k:Landroid/content/Context;

    invoke-virtual {v10, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v11, 0x74

    .line 3
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    .line 4
    new-instance v0, Le/A;

    invoke-direct {v0}, Le/A;-><init>()V

    iput-object v0, v1, Le/x;->e0:Le/A;

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/A;

    iput-object v0, v1, Le/x;->e0:Le/A;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Failed to instantiate custom view inflater "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". Falling back to default."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AppCompatDelegate"

    invoke-static {v11, v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    new-instance v0, Le/A;

    invoke-direct {v0}, Le/A;-><init>()V

    iput-object v0, v1, Le/x;->e0:Le/A;

    .line 10
    :cond_1
    :goto_0
    iget-object v0, v1, Le/x;->e0:Le/A;

    .line 11
    sget v10, Lj/s1;->a:I

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v10, Ld/a;->z:[I

    const/4 v15, 0x0

    invoke-virtual {v3, v4, v10, v15, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 14
    invoke-virtual {v10, v7, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    if-eqz v11, :cond_2

    .line 15
    const-string v12, "AppCompatViewInflater"

    const-string v13, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v11, :cond_4

    .line 17
    instance-of v10, v3, Lh/d;

    if-eqz v10, :cond_3

    move-object v10, v3

    check-cast v10, Lh/d;

    .line 18
    iget v10, v10, Lh/d;->a:I

    if-eq v10, v11, :cond_4

    .line 19
    :cond_3
    new-instance v10, Lh/d;

    invoke-direct {v10, v3, v11}, Lh/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move-object v10, v3

    .line 20
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_2
    move v7, v6

    goto/16 :goto_3

    :sswitch_0
    const-string v7, "Button"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    const/16 v7, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v7, "EditText"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    const/16 v7, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "CheckBox"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    const/16 v7, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "AutoCompleteTextView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    const/16 v7, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v7, "ImageView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v7, "ToggleButton"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_2

    :cond_a
    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v7, "RadioButton"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_2

    :cond_b
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_7
    const-string v7, "Spinner"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_2

    :cond_c
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_8
    const-string v7, "SeekBar"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_2

    :cond_d
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_9
    const-string v11, "ImageButton"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_2

    :sswitch_a
    const-string v7, "TextView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_2

    :cond_e
    move v7, v5

    goto :goto_3

    :sswitch_b
    const-string v7, "MultiAutoCompleteTextView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_2

    :cond_f
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_c
    const-string v7, "CheckedTextView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_2

    :cond_10
    move v7, v8

    goto :goto_3

    :sswitch_d
    const-string v7, "RatingBar"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_2

    :cond_11
    const/4 v7, 0x0

    :cond_12
    :goto_3
    packed-switch v7, :pswitch_data_0

    move-object v7, v9

    goto :goto_4

    .line 21
    :pswitch_0
    invoke-virtual {v0, v10, v4}, Le/A;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lj/o;

    move-result-object v7

    goto :goto_4

    .line 22
    :pswitch_1
    new-instance v7, Lj/u;

    .line 23
    invoke-direct {v7, v10, v4}, Lj/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 24
    :pswitch_2
    invoke-virtual {v0, v10, v4}, Le/A;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lj/p;

    move-result-object v7

    goto :goto_4

    .line 25
    :pswitch_3
    invoke-virtual {v0, v10, v4}, Le/A;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lj/n;

    move-result-object v7

    goto :goto_4

    .line 26
    :pswitch_4
    new-instance v7, Lj/y;

    .line 27
    invoke-direct {v7, v10, v4, v15}, Lj/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 28
    :pswitch_5
    new-instance v7, Lj/g0;

    invoke-direct {v7, v10, v4}, Lj/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 29
    :pswitch_6
    invoke-virtual {v0, v10, v4}, Le/A;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lj/C;

    move-result-object v7

    goto :goto_4

    .line 30
    :pswitch_7
    new-instance v7, Lj/T;

    invoke-direct {v7, v10, v4}, Lj/T;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 31
    :pswitch_8
    new-instance v7, Lj/F;

    invoke-direct {v7, v10, v4}, Lj/F;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 32
    :pswitch_9
    new-instance v7, Lj/w;

    const v11, 0x7f03018c

    .line 33
    invoke-direct {v7, v10, v4, v11}, Lj/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 34
    :pswitch_a
    invoke-virtual {v0, v10, v4}, Le/A;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Lj/b0;

    move-result-object v7

    goto :goto_4

    .line 35
    :pswitch_b
    new-instance v7, Lj/z;

    invoke-direct {v7, v10, v4}, Lj/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 36
    :pswitch_c
    new-instance v7, Lj/q;

    invoke-direct {v7, v10, v4}, Lj/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 37
    :pswitch_d
    new-instance v7, Lj/D;

    invoke-direct {v7, v10, v4}, Lj/D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v7, :cond_17

    if-eq v3, v10, :cond_17

    .line 38
    iget-object v3, v0, Le/A;->a:[Ljava/lang/Object;

    const-string v7, "view"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 39
    const-string v2, "class"

    invoke-interface {v4, v9, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    :cond_13
    :try_start_1
    aput-object v10, v3, v15

    .line 41
    aput-object v4, v3, v8

    const/16 v7, 0x2e

    .line 42
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v6, v7, :cond_16

    move v6, v15

    .line 43
    :goto_5
    sget-object v7, Le/A;->g:[Ljava/lang/String;

    if-ge v6, v5, :cond_15

    .line 44
    aget-object v7, v7, v6

    invoke-virtual {v0, v10, v2, v7}, Le/A;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_14

    .line 45
    aput-object v9, v3, v15

    .line 46
    aput-object v9, v3, v8

    move-object v9, v7

    goto :goto_7

    :cond_14
    add-int/2addr v6, v8

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 47
    :cond_15
    aput-object v9, v3, v15

    .line 48
    aput-object v9, v3, v8

    goto :goto_7

    .line 49
    :cond_16
    :try_start_2
    invoke-virtual {v0, v10, v2, v9}, Le/A;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    aput-object v9, v3, v15

    .line 51
    aput-object v9, v3, v8

    move-object v9, v0

    goto :goto_7

    .line 52
    :goto_6
    aput-object v9, v3, v15

    .line 53
    aput-object v9, v3, v8

    .line 54
    throw v0

    .line 55
    :catch_0
    aput-object v9, v3, v15

    .line 56
    aput-object v9, v3, v8

    :goto_7
    move-object v7, v9

    :cond_17
    if-eqz v7, :cond_1f

    .line 57
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1a

    .line 59
    sget-object v2, Ly/N;->a:Ljava/util/WeakHashMap;

    .line 60
    invoke-static {v7}, Ly/x;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_8

    .line 61
    :cond_18
    sget-object v2, Le/A;->c:[I

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 63
    new-instance v3, Le/z;

    invoke-direct {v3, v7, v2}, Le/z;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    :cond_1a
    :goto_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v0, v2, :cond_1b

    goto/16 :goto_a

    .line 66
    :cond_1b
    sget-object v0, Le/A;->d:[I

    invoke-virtual {v10, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const-class v5, Ljava/lang/Boolean;

    if-eqz v3, :cond_1c

    .line 68
    invoke-virtual {v0, v15, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    sget-object v6, Ly/N;->a:Ljava/util/WeakHashMap;

    .line 69
    new-instance v6, Ly/v;

    const v12, 0x7f090279

    const/16 v16, 0x3

    move-object v11, v6

    move-object v13, v5

    move v14, v15

    move v8, v15

    move v15, v2

    .line 70
    invoke-direct/range {v11 .. v16}, Ly/v;-><init>(ILjava/lang/Class;III)V

    .line 71
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, LF/c;->d(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_9

    :cond_1c
    move v8, v15

    .line 72
    :goto_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    sget-object v0, Le/A;->e:[I

    invoke-virtual {v10, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 75
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Ly/N;->j(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 76
    :cond_1d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    sget-object v0, Le/A;->f:[I

    invoke-virtual {v10, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 79
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 80
    sget-object v4, Ly/N;->a:Ljava/util/WeakHashMap;

    .line 81
    new-instance v4, Ly/v;

    const v12, 0x7f09027e

    const/16 v16, 0x0

    move-object v11, v4

    move-object v13, v5

    move v14, v8

    move v15, v2

    .line 82
    invoke-direct/range {v11 .. v16}, Ly/v;-><init>(ILjava/lang/Class;III)V

    .line 83
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, LF/c;->d(Landroid/view/View;Ljava/lang/Object;)V

    .line 84
    :cond_1e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1f
    :goto_a
    return-object v7

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0, p1, p2, p3}, Le/x;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Le/x;->C()V

    iget-object v0, p0, Le/x;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Le/x;->m:Le/t;

    iget-object p2, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/t;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final r(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Le/x;->q:Ljava/lang/CharSequence;

    iget-object v0, p0, Le/x;->r:Lj/i0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lj/i0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/x;->o:Le/J;

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/J;->g:Lj/j0;

    check-cast v0, Lj/q1;

    iget-boolean v1, v0, Lj/q1;->g:Z

    if-nez v1, :cond_2

    iput-object p1, v0, Lj/q1;->h:Ljava/lang/CharSequence;

    iget v1, v0, Lj/q1;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    iget-object v1, v0, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, v0, Lj/q1;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Ly/N;->j(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/x;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final t(ZZ)Z
    .locals 11

    iget-boolean v0, p0, Le/x;->Q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Le/x;->S:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Le/n;->b:I

    :goto_0
    iget-object v2, p0, Le/x;->k:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Le/x;->I(Landroid/content/Context;I)I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    invoke-static {v2}, Le/x;->v(Landroid/content/Context;)Lu/e;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    if-nez p2, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-static {p2}, Le/r;->b(Landroid/content/res/Configuration;)Lu/e;

    move-result-object v5

    :cond_3
    invoke-static {v2, v3, v5, v6, v1}, Le/x;->z(Landroid/content/Context;ILu/e;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object p2

    iget-boolean v3, p0, Le/x;->V:Z

    iget-object v7, p0, Le/x;->j:Ljava/lang/Object;

    const/4 v8, 0x1

    if-nez v3, :cond_6

    instance-of v3, v7, Landroid/app/Activity;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    const/16 v9, 0x1d

    if-lt v4, v9, :cond_5

    const/high16 v4, 0x100c0000

    goto :goto_2

    :cond_5
    const/high16 v4, 0xc0000

    :goto_2
    :try_start_0
    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v9, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v3, p0, Le/x;->U:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v4, "AppCompatDelegate"

    const-string v9, "Exception while getting ActivityInfo"

    invoke-static {v4, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v1, p0, Le/x;->U:I

    :cond_6
    :goto_3
    iput-boolean v8, p0, Le/x;->V:Z

    iget v3, p0, Le/x;->U:I

    :goto_4
    iget-object v4, p0, Le/x;->R:Landroid/content/res/Configuration;

    if-nez v4, :cond_7

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    :cond_7
    iget v9, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    iget v10, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, 0x30

    invoke-static {v4}, Le/r;->b(Landroid/content/res/Configuration;)Lu/e;

    move-result-object v4

    if-nez v5, :cond_8

    move-object p2, v6

    goto :goto_5

    :cond_8
    invoke-static {p2}, Le/r;->b(Landroid/content/res/Configuration;)Lu/e;

    move-result-object p2

    :goto_5
    if-eq v9, v10, :cond_9

    const/16 v5, 0x200

    goto :goto_6

    :cond_9
    move v5, v1

    :goto_6
    if-eqz p2, :cond_a

    invoke-virtual {v4, p2}, Lu/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    or-int/lit16 v5, v5, 0x2004

    :cond_a
    not-int v4, v3

    and-int/2addr v4, v5

    if-eqz v4, :cond_c

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Le/x;->O:Z

    if-eqz p1, :cond_c

    sget-boolean p1, Le/x;->j0:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Le/x;->P:Z

    if-eqz p1, :cond_c

    :cond_b
    instance-of p1, v7, Landroid/app/Activity;

    if-eqz p1, :cond_c

    move-object p1, v7

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    move p1, v8

    goto :goto_7

    :cond_c
    move p1, v1

    :goto_7
    if-nez p1, :cond_11

    if-eqz v5, :cond_11

    and-int p1, v5, v3

    if-ne p1, v5, :cond_d

    move v1, v8

    :cond_d
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x31

    or-int/2addr v4, v10

    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p2, :cond_e

    invoke-static {v3, p2}, Le/r;->d(Landroid/content/res/Configuration;Lu/e;)V

    :cond_e
    invoke-virtual {p1, v3, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget p1, p0, Le/x;->T:I

    if-eqz p1, :cond_f

    invoke-virtual {v2, p1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v4, p0, Le/x;->T:I

    invoke-virtual {p1, v4, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_f
    if-eqz v1, :cond_12

    instance-of p1, v7, Landroid/app/Activity;

    if-eqz p1, :cond_12

    move-object p1, v7

    check-cast p1, Landroid/app/Activity;

    instance-of v1, p1, Landroidx/lifecycle/q;

    if-eqz v1, :cond_10

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/q;

    invoke-interface {v1}, Landroidx/lifecycle/q;->d()Landroidx/lifecycle/s;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    sget-object v4, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/l;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/l;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1, v3}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_8

    :cond_10
    iget-boolean v1, p0, Le/x;->P:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Le/x;->Q:Z

    if-nez v1, :cond_12

    invoke-virtual {p1, v3}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_8

    :cond_11
    move v8, p1

    :cond_12
    :goto_8
    if-eqz v8, :cond_14

    instance-of p1, v7, Le/j;

    if-eqz p1, :cond_14

    and-int/lit16 p1, v5, 0x200

    if-eqz p1, :cond_13

    move-object p1, v7

    check-cast p1, Le/j;

    :cond_13
    and-int/lit8 p1, v5, 0x4

    if-eqz p1, :cond_14

    check-cast v7, Le/j;

    :cond_14
    if-eqz v8, :cond_15

    if-eqz p2, :cond_15

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Le/r;->b(Landroid/content/res/Configuration;)Lu/e;

    move-result-object p1

    invoke-static {p1}, Le/r;->c(Lu/e;)V

    :cond_15
    if-nez v0, :cond_16

    invoke-virtual {p0, v2}, Le/x;->E(Landroid/content/Context;)Landroidx/fragment/app/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/f;->i()V

    goto :goto_9

    :cond_16
    iget-object p1, p0, Le/x;->W:Le/u;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroidx/fragment/app/f;->c()V

    :cond_17
    :goto_9
    const/4 p1, 0x3

    if-ne v0, p1, :cond_19

    iget-object p1, p0, Le/x;->X:Le/u;

    if-nez p1, :cond_18

    new-instance p1, Le/u;

    invoke-direct {p1, p0, v2}, Le/u;-><init>(Le/x;Landroid/content/Context;)V

    iput-object p1, p0, Le/x;->X:Le/u;

    :cond_18
    iget-object p1, p0, Le/x;->X:Le/u;

    invoke-virtual {p1}, Landroidx/fragment/app/f;->i()V

    goto :goto_a

    :cond_19
    iget-object p1, p0, Le/x;->X:Le/u;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroidx/fragment/app/f;->c()V

    :cond_1a
    :goto_a
    return v8
.end method

.method public final u(Landroid/view/Window;)V
    .locals 7

    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Le/t;

    if-nez v2, :cond_5

    new-instance v1, Le/t;

    invoke-direct {v1, p0, v0}, Le/t;-><init>(Le/x;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Le/x;->m:Le/t;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    sget-object v0, Le/x;->i0:[I

    iget-object v1, p0, Le/x;->k:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lj/s;->a()Lj/s;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Lj/s;->a:Lj/M0;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v3, v6}, Lj/M0;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Le/x;->l:Landroid/view/Window;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Le/x;->f0:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_4

    if-eqz p1, :cond_2

    iget-object v0, p0, Le/x;->g0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Le/s;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Le/x;->g0:Landroid/window/OnBackInvokedCallback;

    :cond_2
    iget-object p1, p0, Le/x;->j:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Le/s;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Le/x;->f0:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Le/x;->f0:Landroid/window/OnBackInvokedDispatcher;

    :goto_1
    invoke-virtual {p0}, Le/x;->O()V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(ILe/w;Li/l;)V
    .locals 3

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Le/x;->L:[Le/w;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Le/w;->h:Li/l;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Le/w;->m:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Le/x;->Q:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Le/x;->m:Le/t;

    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p2, Le/t;->d:Z

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p2, Le/t;->d:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v2, p2, Le/t;->d:Z

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final x(Li/l;)V
    .locals 2

    iget-boolean v0, p0, Le/x;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/x;->K:Z

    iget-object v0, p0, Le/x;->r:Lj/i0;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast v0, Lj/q1;

    iget-object v0, v0, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Lj/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj/j;->f()Z

    iget-object v0, v0, Lj/j;->t:Lj/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li/w;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Li/w;->i:Li/t;

    invoke-interface {v0}, Li/C;->dismiss()V

    :cond_1
    iget-object v0, p0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Le/x;->Q:Z

    if-nez v1, :cond_2

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Le/x;->K:Z

    return-void
.end method

.method public final y(Le/w;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Le/w;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Le/x;->r:Lj/i0;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Lj/j0;

    check-cast v0, Lj/q1;

    iget-object v0, v0, Lj/q1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Lj/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/j;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Le/w;->h:Li/l;

    invoke-virtual {p0, p1}, Le/x;->x(Li/l;)V

    return-void

    :cond_0
    iget-object v0, p0, Le/x;->k:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Le/w;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Le/w;->e:Le/v;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Le/w;->a:I

    invoke-virtual {p0, p2, p1, v1}, Le/x;->w(ILe/w;Li/l;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Le/w;->k:Z

    iput-boolean p2, p1, Le/w;->l:Z

    iput-boolean p2, p1, Le/w;->m:Z

    iput-object v1, p1, Le/w;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Le/w;->n:Z

    iget-object p2, p0, Le/x;->M:Le/w;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Le/x;->M:Le/w;

    :cond_2
    iget p1, p1, Le/w;->a:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Le/x;->O()V

    :cond_3
    return-void
.end method
