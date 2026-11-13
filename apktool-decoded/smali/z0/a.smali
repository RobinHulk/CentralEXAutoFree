.class public abstract Lz0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/g;


# instance fields
.field private final key:Lz0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/h;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz0/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/a;->key:Lz0/h;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;LH0/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LH0/p;",
            ")TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p0}, LH0/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lz0/h;)Lz0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lz0/g;",
            ">(",
            "Lz0/h;",
            ")TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lz0/g;->getKey()Lz0/h;

    move-result-object v0

    invoke-static {v0, p1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getKey()Lz0/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz0/h;"
        }
    .end annotation

    iget-object v0, p0, Lz0/a;->key:Lz0/h;

    return-object v0
.end method

.method public minusKey(Lz0/h;)Lz0/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/h;",
            ")",
            "Lz0/i;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lz0/g;->getKey()Lz0/h;

    move-result-object v0

    invoke-static {v0, p1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lz0/j;->a:Lz0/j;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public plus(Lz0/i;)Lz0/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz0/j;->a:Lz0/j;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lz0/b;->c:Lz0/b;

    invoke-interface {p1, p0, v0}, Lz0/i;->fold(Ljava/lang/Object;LH0/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz0/i;

    :goto_0
    return-object p1
.end method
