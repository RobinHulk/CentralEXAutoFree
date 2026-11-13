.class public final synthetic LT/Z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, LT/Z1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LT/Z1;->c:I

    iput-object p2, p0, LT/Z1;->b:Lcom/ex/auto/MainActivity;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;II)V
    .locals 0

    .line 2
    iput p3, p0, LT/Z1;->a:I

    iput-object p1, p0, LT/Z1;->b:Lcom/ex/auto/MainActivity;

    iput p2, p0, LT/Z1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x7

    const/4 v1, 0x0

    iget v2, p0, LT/Z1;->c:I

    iget-object v3, p0, LT/Z1;->b:Lcom/ex/auto/MainActivity;

    const/4 v4, 0x1

    iget v5, p0, LT/Z1;->a:I

    packed-switch v5, :pswitch_data_0

    iget-object v0, v3, Lcom/ex/auto/MainActivity;->g0:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-lez v2, :cond_3

    const v0, 0x7f0f0170

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const v0, 0x7f0f016f

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void

    :pswitch_1
    iget v5, v3, Lcom/ex/auto/MainActivity;->B:I

    sget-object v6, Lw0/q;->a:Lw0/q;

    iget-object v7, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    if-ne v2, v5, :cond_7

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    const-string v8, "getInstalledApplications(...)"

    invoke-static {v5, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v11, 0x1

    if-nez v12, :cond_4

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_4

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v8}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lv0/a;

    invoke-direct {v10, v9, v8}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance v2, LT/E;

    invoke-direct {v2, v0}, LT/E;-><init>(I)V

    invoke-static {v4, v2}, Lw0/i;->f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, LT/D2;

    invoke-direct {v0, v1, v3, v6}, LT/D2;-><init>(ILcom/ex/auto/MainActivity;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_7
    :try_start_1
    iget v0, v3, Lcom/ex/auto/MainActivity;->A:I

    if-ne v2, v0, :cond_8

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->P0()Ljava/util/List;

    move-result-object v0

    :goto_5
    move-object v6, v0

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->O0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->N0()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lw0/i;->e0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    :goto_6
    new-instance v0, LT/D2;

    invoke-direct {v0, v4, v3, v6}, LT/D2;-><init>(ILcom/ex/auto/MainActivity;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_7
    return-void

    :pswitch_2
    iget-object v0, v3, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_9

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->k0()V

    goto :goto_9

    :cond_9
    const/high16 v5, 0x1000000

    filled-new-array {v1, v4, v5}, [I

    move-result-object v5

    :goto_8
    const/4 v6, 0x3

    if-ge v1, v6, :cond_a

    aget v6, v5, v1

    const v7, 0x22010100

    :try_start_2
    invoke-virtual {v0, v7, v6, v2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    add-int/2addr v1, v4

    goto :goto_8

    :cond_a
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->k0()V

    :goto_9
    return-void

    :pswitch_3
    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\n                mkdir -p /data/local/tmp/avas_preview\n                DIR=/system/etc/avas/sound_type_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n                F=$(ls \"$DIR\"/*.wav 2>/dev/null | head -1)\n                if [ -z \"$F\" ]; then echo \"SEM_ARQUIVO\"; exit 0; fi\n                cp -f \"$F\" /data/local/tmp/avas_preview/preview.wav 2>&1\n                chmod 644 /data/local/tmp/avas_preview/preview.wav 2>/dev/null || true\n                echo \"OK\"\n            "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v3, v2, v1}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/V1;

    invoke-direct {v4, v1, v3, v0}, LT/V1;-><init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
