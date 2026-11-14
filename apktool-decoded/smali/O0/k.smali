.class public final LO0/k;
.super LI0/g;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LO0/k;->a:I

    iput-object p1, p0, LO0/k;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LI0/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LO0/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LO0/k;->b:Ljava/lang/Object;

    check-cast v0, Lw0/e;

    if-ne p1, v0, :cond_0

    const-string p1, "(this Collection)"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    check-cast p1, LL0/c;

    const-string v0, "it"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LO0/k;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, LO0/j;->P0(Ljava/lang/CharSequence;LL0/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, LO0/k;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    move-object p1, v1

    goto :goto_1

    :cond_1
    invoke-static {v1, p1}, Landroidx/fragment/app/Q;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
