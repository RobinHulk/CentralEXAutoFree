.class public final synthetic LT/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:LI0/i;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:LT/J2;

.field public final synthetic d:Landroid/widget/CheckBox;

.field public final synthetic e:LT/h4;


# direct methods
.method public synthetic constructor <init>(LI0/i;Landroid/widget/TextView;LT/J2;Landroid/widget/CheckBox;LT/h4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/i4;->a:LI0/i;

    iput-object p2, p0, LT/i4;->b:Landroid/widget/TextView;

    iput-object p3, p0, LT/i4;->c:LT/J2;

    iput-object p4, p0, LT/i4;->d:Landroid/widget/CheckBox;

    iput-object p5, p0, LT/i4;->e:LT/h4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object p1, p0, LT/i4;->a:LI0/i;

    iget-boolean v0, p1, LI0/i;->a:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, LI0/i;->a:Z

    if-nez v0, :cond_0

    const-string v0, "\ud83d\udd12"

    goto :goto_0

    :cond_0
    const-string v0, "\ud83d\udd13"

    :goto_0
    iget-object v1, p0, LT/i4;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p1, LI0/i;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, LT/i4;->c:LT/J2;

    invoke-virtual {v1, v0}, LT/J2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p1, LI0/i;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, LT/i4;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, LT/i4;->e:LT/h4;

    invoke-virtual {v0, p1}, LT/h4;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
