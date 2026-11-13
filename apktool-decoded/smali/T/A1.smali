.class public final synthetic LT/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, LT/A1;->a:I

    iput-object p1, p0, LT/A1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, LT/A1;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget v0, p0, LT/A1;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(I)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(I)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->x(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
