.class public final synthetic LT/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/j2;->a:Lcom/ex/auto/MainActivity;

    iput-boolean p2, p0, LT/j2;->b:Z

    iput-boolean p3, p0, LT/j2;->c:Z

    iput-boolean p4, p0, LT/j2;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const/4 v0, 0x0

    iget-object v1, p0, LT/j2;->a:Lcom/ex/auto/MainActivity;

    iget-boolean v2, p0, LT/j2;->b:Z

    iget-boolean v3, p0, LT/j2;->c:Z

    iget-boolean v4, p0, LT/j2;->d:Z

    invoke-static {v1, v2, v3, v4, v0}, LT/m;->x(Landroid/content/Context;ZZZLH0/l;)Z

    move-result v0

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/c2;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
