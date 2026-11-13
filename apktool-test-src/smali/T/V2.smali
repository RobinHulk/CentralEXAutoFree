.class public final synthetic LT/V2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/Button;

.field public final synthetic g:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, LT/V2;->a:Lcom/ex/auto/MainActivity;

    iput-object p5, p0, LT/V2;->b:Ljava/lang/String;

    iput-object p6, p0, LT/V2;->c:Ljava/lang/String;

    iput-object p7, p0, LT/V2;->d:Ljava/lang/String;

    iput-object p3, p0, LT/V2;->e:Landroid/widget/TextView;

    iput-object p1, p0, LT/V2;->f:Landroid/widget/Button;

    iput-object p2, p0, LT/V2;->g:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 44

    move-object/from16 v1, p0

    const-string v3, "/data/local/tmp/"

    iget-object v14, v1, LT/V2;->a:Lcom/ex/auto/MainActivity;

    iget-object v4, v1, LT/V2;->b:Ljava/lang/String;

    iget-object v15, v1, LT/V2;->c:Ljava/lang/String;

    iget-object v13, v1, LT/V2;->e:Landroid/widget/TextView;

    iget-object v12, v1, LT/V2;->f:Landroid/widget/Button;

    iget-object v11, v1, LT/V2;->g:Landroid/widget/Button;

    sget v5, Lcom/ex/auto/MainActivity;->u0:I

    const-string v10, "install_failed:"

    const-string v9, "\n                        echo \"== pm install ==\"\n                        pm install -r -g -d "

    const-string v8, " 2>&1 || true\n                        echo \"exit_code=$code\"\n                    "

    const-string v7, "\n                        fi\n                        code=$?\n                        rm -f "

    const-string v6, "/filtered_apks.txt)\n                          pm install -r -g -d \"$BASE\" 2>&1\n                        else\n                          "

    const-string v5, "/filtered_apks.txt)\n                        echo \"APKs apos filtro: $FILTERED_COUNT\"\n                        if [ \"$FILTERED_COUNT\" -eq 1 ]; then\n                          BASE=$(head -1 "

    const-string v0, "\n                        FILTERED_COUNT=$(wc -l < "

    move-object/from16 v16, v10

    const-string v10, "/extracted -maxdepth 2 -name \"*.apk\" | wc -l)\n                        echo \"APKs encontrados: $APK_COUNT\"\n                        if [ \"$APK_COUNT\" -eq 0 ]; then\n                          echo \"INSTALL_FAILURE: nenhum APK encontrado no pacote\"\n                          exit 1\n                        fi\n                        echo \"-- filtrando por arquitetura/densidade --\"\n                        "

    move-object/from16 v17, v10

    const-string v10, "/extracted -maxdepth 2 -name \"*.apk\" | sort\n                        APK_COUNT=$(find "

    move-object/from16 v18, v10

    const-string v10, "\n                        echo \"== instalando pacote multi-split ==\"\n                        rm -rf "

    move-object/from16 v19, v10

    const-string v10, "/data/local/tmp/apkm_work_"

    move-object/from16 v20, v10

    const-string v10, "sha256_mismatch:got="

    const-string v2, "v"

    :try_start_0
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->n0(Ljava/lang/String;)LT/i3;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v21, v10

    iget-object v10, v14, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    move-object/from16 v22, v5

    iget-object v5, v4, LT/i3;->c:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object/from16 v23, v6

    :try_start_1
    iget-object v6, v4, LT/i3;->e:Ljava/lang/String;

    if-eqz v6, :cond_0

    new-instance v0, LT/b3;

    const/4 v2, 0x0

    move-object v3, v4

    move-object v4, v0

    move-object v5, v13

    move-object v6, v14

    move-object v7, v3

    move-object v8, v12

    move-object v9, v11

    move-object v3, v10

    move v10, v2

    invoke-direct/range {v4 .. v10}, LT/b3;-><init>(Ljava/lang/Object;Landroid/content/ContextWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object v2, v13

    goto/16 :goto_6

    :cond_0
    :goto_0
    move-object v6, v10

    move-object v10, v4

    goto :goto_1

    :cond_1
    move-object/from16 v23, v6

    goto :goto_0

    :goto_1
    new-instance v4, Ljava/io/File;

    move-object/from16 v24, v6

    invoke-virtual {v14}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, LI0/f;->b(Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v10, LT/i3;->b:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, LT/t2;

    move-object/from16 v25, v4

    const/4 v4, 0x1

    invoke-direct {v6, v14, v13, v4}, LT/t2;-><init>(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v26, 0x0

    const/16 v27, 0x78

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v31, v25

    move-object v4, v14

    move-object/from16 v32, v22

    move-object/from16 v22, v6

    move-object/from16 v33, v23

    move-object/from16 v34, v24

    move-object/from16 v6, v31

    move-object/from16 v35, v7

    move-object v7, v2

    move-object v2, v8

    move-object/from16 v8, v28

    move-object/from16 v36, v9

    move-object/from16 v9, v29

    move-object/from16 v43, v10

    move-object/from16 v37, v16

    move-object/from16 v38, v17

    move-object/from16 v39, v18

    move-object/from16 v40, v19

    move-object/from16 v41, v20

    move-object/from16 v42, v21

    move/from16 v10, v30

    move-object/from16 v16, v11

    move-object/from16 v11, v26

    move-object/from16 v17, v12

    move-object/from16 v12, v22

    move-object/from16 v18, v2

    move-object v2, v13

    move/from16 v13, v27

    :try_start_2
    invoke-static/range {v4 .. v13}, Lcom/ex/auto/MainActivity;->j0(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILH0/a;LH0/l;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v4, v43

    iget-object v5, v4, LT/i3;->d:Ljava/lang/String;

    if-eqz v5, :cond_3

    :try_start_3
    new-instance v6, LT/c3;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v14, v4, v7}, LT/c3;-><init>(Landroid/widget/TextView;Lcom/ex/auto/MainActivity;LT/i3;I)V

    move-object/from16 v7, v34

    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v6, "SHA-256"

    move-object/from16 v8, v31

    invoke-static {v8, v6}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v42

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v4, v6}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",exp="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_3
    move-object/from16 v8, v31

    move-object/from16 v7, v34

    :goto_2
    invoke-virtual {v3, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "app"

    const/4 v6, 0x0

    invoke-virtual {v14, v8, v3, v5, v6}, Lcom/ex/auto/MainActivity;->f2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    new-instance v5, LT/c3;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v14, v4, v6}, LT/c3;-><init>(Landroid/widget/TextView;Lcom/ex/auto/MainActivity;LT/i3;I)V

    invoke-virtual {v7, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apkm"

    invoke-static {v15, v4, v6}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    iget-object v5, v1, LT/V2;->d:Ljava/lang/String;

    if-nez v4, :cond_5

    :try_start_4
    const-string v4, ".xapk"

    invoke-static {v15, v4, v6}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v36

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1\n                        code=$?\n                        rm -f "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>/dev/null || true\n                        echo \"exit_code=$code\"\n                    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x1d4c0

    invoke-virtual {v14, v3, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_5
    :goto_3
    const/16 v4, 0x2e

    invoke-static {v5, v4}, LO0/s;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, v41

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v7, v40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 2>&1 || true\n                        mkdir -p "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/extracted 2>&1 || exit 10\n                        unzip -q "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -d "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/extracted/ 2>&1\n                        echo \"-- conteudo extraido --\"\n                        find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v39

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v38

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null || true\n                        rm -rf "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, LT/E2;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v14}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const/4 v4, 0x0

    const v6, 0x249f0

    invoke-static {v0, v6, v4, v3}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v3, "exit_code=0"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v3, :cond_7

    const-wide/16 v3, 0x4b0

    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_2
    :try_start_6
    invoke-virtual {v14, v5}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f01ce

    invoke-virtual {v14, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    const v0, 0x7f0f01cb

    invoke-virtual {v14, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    const/16 v3, 0xc8

    invoke-static {v3, v0}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_5
    move-object v8, v0

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_8
    const-string v0, "install_error:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_7
    invoke-static {v8}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v0, "install_failed"

    invoke-static {v8, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "install_error"

    invoke-static {v8, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "sha256_mismatch"

    invoke-static {v8, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "adb_copy_fail"

    invoke-static {v8, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    move-object v6, v8

    goto :goto_9

    :cond_a
    :goto_8
    const v0, 0x7f0f01c7

    invoke-virtual {v14, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_9
    invoke-static {v6}, LI0/f;->b(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/d3;

    move-object v4, v3

    move-object v5, v2

    move-object v7, v14

    move-object/from16 v9, v17

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, LT/d3;-><init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/ex/auto/MainActivity;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_a
    return-void
.end method
