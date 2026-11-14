.class public final synthetic LT/B2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/B2;->a:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, LT/B2;->b:Z

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-string v0, "result"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Falha no ADB local"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    iget-object v0, p0, LT/B2;->a:Lcom/ex/auto/MainActivity;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "adb_gpio_enabled"

    iget-boolean v2, p0, LT/B2;->b:Z

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->c1()V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1
.end method
