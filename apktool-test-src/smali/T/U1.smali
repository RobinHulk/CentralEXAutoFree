.class public final synthetic LT/U1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;)V
    .locals 0

    iput p1, p0, LT/U1;->a:I

    iput-object p2, p0, LT/U1;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 4

    iget-object v0, p0, LT/U1;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    :try_start_0
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, LT/L3;->a:LT/L3;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PowerManager.reboot falhou ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") \u2014 caindo pro shell"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Reiniciar"

    invoke-virtual {v1, v2, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LT/I1;

    const/16 v1, 0x15b3

    invoke-direct {v0, v1}, LT/I1;-><init>(I)V

    const-string v1, "reboot"

    const v2, 0xea60

    invoke-virtual {v0, v2, v1}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private final b()V
    .locals 5

    iget-object v0, p0, LT/U1;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    :try_start_0
    const-string v1, "RULES=$(ip rule show 2>/dev/null | grep -c \"12500:\" || echo 0)\necho \"rules=${RULES}\""

    const/16 v2, 0x1f40

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, ""

    :goto_0
    const-string v2, "rules=(\\d+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "compile(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {v1, v3}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "matcher(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LO0/e;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, LO0/d;

    invoke-virtual {v1, v2}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, LO0/r;->p0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    if-lez v1, :cond_1

    move v3, v2

    :cond_1
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/c2;

    const/16 v4, 0xa

    invoke-direct {v2, v0, v3, v4}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final c()V
    .locals 12

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, p0, LT/U1;->b:Lcom/ex/auto/MainActivity;

    const-string v0, "br.com.central.dualdashcam"

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "com.geely.connadaptorlogger"

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "org.bromite.chromium"

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "com.amaze.filemanager"

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "org.mozilla.firefox"

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "app.revanced.android.gms"

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "com.timhss.geelybattery"

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.geely.eisapo"

    invoke-virtual {v2, v0}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v11, LT/O2;

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, LT/O2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final d()V
    .locals 6

    const/4 v0, 0x1

    sget v1, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v1, p0, LT/U1;->b:Lcom/ex/auto/MainActivity;

    const-string v2, "[ -f \'/data/local/tmp/fixes/ca_fix.apk\' ] && echo CAFIX_YES || echo CAFIX_NO"

    const/16 v3, 0x1f40

    invoke-virtual {v1, v3, v2}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAFIX_YES"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    invoke-static {v2}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Falha no ADB local"

    invoke-static {v2, v5, v4}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v4, v0

    :cond_1
    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, LT/H2;

    invoke-direct {v5, v1, v3, v4, v0}, LT/H2;-><init>(Landroid/content/ContextWrapper;ZZI)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final e()V
    .locals 6

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const v0, 0x7f0f03d5

    iget-object v1, p0, LT/U1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v2, :cond_1

    iget-object v2, v2, LU/a;->R2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const-string v5, "Update"

    invoke-virtual {v1, v5, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LU/a;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3
.end method

.method private final f()V
    .locals 3

    iget-object v0, p0, LT/U1;->b:Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_0

    const v2, 0x7f0f00ce

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, LU/a;->S2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final g()V
    .locals 8

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, p0, LT/U1;->b:Lcom/ex/auto/MainActivity;

    const-string v1, "echo TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c \'ttl-set 65\'); echo TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c \'hl-set 65\')"

    const/16 v2, 0x2ee0

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "saida"

    invoke-static {v1, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "TTL_V[46]=\\d+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "compile(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-string v3, "<get-prefs>(...)"

    const/4 v4, 0x0

    const-string v5, "ttl_65_ativo"

    if-nez v2, :cond_0

    sget-object v2, LT/L3;->a:LT/L3;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "estado n\u00e3o p\u00f4de ser lido \u2014 mantendo o que a prefer\u00eancia diz ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    const-string v3, " "

    invoke-static {v1, v0, v3}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v1, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTL"

    invoke-virtual {v2, v1, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "TTL_V4"

    invoke-static {v1, v2}, LT/q4;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "TTL_V6"

    invoke-static {v1, v2}, LT/q4;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-static {v0, v5, v1}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    :cond_2
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/c2;

    const/4 v4, 0x7

    invoke-direct {v3, v0, v1, v4}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    move-object/from16 v1, p0

    const-string v2, "/data/local/tmp/fixes/ca_fix.apk"

    const-string v3, "getString(...)"

    const-class v6, Lcom/ex/auto/CentralWatchdogService;

    const-string v8, "SHA-256"

    const-string v9, "/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"

    const-string v11, "Falha no ADB local"

    const/16 v12, 0x2ee0

    const-string v13, "/data/app/"

    const-string v14, "binding"

    const-string v15, "keyserver_bind_enabled"

    const/16 v5, 0xa

    const/16 v7, 0x1f40

    const/4 v4, 0x0

    const/4 v10, 0x0

    iget v0, v1, LT/U1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->E:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void

    :cond_0
    const-string v0, "wifiManager"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    invoke-direct/range {p0 .. p0}, LT/U1;->g()V

    return-void

    :pswitch_1
    invoke-direct/range {p0 .. p0}, LT/U1;->f()V

    return-void

    :pswitch_2
    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_1

    const v3, 0x7f0f00cc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, LU/a;->S2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-static {v14}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_3
    invoke-direct/range {p0 .. p0}, LT/U1;->e()V

    return-void

    :pswitch_4
    invoke-direct/range {p0 .. p0}, LT/U1;->d()V

    return-void

    :pswitch_5
    invoke-direct/range {p0 .. p0}, LT/U1;->c()V

    return-void

    :pswitch_6
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    const-string v2, "pm path com.njda.adapter"

    invoke-virtual {v0, v7, v2}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13, v10}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/c2;

    const/16 v5, 0xb

    invoke-direct {v4, v0, v2, v5}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_7
    invoke-direct/range {p0 .. p0}, LT/U1;->b()V

    return-void

    :pswitch_8
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->q2()V

    return-void

    :pswitch_9
    invoke-direct/range {p0 .. p0}, LT/U1;->a()V

    return-void

    :pswitch_a
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o1()V

    return-void

    :pswitch_b
    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {v0}, LT/p4;->b(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apply "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const-string v4, "OK"

    goto :goto_0

    :cond_2
    const-string v4, "FAIL"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, LT/p4;->a:Ljava/lang/String;

    invoke-static {v12, v4}, Lcom/ex/auto/MainActivity;->n2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RVC"

    invoke-virtual {v0, v4, v3}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/c2;

    const/16 v5, 0x9

    invoke-direct {v4, v0, v2, v5}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_c
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    const-string v2, "[ -f \'/data/local/gesture-launcher/launcher.apk\' ] && echo G_YES || echo G_NO"

    invoke-virtual {v0, v7, v2}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "G_YES"

    invoke-static {v2, v3, v10}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    invoke-static {v2}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2, v11, v10}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v4, v10

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, LT/H2;

    invoke-direct {v5, v3, v4, v0}, LT/H2;-><init>(ZZLcom/ex/auto/MainActivity;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_d
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    const-string v0, "context"

    invoke-static {v2, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n            DST=$(pm path com.flyme.auto.launcher | sed \'s/^package://\')\n            for i in 1 2 3 4 5 6; do\n  grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 || break\n  umount \"$DST\" 2>/dev/null || umount -l \"$DST\" 2>/dev/null || true\ndone\n            am force-stop com.flyme.auto.launcher 2>/dev/null || true\n            grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo AINDA_MONTADO || echo LIVRE\n            "

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v3, LT/n;

    invoke-direct {v3, v10}, LT/n;-><init>(I)V

    const/16 v5, 0x3a98

    invoke-static {v0, v5, v4, v3}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ADB_FAIL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v3, "LIVRE"

    invoke-static {v0, v3, v10}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/c2;

    const/16 v5, 0x8

    invoke-direct {v4, v2, v0, v5}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_e
    iget-object v2, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-string v3, "KeyServerAtivador"

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/ex/auto/MainActivity;->r0()LT/m3;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v5, :cond_b

    move-object v5, v4

    :goto_4
    const-string v11, "KeyServer"

    const v13, 0xea60

    if-eqz v5, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v8}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :goto_5
    move v4, v10

    goto/16 :goto_8

    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    iget-object v0, v5, LT/m3;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    iget-object v0, v5, LT/m3;->b:Ljava/lang/String;

    iget-object v4, v5, LT/m3;->c:Ljava/lang/String;

    new-instance v5, LT/E2;

    const/4 v7, 0x6

    invoke-direct {v5, v7, v2}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v7, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v14, "GeelyAutoKeyServer-patched-update-staging.apk"

    invoke-direct {v7, v8, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v24, "KeyServer"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x70

    move-object/from16 v21, v2

    move-object/from16 v22, v0

    move-object/from16 v23, v7

    move-object/from16 v25, v4

    move-object/from16 v29, v5

    invoke-static/range {v21 .. v30}, Lcom/ex/auto/MainActivity;->j0(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILH0/a;LH0/l;I)V

    const-string v0, "/data/local/tmp/GeelyAutoKeyServer-patched-update.apk"

    const-string v4, "keyserver_patch"

    invoke-virtual {v2, v7, v0, v4, v10}, Lcom/ex/auto/MainActivity;->f2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/G2;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v2}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, LT/Y;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/ex/auto/MainActivity;->n2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_7
    :goto_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/G2;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v2}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, LT/Y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/ex/auto/MainActivity;->n2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "BIND_KEYSERVER_MOUNT_OK"

    invoke-static {v0, v4, v10}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    const-string v5, "KEYSERVER_SERVICE_RUNNING"

    invoke-static {v0, v5, v10}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    const v0, 0x7f0f01e5

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :cond_8
    if-eqz v4, :cond_9

    const v0, 0x7f0f01e6

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_9
    const v0, 0x7f0f01eb

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    :cond_a
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const v4, 0x7f0f01ec

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const v4, 0x7f0f01f0

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "runKeyServerApply: exce\u00e7\u00e3o \u2014 "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    :cond_c
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v0

    const v5, 0x7f0f01ea

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "runKeyServerApply: resultado ok="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " message=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x22

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v15, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v3, :cond_d

    iget-object v4, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, LT/z0;

    invoke-direct {v5, v3, v10}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/V1;

    const/16 v5, 0xd

    invoke-direct {v4, v2, v0, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_f
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LT/G2;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_10
    iget-object v2, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    :try_start_7
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->s0()LT/p3;

    move-result-object v0

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->e0()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v6, :cond_e

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->e0()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    :cond_e
    iget-wide v7, v0, LT/p3;->a:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    cmp-long v3, v7, v3

    iget-object v4, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    if-gtz v3, :cond_f

    :try_start_8
    new-instance v0, LT/U1;

    const/16 v3, 0x19

    invoke-direct {v0, v3, v2}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :cond_f
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->h2:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->i2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v7, LT/V1;

    invoke-direct {v7, v2, v3, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    new-instance v3, LT/z;

    const/16 v5, 0x9

    invoke-direct {v3, v2, v6, v0, v5}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_b

    :goto_a
    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/w2;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v0, v5}, LT/w2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Exception;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b
    return-void

    :pswitch_11
    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->u0:I

    const-string v2, "/data/local/tmp/ca_fix-update.apk"

    const-string v3, "/data/local/tmp/CentralEXAuto-update.apk"

    :try_start_9
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "CentralEXAuto-update-staging.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :try_start_a
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "ca_fix-update-staging.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    :try_start_b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    :try_start_c
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :catch_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rm -f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v0, v3, v2}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    return-void

    :pswitch_12
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {}, LT/z4;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/V1;

    const/16 v5, 0x8

    invoke-direct {v4, v2, v0, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_13
    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_11

    iget-object v0, v0, LU/a;->y1:Landroid/widget/ScrollView;

    const/16 v2, 0x82

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void

    :cond_11
    invoke-static {v14}, LI0/f;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_14
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "<get-prefs>(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, LT/Y;->c0(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void

    :pswitch_15
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    invoke-static {}, LT/z4;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/V1;

    const/16 v5, 0x9

    invoke-direct {v4, v2, v0, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_16
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    const-string v0, "br.com.central.dualdashcam"

    invoke-virtual {v6, v0}, Lcom/ex/auto/MainActivity;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_d
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_c

    :catchall_0
    move-object v0, v4

    :goto_c
    const-string v11, "Update"

    if-eqz v7, :cond_13

    if-eqz v0, :cond_13

    :try_start_e
    const-string v12, "https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/dualdashcam.json"

    invoke-static {v12}, Lcom/ex/auto/MainActivity;->n0(Ljava/lang/String;)LT/i3;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    move-object/from16 v16, v11

    iget-wide v10, v12, LT/i3;->a:J

    cmp-long v0, v10, v13

    if-lez v0, :cond_12

    :try_start_f
    new-instance v0, LT/o3;

    const-string v13, "dualdashcam"

    iget-object v12, v12, LT/i3;->b:Ljava/lang/String;

    filled-new-array {v7, v12}, [Ljava/lang/Object;

    move-result-object v7

    const v12, 0x7f0f0146

    invoke-virtual {v6, v12, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v13, v7, v10}, LT/o3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    :cond_12
    move-object/from16 v7, v16

    goto :goto_e

    :catch_9
    move-exception v0

    goto :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v16, v11

    :goto_d
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "dep DualDashcam: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v16

    invoke-virtual {v6, v7, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_13
    move-object v7, v11

    :goto_e
    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v10, "gestures_enabled"

    const/4 v11, 0x0

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_10
    invoke-static {}, LT/m;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move-object v11, v4

    goto :goto_f

    :cond_14
    const-string v10, "sha256sum \'/data/local/gesture-launcher/launcher.apk\' 2>/dev/null | cut -d\' \' -f1"

    const/16 v11, 0x3a98

    invoke-static {v11, v10}, LT/m;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, LO0/s;->s0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    new-instance v11, Lv0/a;

    invoke-direct {v11, v0, v10}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_f
    if-eqz v11, :cond_15

    iget-object v0, v11, Lv0/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v10, v11, Lv0/a;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_15

    new-instance v10, LT/o3;

    const-string v11, "gestos"

    const v12, 0x7f0f0148

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12, v0}, LT/o3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dep gestos: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x3

    :try_start_11
    invoke-static {v6, v4, v2}, Lcom/ex/auto/MainActivity;->q0(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)LT/k3;

    move-result-object v2

    iget-object v2, v2, LT/k3;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v6, v0}, Lcom/ex/auto/MainActivity;->S0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, LT/o3;

    const-string v10, "connadaptor"

    const v11, 0x7f0f0144

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v10, v11, v2}, LT/o3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_11

    :catch_c
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "dep ConnAdaptor: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_11
    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v15, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_17

    :try_start_12
    invoke-static {}, Lcom/ex/auto/MainActivity;->r0()LT/m3;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    iget-object v9, v2, LT/m3;->c:Ljava/lang/String;

    :try_start_13
    invoke-static {v0, v8}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, LT/o3;

    const-string v8, "keyserver"

    iget-object v2, v2, LT/m3;->a:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v10, 0x7f0f014b

    invoke-virtual {v6, v10, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v8, v2, v9}, LT/o3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_12

    :catch_d
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dep KeyServer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, LT/o3;

    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v7

    iget-object v8, v5, LT/o3;->a:Ljava/lang/String;

    const-string v9, "dep_update_notified_"

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v5, v5, LT/o3;->c:Ljava/lang/String;

    invoke-static {v7, v5}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_14

    :cond_1a
    iget-object v2, v6, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, LT/H;

    const/16 v4, 0x11

    invoke-direct {v3, v6, v4, v0}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void

    :pswitch_17
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->u1()V

    return-void

    :pswitch_18
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    sget-object v0, LT/p4;->a:Ljava/lang/String;

    iget-object v0, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    invoke-static {v0}, LT/p4;->d(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/c2;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v2, v5}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_19
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "awk -v target="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk"

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \'$2 == target { print; found=1 } END { exit found ? 0 : 1 }\' /proc/mounts"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " || true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1388

    invoke-virtual {v3, v2, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v11, v2}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-eqz v7, :cond_1c

    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_16

    :cond_1c
    invoke-static {v0}, LO0/j;->G0(Ljava/lang/CharSequence;)LN0/c;

    move-result-object v0

    iget-object v2, v0, LN0/c;->b:LN0/f;

    invoke-interface {v2}, LN0/f;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v0, LN0/c;->c:Ljava/lang/Object;

    check-cast v8, LH0/l;

    invoke-interface {v8, v7}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const-string v9, "compile(...)"

    invoke-static {v8, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "input"

    invoke-static {v7, v9}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v9}, LO0/j;->L0(I)V

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_15

    :cond_1e
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :cond_1f
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-nez v11, :cond_1f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v9

    :goto_15
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_1d

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/4 v4, 0x1

    :goto_16
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v15, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v4, v0, :cond_21

    invoke-static {v3, v15, v4}, LM/d0;->m(Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    if-eqz v4, :cond_20

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_20
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v0, :cond_21

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, LT/z0;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, LT/z0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    iget-object v0, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/c2;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1a
    iget-object v7, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    const-string v0, "/proc/mounts"

    :try_start_14
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.njda.adapter"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v6, "sourceDir"

    invoke-static {v5, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v13, v8}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move v9, v5

    goto :goto_17

    :catchall_1
    const/4 v9, 0x0

    :goto_17
    :try_start_15
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, LA/b;->Z(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_23

    :cond_22
    const/4 v5, 0x0

    goto :goto_18

    :cond_23
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, " /system/app/ConnAdaptor/ConnAdaptor.apk "

    const/4 v10, 0x0

    invoke-static {v6, v8, v10}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v6, :cond_24

    const/4 v5, 0x1

    :goto_18
    move v10, v5

    goto :goto_19

    :catchall_2
    const/4 v10, 0x0

    :goto_19
    :try_start_16
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, LA/b;->Z(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_25
    const/16 v19, 0x0

    goto :goto_1a

    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " /system/bin/CarplayMonitor "

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v5, :cond_27

    const/16 v19, 0x1

    :goto_1a
    move/from16 v12, v19

    goto :goto_1b

    :catchall_3
    const/4 v12, 0x0

    :goto_1b
    if-eqz v9, :cond_28

    if-eqz v10, :cond_28

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v5, "ConnAdaptor"

    const-string v6, "bind legado sobre instala\u00e7\u00e3o \u2014 desmontando sozinho"

    invoke-virtual {v0, v5, v6}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_17
    invoke-static {}, LT/Y;->S()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x7530

    invoke-virtual {v7, v8, v6}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "limpeza do bind legado: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x78

    invoke-static {v11, v6}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e

    goto :goto_1c

    :catch_e
    move-exception v0

    sget-object v6, LT/L3;->a:LT/L3;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "limpeza do bind legado falhou: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_1c
    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->f0()Ljava/lang/String;

    move-result-object v13

    sget-object v0, LT/q;->a:[I

    invoke-virtual {v7}, Lcom/ex/auto/MainActivity;->R0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "toLowerCase(...)"

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1d

    :cond_29
    move-object v0, v4

    :goto_1d
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1f

    :sswitch_0
    const-string v5, "4b0e1de041032ee63ef0c223926d7889"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_1f

    :cond_2a
    const-string v0, "v1114cp"

    :goto_1e
    move-object v11, v0

    goto :goto_20

    :sswitch_1
    const-string v5, "0c280b07f92a3538bcda1aae2e8b0746"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_1f

    :cond_2b
    const-string v0, "v1114aa"

    goto :goto_1e

    :sswitch_2
    const-string v5, "d49ab03b18a5c5e21928c59c465394d7"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_1f

    :cond_2c
    const-string v0, "v1111aa"

    goto :goto_1e

    :sswitch_3
    const-string v5, "4b37f46239a938fa164d4a0bdc65a399"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_1f

    :cond_2d
    const-string v0, "v1111cp-only"

    goto :goto_1e

    :sswitch_4
    const-string v5, "260459e68360a4ff5c3720d84a2acddd"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "v1111cp"

    goto :goto_1e

    :cond_2e
    :goto_1f
    move-object v11, v4

    :goto_20
    :try_start_18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string v5, "MD5"

    invoke-static {v0, v5}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x8

    invoke-static {v5, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    goto :goto_21

    :catchall_4
    :cond_2f
    move-object v0, v4

    :goto_21
    if-eqz v0, :cond_34

    invoke-static {v13, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmp-long v2, v4, v14

    if-gtz v2, :cond_30

    goto :goto_24

    :cond_30
    invoke-virtual {v7, v0}, Lcom/ex/auto/MainActivity;->S0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ex/auto/MainActivity;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_31

    const v2, 0x7f0f0107

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_31
    if-eqz v0, :cond_32

    const/16 v4, 0x8

    invoke-static {v4, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_32
    const-string v0, "?"

    :goto_22
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f00ca

    invoke-virtual {v7, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_23
    move-object v4, v0

    goto :goto_25

    :cond_33
    :goto_24
    const v0, 0x7f0f00c9

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_23

    :cond_34
    :goto_25
    move-object v14, v4

    iget-object v0, v7, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/y2;

    move-object v6, v2

    move v8, v9

    invoke-direct/range {v6 .. v14}, LT/y2;-><init>(Lcom/ex/auto/MainActivity;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1b
    iget-object v2, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/ex/auto/MainActivity;->o0()LT/j3;

    move-result-object v0

    iget-object v3, v0, LT/j3;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->V0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_36

    new-instance v3, Ljava/io/File;

    const-string v5, "/data/local/tmp/fixes/CarplayMonitor"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_35

    const-string v4, "MD5"

    invoke-static {v3, v4}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f

    :cond_35
    move-object/from16 v17, v4

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/y0;

    const/16 v20, 0x3

    move-object v15, v4

    move-object/from16 v16, v2

    move-object/from16 v19, v0

    invoke-direct/range {v15 .. v20}, LT/y0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_27

    :catch_f
    move-exception v0

    goto :goto_26

    :cond_36
    :try_start_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const v3, 0x7f0f00dd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    :goto_26
    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/w2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v0, v5}, LT/w2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Exception;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_27
    return-void

    :pswitch_1c
    sget v0, Lcom/ex/auto/MainActivity;->u0:I

    iget-object v2, v1, LT/U1;->b:Lcom/ex/auto/MainActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, LT/Y;->n0(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CarplayMonitor"

    if-nez v0, :cond_37

    const-string v0, "n\u00e3o consegui gravar o script"

    invoke-virtual {v2, v3, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :cond_37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-object v6, LT/L3;->a:LT/L3;

    const-string v7, "Ativar"

    const-string v8, "patch do monitor: in\u00edcio (segundo plano)"

    invoke-virtual {v6, v7, v8}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v6, 0x1d4c0

    :try_start_1b
    invoke-virtual {v2, v6, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    goto :goto_28

    :catch_10
    move-exception v0

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "erro: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    sget-object v6, LT/L3;->a:LT/L3;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "patch do monitor terminou em "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x73

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x190

    invoke-static {v4, v0}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, LT/V1;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v0, v5}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_29
    return-void

    nop

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

    :sswitch_data_0
    .sparse-switch
        -0x205468fa -> :sswitch_4
        0x1ff65dde -> :sswitch_3
        0x4a346867 -> :sswitch_2
        0x57696393 -> :sswitch_1
        0x6a9deb7a -> :sswitch_0
    .end sparse-switch
.end method
