.class public final Lt0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Vector;


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lt0/a;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    iget v0, p0, Lt0/a;->a:I

    iget v2, p0, Lt0/a;->b:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lt0/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lt0/a;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lt0/a;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lt0/a;->a:I

    iget v2, p0, Lt0/a;->b:I

    if-ge v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final b()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lt0/a;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    return-object v2

    :cond_0
    :goto_0
    iget v0, p0, Lt0/a;->a:I

    iget v1, p0, Lt0/a;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lt0/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lt0/a;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lt0/a;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lt0/a;->a:I

    iget v1, p0, Lt0/a;->b:I

    if-ge v0, v1, :cond_a

    iget-object v3, p0, Lt0/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_7

    iget v4, p0, Lt0/a;->a:I

    add-int/2addr v4, v2

    iput v4, p0, Lt0/a;->a:I

    const/4 v4, 0x0

    :cond_2
    :goto_1
    iget v6, p0, Lt0/a;->a:I

    if-ge v6, v1, :cond_9

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lt0/a;->a:I

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_3

    iget v4, p0, Lt0/a;->a:I

    add-int/2addr v4, v2

    iput v4, p0, Lt0/a;->a:I

    move v4, v2

    goto :goto_1

    :cond_3
    if-ne v6, v5, :cond_2

    if-eqz v4, :cond_6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    add-int/2addr v0, v2

    :goto_2
    iget v4, p0, Lt0/a;->a:I

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    add-int/2addr v0, v2

    iget v1, p0, Lt0/a;->a:I

    sub-int/2addr v1, v2

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_7
    const-string v5, "="

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_8

    iget v1, p0, Lt0/a;->a:I

    add-int/2addr v1, v2

    iput v1, p0, Lt0/a;->a:I

    goto :goto_5

    :cond_8
    :goto_4
    iget v4, p0, Lt0/a;->a:I

    if-ge v4, v1, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    iget v4, p0, Lt0/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p0, Lt0/a;->a:I

    add-int/2addr v4, v2

    iput v4, p0, Lt0/a;->a:I

    goto :goto_4

    :cond_9
    :goto_5
    iget v1, p0, Lt0/a;->a:I

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
