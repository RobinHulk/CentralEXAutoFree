.class public final Lj/U;
.super Lq/b;
.source "SourceFile"


# instance fields
.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/lang/ref/WeakReference;

.field public final synthetic k:Lj/Z;


# direct methods
.method public constructor <init>(Lj/Z;IILjava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/U;->k:Lj/Z;

    iput p2, p0, Lj/U;->h:I

    iput p3, p0, Lj/U;->i:I

    iput-object p4, p0, Lj/U;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 0

    return-void
.end method

.method public final e(Landroid/graphics/Typeface;)V
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lj/U;->h:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Lj/U;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v1, v0}, Lj/Y;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lj/U;->k:Lj/Z;

    iget-boolean v1, v0, Lj/Z;->m:Z

    if-eqz v1, :cond_3

    iput-object p1, v0, Lj/Z;->l:Landroid/graphics/Typeface;

    iget-object v1, p0, Lj/U;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    sget-object v2, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ly/A;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v0, v0, Lj/Z;->j:I

    new-instance v2, Ld0/a;

    invoke-direct {v2, v1, p1, v0}, Ld0/a;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget v0, v0, Lj/Z;->j:I

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    :goto_1
    return-void
.end method
