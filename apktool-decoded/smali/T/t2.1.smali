.class public final synthetic LT/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;I)V
    .locals 0

    iput p3, p0, LT/t2;->a:I

    iput-object p1, p0, LT/t2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/t2;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, LT/t2;->c:Landroid/widget/TextView;

    iget-object v1, p0, LT/t2;->b:Lcom/ex/auto/MainActivity;

    iget v2, p0, LT/t2;->a:I

    check-cast p1, Ljava/lang/String;

    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    const-string v2, "txt"

    invoke-static {p1, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/e3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, LT/e3;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_0
    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    const-string v2, "progress"

    invoke-static {p1, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/z;

    const/16 v4, 0xb

    invoke-direct {v3, v1, v0, p1, v4}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
