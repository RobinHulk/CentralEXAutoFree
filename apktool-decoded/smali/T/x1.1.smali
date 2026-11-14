.class public final synthetic LT/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LT/x1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, LT/x1;->a:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    return-void

    :pswitch_0
    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
