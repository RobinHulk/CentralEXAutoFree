.class public final synthetic LT/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, LT/o2;->a:I

    iput-object p2, p0, LT/o2;->b:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, LT/o2;->c:Ljava/lang/String;

    iput-object p4, p0, LT/o2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, LT/o2;->d:Ljava/lang/String;

    iget-object v1, p0, LT/o2;->c:Ljava/lang/String;

    iget-object v2, p0, LT/o2;->b:Lcom/ex/auto/MainActivity;

    iget v3, p0, LT/o2;->a:I

    packed-switch v3, :pswitch_data_0

    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v2, v1, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget v3, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/local/tmp/fixes/ca_fix.apk"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lcom/ex/auto/MainActivity;->S0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "260459e68360a4ff5c3720d84a2acddd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "1111"

    goto :goto_0

    :cond_1
    const-string v4, "4b0e1de041032ee63ef0c223926d7889"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "1114"

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "connadaptor_arquivo_versao"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2, v3}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0101

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v0, 0x7f0f012e

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    const v0, 0x7f0f012c

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/V1;

    const/16 v4, 0xe

    invoke-direct {v3, v2, v0, v4}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
