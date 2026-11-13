.class public final LT/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lcom/ex/auto/MainActivity;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:LH0/l;


# direct methods
.method public synthetic constructor <init>(ILandroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;LH0/l;I)V
    .locals 0

    iput p6, p0, LT/r3;->a:I

    iput p1, p0, LT/r3;->b:I

    iput-object p2, p0, LT/r3;->c:Landroid/widget/TextView;

    iput-object p3, p0, LT/r3;->d:Lcom/ex/auto/MainActivity;

    iput-object p4, p0, LT/r3;->e:Ljava/lang/String;

    iput-object p5, p0, LT/r3;->f:LH0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final c(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final d(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget p1, p0, LT/r3;->a:I

    packed-switch p1, :pswitch_data_0

    iget p1, p0, LT/r3;->b:I

    add-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, LT/r3;->e:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LT/r3;->d:Lcom/ex/auto/MainActivity;

    const v1, 0x7f0f0255

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LT/r3;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, LT/r3;->f:LH0/l;

    invoke-interface {p2, p1}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_0
    iget p1, p0, LT/r3;->b:I

    add-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, LT/r3;->e:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LT/r3;->d:Lcom/ex/auto/MainActivity;

    const v1, 0x7f0f0255

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LT/r3;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, LT/r3;->f:LH0/l;

    invoke-interface {p2, p1}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget p1, p0, LT/r3;->a:I

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget p1, p0, LT/r3;->a:I

    return-void
.end method
