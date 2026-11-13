.class public final synthetic LT/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LT/W0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/W0;->d:Ljava/lang/Object;

    iput-object p2, p0, LT/W0;->c:Ljava/lang/String;

    iput p3, p0, LT/W0;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LT/W0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/W0;->d:Ljava/lang/Object;

    iput p3, p0, LT/W0;->b:I

    iput-object p2, p0, LT/W0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, LT/W0;->b:I

    iget-object v1, p0, LT/W0;->c:Ljava/lang/String;

    iget-object v2, p0, LT/W0;->d:Ljava/lang/Object;

    const/4 v3, 0x6

    iget v4, p0, LT/W0;->a:I

    packed-switch v4, :pswitch_data_0

    sget v4, Lcom/ex/auto/MainActivity;->u0:I

    sget-object v4, LT/Y0;->a:LT/Y0;

    invoke-static {}, LT/Y0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    check-cast v2, Lcom/ex/auto/MainActivity;

    iput-object v3, v2, Lcom/ex/auto/MainActivity;->b0:Ljava/lang/String;

    iget-object v4, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, LT/v2;

    invoke-direct {v5, v0, v2, v1, v3}, LT/v2;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :pswitch_0
    check-cast v2, Landroid/content/SharedPreferences;

    const-string v4, "DR"

    const-string v5, "smtp-relay.brevo.com"

    const-string v6, "true"

    const-string v7, ""

    const-string v8, "msgAck ok: "

    const-string v9, "Nome (recovery): "

    const-string v10, "[CentralEXAuto] Aviso visto: "

    :try_start_0
    const-string v11, "recovery_name"

    invoke-interface {v2, v11, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v7, v2

    :goto_0
    sget-object v2, LT/Y0;->a:LT/Y0;

    invoke-static {}, LT/Y0;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, LT/Y0;->l()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    const-string v13, "mail.smtp.auth"

    invoke-virtual {v12, v13, v6}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "mail.smtp.ssl.enable"

    invoke-virtual {v12, v13, v6}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mail.smtp.host"

    invoke-virtual {v12, v6, v5}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mail.smtp.port"

    const-string v13, "465"

    invoke-virtual {v12, v6, v13}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mail.smtp.timeout"

    const-string v13, "30000"

    invoke-virtual {v12, v6, v13}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mail.smtp.connectiontimeout"

    const-string v13, "20000"

    invoke-virtual {v12, v6, v13}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mail.smtp.ssl.trust"

    invoke-virtual {v12, v6, v5}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "mail.smtp.ssl.protocols"

    const-string v6, "TLSv1.2"

    invoke-virtual {v12, v5, v6}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, LT/X0;

    invoke-direct {v5, v3}, LT/X0;-><init>(I)V

    invoke-static {v12, v5}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v3

    invoke-static {v7}, LT/Y0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v6, v3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    new-instance v3, Ljavax/mail/internet/InternetAddress;

    const-string v7, "raviff@gmail.com"

    invoke-direct {v3, v7}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    sget-object v3, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    new-instance v7, Ljavax/mail/internet/InternetAddress;

    const-string v12, "appsdecarro@gmail.com"

    invoke-direct {v7, v12}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v7}, Ljavax/mail/Message;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " \u2014 "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nMensagem: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\nXDSN: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nSerial: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmsg-ack"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljavax/mail/internet/MimeMessage;->setText(Ljava/lang/String;)V

    invoke-static {v6}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgAck: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
