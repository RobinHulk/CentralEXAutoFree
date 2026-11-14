.class public final synthetic LT/D2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;Ljava/util/List;)V
    .locals 0

    iput p1, p0, LT/D2;->a:I

    iput-object p2, p0, LT/D2;->b:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, LT/D2;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "getString(...)"

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, LT/D2;->c:Ljava/util/List;

    iget-object v4, p0, LT/D2;->b:Lcom/ex/auto/MainActivity;

    iget v5, p0, LT/D2;->a:I

    packed-switch v5, :pswitch_data_0

    iget-object v5, v4, Lcom/ex/auto/MainActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v4, Lcom/ex/auto/MainActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "/data/data/com.aurora.store/cache/Downloads"

    invoke-static {v6, v7}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const/16 v8, 0x2f

    if-eqz v7, :cond_1

    new-array v7, v2, [C

    aput-char v8, v7, v1

    invoke-static {v6, v7}, LO0/j;->Z0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v7

    new-array v9, v2, [C

    aput-char v8, v9, v1

    invoke-static {v7, v9}, LO0/j;->N0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-static {v7, v8}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    move-object v6, v7

    :goto_1
    const-string v7, " (Aurora)"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    invoke-static {v6, v8}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const v1, 0x7f0f023f

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v1}, Lcom/ex/auto/MainActivity;->I1(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v1, v4, Lcom/ex/auto/MainActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v4, Lcom/ex/auto/MainActivity;->z:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v3}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv0/a;

    iget-object v6, v6, Lv0/a;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/a;

    iget-object v3, v3, Lv0/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const v2, 0x7f0f0248

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Lcom/ex/auto/MainActivity;->I1(Ljava/util/List;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
