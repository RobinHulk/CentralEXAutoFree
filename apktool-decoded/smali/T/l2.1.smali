.class public final synthetic LT/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, LT/l2;->a:I

    iput-object p1, p0, LT/l2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/l2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "result"

    iget-object v1, p0, LT/l2;->c:Ljava/lang/String;

    iget-object v2, p0, LT/l2;->b:Lcom/ex/auto/MainActivity;

    iget v3, p0, LT/l2;->a:I

    packed-switch v3, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {v2}, LT/Y;->E(Landroid/content/Context;)V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lcom/ex/auto/MainActivity;->c2(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lcom/ex/auto/MainActivity;->c2(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lcom/ex/auto/MainActivity;->c2(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lcom/ex/auto/MainActivity;->c2(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
