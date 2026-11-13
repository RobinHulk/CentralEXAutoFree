.class public final LN0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:LF0/b;


# direct methods
.method public constructor <init>(LF0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/e;->c:LF0/b;

    const/4 p1, -0x2

    iput p1, p0, LN0/e;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, LN0/e;->b:I

    const/4 v1, -0x2

    iget-object v2, p0, LN0/e;->c:LF0/b;

    if-ne v0, v1, :cond_0

    iget-object v0, v2, LF0/b;->b:Ljava/lang/Object;

    check-cast v0, LO0/f;

    invoke-virtual {v0}, LO0/f;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LO0/g;->h:LO0/g;

    iget-object v1, p0, LN0/e;->a:Ljava/lang/Object;

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LO0/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LN0/e;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, LN0/e;->b:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, LN0/e;->b:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, LN0/e;->a()V

    :cond_0
    iget v0, p0, LN0/e;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, LN0/e;->b:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, LN0/e;->a()V

    :cond_0
    iget v0, p0, LN0/e;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, LN0/e;->a:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v0, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, LN0/e;->b:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
