.class public final synthetic LT/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LH0/a;


# direct methods
.method public synthetic constructor <init>(LH0/a;I)V
    .locals 0

    iput p2, p0, LT/A;->a:I

    iput-object p1, p0, LT/A;->b:LH0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, LT/A;->a:I

    packed-switch p1, :pswitch_data_0

    sget-boolean p1, Lcom/ex/auto/TimerFloaterService;->o:Z

    iget-object p1, p0, LT/A;->b:LH0/a;

    invoke-interface {p1}, LH0/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_0
    sget-object p1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object p1, p0, LT/A;->b:LH0/a;

    invoke-interface {p1}, LH0/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_1
    sget-object p1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object p1, p0, LT/A;->b:LH0/a;

    invoke-interface {p1}, LH0/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_2
    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    iget-object p1, p0, LT/A;->b:LH0/a;

    invoke-interface {p1}, LH0/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_3
    sget p1, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    iget-object p1, p0, LT/A;->b:LH0/a;

    invoke-interface {p1}, LH0/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_4
    sget p1, Lcom/ex/auto/ExSapoCastActivity;->e:I

    iget-object p1, p0, LT/A;->b:LH0/a;

    invoke-interface {p1}, LH0/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_5
    sget-object p1, Lcom/ex/auto/AppPipFloaterService;->u:Lcom/ex/auto/AppPipFloaterService;

    iget-object p1, p0, LT/A;->b:LH0/a;

    invoke-interface {p1}, LH0/a;->a()Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
