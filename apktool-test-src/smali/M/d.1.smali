.class public final LM/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/a;


# static fields
.field public static e:LM/d;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LM/d;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LM/d;->d:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LM/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM/E;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LM/d;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LM/d;->b:Ljava/lang/Object;

    .line 6
    new-instance p1, LM/c;

    invoke-direct {p1}, LM/c;-><init>()V

    iput-object p1, p0, LM/d;->c:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LM/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x3

    iput v0, p0, LM/d;->a:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/google/android/material/datepicker/l;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030218

    .line 20
    invoke-static {p1, v1, v0}, Le/a;->O(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 21
    sget-object v1, LY/a;->j:[I

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 24
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/c;->b(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 26
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/c;->b(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    move-result-object v1

    iput-object v1, p0, LM/d;->d:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 28
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/c;->b(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    const/4 v1, 0x4

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 30
    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/c;->b(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    const/4 v1, 0x5

    .line 31
    invoke-static {p1, v0, v1}, Le/a;->y(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v3, 0x7

    .line 32
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 33
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/c;->b(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    move-result-object v3

    iput-object v3, p0, LM/d;->b:Ljava/lang/Object;

    const/4 v3, 0x6

    .line 34
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 35
    invoke-static {p1, v3}, Lcom/google/android/material/datepicker/c;->b(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    const/16 v3, 0x8

    .line 36
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 37
    invoke-static {p1, v2}, Lcom/google/android/material/datepicker/c;->b(Landroid/content/Context;I)Lcom/google/android/material/datepicker/c;

    move-result-object p1

    iput-object p1, p0, LM/d;->c:Ljava/lang/Object;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 39
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LM/d;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, LM/d;->b:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, LM/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LM/d;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Le/G;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, LM/d;->d:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, LM/d;->b:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, LM/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LM/d;->a:I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM/d;->b:Ljava/lang/Object;

    iput-object p2, p0, LM/d;->c:Ljava/lang/Object;

    iput-object p3, p0, LM/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public static v(Landroid/content/Context;Landroid/util/AttributeSet;[II)LM/d;
    .locals 2

    new-instance v0, LM/d;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LM/d;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/o;)V
    .locals 3

    iget-object v0, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/o;->k:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/view/View;IZ)V
    .locals 2

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, LM/E;

    iget-object v0, v0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, LM/d;->o(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v1, LM/c;

    invoke-virtual {v1, p2, p3}, LM/c;->e(IZ)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, LM/d;->s(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)LM/e0;

    return-void
.end method

.method public c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, LM/E;

    iget-object v0, v0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, LM/d;->o(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v1, LM/c;

    invoke-virtual {v1, p2, p4}, LM/c;->e(IZ)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, LM/d;->s(Landroid/view/View;)V

    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)LM/e0;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, LM/e0;->k()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p4}, LM/e0;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Called attach on a child which is not detached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget v1, p4, LM/e0;->j:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p4, LM/e0;->j:I

    :cond_4
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public d(I)V
    .locals 4

    invoke-virtual {p0, p1}, LM/d;->o(I)I

    move-result p1

    iget-object v0, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v0, LM/c;

    invoke-virtual {v0, p1}, LM/c;->f(I)Z

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, LM/E;

    iget-object v0, v0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)LM/e0;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LM/e0;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LM/e0;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called detach on an already detached child "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, LM/e0;->a(I)V

    :cond_2
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public e(Ljava/lang/String;)Landroidx/fragment/app/o;
    .locals 1

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/K;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ljava/lang/String;)Landroidx/fragment/app/o;
    .locals 3

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/K;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    iget-object v2, v1, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/o;->t:Landroidx/fragment/app/E;

    iget-object v1, v1, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v1, p1}, LM/d;->f(Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/K;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public h(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, LM/d;->o(I)I

    move-result p1

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, LM/E;

    iget-object v0, v0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public i()I
    .locals 2

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, LM/E;

    iget-object v0, v0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public j(I)Landroid/content/res/ColorStateList;
    .locals 3

    iget-object v0, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v1}, Le/a;->w(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public k(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, LM/d;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1}, Le/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public l(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lj/s;->a()Lj/s;

    move-result-object v0

    iget-object v1, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lj/s;->a:Lj/M0;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3}, Lj/M0;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public m(IILj/U;)Landroid/graphics/Typeface;
    .locals 8

    iget-object v0, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 p1, 0x0

    if-nez v3, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, LM/d;->d:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, LM/d;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/TypedValue;

    sget-object v0, Lq/n;->a:Ljava/lang/ThreadLocal;

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lq/n;->a(Landroid/content/Context;ILandroid/util/TypedValue;ILq/b;Z)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public n()Ljava/util/List;
    .locals 3

    iget-object v0, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o(I)I
    .locals 5

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v1, LM/E;

    iget-object v1, v1, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v3, LM/c;

    invoke-virtual {v3, v2}, LM/c;->b(I)I

    move-result v4

    sub-int v4, v2, v4

    sub-int v4, p1, v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, LM/c;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v4

    goto :goto_0

    :cond_3
    return v0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->d()V

    return-void
.end method

.method public q(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, LM/E;

    iget-object v0, v0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, LM/E;

    iget-object v0, v0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public s(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, LM/E;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)LM/e0;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v1, p1, LM/e0;->q:I

    const/4 v2, -0x1

    iget-object v3, p1, LM/e0;->a:Landroid/view/View;

    if-eq v1, v2, :cond_0

    iput v1, p1, LM/e0;->p:I

    goto :goto_0

    :cond_0
    sget-object v1, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Ly/y;->c(Landroid/view/View;)I

    move-result v1

    iput v1, p1, LM/e0;->p:I

    :goto_0
    iget-object v0, v0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    iput v2, p1, LM/e0;->q:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object p1, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v3, v2}, Ly/y;->s(Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public t(Landroidx/fragment/app/K;)V
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    iget-object v1, v0, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    iget-object v2, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added fragment to active set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LM/d;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v1, LM/c;

    invoke-virtual {v1}, LM/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public u(Landroidx/fragment/app/K;)V
    .locals 3

    iget-object p1, p1, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    iget-boolean v0, p1, Landroidx/fragment/app/o;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/G;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/G;->b(Landroidx/fragment/app/o;)V

    :cond_0
    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/K;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removed fragment from active set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, LM/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public x(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, LM/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LM/d;->b:Ljava/lang/Object;

    check-cast v0, LM/E;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)LM/e0;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v1, p1, LM/e0;->p:I

    iget-object v0, v0, LM/E;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p1, LM/e0;->q:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Ly/N;->a:Ljava/util/WeakHashMap;

    iget-object v0, p1, LM/e0;->a:Landroid/view/View;

    invoke-static {v0, v1}, Ly/y;->s(Landroid/view/View;I)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p1, LM/e0;->p:I

    :cond_1
    return-void
.end method
