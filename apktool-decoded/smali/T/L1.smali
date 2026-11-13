.class public final synthetic LT/L1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/LyricsFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/LyricsFloaterService;I)V
    .locals 0

    iput p2, p0, LT/L1;->a:I

    iput-object p1, p0, LT/L1;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, LT/L1;->b:Lcom/ex/auto/LyricsFloaterService;

    iget v2, p0, LT/L1;->a:I

    packed-switch v2, :pswitch_data_0

    iput v0, v1, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-virtual {v1}, Lcom/ex/auto/LyricsFloaterService;->q()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    sget-object v0, LT/K1;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v1, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    invoke-static {v0, v2}, LT/K1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ex/auto/LyricsFloaterService;->g()V

    return-void

    :pswitch_1
    iput v0, v1, Lcom/ex/auto/LyricsFloaterService;->i:I

    invoke-virtual {v1}, Lcom/ex/auto/LyricsFloaterService;->q()V

    return-void

    :pswitch_2
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    sget-object v0, LT/K1;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v1, Lcom/ex/auto/LyricsFloaterService;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/ex/auto/LyricsFloaterService;->g:Ljava/lang/String;

    invoke-static {v0, v2}, LT/K1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/ex/auto/LyricsFloaterService;->h:Ljava/util/List;

    invoke-virtual {v1}, Lcom/ex/auto/LyricsFloaterService;->g()V

    return-void

    :pswitch_3
    sget-object v0, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/ex/auto/LyricsFloaterService;->l()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
