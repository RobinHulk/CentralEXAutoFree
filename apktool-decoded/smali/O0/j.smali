.class public abstract LO0/j;
.super LO0/s;
.source "SourceFile"


# direct methods
.method public static final A0(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_5

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-instance v1, LL0/c;

    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_3

    move v0, v2

    :cond_3
    const/4 v2, 0x1

    invoke-direct {v1, p2, v0, v2}, LL0/a;-><init>(III)V

    instance-of v0, p0, Ljava/lang/String;

    iget v1, v1, LL0/a;->b:I

    if-eqz v0, :cond_6

    if-le p2, v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v2, 0x0

    move v3, p2

    move-object v5, p1

    move v7, p3

    invoke-static/range {v2 .. v7}, LO0/s;->t0(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    move p0, p2

    goto :goto_5

    :cond_5
    if-eq p2, v1, :cond_9

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    if-le p2, v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, p0, p2, v0, p3}, LO0/j;->J0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    if-eq p2, v1, :cond_9

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    const/4 p0, -0x1

    :goto_5
    return p0
.end method

.method public static synthetic B0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v1

    :cond_1
    invoke-static {p0, p1, p2, p3}, LO0/j;->A0(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static C0(Ljava/lang/String;CIZI)I
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v1

    :cond_1
    const-string p4, "<this>"

    invoke-static {p0, p4}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p4, 0x1

    new-array p4, p4, [C

    aput-char p1, p4, v1

    invoke-static {p0, p4, p2, p3}, LO0/j;->D0(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final D0(Ljava/lang/CharSequence;[CIZ)I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length p3, p1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    aget-char p1, p1, p3

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array has more than one element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Array is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v0, 0x0

    if-gez p2, :cond_3

    move p2, v0

    :cond_3
    invoke-static {p0}, LO0/j;->z0(Ljava/lang/CharSequence;)I

    move-result v1

    if-gt p2, v1, :cond_6

    :goto_0
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    array-length v3, p1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-char v5, p1, v4

    invoke-static {v5, v2, p3}, LA/b;->v(CCZ)Z

    move-result v5

    if-eqz v5, :cond_4

    return p2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eq p2, v1, :cond_6

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method public static E0(Ljava/lang/CharSequence;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, LA/b;->I(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static F0(Ljava/lang/String;C)I
    .locals 2

    invoke-static {p0}, LO0/j;->z0(Ljava/lang/CharSequence;)I

    move-result v0

    const-string v1, "<this>"

    invoke-static {p0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0
.end method

.method public static G0(Ljava/lang/CharSequence;)LN0/c;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\r"

    const-string v1, "\r\n"

    const-string v2, "\n"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, LO0/j;->I0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)LO0/c;

    move-result-object v0

    new-instance v1, LO0/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LO0/k;-><init>(Ljava/lang/Object;I)V

    new-instance p0, LN0/c;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, LN0/c;-><init>(LN0/f;Ljava/lang/Object;I)V

    return-object p0
.end method

.method public static H0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LO0/j;->G0(Ljava/lang/CharSequence;)LN0/c;

    move-result-object p0

    invoke-static {p0}, LN0/h;->n0(LN0/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static I0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)LO0/c;
    .locals 3

    invoke-static {p3}, LO0/j;->L0(I)V

    invoke-static {p1}, Lw0/h;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, LO0/c;

    new-instance v1, LO0/t;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, LO0/t;-><init>(Ljava/lang/Object;ZI)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, LO0/c;-><init>(Ljava/lang/CharSequence;IILH0/p;)V

    return-object v0
.end method

.method public static final J0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p2, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-ltz v1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p4}, LA/b;->v(CCZ)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static K0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final L0(I)V
    .locals 2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Limit must be non-negative, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final M0(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7

    invoke-static {p0}, LO0/j;->L0(I)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, LO0/j;->A0(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    goto :goto_2

    :cond_0
    if-lez p0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    if-eqz v4, :cond_3

    if-le p0, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, p0

    :cond_3
    :goto_1
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    if-eqz v4, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v6, p0, -0x1

    if-eq v1, v6, :cond_6

    :cond_5
    invoke-static {p1, p2, v0, p3}, LO0/j;->A0(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-ne v1, v2, :cond_4

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_7
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static N0(Ljava/lang/String;[C)Ljava/util/List;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-char p1, p1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p1, v2}, LO0/j;->M0(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {v2}, LO0/j;->L0(I)V

    new-instance v0, LO0/c;

    new-instance v1, LO0/t;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, LO0/t;-><init>(Ljava/lang/Object;ZI)V

    invoke-direct {v0, p0, v2, v2, v1}, LO0/c;-><init>(Ljava/lang/CharSequence;IILH0/p;)V

    new-instance p1, LN0/j;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LN0/j;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, LN0/j;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v1, p1

    check-cast v1, LO0/b;

    invoke-virtual {v1}, LO0/b;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LO0/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL0/c;

    invoke-static {p0, v1}, LO0/j;->P0(Ljava/lang/CharSequence;LL0/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, p0, v0, v2}, LO0/j;->M0(ILjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p0, p1, v2, v2}, LO0/j;->I0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)LO0/c;

    move-result-object p1

    new-instance v0, LN0/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LN0/j;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, LN0/j;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    move-object v1, v0

    check-cast v1, LO0/b;

    invoke-virtual {v1}, LO0/b;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, LO0/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL0/c;

    invoke-static {p0, v1}, LO0/j;->P0(Ljava/lang/CharSequence;LL0/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public static final P0(Ljava/lang/CharSequence;LL0/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, LL0/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iget p1, p1, LL0/a;->a:I

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Q0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1, v0}, LO0/j;->C0(Ljava/lang/String;CIZI)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "substring(...)"

    invoke-static {p2, p0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static R0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1, v0}, LO0/j;->B0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static S0(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LO0/j;->F0(Ljava/lang/String;C)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static T0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1, v0}, LO0/j;->B0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static U0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    invoke-static {p0, v0}, LO0/j;->F0(Ljava/lang/String;C)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static V0(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Requested character count "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is less than zero."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static W0(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    sub-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Requested character count "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is less than zero."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v2, v0, :cond_4

    if-nez v3, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, LA/b;->I(C)Z

    move-result v4

    if-nez v3, :cond_2

    if-nez v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    add-int/2addr v0, v1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static Y0(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, LA/b;->I(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    :cond_0
    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public static varargs Z0(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_4

    :goto_0
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    aget-char v7, p1, v6

    if-ne v3, v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_2
    if-ltz v6, :cond_3

    if-gez v2, :cond_2

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_4

    :cond_4
    :goto_3
    const-string p0, ""

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p0, p1, v1, p2, v0}, LO0/j;->B0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    if-ltz p0, :cond_8

    :goto_0
    move v1, v2

    goto :goto_5

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-instance v4, LL0/c;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v3, v5, :cond_1

    move v3, v5

    :cond_1
    invoke-direct {v4, v1, v3, v2}, LL0/a;-><init>(III)V

    instance-of v3, p0, Ljava/lang/String;

    iget v4, v4, LL0/a;->b:I

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    if-gez v4, :cond_2

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_1
    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    move-object v9, p0

    check-cast v9, Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v5, 0x0

    move v6, v0

    move v10, p2

    invoke-static/range {v5 .. v10}, LO0/s;->t0(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    if-eq v0, v4, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-gez v4, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p1, p0, v0, v3, p2}, LO0/j;->J0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    if-eq v0, v4, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    const/4 v0, -0x1

    :goto_4
    if-ltz v0, :cond_8

    goto :goto_0

    :cond_8
    :goto_5
    return v1
.end method

.method public static y0(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0x3f

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2, v0}, LO0/j;->C0(Ljava/lang/String;CIZI)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static final z0(Ljava/lang/CharSequence;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
