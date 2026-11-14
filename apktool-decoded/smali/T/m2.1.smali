.class public final synthetic LT/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/m2;->a:Lcom/ex/auto/MainActivity;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, LT/m2;->a:Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->f0:Landroid/media/MediaPlayer;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/ex/auto/MainActivity;->f0:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
