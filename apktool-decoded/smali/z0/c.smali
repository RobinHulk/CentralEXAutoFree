.class public final Lz0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/i;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lz0/i;

.field public final b:Lz0/g;


# direct methods
.method public constructor <init>(Lz0/i;Lz0/g;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/c;->a:Lz0/i;

    iput-object p2, p0, Lz0/c;->b:Lz0/g;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-eq p0, p1, :cond_6

    instance-of v0, p1, Lz0/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    check-cast p1, Lz0/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    move-object v2, p1

    move v3, v0

    :goto_0
    iget-object v2, v2, Lz0/c;->a:Lz0/i;

    instance-of v4, v2, Lz0/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v2, Lz0/c;

    goto :goto_1

    :cond_0
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_5

    move-object v2, p0

    :goto_2
    iget-object v2, v2, Lz0/c;->a:Lz0/i;

    instance-of v4, v2, Lz0/c;

    if-eqz v4, :cond_1

    check-cast v2, Lz0/c;

    goto :goto_3

    :cond_1
    move-object v2, v5

    :goto_3
    if-nez v2, :cond_4

    if-ne v3, v0, :cond_7

    move-object v0, p0

    :goto_4
    iget-object v2, v0, Lz0/c;->b:Lz0/g;

    invoke-interface {v2}, Lz0/g;->getKey()Lz0/h;

    move-result-object v3

    invoke-virtual {p1, v3}, Lz0/c;->get(Lz0/h;)Lz0/g;

    move-result-object v3

    invoke-static {v3, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move p1, v1

    goto :goto_5

    :cond_2
    iget-object v0, v0, Lz0/c;->a:Lz0/i;

    instance-of v2, v0, Lz0/c;

    if-eqz v2, :cond_3

    check-cast v0, Lz0/c;

    goto :goto_4

    :cond_3
    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-static {v0, v2}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lz0/g;

    invoke-interface {v0}, Lz0/g;->getKey()Lz0/h;

    move-result-object v2

    invoke-virtual {p1, v2}, Lz0/c;->get(Lz0/h;)Lz0/g;

    move-result-object p1

    invoke-static {p1, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_5
    if-eqz p1, :cond_7

    goto :goto_6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public final fold(Ljava/lang/Object;LH0/p;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz0/c;->a:Lz0/i;

    invoke-interface {v0, p1, p2}, Lz0/i;->fold(Ljava/lang/Object;LH0/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lz0/c;->b:Lz0/g;

    invoke-interface {p2, p1, v0}, LH0/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lz0/h;)Lz0/g;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lz0/c;->b:Lz0/g;

    invoke-interface {v1, p1}, Lz0/i;->get(Lz0/h;)Lz0/g;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lz0/c;->a:Lz0/i;

    instance-of v1, v0, Lz0/c;

    if-eqz v1, :cond_1

    check-cast v0, Lz0/c;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lz0/i;->get(Lz0/h;)Lz0/g;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lz0/c;->a:Lz0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lz0/c;->b:Lz0/g;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final minusKey(Lz0/h;)Lz0/i;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz0/c;->b:Lz0/g;

    invoke-interface {v0, p1}, Lz0/i;->get(Lz0/h;)Lz0/g;

    move-result-object v1

    iget-object v2, p0, Lz0/c;->a:Lz0/i;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v2, p1}, Lz0/i;->minusKey(Lz0/h;)Lz0/i;

    move-result-object p1

    if-ne p1, v2, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    sget-object v1, Lz0/j;->a:Lz0/j;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lz0/c;

    invoke-direct {v1, p1, v0}, Lz0/c;-><init>(Lz0/i;Lz0/g;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lz0/b;->b:Lz0/b;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lz0/c;->fold(Ljava/lang/Object;LH0/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
