.class public final Lb0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Lb0/c;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/c;->c:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lb0/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj/Q0;Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb0/c;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lb0/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lb0/c;->a:I

    iput-object p1, p0, Lb0/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb0/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lb0/c;->c:Ljava/lang/Object;

    iget-object v1, p0, Lb0/c;->b:Ljava/lang/Object;

    iget v2, p0, Lb0/c;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast v1, Lv/e;

    invoke-virtual {v1, v0}, Lv/e;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast v1, LA/e;

    iget-object v1, v1, LA/e;->b:Ljava/lang/Object;

    check-cast v1, Lq/b;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Lq/b;->e(Landroid/graphics/Typeface;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast v1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    check-cast v0, Lj/Q0;

    iget-object v2, v0, Lj/Q0;->b:Ljava/lang/Object;

    check-cast v2, Lr0/k;

    invoke-virtual {v2, v1}, Lr0/k;->g(Z)V

    iget-object v0, v0, Lj/Q0;->b:Ljava/lang/Object;

    check-cast v0, Lr0/k;

    iput-boolean v1, v0, Lr0/k;->i:Z

    return-void

    :pswitch_2
    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LE/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LE/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ly/N;->a:Ljava/util/WeakHashMap;

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p0}, Ly/y;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
