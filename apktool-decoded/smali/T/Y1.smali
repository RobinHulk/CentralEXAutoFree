.class public final synthetic LT/Y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Landroid/widget/TextView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/Y1;->a:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/Y1;->b:Ljava/lang/String;

    iput-object p3, p0, LT/Y1;->c:Landroid/widget/TextView;

    iput p4, p0, LT/Y1;->d:I

    iput p5, p0, LT/Y1;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    const-string p1, "context"

    iget-object v0, p0, LT/Y1;->a:Lcom/ex/auto/MainActivity;

    invoke-static {v0, p1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "id"

    iget-object v1, p0, LT/Y1;->b:Ljava/lang/String;

    invoke-static {v1, p1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LT/Y;->W(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0}, LT/Y;->W(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    if-nez p1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    const-string v1, "favorite_cards_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v5, 0x0

    const/16 v7, 0x3e

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ids"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p1, :cond_1

    const-string v1, "\u2605"

    goto :goto_1

    :cond_1
    const-string v1, "\u2606"

    :goto_1
    iget-object v2, p0, LT/Y1;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    iget p1, p0, LT/Y1;->d:I

    goto :goto_2

    :cond_2
    iget p1, p0, LT/Y1;->e:I

    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, v0, Lcom/ex/auto/MainActivity;->J:I

    iget v1, v0, Lcom/ex/auto/MainActivity;->X:I

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->U0()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->T0()V

    :cond_3
    return-void
.end method
