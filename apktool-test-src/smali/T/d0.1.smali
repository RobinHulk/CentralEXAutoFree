.class public final synthetic LT/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, LT/d0;->a:I

    iput-object p1, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const/16 v0, 0x1770

    const-string v1, "boot"

    const/4 v2, 0x0

    const-string v3, "CentralWatchdog"

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, LT/d0;->a:I

    packed-switch v6, :pswitch_data_0

    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v5, v1, v5}, Lcom/ex/auto/CentralWatchdogService;->V(ILjava/lang/String;Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_1

    const-string v1, "d\u00edvida pendente"

    invoke-virtual {v0, v4, v1}, Lcom/ex/auto/CentralWatchdogService;->L(ILjava/lang/String;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "boot_stable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "boot est\u00e1vel confirmado"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_3

    const-string v1, "ctx"

    invoke-static {v0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/PhoneSyncService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void

    :pswitch_3
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4}, Lcom/ex/auto/VhalProviderService;->b(Landroid/content/Context;Z)V

    :cond_4
    return-void

    :pswitch_4
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_5

    sget-boolean v1, LT/E3;->a:Z

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, LT/E3;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sget-boolean v1, LT/J;->a:Z

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, LT/J;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_5
    return-void

    :pswitch_5
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "wifi_auto_enable_on_wake"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->R:LT/p0;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v5, v0, Lcom/ex/auto/CentralWatchdogService;->Q:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LT/o0;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0, v1}, LT/o0;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_8
    :goto_0
    return-void

    :pswitch_6
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->x0()V

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->b0()V

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->c0()V

    :cond_9
    return-void

    :pswitch_7
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v6, -0x1

    const-string v8, "hvac_digital_last_app_vc"

    invoke-interface {v1, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v9, v6, v3

    if-nez v9, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v8, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, LT/m;->n()Ljava/lang/String;

    move-result-object v1

    const-string v8, " -> "

    const-string v9, "invalidateCacheIfAppUpdated: "

    const-string v10, "HvacDigital"

    if-nez v1, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sem confirmar o sha (sem rede?) \u2014 n\u00e3o mexe em nada"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_b
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.flyme.auto.systemuiplugin"

    invoke-virtual {v11, v12, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v12, "SHA-256"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    new-instance v13, Ljava/io/FileInputStream;

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/high16 v11, 0x10000

    :try_start_3
    new-array v11, v11, [B

    :goto_1
    invoke-virtual {v13, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    if-ltz v14, :cond_c

    invoke-virtual {v12, v11, v5, v14}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :cond_c
    :try_start_4
    invoke-static {v13, v2}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    const-string v11, "digest(...)"

    invoke-static {v5, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, LT/n;

    const/16 v12, 0x15

    invoke-direct {v11, v12}, LT/n;-><init>(I)V

    invoke-static {v5, v11}, Lw0/h;->X([BLH0/l;)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    goto :goto_3

    :goto_2
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v11

    :try_start_6
    invoke-static {v13, v5}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "installedSha: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v2

    :goto_4
    if-eqz v5, :cond_d

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", plugin instalado j\u00e1 \u00e9 o do manifesto \u2014 nada a fazer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_d
    const-string v11, "sha256sum \'/data/local/hvac-digital/sysui.apk\' 2>/dev/null | awk \'{print $1}\'"

    const/16 v12, 0x1f40

    invoke-static {v12, v11}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "[0-9a-fA-F]{64}"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const-string v14, "compile(...)"

    invoke-static {v13, v14}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "input"

    invoke-static {v11, v14}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_5

    :cond_e
    move-object v11, v2

    :goto_5
    if-eqz v11, :cond_f

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", companion sem mudan\u00e7a \u2014 nada a fazer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    if-eqz v5, :cond_10

    sget-object v3, LT/L3;->a:LT/L3;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "companion do Ar Digital mudou (instalado "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-static {v6, v5}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " != manifesto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v1}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v1, "rm -f \'/data/local/hvac-digital/sysui.apk\' 2>&1"

    invoke-static {v12, v1}, LT/m;->c(ILjava/lang/String;)Ljava/lang/String;

    invoke-static {}, LT/m;->l()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0, v2}, LT/m;->e(Landroid/content/Context;LH0/l;)Z

    move-result v0

    sget-object v1, LT/L3;->a:LT/L3;

    if-eqz v0, :cond_11

    const-string v0, "OK"

    goto :goto_6

    :cond_11
    const-string v0, "FALHOU (tenta no pr\u00f3ximo boot)"

    :goto_6
    const-string v2, "companion do Ar Digital mudou \u2014 reinstalado por cima: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    const-string v0, "invalidateCacheIfAppUpdated: companion mudou, mas n\u00e3o estava instalado \u2014 s\u00f3 limpou a c\u00f3pia"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/p0;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, LT/p0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_13
    return-void

    :pswitch_9
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->N()V

    :cond_14
    return-void

    :pswitch_a
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->P()V

    :cond_15
    return-void

    :pswitch_b
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LT/d0;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_16
    return-void

    :pswitch_c
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const v1, 0x7f0f0275

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    return-void

    :pswitch_d
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Q()V

    :cond_17
    return-void

    :pswitch_e
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->G0:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->L0:LT/D0;

    iget-wide v3, v0, Lcom/ex/auto/CentralWatchdogService;->D0:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void

    :pswitch_f
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v0, "j\u00e1 projetando"

    iget-object v1, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->y0(Ljava/lang/String;)V

    return-void

    :pswitch_10
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v0, "no Bluetooth s\u00f3 h\u00e1 aparelho Apple \u2014 sem Android a convidar"

    iget-object v1, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->y0(Ljava/lang/String;)V

    return-void

    :pswitch_11
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->R()V

    :cond_19
    return-void

    :pswitch_12
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v0, "CarPlay em sess\u00e3o"

    iget-object v1, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->y0(Ljava/lang/String;)V

    return-void

    :pswitch_13
    iget-object v1, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    :try_start_8
    const-class v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1a

    goto :goto_8

    :cond_1a
    const-class v5, Landroid/net/ProxyInfo;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setGlobalProxy"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_8

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setGlobalProxy(null) erro: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_8
    :try_start_9
    new-instance v1, LT/I1;

    const/16 v2, 0x15b3

    invoke-direct {v1, v2}, LT/I1;-><init>(I)V

    const-string v2, "settings delete global global_http_proxy_host 2>/dev/null || true\nsettings delete global global_http_proxy_port 2>/dev/null || true\nsettings delete global http_proxy 2>/dev/null || true\necho \"PROXY_AUTO_CLEARED\""

    invoke-virtual {v1, v0, v2}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearProxyOnCentral erro: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_9
    return-void

    :pswitch_14
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->R()V

    :cond_1b
    return-void

    :pswitch_15
    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v1, "applyGesturesIfNeeded: reaplicado ao boot = "

    iget-object v2, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string v4, "gestos do volante (aplicar)"

    invoke-virtual {v2, v4}, Lcom/ex/auto/CentralWatchdogService;->x(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_b

    :cond_1c
    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "gestures_restore_on_boot"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_b

    :cond_1d
    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "gestures_enabled"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_b

    :cond_1e
    :try_start_a
    const-string v4, "DST=$(pm path com.flyme.auto.launcher | sed \'s/^package://\'); grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo Y || echo N"

    invoke-static {v0, v4}, LT/m;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Y"

    invoke-static {v0, v4, v5}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, LT/n;

    const/16 v4, 0x12

    invoke-direct {v0, v4}, LT/n;-><init>(I)V

    invoke-static {v2, v0}, LT/m;->d(Landroid/content/Context;LH0/l;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catchall_4
    move-exception v0

    goto :goto_a

    :cond_1f
    const-string v0, "applyGesturesIfNeeded: j\u00e1 montado, nenhuma a\u00e7\u00e3o necess\u00e1ria"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_b

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applyGesturesIfNeeded falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_b
    return-void

    :pswitch_16
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "swc_media_control_enabled"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_c

    :cond_20
    sget-object v1, LT/B3;->a:LT/B3;

    invoke-virtual {v1, v0}, LT/B3;->o(Landroid/content/Context;)V

    iget-boolean v0, v0, Lcom/ex/auto/CentralWatchdogService;->z1:Z

    invoke-static {v0}, LT/B3;->n(Z)V

    :cond_21
    :goto_c
    return-void

    :pswitch_17
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->r()V

    return-void

    :pswitch_18
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    const-string v0, "wake"

    iget-object v1, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->v(Ljava/lang/String;)V

    return-void

    :pswitch_19
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->s()V

    return-void

    :pswitch_1a
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->z1:Z

    if-nez v1, :cond_23

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->A1:Z

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->o()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_d

    :cond_22
    move v1, v5

    goto :goto_e

    :cond_23
    :goto_d
    move v1, v4

    :goto_e
    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    if-eqz v1, :cond_24

    new-instance v1, LT/d0;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_15

    :cond_24
    :try_start_b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_f

    :catchall_5
    move-object v1, v2

    :goto_f
    if-nez v1, :cond_25

    :catchall_6
    :goto_10
    move v5, v4

    goto/16 :goto_14

    :cond_25
    :try_start_c
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_26

    sget-object v1, Lw0/s;->a:Lw0/s;

    :cond_26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/bluetooth/BluetoothDevice;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    const-class v9, Landroid/bluetooth/BluetoothDevice;

    const-string v10, "isConnected"

    invoke-virtual {v9, v10, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/Boolean;

    if-eqz v9, :cond_28

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_12

    :cond_28
    move-object v8, v2

    :goto_12
    if-eqz v8, :cond_29

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_13

    :catchall_7
    :cond_29
    move v8, v5

    :goto_13
    if-eqz v8, :cond_27

    :try_start_e
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_11

    :cond_2a
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_10

    :cond_2b
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_14

    :cond_2c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->X(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_10

    :cond_2e
    :goto_14
    if-nez v5, :cond_2f

    new-instance v1, LT/d0;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    :cond_2f
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->b()Z

    move-result v1

    if-eqz v1, :cond_30

    new-instance v1, LT/d0;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    :cond_30
    invoke-virtual {v0, v4}, Lcom/ex/auto/CentralWatchdogService;->a(Z)V

    new-instance v1, LT/d0;

    const/16 v2, 0xe

    invoke-direct {v1, v0, v2}, LT/d0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    return-void

    :pswitch_1b
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->t()V

    return-void

    :pswitch_1c
    iget-object v0, p0, LT/d0;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->f2:Z

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->N()V

    :cond_31
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
