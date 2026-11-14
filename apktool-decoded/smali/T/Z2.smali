.class public final synthetic LT/Z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LT/D;


# direct methods
.method public synthetic constructor <init>(LT/D;Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LT/Z2;->a:Lcom/ex/auto/MainActivity;

    iput-boolean p4, p0, LT/Z2;->b:Z

    iput-object p3, p0, LT/Z2;->c:Ljava/lang/String;

    iput-object p1, p0, LT/Z2;->d:LT/D;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-boolean p1, p0, LT/Z2;->b:Z

    if-eqz p1, :cond_0

    const v0, 0x7f0f01f3

    goto :goto_0

    :cond_0
    const v0, 0x7f0f01f2

    :goto_0
    iget-object v1, p0, LT/Z2;->a:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LT/k2;

    iget-object v3, p0, LT/Z2;->d:LT/D;

    invoke-direct {v2, p1, v1, v3}, LT/k2;-><init>(ZLcom/ex/auto/MainActivity;LT/D;)V

    iget-object p1, p0, LT/Z2;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Lcom/ex/auto/MainActivity;->l0(Ljava/lang/String;Ljava/lang/String;LH0/l;)V

    return-void
.end method
