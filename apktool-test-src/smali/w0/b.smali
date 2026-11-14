.class public Lw0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lw0/b;->a:I

    const-string v0, "iterator"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw0/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lw0/b;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lw0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/b;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :pswitch_0
    iget v0, p0, Lw0/b;->b:I

    iget-object v1, p0, Lw0/b;->c:Ljava/lang/Object;

    check-cast v1, Lw0/e;

    invoke-virtual {v1}, Lw0/e;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lw0/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lw0/t;

    iget v1, p0, Lw0/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lw0/b;->b:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lw0/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lw0/t;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {}, Lw0/j;->U()V

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lw0/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lw0/b;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lw0/b;->b:I

    iget-object v1, p0, Lw0/b;->c:Ljava/lang/Object;

    check-cast v1, Lw0/e;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Lw0/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
