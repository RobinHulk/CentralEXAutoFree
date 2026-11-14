.class public final LF0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN0/f;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LO0/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LF0/b;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LF0/b;->a:I

    iput-object p1, p0, LF0/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, LF0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LF0/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, LF0/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    return-object v0

    :pswitch_1
    new-instance v0, LN0/e;

    invoke-direct {v0, p0}, LN0/e;-><init>(LF0/b;)V

    return-object v0

    :pswitch_2
    new-instance v0, LF0/a;

    invoke-direct {v0, p0}, LF0/a;-><init>(LF0/b;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
