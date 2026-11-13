.class public final LN0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LN0/j;->a:I

    iput-object p1, p0, LN0/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, LN0/j;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lw0/b;

    iget-object v1, p0, LN0/j;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/D;

    iget-object v1, v1, Landroidx/lifecycle/D;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lw0/b;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, LN0/j;->b:Ljava/lang/Object;

    check-cast v0, LO0/c;

    new-instance v1, LO0/b;

    invoke-direct {v1, v0}, LO0/b;-><init>(LO0/c;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
