.class public final LT/X0;
.super Ljavax/mail/Authenticator;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LT/X0;->a:I

    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    iget v0, p0, LT/X0;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljavax/mail/PasswordAuthentication;

    const-string v1, "aa3afa001@smtp-brevo.com"

    const-string v2, "REDACTED_NOT_A_VALID_CREDENTIAL"

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    const-string v1, "aa3afa001@smtp-brevo.com"

    const-string v2, "REDACTED_NOT_A_VALID_CREDENTIAL"

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    const-string v1, "aa3afa001@smtp-brevo.com"

    const-string v2, "REDACTED_NOT_A_VALID_CREDENTIAL"

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    const-string v1, "aa3afa001@smtp-brevo.com"

    const-string v2, "REDACTED_NOT_A_VALID_CREDENTIAL"

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    const-string v1, "aa3afa001@smtp-brevo.com"

    const-string v2, "REDACTED_NOT_A_VALID_CREDENTIAL"

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    const-string v1, "aa3afa001@smtp-brevo.com"

    const-string v2, "REDACTED_NOT_A_VALID_CREDENTIAL"

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    const-string v1, "aa3afa001@smtp-brevo.com"

    const-string v2, "REDACTED_NOT_A_VALID_CREDENTIAL"

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_6
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    const-string v1, "aa3afa001@smtp-brevo.com"

    const-string v2, "REDACTED_NOT_A_VALID_CREDENTIAL"

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

