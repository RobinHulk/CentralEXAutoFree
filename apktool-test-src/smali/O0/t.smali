.class public final LO0/t;
.super LI0/g;
.source "SourceFile"

# interfaces
.implements LH0/p;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    iput p3, p0, LO0/t;->a:I

    iput-object p1, p0, LO0/t;->c:Ljava/lang/Object;

    iput-boolean p2, p0, LO0/t;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LI0/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, LO0/t;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LO0/t;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-boolean v9, p0, LO0/t;->b:Z

    const/4 v3, 0x1

    if-nez v9, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    if-ne v4, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {p1, v0, p2, v1, v3}, LO0/j;->B0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-gez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lv0/a;

    invoke-direct {p2, p1, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List has more than one element."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "List is empty."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v4, LL0/c;

    if-gez p2, :cond_4

    move p2, v1

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v4, p2, v1, v3}, LL0/a;-><init>(III)V

    instance-of v1, p1, Ljava/lang/String;

    iget v10, v4, LL0/a;->b:I

    if-eqz v1, :cond_9

    if-le p2, v10, :cond_5

    goto/16 :goto_4

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v3, 0x0

    move v4, p2

    move v8, v9

    invoke-static/range {v3 .. v8}, LO0/s;->t0(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_7
    move-object v11, v2

    :goto_1
    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lv0/a;

    invoke-direct {p2, p1, v11}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    if-eq p2, v10, :cond_e

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_9
    if-le p2, v10, :cond_a

    goto :goto_4

    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, p1, p2, v5, v9}, LO0/j;->J0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_c
    move-object v3, v2

    :goto_3
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lv0/a;

    invoke-direct {p2, p1, v3}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    if-eq p2, v10, :cond_e

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_e
    :goto_4
    move-object p2, v2

    :goto_5
    if-eqz p2, :cond_f

    iget-object p1, p2, Lv0/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Lv0/a;

    iget-object p2, p2, Lv0/a;->a:Ljava/lang/Object;

    invoke-direct {v2, p2, p1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    return-object v2

    :pswitch_0
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LO0/t;->c:Ljava/lang/Object;

    check-cast v0, [C

    iget-boolean v1, p0, LO0/t;->b:Z

    invoke-static {p1, v0, p2, v1}, LO0/j;->D0(Ljava/lang/CharSequence;[CIZ)I

    move-result p1

    if-gez p1, :cond_10

    const/4 p1, 0x0

    goto :goto_6

    :cond_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lv0/a;

    invoke-direct {v0, p1, p2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_6
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
