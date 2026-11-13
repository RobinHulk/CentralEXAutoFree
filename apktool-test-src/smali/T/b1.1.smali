.class public final synthetic LT/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LT/b1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x2

    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, LT/b1;->a:I

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LT/o4;

    const-string v4, "rvc_black_bg.png"

    const-string v5, "/data/local/tmp/rvc_black_bg.png"

    const-string v6, "/system/etc/automotive/evsapp/rvc/rvc_left_bg.png"

    invoke-direct {v1, v4, v5, v6}, LT/o4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "avm_obstacle_distance_num"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    const-string v2, "avm_obstacle_distance_cm.png"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    new-instance v3, LT/o4;

    const-string v4, "rvc_yellow/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/local/tmp/rvc_overlay/"

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/system/etc/automotive/evsapp/rvc/"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, LT/o4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0

    :pswitch_0
    sput-boolean v2, LT/B3;->v:Z

    sget-object v0, LT/B3;->k:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v1, LT/a0;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LT/a0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_1
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_2
    sget v4, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    sget-object v4, LT/m;->i:LT/n1;

    if-eqz v4, :cond_4

    iget-boolean v5, v4, LT/n1;->d:Z

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    int-to-byte v0, v0

    new-array v2, v2, [B

    aput-byte v0, v2, v3

    invoke-virtual {v4, v2, v1}, LT/n1;->i([BI)V

    :cond_4
    :goto_2
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_3
    sget v0, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    sget-object v0, LT/m;->i:LT/n1;

    if-eqz v0, :cond_6

    iget-boolean v4, v0, LT/n1;->d:Z

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    int-to-byte v4, v2

    new-array v2, v2, [B

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2, v1}, LT/n1;->i([BI)V

    :cond_6
    :goto_3
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_4
    sget v0, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    sget-object v0, LT/m;->i:LT/n1;

    if-eqz v0, :cond_8

    iget-boolean v4, v0, LT/n1;->d:Z

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    int-to-byte v4, v3

    new-array v2, v2, [B

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2, v1}, LT/n1;->i([BI)V

    :cond_8
    :goto_4
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_5
    sget v4, Lcom/ex/auto/ExSapoCastActivity;->e:I

    sget-object v4, LT/m;->i:LT/n1;

    if-eqz v4, :cond_a

    iget-boolean v5, v4, LT/n1;->d:Z

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    int-to-byte v0, v0

    new-array v2, v2, [B

    aput-byte v0, v2, v3

    invoke-virtual {v4, v2, v1}, LT/n1;->i([BI)V

    :cond_a
    :goto_5
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_6
    sget v0, Lcom/ex/auto/ExSapoCastActivity;->e:I

    sget-object v0, LT/m;->i:LT/n1;

    if-eqz v0, :cond_c

    iget-boolean v4, v0, LT/n1;->d:Z

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    int-to-byte v4, v2

    new-array v2, v2, [B

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2, v1}, LT/n1;->i([BI)V

    :cond_c
    :goto_6
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_7
    sget v0, Lcom/ex/auto/ExSapoCastActivity;->e:I

    sget-object v0, LT/m;->i:LT/n1;

    if-eqz v0, :cond_e

    iget-boolean v4, v0, LT/n1;->d:Z

    if-nez v4, :cond_d

    goto :goto_7

    :cond_d
    int-to-byte v4, v3

    new-array v2, v2, [B

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2, v1}, LT/n1;->i([BI)V

    :cond_e
    :goto_7
    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0

    :pswitch_8
    sget-object v0, LT/d1;->i:Ljava/math/BigInteger;

    invoke-static {v0, v3}, LT/d1;->f(Ljava/math/BigInteger;Z)LT/c1;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ponto base inv\u00e1lido"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
