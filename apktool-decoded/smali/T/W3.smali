.class public final synthetic LT/W3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:Landroid/app/ActivityManager;

.field public final synthetic b:LT/l4;

.field public final synthetic c:LI0/l;

.field public final synthetic d:LI0/k;

.field public final synthetic e:LI0/l;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager;LT/l4;LI0/l;LI0/k;LI0/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/W3;->a:Landroid/app/ActivityManager;

    iput-object p2, p0, LT/W3;->b:LT/l4;

    iput-object p3, p0, LT/W3;->c:LI0/l;

    iput-object p4, p0, LT/W3;->d:LI0/k;

    iput-object p5, p0, LT/W3;->e:LI0/l;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LT/W3;->a:Landroid/app/ActivityManager;

    iget-object v1, p0, LT/W3;->b:LT/l4;

    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v2, "QuickAccessFloater"

    const-string v3, "Gesto 3 dedos: task removida "

    :try_start_0
    const-class v4, Landroid/app/ActivityManager;

    const-string v5, "removeTask"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget v5, v1, LT/l4;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LT/l4;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (taskId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, LT/l4;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "goToLastApp: removeTask falhou: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, LT/W3;->c:LI0/l;

    iget-object v0, v0, LI0/l;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LT/W3;->d:LI0/k;

    iget v2, v0, LI0/k;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, LI0/k;->a:I

    if-gtz v2, :cond_1

    iget-object v0, p0, LT/W3;->e:LI0/l;

    iget-object v0, v0, LI0/l;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    :cond_0
    const-string v0, "dlg"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :cond_2
    const-string v0, "tileView"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method
