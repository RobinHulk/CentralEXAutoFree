.class public final synthetic LT/X2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/X2;->a:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, LT/X2;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget p1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object p1, p0, LT/X2;->a:Lcom/ex/auto/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, LT/c2;

    iget-boolean v0, p0, LT/X2;->b:Z

    const/16 v1, 0xe

    invoke-direct {p2, v0, p1, v1}, LT/c2;-><init>(ZLcom/ex/auto/MainActivity;I)V

    iget-object p1, p1, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
