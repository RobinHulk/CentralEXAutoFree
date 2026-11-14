.class public final LT/E1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Ly/f;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ly/f;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/E1;->a:Ly/f;

    iput-object p2, p0, LT/E1;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, LT/E1;->a:Ly/f;

    invoke-virtual {p1, p2}, Ly/f;->o(I)V

    iget-object p2, p0, LT/E1;->b:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/ex/auto/HomeFloatingWidgetsService;->l(Ly/f;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
