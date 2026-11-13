.class public final synthetic LT/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/SharedPreferences;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, LT/G;->a:I

    iput-object p1, p0, LT/G;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, LT/G;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "check: "

    const/4 v3, 0x0

    const-string v4, ""

    iget v5, v1, LT/G;->a:I

    packed-switch v5, :pswitch_data_0

    iget-object v8, v1, LT/G;->b:Landroid/content/SharedPreferences;

    iget-object v7, v1, LT/G;->c:Landroid/content/Context;

    :try_start_0
    invoke-static {}, LT/E3;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    sput-boolean v3, LT/E3;->a:Z

    goto/16 :goto_6

    :cond_1
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "messages"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v5, LT/Y0;->a:LT/Y0;

    invoke-static {}, LT/Y0;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, LT/Y0;->g(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "toUpperCase(...)"

    invoke-static {v6, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    :goto_1
    invoke-static {v6}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v5, "ALL"

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string v6, "iterator(...)"

    invoke-static {v5, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v9, "next(...)"

    invoke-static {v6, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const-string v10, "id"

    invoke-virtual {v6, v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msg_seen_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-gt v10, v11, :cond_7

    goto :goto_2

    :cond_7
    const-string v11, "enc"

    invoke-virtual {v6, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v11}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-static {v11}, LT/q4;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_3
    move-object v12, v11

    goto :goto_4

    :cond_8
    const-string v11, "body"

    invoke-virtual {v6, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :goto_4
    invoke-static {v12}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v12}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v0, "title"

    const v4, 0x7f0f024c

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v0, LT/E3;->c:Landroid/os/Handler;

    new-instance v4, LT/C3;

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, LT/C3;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :goto_5
    :try_start_2
    const-string v4, "MsgMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :goto_6
    return-void

    :goto_7
    sput-boolean v3, LT/E3;->a:Z

    throw v0

    :pswitch_0
    iget-object v5, v1, LT/G;->b:Landroid/content/SharedPreferences;

    iget-object v6, v1, LT/G;->c:Landroid/content/Context;

    const-string v7, "device_banned"

    const-string v8, "BanChecker"

    :try_start_3
    sget-object v9, LT/Y0;->a:LT/Y0;

    invoke-static {}, LT/Y0;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v10, :cond_9

    :goto_8
    sput-boolean v3, LT/J;->a:Z

    goto/16 :goto_d

    :cond_9
    :try_start_4
    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v11, "device_ban_avisado"

    if-eqz v10, :cond_b

    :try_start_5
    invoke-static {v6, v5, v9}, LT/Y0;->q(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v11, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v4, "aviso de ban (pendente) entregue por e-mail"

    invoke-virtual {v0, v8, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move v2, v3

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_a
    sget-object v0, LT/L3;->a:LT/L3;

    const-string v4, "aviso de ban pendente N\u00c3O saiu (sem rede?) \u2014 tenta de novo"

    invoke-virtual {v0, v8, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :cond_b
    :try_start_6
    invoke-static {}, LT/J;->c()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_c

    goto :goto_8

    :cond_c
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "entries"

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-nez v12, :cond_e

    :cond_d
    move v2, v3

    goto :goto_b

    :cond_e
    invoke-static {v9}, LT/J;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    move v14, v3

    :goto_9
    if-ge v14, v13, :cond_d

    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v3, "hash"

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v3}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v3, "dispositivo BANIDO \u2014 XDSN confere com a banlist"

    invoke-virtual {v0, v8, v3}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LT/Y0;->a:LT/Y0;

    invoke-static {v6, v5, v9}, LT/Y0;->q(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v11, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v3, :cond_f

    const-string v3, "aviso de ban entregue por e-mail"

    goto :goto_a

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    goto :goto_e

    :cond_f
    const-string v3, "aviso de ban N\u00c3O saiu (sem rede?) \u2014 tenta na pr\u00f3xima checagem"

    :goto_a
    invoke-virtual {v0, v8, v3}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v2, 0x0

    goto :goto_b

    :cond_10
    add-int/2addr v14, v0

    const/4 v3, 0x0

    goto :goto_9

    :goto_b
    sput-boolean v2, LT/J;->a:Z

    goto :goto_d

    :goto_c
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v2, 0x0

    goto :goto_b

    :goto_d
    return-void

    :goto_e
    sput-boolean v2, LT/J;->a:Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
