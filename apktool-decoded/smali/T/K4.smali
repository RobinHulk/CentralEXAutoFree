.class public final synthetic LT/K4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/TimerFloaterService;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/TimerFloaterService;JI)V
    .locals 0

    iput p4, p0, LT/K4;->a:I

    iput-object p1, p0, LT/K4;->b:Lcom/ex/auto/TimerFloaterService;

    iput-wide p2, p0, LT/K4;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    iget v0, p0, LT/K4;->a:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/ex/auto/TimerFloaterService;->o:Z

    iget-object v0, p0, LT/K4;->b:Lcom/ex/auto/TimerFloaterService;

    iget-boolean v1, v0, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lcom/ex/auto/TimerFloaterService;->l:J

    iget-wide v3, p0, LT/K4;->c:J

    add-long v5, v1, v3

    const-wide/16 v7, 0x0

    const-wide/32 v9, 0x5265818

    invoke-static/range {v5 .. v10}, LA/b;->p(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ex/auto/TimerFloaterService;->l:J

    iput-wide v1, v0, Lcom/ex/auto/TimerFloaterService;->i:J

    invoke-virtual {v0}, Lcom/ex/auto/TimerFloaterService;->b()V

    :goto_0
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_0
    sget-boolean v0, Lcom/ex/auto/TimerFloaterService;->o:Z

    iget-wide v0, p0, LT/K4;->c:J

    neg-long v0, v0

    iget-object v2, p0, LT/K4;->b:Lcom/ex/auto/TimerFloaterService;

    iget-boolean v3, v2, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v3, v2, Lcom/ex/auto/TimerFloaterService;->l:J

    add-long v5, v3, v0

    const-wide/16 v7, 0x0

    const-wide/32 v9, 0x5265818

    invoke-static/range {v5 .. v10}, LA/b;->p(JJJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/ex/auto/TimerFloaterService;->l:J

    iput-wide v0, v2, Lcom/ex/auto/TimerFloaterService;->i:J

    invoke-virtual {v2}, Lcom/ex/auto/TimerFloaterService;->b()V

    :goto_1
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
