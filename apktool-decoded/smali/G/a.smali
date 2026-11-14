.class public final LG/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, LG/a;->a:I

    packed-switch p1, :pswitch_data_0

    .line 66
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    .line 68
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, LG/a;->c:Ljava/lang/Object;

    return-void

    .line 69
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance p1, Lm/k;

    invoke-direct {p1}, Lm/k;-><init>()V

    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    .line 71
    new-instance p1, Lm/e;

    invoke-direct {p1}, Lm/e;-><init>()V

    iput-object p1, p0, LG/a;->c:Ljava/lang/Object;

    return-void

    .line 72
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(LA/e;Landroid/os/Handler;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, LG/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LG/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM/M;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LG/a;->a:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    .line 41
    new-instance p1, LM/o0;

    .line 42
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p1, LM/o0;->a:I

    .line 44
    iput-object p1, p0, LG/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, LG/a;->a:I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, LG/a;->b:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, LG/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, LG/a;->a:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, LG/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, LG/a;->a:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    .line 47
    new-instance v1, LG/j;

    invoke-direct {v1, p1}, LG/j;-><init>(Landroid/widget/EditText;)V

    iput-object v1, p0, LG/a;->c:Ljava/lang/Object;

    .line 48
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    sget-object v1, LG/b;->b:LG/b;

    if-nez v1, :cond_1

    .line 50
    sget-object v1, LG/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v2, LG/b;->b:LG/b;

    if-nez v2, :cond_0

    .line 52
    new-instance v2, LG/b;

    .line 53
    invoke-direct {v2}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    const-string v3, "android.text.DynamicLayout$ChangeWatcher"

    .line 55
    const-class v4, LG/b;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v0, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, LG/b;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :catchall_0
    :try_start_2
    sput-object v2, LG/b;->b:LG/b;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 58
    :cond_1
    :goto_2
    sget-object v0, LG/b;->b:LG/b;

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/q;Lp0/e;Landroidx/emoji2/text/c;)V
    .locals 0

    const/4 p2, 0x7

    iput p2, p0, LG/a;->a:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    .line 38
    iput-object p3, p0, LG/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/E;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, LG/a;->a:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LG/a;->b:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, LG/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/q;Landroidx/lifecycle/I;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, LG/a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    .line 7
    const-string p1, "store"

    invoke-static {p2, p1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p1, LJ/a;->b:LJ/a;

    .line 9
    const-string v0, "defaultCreationExtras"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const-class v0, LK/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    const-string v2, "key"

    invoke-static {v1, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p2, p2, Landroidx/lifecycle/I;->a:Ljava/util/HashMap;

    .line 14
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/G;

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_2

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    iget-object p1, p1, LJ/b;->a:Ljava/util/LinkedHashMap;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 20
    sget-object p1, Landroidx/lifecycle/H;->b:Landroidx/lifecycle/H;

    .line 21
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :try_start_0
    new-instance p1, LK/a;

    invoke-direct {p1}, LK/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, p1

    goto :goto_1

    .line 23
    :catch_0
    new-instance p1, LK/a;

    invoke-direct {p1}, LK/a;-><init>()V

    goto :goto_0

    .line 24
    :goto_1
    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/G;

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Landroidx/lifecycle/G;->a()V

    .line 26
    :cond_2
    :goto_2
    check-cast v2, LK/a;

    .line 27
    iput-object v2, p0, LG/a;->c:Ljava/lang/Object;

    return-void

    .line 28
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, LG/a;->a:I

    iput-object p1, p0, LG/a;->c:Ljava/lang/Object;

    iput-object p3, p0, LG/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, LG/a;->a:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LG/a;->c:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    if-eq v1, v2, :cond_6

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const-class v2, Landroidx/emoji2/text/t;

    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/t;

    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_2

    if-eq v5, p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v4, p1, :cond_4

    :cond_3
    if-le p1, v5, :cond_5

    if-ge p1, v4, :cond_5

    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0
.end method

.method public static t(II)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v1, p0, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    if-le v2, p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v2, v4

    if-le v2, p1, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    return v3
.end method


# virtual methods
.method public A(Lh/a;Li/l;)Z
    .locals 4

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Le/x;

    iget-object v0, v0, Le/x;->A:Landroid/view/ViewGroup;

    sget-object v1, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ly/B;->c(Landroid/view/View;)V

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/q;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/q;->b(Lh/a;)Lh/f;

    move-result-object p1

    iget-object v1, v0, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    check-cast v1, Lm/k;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lm/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Menu;

    if-nez v2, :cond_0

    new-instance v2, Li/B;

    iget-object v3, v0, Landroidx/emoji2/text/q;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Li/B;-><init>(Landroid/content/Context;Li/l;)V

    invoke-virtual {v1, p2, v2}, Lm/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, v0, Landroidx/emoji2/text/q;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/ActionMode$Callback;

    invoke-interface {p2, p1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public B(Lv/f;)V
    .locals 4

    iget v0, p1, Lv/f;->b:I

    iget-object v1, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v2, LA/e;

    if-nez v0, :cond_0

    new-instance v0, Lb0/c;

    iget-object p1, p1, Lv/f;->a:Landroid/graphics/Typeface;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, p1}, Lb0/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/emoji2/text/g;

    const/4 v3, 0x2

    invoke-direct {p1, v2, v0, v3}, Landroidx/emoji2/text/g;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public C(LM/e0;I)LM/J;
    .locals 5

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Lm/k;

    invoke-virtual {v0, p1}, Lm/k;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lm/k;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM/p0;

    if-eqz v2, :cond_4

    iget v3, v2, LM/p0;->a:I

    and-int v4, v3, p2

    if-eqz v4, :cond_4

    not-int v4, p2

    and-int/2addr v3, v4

    iput v3, v2, LM/p0;->a:I

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    iget-object p2, v2, LM/p0;->b:LM/J;

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    if-ne p2, v4, :cond_3

    iget-object p2, v2, LM/p0;->c:LM/J;

    :goto_0
    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Lm/k;->h(I)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v2, LM/p0;->a:I

    iput-object v1, v2, LM/p0;->b:LM/J;

    iput-object v1, v2, LM/p0;->c:LM/J;

    sget-object p1, LM/p0;->d:LT/j1;

    invoke-virtual {p1, v2}, LT/j1;->c(Ljava/lang/Object;)Z

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v1
.end method

.method public D(LM/e0;)V
    .locals 2

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Lm/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lm/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM/p0;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, LM/p0;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, LM/p0;->a:I

    return-void
.end method

.method public E(LM/e0;)V
    .locals 6

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Lm/e;

    invoke-virtual {v0}, Lm/e;->e()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Lm/e;->f(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    iget-object v3, v0, Lm/e;->c:[Ljava/lang/Object;

    aget-object v4, v3, v1

    sget-object v5, Lm/e;->e:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    aput-object v5, v3, v1

    iput-boolean v2, v0, Lm/e;->a:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Lm/k;

    invoke-virtual {v0, p1}, Lm/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM/p0;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput v0, p1, LM/p0;->a:I

    const/4 v0, 0x0

    iput-object v0, p1, LM/p0;->b:LM/J;

    iput-object v0, p1, LM/p0;->c:LM/J;

    sget-object v0, LM/p0;->d:LT/j1;

    invoke-virtual {v0, p1}, LT/j1;->c(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public a(LM/e0;LM/J;)V
    .locals 2

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Lm/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lm/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM/p0;

    if-nez v1, :cond_0

    invoke-static {}, LM/p0;->a()LM/p0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lm/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v1, LM/p0;->c:LM/J;

    iget p1, v1, LM/p0;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v1, LM/p0;->a:I

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->c(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v1, v0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iget-object v1, v1, Landroidx/fragment/app/r;->d:Le/j;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->d(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->e(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->f(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public g(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->g(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public h(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->h(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public i(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v1, v0, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    iget-object v1, v1, Landroidx/fragment/app/r;->d:Le/j;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->i(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public j(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->j(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->k(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public l(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->l(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public m(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->m(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public n(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->n(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public o(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->o(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public p(Z)V
    .locals 2

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->p:Landroidx/fragment/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/o;->j()Landroidx/fragment/app/E;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/E;->k:LG/a;

    invoke-virtual {v0, v1}, LG/a;->p(Z)V

    :cond_0
    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public q(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, LK/a;

    iget-object v0, v0, LK/a;->c:Lm/l;

    iget v1, v0, Lm/l;->c:I

    if-lez v1, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loaders:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, v0, Lm/l;->c:I

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lm/l;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, v0, Lm/l;->a:[I

    aget p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public r(I)V
    .locals 4

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    :cond_0
    array-length v2, v0

    if-lt p1, v2, :cond_2

    array-length v2, v0

    :goto_0
    if-gt v2, p1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    iput-object p1, p0, LG/a;->b:Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LG/a;->b:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public s(IIII)Landroid/view/View;
    .locals 9

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, LM/M;

    invoke-virtual {v0}, LM/M;->d()I

    move-result v1

    invoke-virtual {v0}, LM/M;->c()I

    move-result v2

    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    iget v5, v0, LM/M;->a:I

    packed-switch v5, :pswitch_data_0

    iget-object v5, v0, LM/M;->b:LM/O;

    invoke-virtual {v5, p1}, LM/O;->u(I)Landroid/view/View;

    move-result-object v5

    goto :goto_2

    :pswitch_0
    iget-object v5, v0, LM/M;->b:LM/O;

    invoke-virtual {v5, p1}, LM/O;->u(I)Landroid/view/View;

    move-result-object v5

    :goto_2
    invoke-virtual {v0, v5}, LM/M;->b(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v0, v5}, LM/M;->a(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v8, LM/o0;

    iput v1, v8, LM/o0;->b:I

    iput v2, v8, LM/o0;->c:I

    iput v6, v8, LM/o0;->d:I

    iput v7, v8, LM/o0;->e:I

    if-eqz p3, :cond_1

    iput p3, v8, LM/o0;->a:I

    invoke-virtual {v8}, LM/o0;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    if-eqz p4, :cond_2

    iput p4, v8, LM/o0;->a:I

    invoke-virtual {v8}, LM/o0;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v5

    :cond_2
    add-int/2addr p1, v3

    goto :goto_1

    :cond_3
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, LG/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LG/a;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Ljava/lang/CharSequence;IILandroidx/emoji2/text/l;)Z
    .locals 7

    const/4 v0, 0x1

    iget v1, p4, Landroidx/emoji2/text/l;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/c;

    invoke-virtual {p4}, Landroidx/emoji2/text/l;->c()LF/a;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, LF/c;->a(I)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, v4, LF/c;->d:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    iget v4, v4, LF/c;->a:I

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/emoji2/text/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    iget-object p1, v1, Landroidx/emoji2/text/c;->a:Landroid/text/TextPaint;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, Lr/e;->a:I

    invoke-static {p1, p2}, Lr/d;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    iput p1, p4, Landroidx/emoji2/text/l;->c:I

    :cond_4
    iget p1, p4, Landroidx/emoji2/text/l;->c:I

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public w(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, LM/M;

    invoke-virtual {v0}, LM/M;->d()I

    move-result v1

    invoke-virtual {v0}, LM/M;->c()I

    move-result v2

    invoke-virtual {v0, p1}, LM/M;->b(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, p1}, LM/M;->a(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, LM/o0;

    iput v1, v0, LM/o0;->b:I

    iput v2, v0, LM/o0;->c:I

    iput v3, v0, LM/o0;->d:I

    iput p1, v0, LM/o0;->e:I

    const/16 p1, 0x6003

    iput p1, v0, LM/o0;->a:I

    invoke-virtual {v0}, LM/o0;->a()Z

    move-result p1

    return p1
.end method

.method public x(II)V
    .locals 3

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, LG/a;->r(I)V

    iget-object v1, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM/l0;

    iget v2, v1, LM/l0;->a:I

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, p2

    iput v2, v1, LM/l0;->a:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public y(II)V
    .locals 5

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, LG/a;->r(I)V

    iget-object v1, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p2

    array-length v3, v1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM/l0;

    iget v3, v2, LM/l0;->a:I

    if-ge v3, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v3, v0, :cond_3

    iget-object v2, p0, LG/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sub-int/2addr v3, p2

    iput v3, v2, LM/l0;->a:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public z(Lh/a;)V
    .locals 3

    iget-object v0, p0, LG/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/q;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/q;->b(Lh/a;)Lh/f;

    move-result-object p1

    iget-object v0, v0, Landroidx/emoji2/text/q;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, LG/a;->c:Ljava/lang/Object;

    check-cast p1, Le/x;

    iget-object v0, p1, Le/x;->w:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p1, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Le/x;->x:Le/o;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Le/x;->y:Ly/V;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly/V;->b()V

    :cond_1
    iget-object v0, p1, Le/x;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Ly/N;->a(Landroid/view/View;)Ly/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ly/V;->a(F)V

    iput-object v0, p1, Le/x;->y:Ly/V;

    new-instance v1, Le/q;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Le/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ly/V;->d(Ly/W;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Le/x;->u:Lh/a;

    iget-object v0, p1, Le/x;->A:Landroid/view/ViewGroup;

    sget-object v1, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ly/B;->c(Landroid/view/View;)V

    invoke-virtual {p1}, Le/x;->O()V

    return-void
.end method
