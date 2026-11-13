.class public final synthetic LT/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LT/g2;->a:I

    iput-object p1, p0, LT/g2;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/g2;->c:Ljava/lang/Object;

    iput-object p3, p0, LT/g2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget p1, p0, LT/g2;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LT/g2;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v0, p1, Lcom/ex/auto/MainActivity;->S:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, LT/A2;

    iget-object v2, p0, LT/g2;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-direct {v1, p1, v2, p2}, LT/A2;-><init>(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    iget-object p1, p0, LT/g2;->c:Ljava/lang/Object;

    check-cast p1, LH0/p;

    invoke-interface {p1, v0, v1}, LH0/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, LT/g2;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v0, p1, Lcom/ex/auto/MainActivity;->S:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, LT/g2;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, LT/g2;->d:Ljava/lang/Object;

    check-cast p1, LH0/l;

    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
