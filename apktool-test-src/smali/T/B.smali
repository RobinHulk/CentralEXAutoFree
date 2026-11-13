.class public final synthetic LT/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AppPipFloaterService;

.field public final synthetic c:LT/x4;

.field public final synthetic d:LB/b;


# direct methods
.method public synthetic constructor <init>(LT/x4;Lcom/ex/auto/AppPipFloaterService;LB/b;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LT/B;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/B;->c:LT/x4;

    iput-object p2, p0, LT/B;->b:Lcom/ex/auto/AppPipFloaterService;

    iput-object p3, p0, LT/B;->d:LB/b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/AppPipFloaterService;LT/x4;LB/b;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LT/B;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/B;->b:Lcom/ex/auto/AppPipFloaterService;

    iput-object p2, p0, LT/B;->c:LT/x4;

    iput-object p3, p0, LT/B;->d:LB/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, LT/B;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/B;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v1, v0, Lcom/ex/auto/AppPipFloaterService;->i:LT/x4;

    if-eqz v1, :cond_0

    iget-object v2, p0, LT/B;->c:LT/x4;

    iget v2, v2, LT/x4;->b:I

    iget v1, v1, LT/x4;->b:I

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    iget-object v3, p0, LT/B;->d:LB/b;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LT/B;->c:LT/x4;

    iget-object v1, p0, LT/B;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v2, p0, LT/B;->d:LB/b;

    const-string v3, "am stack list"

    const/16 v4, 0x1770

    invoke-static {v4, v3}, LT/z4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "taskId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, LT/x4;->b:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "pattern"

    invoke-static {v4, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v7, "compile(...)"

    invoke-static {v4, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, LT/x4;->b:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":.*visible=true"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-static {v5, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v4, :cond_1

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v3, LT/s;

    invoke-direct {v3, v1, v0}, LT/s;-><init>(Lcom/ex/auto/AppPipFloaterService;LT/x4;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "am start -n "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, LT/x4;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f40

    invoke-static {v4, v3}, LT/z4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ADB_FAIL"

    invoke-static {v3, v4}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Exception"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    sput-object v3, LT/z4;->f:Ljava/lang/String;

    :cond_3
    iget-object v3, v1, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v4, LT/B;

    invoke-direct {v4, v1, v0, v2}, LT/B;-><init>(Lcom/ex/auto/AppPipFloaterService;LT/x4;LB/b;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
