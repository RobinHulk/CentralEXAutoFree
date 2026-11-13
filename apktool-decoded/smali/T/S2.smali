.class public final synthetic LT/S2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:LT/C;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;LT/C;I)V
    .locals 0

    iput p3, p0, LT/S2;->a:I

    iput-object p1, p0, LT/S2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/S2;->c:LT/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, LT/S2;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, p0, LT/S2;->c:LT/C;

    iget v3, p0, LT/S2;->a:I

    packed-switch v3, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    const-string v3, "escolhido"

    invoke-static {p1, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v2, LT/C;->a:I

    const/16 v3, 0x8

    invoke-static {v1, v2, p1, v0, v3}, LT/m;->f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;I)V

    iget-object p1, v1, Lcom/ex/auto/MainActivity;->k0:Le/i;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/i;->dismiss()V

    :cond_0
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->v0()V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    const/4 v3, 0x4

    iget v2, v2, LT/C;->a:I

    invoke-static {v1, v2, v0, p1, v3}, LT/m;->f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;I)V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
