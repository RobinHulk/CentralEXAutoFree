.class public final synthetic LT/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/widget/Button;

.field public final synthetic f:Landroid/widget/Button;

.field public final synthetic g:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, LT/f3;->a:Lcom/ex/auto/MainActivity;

    iput-object p5, p0, LT/f3;->b:Ljava/lang/String;

    iput-object p6, p0, LT/f3;->c:Ljava/lang/String;

    iput-object p7, p0, LT/f3;->d:Ljava/lang/String;

    iput-object p1, p0, LT/f3;->e:Landroid/widget/Button;

    iput-object p2, p0, LT/f3;->f:Landroid/widget/Button;

    iput-object p3, p0, LT/f3;->g:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, p0, LT/f3;->a:Lcom/ex/auto/MainActivity;

    iget-object v1, p0, LT/f3;->b:Ljava/lang/String;

    iget-object v2, p0, LT/f3;->c:Ljava/lang/String;

    iget-object v3, p0, LT/f3;->d:Ljava/lang/String;

    iget-object v4, p0, LT/f3;->e:Landroid/widget/Button;

    iget-object v5, p0, LT/f3;->f:Landroid/widget/Button;

    iget-object v6, p0, LT/f3;->g:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    return-void
.end method
