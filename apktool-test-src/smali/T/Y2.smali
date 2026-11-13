.class public final synthetic LT/Y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/widget/Button;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, LT/Y2;->a:Lcom/ex/auto/MainActivity;

    iput-object p5, p0, LT/Y2;->b:Ljava/lang/String;

    iput-object p1, p0, LT/Y2;->c:Landroid/widget/Button;

    iput-object p3, p0, LT/Y2;->d:Landroid/widget/TextView;

    iput-object p6, p0, LT/Y2;->e:Ljava/lang/String;

    iput-object p7, p0, LT/Y2;->f:Ljava/lang/String;

    iput-object p8, p0, LT/Y2;->g:Ljava/lang/String;

    iput-object p2, p0, LT/Y2;->h:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v3, p0, LT/Y2;->a:Lcom/ex/auto/MainActivity;

    iget-object v6, p0, LT/Y2;->b:Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/ex/auto/MainActivity;->n0(Ljava/lang/String;)LT/i3;

    move-result-object v1

    new-instance v2, Lv0/a;

    invoke-direct {v2, v1, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lv0/a;

    invoke-direct {v2, v0, v1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object v10, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v11, LT/O2;

    iget-object v7, p0, LT/Y2;->f:Ljava/lang/String;

    iget-object v8, p0, LT/Y2;->g:Ljava/lang/String;

    iget-object v9, p0, LT/Y2;->h:Landroid/widget/Button;

    iget-object v1, p0, LT/Y2;->c:Landroid/widget/Button;

    iget-object v4, p0, LT/Y2;->d:Landroid/widget/TextView;

    iget-object v5, p0, LT/Y2;->e:Ljava/lang/String;

    move-object v0, v11

    invoke-direct/range {v0 .. v9}, LT/O2;-><init>(Landroid/widget/Button;Lv0/a;Lcom/ex/auto/MainActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
