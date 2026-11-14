.class public final Lz0/b;
.super LI0/g;
.source "SourceFile"

# interfaces
.implements LH0/p;


# static fields
.field public static final b:Lz0/b;

.field public static final c:Lz0/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lz0/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz0/b;-><init>(II)V

    sput-object v0, Lz0/b;->b:Lz0/b;

    new-instance v0, Lz0/b;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz0/b;-><init>(II)V

    sput-object v0, Lz0/b;->c:Lz0/b;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lz0/b;->a:I

    invoke-direct {p0, p1}, LI0/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lz0/b;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lz0/i;

    check-cast p2, Lz0/g;

    const-string v0, "acc"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lz0/g;->getKey()Lz0/h;

    move-result-object v0

    invoke-interface {p1, v0}, Lz0/i;->minusKey(Lz0/h;)Lz0/i;

    move-result-object p1

    sget-object v0, Lz0/j;->a:Lz0/j;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lz0/e;->a:Lz0/e;

    invoke-interface {p1, v1}, Lz0/i;->get(Lz0/h;)Lz0/g;

    move-result-object v2

    check-cast v2, Lz0/f;

    if-nez v2, :cond_1

    new-instance v0, Lz0/c;

    invoke-direct {v0, p1, p2}, Lz0/c;-><init>(Lz0/i;Lz0/g;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Lz0/i;->minusKey(Lz0/h;)Lz0/i;

    move-result-object p1

    if-ne p1, v0, :cond_2

    new-instance p1, Lz0/c;

    invoke-direct {p1, p2, v2}, Lz0/c;-><init>(Lz0/i;Lz0/g;)V

    move-object p2, p1

    goto :goto_1

    :cond_2
    new-instance v0, Lz0/c;

    new-instance v1, Lz0/c;

    invoke-direct {v1, p1, p2}, Lz0/c;-><init>(Lz0/i;Lz0/g;)V

    invoke-direct {v0, v1, v2}, Lz0/c;-><init>(Lz0/i;Lz0/g;)V

    goto :goto_0

    :goto_1
    return-object p2

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lz0/g;

    const-string v0, "acc"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
