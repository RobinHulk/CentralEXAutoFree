.class public final LC/b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LC/b;->a:I

    iput-object p1, p0, LC/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget v0, p0, LC/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC/b;->b:Ljava/lang/Object;

    check-cast v0, Lj/E0;

    iget-object v1, v0, Lj/E0;->y:Lj/A;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj/E0;->f()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LC/b;->b:Ljava/lang/Object;

    check-cast v0, Lj/a1;

    const/4 v1, 0x1

    iput-boolean v1, v0, LC/c;->a:Z

    invoke-virtual {v0}, Lj/a1;->notifyDataSetChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onInvalidated()V
    .locals 2

    iget v0, p0, LC/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC/b;->b:Ljava/lang/Object;

    check-cast v0, Lj/E0;

    invoke-virtual {v0}, Lj/E0;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, LC/b;->b:Ljava/lang/Object;

    check-cast v0, Lj/a1;

    const/4 v1, 0x0

    iput-boolean v1, v0, LC/c;->a:Z

    invoke-virtual {v0}, Lj/a1;->notifyDataSetInvalidated()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
