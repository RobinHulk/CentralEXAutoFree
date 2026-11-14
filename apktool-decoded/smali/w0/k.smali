.class public abstract Lw0/k;
.super Lw0/j;
.source "SourceFile"


# direct methods
.method public static V(Ljava/lang/Iterable;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    :goto_0
    return p0
.end method
