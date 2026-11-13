.class public final synthetic LT/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:LH0/l;

.field public final synthetic i:Z

.field public final synthetic j:Landroid/widget/Button;

.field public final synthetic k:LH0/l;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;IJJLandroid/widget/TextView;Ljava/lang/String;LH0/l;ZLandroid/widget/Button;LH0/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/b2;->a:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/b2;->b:Ljava/lang/String;

    iput p3, p0, LT/b2;->c:I

    iput-wide p4, p0, LT/b2;->d:J

    iput-wide p6, p0, LT/b2;->e:J

    iput-object p8, p0, LT/b2;->f:Landroid/widget/TextView;

    iput-object p9, p0, LT/b2;->g:Ljava/lang/String;

    iput-object p10, p0, LT/b2;->h:LH0/l;

    iput-boolean p11, p0, LT/b2;->i:Z

    iput-object p12, p0, LT/b2;->j:Landroid/widget/Button;

    iput-object p13, p0, LT/b2;->k:LH0/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v0, LT/t2;

    iget-object v2, p0, LT/b2;->a:Lcom/ex/auto/MainActivity;

    iget-object v6, p0, LT/b2;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v6, v1}, LT/t2;-><init>(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LT/E2;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v3, p0, LT/b2;->b:Ljava/lang/String;

    iget v4, p0, LT/b2;->c:I

    invoke-static {v3, v4, v0, v1}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, LT/b2;->d:J

    sub-long v10, v0, v7

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v12, LT/u2;

    iget-object v3, p0, LT/b2;->g:Ljava/lang/String;

    iget-object v8, p0, LT/b2;->j:Landroid/widget/Button;

    iget-object v9, p0, LT/b2;->k:LH0/l;

    iget-object v5, p0, LT/b2;->h:LH0/l;

    iget-boolean v7, p0, LT/b2;->i:Z

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, LT/u2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;LH0/l;Landroid/widget/TextView;ZLandroid/widget/Button;LH0/l;)V

    iget-wide v1, p0, LT/b2;->e:J

    sub-long/2addr v1, v10

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    :cond_0
    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
